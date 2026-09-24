"""
================================================================================
hmm_support.py — Support module for HMM Event Sequence Classification
================================================================================

All heavy SQL, stored procedure definitions, training/scoring workflows,
and evaluation logic packaged as clean functions for use from a Jupyter notebook.

Usage:
    from hmm_support import *

    ctx = connect_vantage("vantage24.td.teradata.com", "kg255057")
    create_hmm_tables()
    install_all_stored_procedures()
    train_binary_hmm("ApplyMortgage", "banking_v1_train", n_states=3)
    results = score_and_evaluate_binary("ApplyMortgage", "banking_v1_test", n_states=3)
    plot_all_results(binary_results, multiclass_results)

================================================================================
"""

import time
import getpass
import numpy as np
import pandas as pd
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.metrics import (
    classification_report, confusion_matrix, accuracy_score,
    precision_recall_fscore_support, roc_auc_score, roc_curve
)


# ============================================================================
# GLOBAL STATE
# ============================================================================
_ctx = None          # teradataml context
_raw_conn = None     # raw teradatasql connection (for SP DDL)
_conn_params = {}    # saved for reconnect


# ============================================================================
# CONNECTION
# ============================================================================

def connect_vantage(host, username, password, logmech="LDAP"):
    """
    Connect to Teradata Vantage. Creates two connections:
    1. teradataml context (for DataFrame ops, execute_sql for simple queries)
    2. Raw teradatasql connection with TERA mode (for REPLACE PROCEDURE DDL)
    """
    global _ctx, _raw_conn, _conn_params
    import teradatasql
    from teradataml import create_context

    # password = getpass.getpass(f"Enter {logmech} password for {username}@{host}: ")
    _conn_params = dict(host=host, username=username, password=password, logmech=logmech)

    # 1. teradataml context (for general SQL, DataFrames)
    print(f"Connecting to {host} as {username} ({logmech})...")
    _ctx = create_context(
        host=host, username=username, password=password,
        logmech=logmech
    )

    # 2. Raw teradatasql connection with TERA session mode
    #    This is required for REPLACE PROCEDURE ... BEGIN ... END;
    _raw_conn = teradatasql.connect(
        host=host, user=username, password=password,
        logmech=logmech, tmode="TERA"
    )

    row = _execute("SELECT DATABASE, USER, SESSION").fetchone()
    print(f"Connected. Database={row[0]}, User={row[1]}, Session={row[2]}")
    return _ctx


def disconnect():
    """Disconnect from Teradata."""
    global _raw_conn
    from teradataml import remove_context
    if _raw_conn:
        try:
            _raw_conn.close()
        except:
            pass
        _raw_conn = None
    remove_context()
    print("Disconnected.")


# ============================================================================
# LOW-LEVEL SQL HELPERS
# ============================================================================

def _execute(sql):
    """Execute SQL via teradataml and return the cursor."""
    from teradataml import execute_sql
    return execute_sql(sql)


def _execute_raw(sql):
    """
    Execute SQL via the raw teradatasql connection.
    For REPLACE PROCEDURE: collapses multi-line SQL into a single line 
    with spaces before semicolons, matching the format teradatasql expects
    (see Teradata/python-driver/samples/StoredProc.py).
    """
    global _raw_conn
    # Collapse newlines to spaces, normalize whitespace, 
    # and ensure spaces before semicolons (teradatasql requirement)
    clean = ' '.join(sql.split())
    # Ensure space before semicolons inside SP body
    clean = clean.replace(';', ' ;')
    # Normalize double spaces
    while '  ' in clean:
        clean = clean.replace('  ', ' ')
    clean = clean.strip()
    
    cur = _raw_conn.cursor()
    cur.execute(clean)
    return cur


def run_sp(call_sql, description=""):
    """Execute a stored procedure call, print timing, return elapsed seconds."""
    print("RUN SP")
    t0 = time.time()
    if description:
        print(f"  {description}...", end=" ", flush=True)
    try:
        print("Call execute")
        _execute(call_sql)
        elapsed = time.time() - t0
        if description:
            print(f"done ({elapsed:.1f}s)")
        return elapsed
    except Exception as e:
        elapsed = time.time() - t0
        msg = f"ERROR ({elapsed:.1f}s): {e}"
        if description:
            print(msg)
        else:
            print(f"  {msg}")
        return -1


def fetch_df(sql):
    """Execute SQL and return a pandas DataFrame. Column names lowercased."""
    result = _execute(sql)
    cols = [desc[0].lower() for desc in result.description]
    rows = result.fetchall()
    return pd.DataFrame(rows, columns=cols)


def table_exists(table_name):
    """Check if a table exists."""
    try:
        _execute(f"SELECT TOP 1 1 FROM {table_name}")
        return True
    except:
        return False


def verify_source_tables(*table_names):
    """Verify that source tables exist and print row counts."""
    for tbl in table_names:
        try:
            cnt = _execute(f"SELECT COUNT(*) FROM {tbl}").fetchone()[0]
            print(f"  {tbl}: {cnt:,} rows")
        except Exception as e:
            print(f"  ERROR: {tbl} not found — {e}")


def get_train_log(model_id):
    """Fetch training convergence log for a model."""
    return fetch_df(f"""
        SELECT iteration, total_log_lik, avg_log_lik, n_sessions
        FROM hmm_train_log WHERE model_id = '{model_id}'
        ORDER BY iteration
    """)


def get_scores(model_id):
    """Fetch session-level log-likelihood scores."""
    return fetch_df(f"""
        SELECT userid, sessionid, log_likelihood
        FROM hmm_scores WHERE model_id = '{model_id}'
    """)


def get_test_labels(source_table):
    """Extract per-session Apply labels from a clickstream table."""
    return fetch_df(f"""
        SELECT UserID AS userid, SessionID AS sessionid,
               MAX(CASE WHEN Event LIKE 'Apply%' THEN Event ELSE NULL END) AS apply_type
        FROM {source_table}
        GROUP BY UserID, SessionID
    """)


def get_apply_events(source_table):
    """Discover all Apply* events in a table."""
    df = fetch_df(f"SELECT DISTINCT Event FROM {source_table} WHERE Event LIKE 'Apply%'")
    return sorted(df.iloc[:, 0].tolist())


def get_top_emissions(model_id, n_top=8):
    """Get top emission events per state for a trained model."""
    return fetch_df(f"""
        SELECT state_id, event, prob
        FROM hmm_params_emit
        WHERE model_id = '{model_id}'
        QUALIFY RANK() OVER (PARTITION BY state_id ORDER BY prob DESC) <= {n_top}
        ORDER BY state_id, prob DESC
    """)


def get_transition_matrix(model_id):
    """Get the transition matrix for a trained model."""
    return fetch_df(f"""
        SELECT from_state, to_state, prob
        FROM hmm_params_trans
        WHERE model_id = '{model_id}'
        ORDER BY from_state, to_state
    """)


# ============================================================================
# TABLE CREATION
# ============================================================================

