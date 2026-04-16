import teradataml as tdml
try:
    tdml.display.enable_ui = False
except:
    pass

import sys
import os
from contextlib import contextmanager
import re
from collections import OrderedDict
import networkx as nx
import pandas as pd

@contextmanager
def suppress_prints():
    """Suppress print statements within the context."""
    original_stdout = sys.stdout
    sys.stdout = open(os.devnull, 'w')
    try:
        yield
    finally:
        sys.stdout.close()
        sys.stdout = original_stdout

with suppress_prints():
    import tdfs4ds

tdfs4ds.DISPLAY_LOGS = False
tdfs4ds.DEBUG_MODE = False

def replace_case_insensitive(query, old_name, new_name):
    """Replace column or table name in SQL query using case-insensitive matching."""
    pattern = r'\b' + re.escape(old_name) + r'\b'
    return re.sub(pattern, new_name, query, flags=re.IGNORECASE)

def get_CTE_query(DF: tdml.DataFrame):
    """
    Generate a single CTE (Common Table Expression) SQL query 
    representing the lineage of a teradataml DataFrame.
    
    This consolidates all intermediate transformations 
    into a single SQL statement for deployment.

    Args:
        DF (tdml.DataFrame): The input teradataml DataFrame.

    Returns:
        str: The full SQL query with all transformations inlined as CTEs.
    """
    tddf = DF
    view_name = "pipeline"
    tddf_columns = tddf.columns

    # Force table name materialization
    tddf._DataFrame__execute_node_and_set_table_name(tddf._nodeid, tddf._metaexpr)

    with suppress_prints():
        tddf_graph_, _ = tdfs4ds.utils.lineage.analyze_sql_query(
            tddf.show_query(), target=tddf._table_name
        )

    # Remove self-loop edges
    tddf_graph = pd.DataFrame(
        [[s, t] for s, t in zip(tddf_graph_['source'], tddf_graph_['target']) if s != t],
        columns=['source', 'target']
    )

    # Build dependency graph
    dependency_graph = nx.DiGraph()
    for parent, child in zip(tddf_graph['source'], tddf_graph['target']):
        dependency_graph.add_edge(parent, child)

    sorted_nodes = list(nx.topological_sort(dependency_graph))

    # Identify relevant transformation targets
    targets = []
    for x in sorted_nodes:
        parts = x.split('.')
        if len(parts) > 1 and (parts[1].upper().startswith('ML__') or parts[1].upper().startswith('"ML__')):
            if x not in targets:
                targets.append(x)

    # Build name mapping
    if len(targets) > 1:
        mapping = OrderedDict({n: f"{view_name}_step_{i}" for i, n in enumerate(targets)})
    elif len(targets) == 1:
        mapping = {tddf_graph['target'].values[0]: view_name}
    else:
        mapping = {tddf._table_name: view_name}

    last_new_name = ""
    all_queries = []

    # Compose CTEs
    for old_name, new_name in mapping.items():
        last_new_name = new_name
        raw_query = tdml.execute_sql(f"SHOW VIEW {old_name}").fetchall()[0][0].replace('\r', '\n')
        query = tdfs4ds.utils.lineage.query_change_case(raw_query, 'lower')
        query = tdfs4ds.utils.lineage.query_replace(query, ' create view ', '')
        for old_sub_name, new_sub_name in mapping.items():
            query = tdfs4ds.utils.lineage.query_change_case(query, 'upper').replace(
                old_sub_name.upper(), new_sub_name.upper()
            )
        query = query.replace(" AS ", " AS (\n", 1) + "\n)"
        all_queries.append(query)

    combined_ctes = "\n\n,".join(all_queries)
    final_query = f"""WITH {combined_ctes}\n\nSELECT * FROM {last_new_name}"""
    return final_query