_HMM_TABLES = {
    "hmm_params_pi": """
        CREATE SET TABLE hmm_params_pi,STORAGE = TD_OFSSTORAGE (
            model_id VARCHAR(50), state_id INTEGER, prob FLOAT
        ) PRIMARY INDEX (model_id, state_id)""",
    "hmm_params_trans": """
        CREATE SET TABLE hmm_params_trans,STORAGE = TD_OFSSTORAGE (
            model_id VARCHAR(50), from_state INTEGER, to_state INTEGER, prob FLOAT
        ) PRIMARY INDEX (model_id, from_state, to_state)""",
    "hmm_params_emit": """
        CREATE SET TABLE hmm_params_emit,STORAGE = TD_OFSSTORAGE (
            model_id VARCHAR(50), state_id INTEGER, event VARCHAR(100), prob FLOAT
        ) PRIMARY INDEX (model_id, state_id, event)""",
    "hmm_sequences": """
        CREATE SET TABLE hmm_sequences, STORAGE = TD_OFSSTORAGE (
            model_id VARCHAR(50), userid VARCHAR(50), sessionid INTEGER,
            pos INTEGER, event VARCHAR(100)
        ) PRIMARY INDEX (model_id, userid, sessionid, pos)""",
    "hmm_alpha": """
        CREATE SET TABLE hmm_alpha, STORAGE = TD_OFSSTORAGE (
            model_id VARCHAR(50), userid VARCHAR(50), sessionid INTEGER,
            pos INTEGER, state_id INTEGER, log_alpha FLOAT
        ) PRIMARY INDEX (model_id, userid, sessionid, pos, state_id)""",
    "hmm_beta": """
        CREATE SET TABLE hmm_beta, STORAGE = TD_OFSSTORAGE (
            model_id VARCHAR(50), userid VARCHAR(50), sessionid INTEGER,
            pos INTEGER, state_id INTEGER, log_beta FLOAT
        ) PRIMARY INDEX (model_id, userid, sessionid, pos, state_id)""",
    "hmm_gamma": """
        CREATE SET TABLE hmm_gamma, STORAGE = TD_OFSSTORAGE (
            model_id VARCHAR(50), userid VARCHAR(50), sessionid INTEGER,
            pos INTEGER, state_id INTEGER, gamma_val FLOAT
        ) PRIMARY INDEX (model_id, userid, sessionid, pos, state_id)""",
    "hmm_xi": """
        CREATE SET TABLE hmm_xi, STORAGE = TD_OFSSTORAGE (
            model_id VARCHAR(50), userid VARCHAR(50), sessionid INTEGER,
            pos INTEGER, from_state INTEGER, to_state INTEGER, xi_val FLOAT
        ) PRIMARY INDEX (model_id, userid, sessionid, pos, from_state, to_state)""",
    "hmm_train_log": """
        CREATE SET TABLE hmm_train_log, STORAGE = TD_OFSSTORAGE (
            model_id VARCHAR(50), iteration INTEGER, total_log_lik FLOAT,
            avg_log_lik FLOAT, n_sessions INTEGER,
            ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ) PRIMARY INDEX (model_id, iteration)""",
    "hmm_scores": """
        CREATE SET TABLE hmm_scores, STORAGE = TD_OFSSTORAGE (
            model_id VARCHAR(50), userid VARCHAR(50), sessionid INTEGER,
            log_likelihood FLOAT
        ) PRIMARY INDEX (model_id, userid, sessionid)""",
}


def create_hmm_tables(drop_existing=True):
    """Create all HMM parameter and working tables on Vantage."""
    print("Creating HMM tables...")
    for name, ddl in _HMM_TABLES.items():
        if drop_existing:
            try:
                _execute(f"DROP TABLE {name}")
            except:
                pass
        try:
            _execute(ddl)
            print(f"  Created {name}")
        except Exception as e:
            print(f"  {name}: {e}")


def drop_hmm_tables():
    """Drop all HMM tables."""
    for name in _HMM_TABLES:
        try:
            _execute(f"DROP TABLE {name}")
            print(f"  Dropped {name}")
        except:
            pass


# ============================================================================
# STORED PROCEDURE DEFINITIONS
# All SPs fixed for Teradata Vantage:
#   - EXECUTE IMMEDIATE uses SET variable pattern
#   - No reserved-word aliases (lt, ln, gt, ss, fs, ts)
#   - No nested analytics — use subqueries/temp tables
#   - LEAVE uses labeled WHILE loops
#   - Log-sum-exp broken into two-pass pattern via volatile tables
# ============================================================================

_STORED_PROCEDURES = {}

# ---------------------------------------------------------------------------
# SP 1: Extract sequences — uses SET var + EXECUTE IMMEDIATE var
# ---------------------------------------------------------------------------
_STORED_PROCEDURES['SP_HMM_EXTRACT_SEQUENCES'] = """
REPLACE PROCEDURE SP_HMM_EXTRACT_SEQUENCES (
    IN p_model_id VARCHAR(50), IN p_source_table VARCHAR(128),
    IN p_target_event VARCHAR(100), IN p_outcome_flag INTEGER
)
BEGIN
    DECLARE v_sql VARCHAR(10000);
    DELETE FROM hmm_sequences WHERE model_id = p_model_id;
    IF p_outcome_flag = 1 THEN
        SET v_sql =
        'INSERT INTO hmm_sequences'
        || ' SELECT ''' || p_model_id || ''', UserID, SessionID,'
        || ' ROW_NUMBER() OVER (PARTITION BY UserID, SessionID ORDER BY "Event_TS"), Event'
        || ' FROM ' || p_source_table
        || ' WHERE Event NOT LIKE ''Apply%'''
        || ' AND (UserID, SessionID) IN ('
        || '   SELECT DISTINCT UserID, SessionID FROM ' || p_source_table
        || '   WHERE Event = ''' || p_target_event || ''')';
        EXECUTE IMMEDIATE v_sql;
    ELSE
        SET v_sql =
        'INSERT INTO hmm_sequences'
        || ' SELECT ''' || p_model_id || ''', UserID, SessionID,'
        || ' ROW_NUMBER() OVER (PARTITION BY UserID, SessionID ORDER BY "Event_TS"), Event'
        || ' FROM ' || p_source_table
        || ' WHERE Event NOT LIKE ''Apply%'''
        || ' AND (UserID, SessionID) NOT IN ('
        || '   SELECT DISTINCT UserID, SessionID FROM ' || p_source_table
        || '   WHERE Event LIKE ''Apply%'')';
        EXECUTE IMMEDIATE v_sql;
    END IF;
    DELETE FROM hmm_sequences WHERE model_id = p_model_id
      AND (userid, sessionid) IN (
          SELECT userid, sessionid FROM hmm_sequences
          WHERE model_id = p_model_id
          GROUP BY userid, sessionid HAVING MAX(pos) < 2);
END;
"""

# ---------------------------------------------------------------------------
# SP 2: Init — this one already works
# ---------------------------------------------------------------------------
_STORED_PROCEDURES['SP_HMM_INIT'] = """
REPLACE PROCEDURE SP_HMM_INIT (
    IN p_model_id VARCHAR(50), IN p_num_states INTEGER
)
BEGIN
    DECLARE v_s INTEGER;
    DECLARE v_f INTEGER;
    DECLARE v_t INTEGER;
    DECLARE v_sp FLOAT;
    DECLARE v_op FLOAT;
    DELETE FROM hmm_params_pi WHERE model_id = p_model_id;
    DELETE FROM hmm_params_trans WHERE model_id = p_model_id;
    DELETE FROM hmm_params_emit WHERE model_id = p_model_id;
    SET v_s = 1;
    WHILE v_s <= p_num_states DO
        INSERT INTO hmm_params_pi VALUES (p_model_id, v_s, 1.0 / p_num_states);
        SET v_s = v_s + 1;
    END WHILE;
    SET v_sp = 0.5 + (0.3 / p_num_states);
    SET v_op = CASE WHEN p_num_states > 1 THEN (1.0 - v_sp) / (p_num_states - 1) ELSE 0.0 END;
    SET v_f = 1;
    WHILE v_f <= p_num_states DO
        SET v_t = 1;
        WHILE v_t <= p_num_states DO
            INSERT INTO hmm_params_trans VALUES (p_model_id, v_f, v_t,
                CASE WHEN v_f = v_t THEN v_sp ELSE v_op END);
            SET v_t = v_t + 1;
        END WHILE;
        SET v_f = v_f + 1;
    END WHILE;
    INSERT INTO hmm_params_emit (model_id, state_id, event, prob)
    SELECT p_model_id, s_tbl.state_id, e_tbl.event,
           (e_tbl.fr * s_tbl.state_id + 0.001) / SUM(e_tbl.fr * s_tbl.state_id + 0.001) OVER (PARTITION BY s_tbl.state_id)
    FROM (SELECT event, CAST(RANK() OVER (ORDER BY COUNT(*)) AS FLOAT) /
                 CAST(COUNT(*) OVER () AS FLOAT) AS fr
          FROM hmm_sequences WHERE model_id = p_model_id GROUP BY event) e_tbl
    CROSS JOIN hmm_params_pi s_tbl WHERE s_tbl.model_id = p_model_id;
END;
"""

# ---------------------------------------------------------------------------
# SP 3: Forward — renamed aliases, two-pass log-sum-exp
# ---------------------------------------------------------------------------
_STORED_PROCEDURES['SP_HMM_FORWARD'] = """
REPLACE PROCEDURE SP_HMM_FORWARD (IN p_model_id VARCHAR(50))
BEGIN
    DECLARE v_maxp INTEGER;
    DECLARE v_curp INTEGER;
    DELETE FROM hmm_alpha WHERE model_id = p_model_id;
    SELECT MAX(pos) INTO v_maxp FROM hmm_sequences WHERE model_id = p_model_id;
    INSERT INTO hmm_alpha
    SELECT p_model_id, seq.userid, seq.sessionid, 1, pi.state_id,
           LN(GREATEST(pi.prob, 1e-300)) + LN(GREATEST(em.prob, 1e-300))
    FROM hmm_sequences seq
    JOIN hmm_params_pi pi ON pi.model_id = p_model_id
    JOIN hmm_params_emit em ON em.model_id = p_model_id AND em.state_id = pi.state_id AND em.event = seq.event
    WHERE seq.model_id = p_model_id AND seq.pos = 1;
    SET v_curp = 2;
    lp_fwd: WHILE v_curp <= v_maxp DO
        INSERT INTO hmm_alpha
        SELECT p_model_id, step2.userid, step2.sessionid, v_curp, step2.to_state,
               LN(GREATEST(step2.emit_prob, 1e-300)) + step2.max_term + LN(SUM(EXP(step2.log_term - step2.max_term)))
        FROM (
            SELECT raw_t.userid, raw_t.sessionid, raw_t.to_state, raw_t.emit_prob, raw_t.log_term,
                   MAX(raw_t.log_term) OVER (PARTITION BY raw_t.userid, raw_t.sessionid, raw_t.to_state) AS max_term
            FROM (
                SELECT seq.userid, seq.sessionid, tr.to_state, em.prob AS emit_prob,
                       prev.log_alpha + LN(GREATEST(tr.prob, 1e-300)) AS log_term
                FROM hmm_sequences seq
                JOIN hmm_alpha prev ON prev.model_id = p_model_id
                    AND prev.userid = seq.userid AND prev.sessionid = seq.sessionid AND prev.pos = v_curp - 1
                JOIN hmm_params_trans tr ON tr.model_id = p_model_id AND tr.from_state = prev.state_id
                JOIN hmm_params_emit em ON em.model_id = p_model_id AND em.state_id = tr.to_state AND em.event = seq.event
                WHERE seq.model_id = p_model_id AND seq.pos = v_curp
            ) raw_t
        ) step2
        GROUP BY step2.userid, step2.sessionid, step2.to_state, step2.emit_prob, step2.max_term;
        SET v_curp = v_curp + 1;
    END WHILE lp_fwd;
END;
"""

# ---------------------------------------------------------------------------
# SP 4: Backward — renamed aliases, two-pass log-sum-exp
# ---------------------------------------------------------------------------
_STORED_PROCEDURES['SP_HMM_BACKWARD'] = """
REPLACE PROCEDURE SP_HMM_BACKWARD (IN p_model_id VARCHAR(50))
BEGIN
    DECLARE v_maxp INTEGER;
    DECLARE v_curp INTEGER;
    DELETE FROM hmm_beta WHERE model_id = p_model_id;
    INSERT INTO hmm_beta
    SELECT p_model_id, sess_t.userid, sess_t.sessionid, sess_t.maxp, pi_t.state_id, 0.0
    FROM (SELECT userid, sessionid, MAX(pos) AS maxp FROM hmm_sequences
          WHERE model_id = p_model_id GROUP BY userid, sessionid) sess_t
    CROSS JOIN (SELECT DISTINCT state_id FROM hmm_params_pi WHERE model_id = p_model_id) pi_t;
    SELECT MAX(pos) INTO v_maxp FROM hmm_sequences WHERE model_id = p_model_id;
    SET v_curp = v_maxp - 1;
    lp_bwd: WHILE v_curp >= 1 DO
        INSERT INTO hmm_beta
        SELECT p_model_id, step2.userid, step2.sessionid, v_curp, step2.from_st,
               step2.max_term + LN(SUM(EXP(step2.log_term - step2.max_term)))
        FROM (
            SELECT raw_t.userid, raw_t.sessionid, raw_t.from_st, raw_t.log_term,
                   MAX(raw_t.log_term) OVER (PARTITION BY raw_t.userid, raw_t.sessionid, raw_t.from_st) AS max_term
            FROM (
                SELECT nxt.userid, nxt.sessionid, tr.from_state AS from_st,
                       LN(GREATEST(tr.prob, 1e-300)) + LN(GREATEST(em.prob, 1e-300)) + nb.log_beta AS log_term
                FROM hmm_sequences nxt
                JOIN hmm_beta nb ON nb.model_id = p_model_id AND nb.userid = nxt.userid
                    AND nb.sessionid = nxt.sessionid AND nb.pos = v_curp + 1
                JOIN hmm_params_trans tr ON tr.model_id = p_model_id AND tr.to_state = nb.state_id
                JOIN hmm_params_emit em ON em.model_id = p_model_id AND em.state_id = nb.state_id AND em.event = nxt.event
                WHERE nxt.model_id = p_model_id AND nxt.pos = v_curp + 1
                  AND EXISTS (SELECT 1 FROM hmm_sequences s2 WHERE s2.model_id = p_model_id
                              AND s2.userid = nxt.userid AND s2.sessionid = nxt.sessionid AND s2.pos = v_curp)
            ) raw_t
        ) step2
        GROUP BY step2.userid, step2.sessionid, step2.from_st, step2.max_term;
        SET v_curp = v_curp - 1;
    END WHILE lp_bwd;
END;
"""

# ---------------------------------------------------------------------------
# SP 5: E-Step — uses derived-table JOINs for log-sum-exp (no volatile tables)
# Pattern: compute MAX in a derived table, JOIN it back, then SUM(EXP(val-max))
# ---------------------------------------------------------------------------
_STORED_PROCEDURES['SP_HMM_ESTEP'] = """
REPLACE PROCEDURE SP_HMM_ESTEP (IN p_model_id VARCHAR(50), OUT p_total_ll FLOAT)
BEGIN
    DELETE FROM hmm_gamma WHERE model_id = p_model_id;
    DELETE FROM hmm_xi WHERE model_id = p_model_id;

    SELECT SUM(sess_ll) INTO p_total_ll FROM (
        SELECT mx.userid, mx.sessionid,
               mx.max_la + LN(SUM(EXP(a.log_alpha - mx.max_la))) AS sess_ll
        FROM hmm_alpha a
        JOIN (
            SELECT a2.userid, a2.sessionid, MAX(a2.log_alpha) AS max_la
            FROM hmm_alpha a2
            JOIN (SELECT userid, sessionid, MAX(pos) AS maxp FROM hmm_sequences
                  WHERE model_id = p_model_id GROUP BY userid, sessionid) mp
                ON a2.userid = mp.userid AND a2.sessionid = mp.sessionid AND a2.pos = mp.maxp
            WHERE a2.model_id = p_model_id
            GROUP BY a2.userid, a2.sessionid
        ) mx ON a.userid = mx.userid AND a.sessionid = mx.sessionid
        JOIN (SELECT userid, sessionid, MAX(pos) AS maxp FROM hmm_sequences
              WHERE model_id = p_model_id GROUP BY userid, sessionid) mp2
            ON a.userid = mp2.userid AND a.sessionid = mp2.sessionid AND a.pos = mp2.maxp
        WHERE a.model_id = p_model_id
        GROUP BY mx.userid, mx.sessionid, mx.max_la
    ) ll_t;

    INSERT INTO hmm_gamma
    SELECT p_model_id, r.userid, r.sessionid, r.pos, r.state_id,
           EXP(r.log_ab - mx.max_log_ab) / agg.sum_exp
    FROM (
        SELECT a.userid, a.sessionid, a.pos, a.state_id,
               a.log_alpha + b.log_beta AS log_ab
        FROM hmm_alpha a
        JOIN hmm_beta b ON b.model_id = a.model_id AND b.userid = a.userid
            AND b.sessionid = a.sessionid AND b.pos = a.pos AND b.state_id = a.state_id
        WHERE a.model_id = p_model_id
    ) r
    JOIN (
        SELECT a.userid, a.sessionid, a.pos, MAX(a.log_alpha + b.log_beta) AS max_log_ab
        FROM hmm_alpha a
        JOIN hmm_beta b ON b.model_id = a.model_id AND b.userid = a.userid
            AND b.sessionid = a.sessionid AND b.pos = a.pos AND b.state_id = a.state_id
        WHERE a.model_id = p_model_id
        GROUP BY a.userid, a.sessionid, a.pos
    ) mx ON mx.userid = r.userid AND mx.sessionid = r.sessionid AND mx.pos = r.pos
    JOIN (
        SELECT sub_r.userid, sub_r.sessionid, sub_r.pos,
               SUM(EXP(sub_r.log_ab - sub_mx.max_log_ab)) AS sum_exp
        FROM (
            SELECT a.userid, a.sessionid, a.pos, a.log_alpha + b.log_beta AS log_ab
            FROM hmm_alpha a
            JOIN hmm_beta b ON b.model_id = a.model_id AND b.userid = a.userid
                AND b.sessionid = a.sessionid AND b.pos = a.pos AND b.state_id = a.state_id
            WHERE a.model_id = p_model_id
        ) sub_r
        JOIN (
            SELECT a.userid, a.sessionid, a.pos, MAX(a.log_alpha + b.log_beta) AS max_log_ab
            FROM hmm_alpha a
            JOIN hmm_beta b ON b.model_id = a.model_id AND b.userid = a.userid
                AND b.sessionid = a.sessionid AND b.pos = a.pos AND b.state_id = a.state_id
            WHERE a.model_id = p_model_id
            GROUP BY a.userid, a.sessionid, a.pos
        ) sub_mx ON sub_mx.userid = sub_r.userid AND sub_mx.sessionid = sub_r.sessionid AND sub_mx.pos = sub_r.pos
        GROUP BY sub_r.userid, sub_r.sessionid, sub_r.pos
    ) agg ON agg.userid = r.userid AND agg.sessionid = r.sessionid AND agg.pos = r.pos;

    INSERT INTO hmm_xi
    SELECT p_model_id, r.userid, r.sessionid, r.pos, r.from_st, r.to_st,
           EXP(r.log_raw - mx.max_log_raw) / agg.sum_exp
    FROM (
        SELECT a.userid, a.sessionid, a.pos,
               a.state_id AS from_st, bn.state_id AS to_st,
               a.log_alpha + LN(GREATEST(tr.prob, 1e-300)) + LN(GREATEST(em.prob, 1e-300)) + bn.log_beta AS log_raw
        FROM hmm_alpha a
        JOIN hmm_params_trans tr ON tr.model_id = p_model_id AND tr.from_state = a.state_id
        JOIN hmm_sequences nxt ON nxt.model_id = p_model_id AND nxt.userid = a.userid
            AND nxt.sessionid = a.sessionid AND nxt.pos = a.pos + 1
        JOIN hmm_params_emit em ON em.model_id = p_model_id AND em.state_id = tr.to_state AND em.event = nxt.event
        JOIN hmm_beta bn ON bn.model_id = p_model_id AND bn.userid = a.userid
            AND bn.sessionid = a.sessionid AND bn.pos = a.pos + 1 AND bn.state_id = tr.to_state
        WHERE a.model_id = p_model_id
    ) r
    JOIN (
        SELECT a.userid, a.sessionid, a.pos,
               MAX(a.log_alpha + LN(GREATEST(tr.prob, 1e-300)) + LN(GREATEST(em.prob, 1e-300)) + bn.log_beta) AS max_log_raw
        FROM hmm_alpha a
        JOIN hmm_params_trans tr ON tr.model_id = p_model_id AND tr.from_state = a.state_id
        JOIN hmm_sequences nxt ON nxt.model_id = p_model_id AND nxt.userid = a.userid
            AND nxt.sessionid = a.sessionid AND nxt.pos = a.pos + 1
        JOIN hmm_params_emit em ON em.model_id = p_model_id AND em.state_id = tr.to_state AND em.event = nxt.event
        JOIN hmm_beta bn ON bn.model_id = p_model_id AND bn.userid = a.userid
            AND bn.sessionid = a.sessionid AND bn.pos = a.pos + 1 AND bn.state_id = tr.to_state
        WHERE a.model_id = p_model_id
        GROUP BY a.userid, a.sessionid, a.pos
    ) mx ON mx.userid = r.userid AND mx.sessionid = r.sessionid AND mx.pos = r.pos
    JOIN (
        SELECT sub_r.userid, sub_r.sessionid, sub_r.pos,
               SUM(EXP(sub_r.log_raw - sub_mx.max_log_raw)) AS sum_exp
        FROM (
            SELECT a.userid, a.sessionid, a.pos,
                   a.log_alpha + LN(GREATEST(tr.prob, 1e-300)) + LN(GREATEST(em.prob, 1e-300)) + bn.log_beta AS log_raw
            FROM hmm_alpha a
            JOIN hmm_params_trans tr ON tr.model_id = p_model_id AND tr.from_state = a.state_id
            JOIN hmm_sequences nxt ON nxt.model_id = p_model_id AND nxt.userid = a.userid
                AND nxt.sessionid = a.sessionid AND nxt.pos = a.pos + 1
            JOIN hmm_params_emit em ON em.model_id = p_model_id AND em.state_id = tr.to_state AND em.event = nxt.event
            JOIN hmm_beta bn ON bn.model_id = p_model_id AND bn.userid = a.userid
                AND bn.sessionid = a.sessionid AND bn.pos = a.pos + 1 AND bn.state_id = tr.to_state
            WHERE a.model_id = p_model_id
        ) sub_r
        JOIN (
            SELECT a.userid, a.sessionid, a.pos,
                   MAX(a.log_alpha + LN(GREATEST(tr.prob, 1e-300)) + LN(GREATEST(em.prob, 1e-300)) + bn.log_beta) AS max_log_raw
            FROM hmm_alpha a
            JOIN hmm_params_trans tr ON tr.model_id = p_model_id AND tr.from_state = a.state_id
            JOIN hmm_sequences nxt ON nxt.model_id = p_model_id AND nxt.userid = a.userid
                AND nxt.sessionid = a.sessionid AND nxt.pos = a.pos + 1
            JOIN hmm_params_emit em ON em.model_id = p_model_id AND em.state_id = tr.to_state AND em.event = nxt.event
            JOIN hmm_beta bn ON bn.model_id = p_model_id AND bn.userid = a.userid
                AND bn.sessionid = a.sessionid AND bn.pos = a.pos + 1 AND bn.state_id = tr.to_state
            WHERE a.model_id = p_model_id
            GROUP BY a.userid, a.sessionid, a.pos
        ) sub_mx ON sub_mx.userid = sub_r.userid AND sub_mx.sessionid = sub_r.sessionid AND sub_mx.pos = sub_r.pos
        GROUP BY sub_r.userid, sub_r.sessionid, sub_r.pos
    ) agg ON agg.userid = r.userid AND agg.sessionid = r.sessionid AND agg.pos = r.pos;
END;
"""

# ---------------------------------------------------------------------------
# SP 6: M-Step — renamed aliases to avoid reserved words
# ---------------------------------------------------------------------------
_STORED_PROCEDURES['SP_HMM_MSTEP'] = """
REPLACE PROCEDURE SP_HMM_MSTEP (IN p_model_id VARCHAR(50), IN p_sm FLOAT)
BEGIN
    DECLARE v_ns INTEGER;
    DECLARE v_ne INTEGER;
    SELECT COUNT(*) INTO v_ns FROM hmm_params_pi WHERE model_id = p_model_id;
    SELECT COUNT(DISTINCT event) INTO v_ne FROM hmm_sequences WHERE model_id = p_model_id;

    DELETE FROM hmm_params_pi WHERE model_id = p_model_id;
    INSERT INTO hmm_params_pi
    SELECT p_model_id, state_id, (AVG(gamma_val) + p_sm) / (1.0 + p_sm * v_ns)
    FROM hmm_gamma WHERE model_id = p_model_id AND pos = 1 GROUP BY state_id;

    DELETE FROM hmm_params_trans WHERE model_id = p_model_id;
    INSERT INTO hmm_params_trans
    SELECT p_model_id, xi_agg.from_state, xi_agg.to_state,
           (xi_agg.xi_sum + p_sm) / (gam_agg.gam_sum + p_sm * v_ns)
    FROM (SELECT from_state, to_state, SUM(xi_val) AS xi_sum
          FROM hmm_xi WHERE model_id = p_model_id
          GROUP BY from_state, to_state) xi_agg
    JOIN (SELECT gam.state_id, SUM(gam.gamma_val) AS gam_sum
          FROM hmm_gamma gam
          JOIN (SELECT userid, sessionid, MAX(pos) AS maxp FROM hmm_sequences
                WHERE model_id = p_model_id GROUP BY userid, sessionid) mx
              ON gam.userid = mx.userid AND gam.sessionid = mx.sessionid
          WHERE gam.model_id = p_model_id AND gam.pos < mx.maxp
          GROUP BY gam.state_id) gam_agg
        ON gam_agg.state_id = xi_agg.from_state;

    DELETE FROM hmm_params_emit WHERE model_id = p_model_id;
    INSERT INTO hmm_params_emit
    SELECT p_model_id, num_t.state_id, num_t.event,
           (num_t.wcount + p_sm) / (den_t.gam_total + p_sm * v_ne)
    FROM (SELECT gam.state_id, sq.event, SUM(gam.gamma_val) AS wcount
          FROM hmm_gamma gam
          JOIN hmm_sequences sq ON sq.model_id = p_model_id AND sq.userid = gam.userid
              AND sq.sessionid = gam.sessionid AND sq.pos = gam.pos
          WHERE gam.model_id = p_model_id
          GROUP BY gam.state_id, sq.event) num_t
    JOIN (SELECT state_id, SUM(gamma_val) AS gam_total
          FROM hmm_gamma WHERE model_id = p_model_id
          GROUP BY state_id) den_t
        ON den_t.state_id = num_t.state_id;
END;
"""

# ---------------------------------------------------------------------------
# SP 7: Train orchestrator — labeled WHILE for LEAVE
# ---------------------------------------------------------------------------
_STORED_PROCEDURES['SP_HMM_TRAIN'] = """
REPLACE PROCEDURE SP_HMM_TRAIN (
    IN p_model_id VARCHAR(50), IN p_source_table VARCHAR(128),
    IN p_target_event VARCHAR(100), IN p_outcome_flag INTEGER,
    IN p_num_states INTEGER, IN p_max_iter INTEGER,
    IN p_tol FLOAT, IN p_smoothing FLOAT
)
BEGIN
    DECLARE v_iter INTEGER;
    DECLARE v_ll FLOAT;
    DECLARE v_prev_ll FLOAT;
    DECLARE v_delta FLOAT;
    DECLARE v_nsess INTEGER;

    CALL SP_HMM_EXTRACT_SEQUENCES(p_model_id, p_source_table, p_target_event, p_outcome_flag);
    CALL SP_HMM_INIT(p_model_id, p_num_states);

    SELECT COUNT(DISTINCT userid || '|' || TRIM(CAST(sessionid AS VARCHAR(20))))
    INTO v_nsess FROM hmm_sequences WHERE model_id = p_model_id;

    SET v_iter = 1;
    SET v_prev_ll = -1e18;

    lp_em: WHILE v_iter <= p_max_iter DO
        CALL SP_HMM_FORWARD(p_model_id);
        CALL SP_HMM_BACKWARD(p_model_id);
        CALL SP_HMM_ESTEP(p_model_id, v_ll);

        INSERT INTO hmm_train_log (model_id, iteration, total_log_lik, avg_log_lik, n_sessions)
        VALUES (p_model_id, v_iter, v_ll,
                CASE WHEN v_nsess > 0 THEN v_ll / v_nsess ELSE 0 END, v_nsess);

        SET v_delta = ABS(COALESCE(v_ll, 0) - v_prev_ll);
        IF v_delta < p_tol AND v_iter > 1 THEN
            LEAVE lp_em;
        END IF;

        CALL SP_HMM_MSTEP(p_model_id, p_smoothing);
        SET v_prev_ll = v_ll;
        SET v_iter = v_iter + 1;
    END WHILE lp_em;
END;
"""

# ---------------------------------------------------------------------------
# SP 8: Score sessions — uses SET var + EXECUTE IMMEDIATE var
# ---------------------------------------------------------------------------
_STORED_PROCEDURES['SP_HMM_SCORE_SESSIONS'] = """
REPLACE PROCEDURE SP_HMM_SCORE_SESSIONS (
    IN p_model_id VARCHAR(50), IN p_source_table VARCHAR(128),
    IN p_score_model_id VARCHAR(50)
)
BEGIN
    DECLARE v_sid VARCHAR(50);
    DECLARE v_sql VARCHAR(10000);

    SET v_sid = p_model_id || '_sc';

    DELETE FROM hmm_sequences WHERE model_id = v_sid;
    SET v_sql =
    'INSERT INTO hmm_sequences'
    || ' SELECT ''' || v_sid || ''', UserID, SessionID,'
    || ' ROW_NUMBER() OVER (PARTITION BY UserID, SessionID ORDER BY "Event_TS"), Event'
    || ' FROM ' || p_source_table
    || ' WHERE Event NOT LIKE ''Apply%''';
    EXECUTE IMMEDIATE v_sql;

    DELETE FROM hmm_sequences WHERE model_id = v_sid
      AND (userid, sessionid) IN (
          SELECT userid, sessionid FROM hmm_sequences
          WHERE model_id = v_sid GROUP BY userid, sessionid HAVING MAX(pos) < 2);

    DELETE FROM hmm_params_pi WHERE model_id = v_sid;
    INSERT INTO hmm_params_pi SELECT v_sid, state_id, prob
    FROM hmm_params_pi WHERE model_id = p_model_id;

    DELETE FROM hmm_params_trans WHERE model_id = v_sid;
    INSERT INTO hmm_params_trans SELECT v_sid, from_state, to_state, prob
    FROM hmm_params_trans WHERE model_id = p_model_id;

    DELETE FROM hmm_params_emit WHERE model_id = v_sid;
    INSERT INTO hmm_params_emit SELECT v_sid, state_id, event, prob
    FROM hmm_params_emit WHERE model_id = p_model_id;

    CALL SP_HMM_FORWARD(v_sid);

    DELETE FROM hmm_scores WHERE model_id = p_score_model_id;
    INSERT INTO hmm_scores
    SELECT p_score_model_id, mx.userid, mx.sessionid,
           mx.max_la + LN(SUM(EXP(a.log_alpha - mx.max_la)))
    FROM hmm_alpha a
    JOIN (
        SELECT a2.userid, a2.sessionid, MAX(a2.log_alpha) AS max_la
        FROM hmm_alpha a2
        JOIN (SELECT userid, sessionid, MAX(pos) AS maxp FROM hmm_sequences
              WHERE model_id = v_sid GROUP BY userid, sessionid) mp
            ON a2.userid = mp.userid AND a2.sessionid = mp.sessionid AND a2.pos = mp.maxp
        WHERE a2.model_id = v_sid
        GROUP BY a2.userid, a2.sessionid
    ) mx ON a.userid = mx.userid AND a.sessionid = mx.sessionid
    JOIN (SELECT userid, sessionid, MAX(pos) AS maxp FROM hmm_sequences
          WHERE model_id = v_sid GROUP BY userid, sessionid) mp3
        ON a.userid = mp3.userid AND a.sessionid = mp3.sessionid AND a.pos = mp3.maxp
    WHERE a.model_id = v_sid
    GROUP BY mx.userid, mx.sessionid, mx.max_la;

    DELETE FROM hmm_sequences WHERE model_id = v_sid;
    DELETE FROM hmm_params_pi WHERE model_id = v_sid;
    DELETE FROM hmm_params_trans WHERE model_id = v_sid;
    DELETE FROM hmm_params_emit WHERE model_id = v_sid;
    DELETE FROM hmm_alpha WHERE model_id = v_sid;
END;
"""


def install_all_stored_procedures():
    """Install all 8 HMM stored procedures on Vantage.
    Uses raw teradatasql connection (TERA mode) for multi-statement DDL."""
    print("Installing stored procedures...")
    for name, sql in _STORED_PROCEDURES.items():
        try:
            _execute_raw(sql)
            print(f"  Installed {name}")
        except Exception as e:
            print(f"  ERROR {name}: {e}")


def install_stored_procedure(name):
    """Install a single stored procedure by name."""
    if name not in _STORED_PROCEDURES:
        print(f"  Unknown SP: {name}. Available: {list(_STORED_PROCEDURES.keys())}")
        return
    try:
        _execute_raw(_STORED_PROCEDURES[name])
        print(f"  Installed {name}")
    except Exception as e:
        print(f"  ERROR {name}: {e}")


def drop_all_stored_procedures():
    """Drop all HMM stored procedures."""
    for name in _STORED_PROCEDURES:
        try:
            _execute(f"DROP PROCEDURE {name}")
            print(f"  Dropped {name}")
        except:
            pass


def dump_sp_sql(name, filepath=None):
    """Print or save the SQL for a stored procedure (for debugging)."""
    if name not in _STORED_PROCEDURES:
        print(f"Unknown SP: {name}")
        return
    sql = _STORED_PROCEDURES[name]
    if filepath:
        with open(filepath, 'w') as f:
            f.write(sql)
        print(f"Saved {name} SQL to {filepath}")
    else:
        print(sql)


def list_stored_procedures():
    """List all available stored procedure names."""
    return list(_STORED_PROCEDURES.keys())


# ============================================================================
# HIGH-LEVEL TRAINING & SCORING WORKFLOWS
# ============================================================================

# def train_binary_hmm(target_event, train_table, n_states=3, max_iter=15,
def train_binary_hmm(target_event, train_table, n_states=1, max_iter=1,
                     tol=1.0, smoothing=0.001):
    """
    Train positive and negative HMMs for binary classification.
    Returns (pos_model_id, neg_model_id).
    """
    pos_id = f'bin_{target_event}_pos_{n_states}s'
    neg_id = f'bin_{target_event}_neg_{n_states}s'
    
    print("Training step 1")
    print(f"\nTraining binary HMM for '{target_event}' ({n_states} states)...")
    run_sp(
        f"CALL SP_HMM_TRAIN('{pos_id}', '{train_table}', '{target_event}', "
        f"1, {n_states}, {max_iter}, {tol}, {smoothing})",
        "Positive class"
    )
    print("Training step 2")
    run_sp(
        f"CALL SP_HMM_TRAIN('{neg_id}', '{train_table}', '{target_event}', "
        f"0, {n_states}, {max_iter}, {tol}, {smoothing})",
        "Negative class"
    )

    for mid in [pos_id, neg_id]:
        log_df = get_train_log(mid)
        if len(log_df) > 0:
            print(f"  {mid}: {len(log_df)} iters, "
                  f"final ll={log_df['avg_log_lik'].iloc[-1]:.4f}")

    return pos_id, neg_id


def score_binary_hmm(pos_model_id, neg_model_id, test_table):
    """
    Score test sessions against pos/neg models.
    Returns DataFrame with userid, sessionid, log_likelihood_pos/neg, log_odds, prob.
    """
    score_pos = f'score_{pos_model_id}'
    score_neg = f'score_{neg_model_id}'

    run_sp(
        f"CALL SP_HMM_SCORE_SESSIONS('{pos_model_id}', '{test_table}', '{score_pos}')",
        "Score positive"
    )
    run_sp(
        f"CALL SP_HMM_SCORE_SESSIONS('{neg_model_id}', '{test_table}', '{score_neg}')",
        "Score negative"
    )

    sp = get_scores(score_pos)
    sn = get_scores(score_neg)
    # Normalize join key types
    for df in [sp, sn]:
        df['sessionid'] = df['sessionid'].astype(str)
        df['userid'] = df['userid'].astype(str).str.strip()
    merged = sp.merge(sn, on=['userid', 'sessionid'], suffixes=('_pos', '_neg'))
    merged['log_odds'] = merged['log_likelihood_pos'] - merged['log_likelihood_neg']
    merged['prob'] = 1 / (1 + np.exp(-merged['log_odds'].clip(-50, 50)))
    return merged


def evaluate_binary(scores_df, test_table, target_event, thresholds=(0.3, 0.5, 0.7)):
    """
    Evaluate binary classification. Returns dict with metrics.
    """
    labels = get_test_labels(test_table)

    # Normalize column names to lowercase (Teradata returns UPPER)
    scores_df.columns = [c.lower() for c in scores_df.columns]
    labels.columns = [c.lower() for c in labels.columns]

    # Robust label: handle None, NaN, 'None', empty string
    def classify_label(x):
        if x is None or (isinstance(x, float) and np.isnan(x)):
            return 'NoApplication'
        s = str(x).strip()
        if s in ('', 'None', 'nan', 'NaN'):
            return 'NoApplication'
        if s == target_event:
            return target_event
        return 'Other'

    labels['label'] = labels['apply_type'].apply(classify_label)

    # Ensure join key types match (Teradata may return Decimal for sessionid)
    for df in [scores_df, labels]:
        if 'sessionid' in df.columns:
            df['sessionid'] = df['sessionid'].astype(str)
        if 'userid' in df.columns:
            df['userid'] = df['userid'].astype(str).str.strip()

    m = scores_df.merge(labels[['userid', 'sessionid', 'label']], on=['userid', 'sessionid'], how='inner')
    m = m[m['label'].isin([target_event, 'NoApplication'])].copy()

    if len(m) == 0:
        print(f"\n  WARNING: 0 sessions after merge. Debug info:")
        print(f"    scores_df: {len(scores_df)} rows, userid sample: {scores_df['userid'].head(3).tolist()}")
        print(f"    labels: {len(labels)} rows, userid sample: {labels['userid'].head(3).tolist()}")
        print(f"    label distribution: {labels['label'].value_counts().to_dict()}")
        return {'true': np.array([]), 'probs': np.array([]), 'thresholds': {}, 'auc': 0}

    true = (m['label'] == target_event).astype(int).values
    probs = m['prob'].values

    print(f"\n  Binary evaluation ({len(m)} sessions, {true.sum()} positive):")
    results = {'true': true, 'probs': probs, 'thresholds': {}}
    for th in thresholds:
        preds = (probs >= th).astype(int)
        p, r, f, _ = precision_recall_fscore_support(true, preds, average='binary', zero_division=0)
        acc = accuracy_score(true, preds)
        results['thresholds'][th] = {'accuracy': acc, 'precision': p, 'recall': r, 'f1': f}
        print(f"    Th={th:.1f}: Acc={acc:.3f} P={p:.3f} R={r:.3f} F1={f:.3f}")

    try:
        auc = roc_auc_score(true, probs)
    except:
        auc = 0
    results['auc'] = auc
    print(f"    AUC-ROC: {auc:.4f}")
    return results

# max iteration set to 1 for testing purpose only, for post testing max_iter = 12 
def train_multiclass_hmm(train_table, n_states=3, max_iter=1, tol=1.0, smoothing=0.001):
    """
    Train one HMM per Apply* class + NoApplication.
    Returns dict {class_name: model_id}.
    """
    apply_events = get_apply_events(train_table)
    print(f"\nTraining multiclass HMMs ({n_states} states) for {len(apply_events)} Apply classes + NoApplication...")

    model_ids = {}
    for event in apply_events:
        mid = f'mc_{event}_{n_states}s'
        run_sp(
            f"CALL SP_HMM_TRAIN('{mid}', '{train_table}', '{event}', "
            f"1, {n_states}, {max_iter}, {tol}, {smoothing})",
            event
        )
        model_ids[event] = mid

    # NoApplication model (sessions with no Apply event at all)
    mid_no = f'mc_NoApp_{n_states}s'
    # Use any target_event — outcome_flag=0 selects sessions with NO Apply* events
    run_sp(
        f"CALL SP_HMM_TRAIN('{mid_no}', '{train_table}', '{apply_events[0]}', "
        f"0, {n_states}, {max_iter}, {tol}, {smoothing})",
        "NoApplication"
    )
    model_ids['NoApplication'] = mid_no

    # Print convergence
    for cls, mid in model_ids.items():
        log_df = get_train_log(mid)
        if len(log_df) > 0:
            print(f"  {cls}: {len(log_df)} iters, ll={log_df['avg_log_lik'].iloc[-1]:.4f}")

    return model_ids


def score_multiclass_hmm(model_ids, test_table):
    """
    Score test sessions against all class HMMs.
    Returns DataFrame with userid, sessionid, ll_<class> columns, prediction.
    """
    print(f"\nScoring test set against {len(model_ids)} class models...")
    all_scores = {}
    for cls, mid in model_ids.items():
        score_id = f'mcscore_{cls}'
        run_sp(
            f"CALL SP_HMM_SCORE_SESSIONS('{mid}', '{test_table}', '{score_id}')",
            cls
        )
        df_sc = get_scores(score_id).rename(columns={'log_likelihood': f'll_{cls}'})
        df_sc['sessionid'] = df_sc['sessionid'].astype(str)
        df_sc['userid'] = df_sc['userid'].astype(str).str.strip()
        all_scores[cls] = df_sc[['userid', 'sessionid', f'll_{cls}']]

    merged = None
    for cls, df_sc in all_scores.items():
        merged = df_sc if merged is None else merged.merge(df_sc, on=['userid', 'sessionid'], how='outer')

    ll_cols = [c for c in merged.columns if c.startswith('ll_')]
    class_names = [c.replace('ll_', '') for c in ll_cols]
    ll_matrix = merged[ll_cols].fillna(-1e10).values
    merged['prediction'] = [class_names[i] for i in np.argmax(ll_matrix, axis=1)]
    return merged, class_names


def evaluate_multiclass(scores_df, test_table):
    """
    Evaluate multiclass classification. Returns dict with metrics.
    """
    labels = get_test_labels(test_table)
    labels.columns = [c.lower() for c in labels.columns]

    # Robust null handling for apply_type
    labels['true_class'] = labels['apply_type'].apply(
        lambda x: 'NoApplication' if x is None or (isinstance(x, float) and np.isnan(x))
        or str(x).strip() in ('', 'None', 'nan') else str(x).strip()
    )

    # Normalize join keys
    for df in [scores_df, labels]:
        if 'sessionid' in df.columns:
            df['sessionid'] = df['sessionid'].astype(str)
        if 'userid' in df.columns:
            df['userid'] = df['userid'].astype(str).str.strip()

    m = scores_df.merge(labels[['userid', 'sessionid', 'true_class']], on=['userid', 'sessionid'], how='inner')

    if len(m) == 0:
        print(f"\n  WARNING: 0 sessions after merge.")
        return {'merged': m, 'accuracy': 0, 'weighted_precision': 0, 'weighted_recall': 0, 'weighted_f1': 0}

    acc = accuracy_score(m['true_class'], m['prediction'])
    print(f"\n  Multiclass evaluation ({len(m)} sessions):")
    print(f"  Overall accuracy: {acc:.4f}")
    print(classification_report(m['true_class'], m['prediction'], zero_division=0))

    p, r, f, _ = precision_recall_fscore_support(
        m['true_class'], m['prediction'], average='weighted', zero_division=0
    )
    return {
        'merged': m, 'accuracy': acc,
        'weighted_precision': p, 'weighted_recall': r, 'weighted_f1': f
    }


# ============================================================================
# MODEL INTERPRETATION
# ============================================================================

def print_model_interpretation(model_id, n_top=8):
    """Print top emissions per state and the transition matrix for a model."""
    emit_df = get_top_emissions(model_id, n_top)
    trans_df = get_transition_matrix(model_id)

    if len(emit_df) > 0:
        print(f"\n  Top emissions for {model_id}:")
        for state in sorted(emit_df['state_id'].unique()):
            sdf = emit_df[emit_df['state_id'] == state]
            evts = ', '.join(f"{r['event']}({r['prob']:.3f})" for _, r in sdf.iterrows())
            print(f"    State {state}: {evts}")

    if len(trans_df) > 0:
        print(f"  Transitions:")
        for fs in sorted(trans_df['from_state'].unique()):
            row = trans_df[trans_df['from_state'] == fs]
            vals = ' '.join(f"{r['prob']:.3f}" for _, r in row.iterrows())
            print(f"    {fs} -> [{vals}]")


# ============================================================================
# VISUALIZATION
# ============================================================================

def plot_binary_results(binary_results, target_event, save_path='hmm_binary_results.png'):
    """Plot AUC bar chart and ROC curves for binary classification."""
    fig, axes = plt.subplots(1, 2, figsize=(14, 5))

    states = sorted(binary_results.keys())
    aucs = [binary_results[s]['auc'] for s in states]
    colors = ['#FF6B35', '#1B4965', '#5FA8D3', '#9B5DE5', '#00BBF9']

    ax = axes[0]
    bars = ax.bar(states, aucs, color=colors[:len(states)])
    ax.set_xlabel('Hidden States'); ax.set_ylabel('AUC-ROC')
    ax.set_title(f'Binary HMM AUC: {target_event}')
    ax.set_xticks(states)
    for bar, v in zip(bars, aucs):
        ax.text(bar.get_x() + bar.get_width()/2, v + 0.005, f'{v:.3f}', ha='center')

    ax = axes[1]
    for ns in states:
        r = binary_results[ns]
        fpr, tpr, _ = roc_curve(r['true'], r['probs'])
        ax.plot(fpr, tpr, label=f'{ns} states (AUC={r["auc"]:.3f})')
    ax.plot([0, 1], [0, 1], 'k--', alpha=0.3)
    ax.set_xlabel('FPR'); ax.set_ylabel('TPR')
    ax.set_title(f'ROC Curves: {target_event}'); ax.legend()

    plt.tight_layout()
    plt.savefig(save_path, dpi=150, bbox_inches='tight'); plt.close()
    print(f"  Saved {save_path}")


def plot_multiclass_results(mc_results, save_path='hmm_multiclass_results.png'):
    """Plot confusion matrix heatmap."""
    m = mc_results['merged']
    labels_order = sorted(m['true_class'].unique())
    cm = confusion_matrix(m['true_class'], m['prediction'], labels=labels_order)
    cm_norm = cm.astype(float) / cm.sum(axis=1, keepdims=True).clip(min=1)

    fig, ax = plt.subplots(figsize=(10, 8))
    sns.heatmap(cm_norm, annot=True, fmt='.2f', cmap='Blues',
                xticklabels=labels_order, yticklabels=labels_order, ax=ax)
    ax.set_xlabel('Predicted'); ax.set_ylabel('True')
    ax.set_title(f'Multiclass Confusion Matrix (Acc={mc_results["accuracy"]:.3f})')
    plt.setp(ax.get_xticklabels(), rotation=45, ha='right', fontsize=8)
    plt.setp(ax.get_yticklabels(), fontsize=8)
    plt.tight_layout()
    plt.savefig(save_path, dpi=150, bbox_inches='tight'); plt.close()
    print(f"  Saved {save_path}")


def plot_training_convergence(model_ids, save_path='hmm_convergence.png'):
    """Plot training convergence for a set of models."""
    fig, ax = plt.subplots(figsize=(10, 6))
    for label, mid in model_ids.items():
        log_df = get_train_log(mid)
        if len(log_df) > 0:
            ax.plot(log_df['iteration'], log_df['avg_log_lik'], marker='o', markersize=3, label=label)
    ax.set_xlabel('EM Iteration'); ax.set_ylabel('Avg Log-Likelihood')
    ax.set_title('HMM Training Convergence (Teradata)')
    ax.legend(fontsize=7, ncol=2)
    plt.tight_layout()
    plt.savefig(save_path, dpi=150, bbox_inches='tight'); plt.close()
    print(f"  Saved {save_path}")


def plot_all_results(binary_results_dict, mc_results, target_event,
                     save_path='hmm_teradata_all_results.png'):
    """Combined 2x2 plot of all results."""
    fig, axes = plt.subplots(2, 2, figsize=(16, 12))
    colors = ['#FF6B35', '#1B4965', '#5FA8D3']

    # 1: AUC bars
    states = sorted(binary_results_dict.keys())
    aucs = [binary_results_dict[s]['auc'] for s in states]
    bars = axes[0, 0].bar(states, aucs, color=colors[:len(states)])
    axes[0, 0].set_title(f'Binary AUC: {target_event}')
    axes[0, 0].set_xlabel('States'); axes[0, 0].set_ylabel('AUC')
    for bar, v in zip(bars, aucs):
        axes[0, 0].text(bar.get_x() + bar.get_width()/2, v + 0.003, f'{v:.3f}', ha='center')

    # 2: ROC
    for ns in states:
        r = binary_results_dict[ns]
        fpr, tpr, _ = roc_curve(r['true'], r['probs'])
        axes[0, 1].plot(fpr, tpr, label=f'{ns}s (AUC={r["auc"]:.3f})')
    axes[0, 1].plot([0, 1], [0, 1], 'k--', alpha=0.3)
    axes[0, 1].set_title('ROC Curves'); axes[0, 1].legend()

    # 3: Convergence (use first binary result's models)
    first_ns = states[0]
    pos_id = f'bin_{target_event}_pos_{first_ns}s'
    neg_id = f'bin_{target_event}_neg_{first_ns}s'
    for mid, ls in [(pos_id, '-'), (neg_id, '--')]:
        log_df = get_train_log(mid)
        if len(log_df) > 0:
            axes[1, 0].plot(log_df['iteration'], log_df['avg_log_lik'],
                            ls=ls, label=mid.split('_')[-2])
    axes[1, 0].set_title('Training Convergence'); axes[1, 0].legend(fontsize=8)
    axes[1, 0].set_xlabel('Iteration'); axes[1, 0].set_ylabel('Avg LL')

    # 4: Multiclass confusion
    m = mc_results['merged']
    lo = sorted(m['true_class'].unique())
    cm = confusion_matrix(m['true_class'], m['prediction'], labels=lo)
    cmn = cm.astype(float) / cm.sum(axis=1, keepdims=True).clip(min=1)
    sns.heatmap(cmn, annot=True, fmt='.2f', cmap='Blues',
                xticklabels=lo, yticklabels=lo, ax=axes[1, 1])
    axes[1, 1].set_title(f'Multiclass (Acc={mc_results["accuracy"]:.3f})')
    plt.setp(axes[1, 1].get_xticklabels(), rotation=45, ha='right', fontsize=7)
    plt.setp(axes[1, 1].get_yticklabels(), fontsize=7)

    plt.tight_layout()
    plt.savefig(save_path, dpi=150, bbox_inches='tight'); plt.close()
    print(f"  Saved {save_path}")
