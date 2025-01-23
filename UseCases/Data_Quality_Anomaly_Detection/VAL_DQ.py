#!/usr/bin/env python
# coding: utf-8

# # Teradata Vantage process to determine the change in Data distribution
# 
# Date: 04/01/2021
# Developed by: Teradata

##################
# Load libraries #
##################
import pandas as pd
import numpy as np
import getpass
from datetime import datetime as dt
from datetime import timedelta, date
from sqlalchemy import func, sql, case, and_, or_, not_, distinct, cast, Numeric
import math

# Load Teradata Python packages
from teradataml.context.context import *
from teradataml.dataframe.dataframe import DataFrame
from teradataml.dataframe.dataframe import in_schema
from teradataml.dataframe.copy_to import copy_to_sql

from teradataml import configure
from teradataml import valib
from teradataml import db_drop_table
from teradataml import UtilFuncs

from teradatasqlalchemy import TIMESTAMP, FLOAT, VARCHAR 


##########################
# Logging with timestamp #
##########################
def DQ_log(str):
    ct = dt.now()
    print(ct.strftime('%Y-%m-%d %H:%M:%S'), ":", str)


##################################
# Teradata colname name function #
##################################
def print_variables(df, columns):
    print(" ************************* DataFrame ********************* ")
    print(df)
    print("\n\n")
    print(" ************************* DataFrame.dtypes ********************* ")
    print(df.dtypes)
    print("\n\n")
    if isinstance(columns, str):
        columns = [columns]
    for col in columns:
        coltype = df.__getattr__(col).type
        if isinstance(coltype, sql.sqltypes.NullType):
            coltype = "NullType"
        print(" '{}' Column Type: {}".format(col, coltype))


        
############################
# Set the current database #
############################
def set_database(db):
    SQL = "DATABASE %s ;" % db
    try:
        rc = UtilFuncs._execute_query(query=SQL, fetchWarnings=False)
        return 0
    except:
        return -1


#################
# Execute a SQL #
#################
def exec_query(SQL):
    rc = UtilFuncs._execute_query(query=SQL, fetchWarnings=False)
    return rc

    
######################
# Drop table or view #
######################
def drop_obj(db, tbl, type='T'):
    if db is None:
        SQL = "DROP TABLE %s ;" %  tbl
    elif type == 'V':
        SQL = "DROP VIEW %s.%s ;" % (db, tbl)
    else:
        SQL = "DROP TABLE %s.%s ;" % (db, tbl)
    try:
        rc = UtilFuncs._execute_query(query=SQL, fetchWarnings=False)
        return 0
    except:
        return -1


############################################################
# Get the columns list have uniqueless below the parameter #
############################################################
def proc_get_cat_cols(org_df, cols, prepost_lst, maxunq=30):
    cat_list = []
    unsure_list = []
    max_count = 10
    
    pre_cat_lst = prepost_lst.get('pre_cat')
    pre_notcat_lst = prepost_lst.get('pre_notcat')
    post_cat_lst = prepost_lst.get('post_cat')
    post_notcat_lst = prepost_lst.get('post_notcat')
    
    for cur_col in cols:
        find_ind = False
        if not find_ind:
            for cur_pre in pre_cat_lst:
                ptr = cur_col.upper().find(cur_pre.upper())
                if ptr == 0:
                    find_ind = True
                    cat_list.append(cur_col)
                    break
        if not find_ind:
            for cur_pre in pre_notcat_lst:
                ptr = cur_col.upper().find(cur_pre.upper())
                if ptr == 0:
                    find_ind = True
                    break
        col_len = len(cur_col)
        if not find_ind:
            for cur_post in post_cat_lst:
                ptr = cur_col.upper().find(cur_post.upper())
                if (col_len - len(cur_post)) == ptr:
                    cat_list.append(cur_col)
                    find_ind = True
                    break
        if not find_ind:
            for cur_post in post_notcat_lst:
                ptr = cur_col.upper().find(cur_post.upper())
                if (col_len - len(cur_post)) == ptr:
                    find_ind = True
                    break

        if find_ind == False:
            unsure_list.append(cur_col)
        
    
    
    if len(unsure_list) > 0:
        chunks = [unsure_list[x:x+max_count] for x in range(0, len(unsure_list), max_count)]
        chunk_cnt = 0
    
        for chunk in chunks:
            chunk_cnt += 1
            kwargs = {}
            for cur_col in chunk:
                kwargs[cur_col] = func.count(distinct(org_df[cur_col].expression))
            tmp_df = org_df.assign(True, **kwargs).to_pandas().melt()
            if chunk_cnt == 1:
                all_tmp_df = tmp_df
            else:
                all_tmp_df = pd.concat([all_tmp_df, tmp_df])
    
        cat_list = cat_list + all_tmp_df[all_tmp_df.value<=maxunq]['variable'].to_list()
    
    return cat_list



#################
# Get sessionid #
#################
def get_session_id(db, tbls):
    max_sid = 0
    for tbl in tbls:
        cur_sel = DataFrame(in_schema(db,tbl)).select("sessionid").max().to_pandas()
        cur_sid = cur_sel.iloc[0][0]
        if cur_sid is not None:
            cur_sid = int(cur_sid)
            if cur_sid > max_sid:
                max_sid = cur_sid
    return (max_sid)


##########################################
# Write Teradata dataframe to table/view #
##########################################
def proc_insert_df_tble(td_df, outdb, outtbl):
    SQL = "INSERT INTO " + outdb + "." + outtbl + " " + td_df.show_query()
    try:
        rc = UtilFuncs._execute_query(query=SQL, fetchWarnings=False)
        return 0
    except:
        return -1

    
#############################################
# Insert Pandas Dataframe to existing table #
#############################################
def proc_insert_pd_df_tbl(context, pd_data, db, tbl):
    col_lst = pd_data.columns.values.tolist()
    sql = "INSERT INTO "+db+"."+tbl+" VALUES ("
    for i in range(len(col_lst)):
        if i == 0:
            sql += "?"
        else:
            sql += ",?"
    sql += ")"
    
    inserted_rows = 0
    for ins_index, ins_row in pd_data.iterrows():
        inserted_rows += 1
        #change
        # context.execute(sql, ins_row)
        ins_row_tuple = tuple(ins_row)
        execute_sql(sql, (ins_row_tuple,))
        
    
    return inserted_rows

   
#################################
# Delete 1 session from a table #
#################################
def del_tbl_session(sessionid, db, tbls):
    for tbl in tbls:
        SQL = "DELETE FROM %s.%s WHERE sessionid = %s ;" % (db, tbl, sessionid)
        try:
            rc = UtilFuncs._execute_query(query=SQL, fetchWarnings=False)
            return 0
        except:
            return -1

        
##################################################
# Insert the processed columns into output table #
##################################################
def proc_write_proc_cols(conn, sessionid, DQ_start_ts, src_df, outdb, outtbl, prv_cnt, new_cnt, proc_ind="Y"):
    write_df = src_df
    write_df["sessionid"] = sessionid
    write_df["process_TS"] = DQ_start_ts 
    write_df["prv_cnt"] = prv_cnt
    write_df["new_cnt"] = new_cnt
    write_df["Proc_Ind"] = proc_ind
    write_df = write_df[["sessionid", "dbname", "tablename", "colname", "ToleranceLevel", "org_type", "mod_type", "process_TS", "prv_cnt", "new_cnt", "Proc_Ind"]]

    rec_cnt = proc_insert_pd_df_tbl(conn, write_df, outdb, outtbl)
    
    return rec_cnt


########################################################
# Get unique characters and count from a string column #
########################################################
def td_get_chr_from_col(dbname, tblname, colname):
    SQL = ("WITH RECURSIVE Get_char_from_col(%s, name_len, qry_level, sub_char) AS (SELECT %s, CHARACTER_LENGTH(%s), 1, CAST(''  AS VARCHAR(50)) FROM %s UNION ALL SELECT %s, name_len, qry_level+1,  SUBSTRING(%s FROM qry_level FOR 1) FROM Get_char_from_col WHERE qry_level <= name_len ) SELECT sub_char, COUNT(0) AS cnt FROM Get_char_from_col WHERE sub_char NOT IN (' ') GROUP BY sub_char;" % (colname,colname,colname, tblname, colname, colname ) )
    
    try:
        result_df = DataFrame.from_query(SQL)
        result_df = result_df.assign(databasename=dbname, tablename=tblname, columnname=colname)
        result_df = result_df.select(["databasename", "tablename", "columnname", "sub_char", "cnt" ])
        return result_df
    except:
        return None


####################################
# Convert String columns to length #
####################################
def add_str_len_cols(sel_df, cols):
    strlen_cols = []
    kwargs = {}
    for cur_col in cols:
        col_lbl = cur_col+"_len"
        col_len = func.length(sel_df[cur_col].expression)    
        strlen_cols.append(col_lbl)
        kwargs[col_lbl] = col_len
        
    new_df = sel_df.assign(**kwargs)
    
    return strlen_cols, new_df


#########################################
# Format the output for outlier results #
#########################################
def label_col (row):
    cur_col = row['col']
    val = row['cnt']
    pos1 = cur_col.find('_prv_sdout')
    pos2 = cur_col.find('_prv_IQRout')
    pos3 = cur_col.find('_new_sdout')
    pos4 = cur_col.find('_new_IQRout')
    if pos1 != -1:
        return cur_col[0:pos1], val, 0.0, 0.0, 0.0
    if pos2 != -1:
        return cur_col[0:pos2], 0.0, val, 0.0, 0.0
    if pos3 != -1:
        return cur_col[0:pos3], 0.0, 0.0, val, 0.0
    if pos4 != -1:
        return cur_col[0:pos4], 0.0, 0.0, 0.0, val
    else:
        return 'unknown', 0.0, 0.0, 0.0, 0.0

################################################
# Outlier detection based on statistics result #
################################################
def proc_outlier_cnt(sel_df, sessionid, db, tbl, stat_obj, outdb, outoutlertbl, method = "S"):
    outlier_cond_df = stat_obj.result.select(['xcol','datatype','xmean','xstd'])
    outlier_cond_df = outlier_cond_df[outlier_cond_df.datatype == "prv"].to_pandas().reset_index()

    method = "S"
    col_cnt = 0
    for index, row in outlier_cond_df.iterrows():
        oultier_cols = []
        kwargs = {}
        cur_col = row['xcol']
        mean_val = row['xmean']
        sd_val = row['xstd']
#        med_val = row['xpctile50']
#        q1_val = row['xpctile25']
#        q3_val = row['xpctile75']
        
        DQ_log("  - Counting outlier for "+db+"."+tbl+"."+cur_col)
    
        for cur_type in ['prv','new']:
            
            # Not Null count
            #change
            # notnull_obj = case([(
            #     and_(
            #         sel_df['datatype'].expression==cur_type,
            #         sel_df[cur_col].expression.isnot(None)
            #     ), 1)],else_= 0)
            
            notnull_obj = case(
                    (and_(
                        sel_df['datatype'].expression==cur_type,
                        sel_df[cur_col].expression.isnot(None)
                    ), 1),
                    else_=0
                )

            colname0 ="notnull_cnt_"+cur_type
            kwargs[colname0] = notnull_obj
            oultier_cols.append(colname0)
            
            if method == "B":
                #change
                # add IQR outlier indicator
                # outlier_obj = case([(
                #     and_(
                #         sel_df['datatype'].expression==cur_type,
                #         or_(
                #             sel_df[cur_col].expression > (q3_val + 1.5 *(q3_val-q1_val)),
                #             sel_df[cur_col].expression < (q1_val - 1.5 *(q3_val-q1_val))
                #         )
                #     ), 1)]
                # ,else_= 0)
                outlier_obj = case((
                    and_(
                        sel_df['datatype'].expression==cur_type,
                        or_(
                            sel_df[cur_col].expression > (q3_val + 1.5 *(q3_val-q1_val)),
                            sel_df[cur_col].expression < (q1_val - 1.5 *(q3_val-q1_val))
                        )
                    ), 1)
                ,else_= 0)
            else:
                # add z-score outlier indicator
                #change
                # outlier_obj = case([(
                #     and_(
                #         sel_df['datatype'].expression==cur_type,
                #         or_(
                #             sel_df[cur_col].expression > (mean_val+3.0*sd_val),
                #             sel_df[cur_col].expression < (mean_val-3.0*sd_val)
                #         )
                #     ), 1)]
                #     ,else_= 0)
                outlier_obj = case(
                    (
                        and_(
                            sel_df['datatype'].expression==cur_type,
                            or_(
                                sel_df[cur_col].expression > (mean_val+3.0*sd_val),
                                sel_df[cur_col].expression < (mean_val-3.0*sd_val)
                            )
                        ),
                        1
                    ),
                    else_=0
                )
            
            colname= 'outlier_cnt_'+cur_type
            kwargs[colname] = outlier_obj
            oultier_cols.append(colname)
    

        out_df = sel_df.assign(**kwargs)
        outlier_cnt_df = out_df.select(oultier_cols).agg('sum')
        outlier_cnt_df = outlier_cnt_df.assign(sessionid = sessionid,
                                               databasename = db, 
                                               tablename = tbl,
                                               xcol = cur_col
                                              )
        write_df = outlier_cnt_df.select(["sessionid", "databasename", "tablename", "xcol", 
                                          "sum_notnull_cnt_prv", "sum_notnull_cnt_new",
                                          "sum_outlier_cnt_prv", "sum_outlier_cnt_new"])
        rc = proc_insert_df_tble(write_df, outdb, outoutlertbl)
        col_cnt += 1
    return col_cnt

################################################
# Outlier detection based on statistics result #
################################################
def proc_outlier_cnt_bak(context, sel_df, sessionid, db, tbl, stat_obj, outdb, outoutlertbl):
    outlier_cond_df = stat_obj.result.select(['xcol','datatype','xmean','xstd','xpctile25','xpctile50','xpctile75']).to_pandas().reset_index()
    
    oultier_cols = []
    kwargs = {}
    for index, row in outlier_cond_df.iterrows():
        cur_col = row['xcol']
        cur_type = row['datatype']
        mean_val = row['xmean']
        sd_val = row['xstd']
        med_val = row['xpctile50']
        q1_val = row['xpctile25']
        q3_val = row['xpctile75']
    
        # add z-score outlier indicator
        #change
        # outlier1_obj = case([(
        #     and_(
        #         sel_df['datatype'].expression==cur_type,
        #         or_(
        #             sel_df[cur_col].expression > (mean_val+3.0*sd_val),
        #             sel_df[cur_col].expression < (mean_val-3.0*sd_val)
        #         )
        #     ), 1)]
        #     ,else_= 0)
        outlier1_obj = case((
            and_(
                sel_df['datatype'].expression==cur_type,
                or_(
                    sel_df[cur_col].expression > (mean_val+3.0*sd_val),
                    sel_df[cur_col].expression < (mean_val-3.0*sd_val)
                )
            ), 1)
            ,else_= 0)
        colname1= cur_col+'_'+cur_type+'_sdout'
        kwargs[colname1] = outlier1_obj
        #sel_df = sel_df.assign(**kwargs)
        oultier_cols.append(colname1)
    
        # add IQR outlier indicator
        #change
        # outlier2_obj = case([(
        #     and_(
        #         sel_df['datatype'].expression==cur_type,
        #         or_(
        #             sel_df[cur_col].expression > (q3_val + 1.5 *(q3_val-q1_val)),
        #             sel_df[cur_col].expression < (q1_val - 1.5 *(q3_val-q1_val))
        #         )
        #     ), 1)]
        # ,else_= 0)
        outlier2_obj = case((
            and_(
                sel_df['datatype'].expression==cur_type,
                or_(
                    sel_df[cur_col].expression > (q3_val + 1.5 *(q3_val-q1_val)),
                    sel_df[cur_col].expression < (q1_val - 1.5 *(q3_val-q1_val))
                )
            ), 1)
        ,else_= 0)
        colname2= cur_col+'_'+cur_type+'_IQRout'
        kwargs[colname2] = outlier2_obj
        #sel_df = sel_df.assign(**kwargs)
        oultier_cols.append(colname2)

    out_df = sel_df.assign(**kwargs)
    outlier_cnt_df = out_df.select(oultier_cols).agg('sum').to_pandas()
    outlier_cnt_df.columns = oultier_cols
    
    tmp_df = outlier_cnt_df.melt(var_name='col', value_name='cnt')
    tmp_df['xcol'], tmp_df['sd_out_cnt_prv'], tmp_df['IRQ_out_cnt_prv'], tmp_df['sd_out_cnt_new'], tmp_df['IRQ_out_cnt_new'] = zip(*tmp_df.apply (lambda row: label_col(row), axis=1))
    tmp_df = tmp_df[['xcol','sd_out_cnt_prv','IRQ_out_cnt_prv','sd_out_cnt_new','IRQ_out_cnt_new']].groupby('xcol').agg('sum')
    tmp_df = tmp_df.reset_index()

    tmp_df['sessionid'] = sessionid
    tmp_df['databasename'] = db
    tmp_df['tablename'] = tbl

    tmp_df = tmp_df[['sessionid','databasename', 'tablename', 'xcol', 'sd_out_cnt_prv','IRQ_out_cnt_prv','sd_out_cnt_new','IRQ_out_cnt_new']]

    #copy_to_sql(df = tmp_df, table_name = outoutlertbl, primary_index=["databasename","tablename", 'xcol'], if_exists="append")
    rec_cnt = proc_insert_pd_df_tbl(context, tmp_df, outdb, outoutlertbl)
    return tmp_df


###########################
# VAL Statistics analysis #
###########################
def proc_data_exp(exp_df, sessionid, db, tbl, cols, outdb, outstattbl):
    
    inc_stat = ['cnt','min','max','mean','std']
    
    stat_obj = valib.Statistics(data=exp_df, columns=cols, stats_options = inc_stat, extended_options='values', group_columns = 'datatype')
#    stat_db, stat_tbl = stat_obj.result._table_name.split(".")
#    stat_db = stat_db.replace('"', '')
#    stat_tbl = stat_tbl.replace('"', '')
        
    #Build the output dataframe for statistics analysis
    stat_df = stat_obj.result
    stat_df = stat_df.assign(drop_columns = False, sessionid = sessionid, databasename = db, tablename = tbl)
    
    stat_cols_order = ["sessionid", "databasename", "tablename", "xcol", "datatype", 
                       "xcnt", "xmin", "xmax", "xmean", "xstd",
                       "xtype", "xnull", "xnique", "xblank", "xzero","xpos", "xneg"]

    #stat_df.select(stat_cols_order).to_sql(outstattbl, if_exists="append", primary_index=["databasename", "tablename", "xcol"])
    write_df = stat_df.select(stat_cols_order)
    rc = proc_insert_df_tble(write_df, outdb, outstattbl)

    return stat_obj


##########################
# VAL Histogram analysis #
##########################
def proc_hist_exp(sel_df, stat_obj, sessionid, db, tbl, cols, outdb, outhisttbl, H_bins=30, M_bins=20, L_bins=10):
    hist_cols_order = ["sessionid", "databasename", "tablename", "xcol", "xbin", "datatype", "xbeg", "xend", "xcnt", "xpct"]
    
    stat_df = stat_obj.result
    default_bins = 20
    
    
    # Build the historgram min/max boundary for each columns
    stat_df_min_local = stat_df[stat_df.xnique>0.0].select(["xcol","xmin"]).groupby("xcol").min().to_pandas()
    stat_df_max_local = stat_df[stat_df.xnique>0.0].select(["xcol","xmax"]).groupby("xcol").max().to_pandas()
    
    has_minmax_cols = set(stat_df_min_local.xcol.to_list() + stat_df_max_local.xcol.to_list())

    bound_dic  = []
    proc_cols = []
#    for cur_col in cols:
    for index, row in cols.iterrows():
        cur_col = row['colname']
        
        if cur_col in has_minmax_cols:
            if row['ToleranceLevel'] == 'H':
                no_bins = H_bins
            elif row['ToleranceLevel'] == 'M':
                no_bins = M_bins
            elif row['ToleranceLevel'] == 'L':
                no_bins = L_bins
            else:
                no_bins = default_bins        
            minval = math.floor(stat_df_min_local.loc[stat_df_min_local["xcol"] == cur_col]['min_xmin'].values[0] * 1000.0) / 1000.0
            maxval = math.ceil(stat_df_max_local.loc[stat_df_max_local["xcol"] == cur_col]['max_xmax'].values[0] * 1000.0) / 1000.0
            bound_dic.append("{%s,%s,%s}"%(no_bins, minval, maxval))
            proc_cols.append(cur_col)
    
    DQ_log(" -Hist Cols[%s]" % (",".join(proc_cols)))
    DQ_log(" -Hist bound[%s]" % (",".join(bound_dic)))
    
    for datatype in ['prv', 'new']:
        exp_df_flt = sel_df[sel_df['datatype']==datatype]
        hist_obj = valib.Histogram(data = exp_df_flt, columns = proc_cols, bins_with_boundaries = bound_dic)
        
        hist_db, hist_tbl = hist_obj.result._table_name.split(".")
        hist_db = hist_db.replace('"', '')
        hist_tbl = hist_tbl.replace('"', '')
        
        hist_df = hist_obj.result
        hist_df = hist_df.assign(drop_columns = False, sessionid = sessionid, databasename = db, tablename = tbl, datatype = datatype)
        hist_df = hist_df.drop(columns=["xdb","xtbl"])
        #hist_df.select(hist_cols_order).to_sql(outhisttbl, if_exists="append", primary_index=["databasename", "tablename", "xcol", "xbin"])
        write_df = hist_df.select(hist_cols_order)
        rc = proc_insert_df_tble(write_df, outdb, outhisttbl)

    return hist_obj

def proc_hist_exp2(tmpdb, sel_df, stat_obj, sessionid, db, tbl, cols, outdb, outhisttbl, H_bins=30, M_bins=20, L_bins=10):
    hist_cols_order = ["sessionid", "databasename", "tablename", "xcol", "xbin", "datatype", "xbeg", "xend", "xcnt", "xpct"]
    
    stat_df = stat_obj.result
    default_bins = 20
    
    
    # Build the historgram min/max boundary for each columns
    stat_df_min_local = stat_df[stat_df.xnique>0.0].select(["xcol","xmin"]).groupby("xcol").min().to_pandas()
    stat_df_max_local = stat_df[stat_df.xnique>0.0].select(["xcol","xmax"]).groupby("xcol").max().to_pandas()
    
    has_minmax_cols = set(stat_df_min_local.xcol.to_list() + stat_df_max_local.xcol.to_list())

    bound_dic  = []
    proc_cols = []
    SQL_lst = []
#    for cur_col in cols:
    for index, row in cols.iterrows():
        cur_col = row['colname']
        
        if cur_col in has_minmax_cols:
            if row['ToleranceLevel'] == 'H':
                no_bins = H_bins
            elif row['ToleranceLevel'] == 'M':
                no_bins = M_bins
            elif row['ToleranceLevel'] == 'L':
                no_bins = L_bins
            else:
                no_bins = default_bins        
            minval = math.floor(stat_df_min_local.loc[stat_df_min_local["xcol"] == cur_col]['min_xmin'].values[0] * 1000.0) / 1000.0
            maxval = math.ceil(stat_df_max_local.loc[stat_df_max_local["xcol"] == cur_col]['max_xmax'].values[0] * 1000.0) / 1000.0
            SQL = "INSERT INTO %s.%s \
            SELECT sessionid, databasename, tablename, xcol, xbin, datatype,  xbeg, xend, xcnt, \
            100.000 * xcnt / SUM(xcnt) OVER (PARTITION BY datatype) AS xpct \
            FROM (SELECT %s AS sessionid, '%s' AS databasename, '%s' AS tablename, '%s' (VARCHAR(100)) AS xcol, \
            datatype, \
            (CASE WHEN %s = %s THEN 1 \
              WHEN %s = %s THEN %s \
              WHEN %s < %s THEN 0 \
              WHEN %s > %s THEN %s + 1 \
              ELSE CAST((%s - %s)/(CAST(%s - %s AS FLOAT)/%s) + 1 AS INTEGER) END ) AS xbin, \
            (CASE WHEN xbin = 0 THEN NULL ELSE %s + (xbin - 1) * ((%s - %s)/ %s) END) AS xbeg, \
            (CASE WHEN xbin > %s THEN NULL ELSE %s + xbin * ((%s - %s)/ %s) END) AS xend, \
            CAST(COUNT(0) AS FLOAT) AS xcnt \
            FROM %s.DQ_vol_filter_tbl \
            GROUP BY sessionid, databasename, tablename, xcol, datatype, xbin, xbeg, xend) t \
            " % (outdb, outhisttbl, \
            sessionid, db, tbl, cur_col, \
            maxval, minval, \
            cur_col, maxval, no_bins, \
            cur_col, minval, \
            cur_col, maxval, no_bins, \
            cur_col, minval, maxval, minval, no_bins, \
            minval, maxval, minval, no_bins, \
            no_bins, minval, maxval, minval, no_bins, tmpdb\
            )
            
            bound_dic.append("{%s,%s,%s}"%(no_bins, minval, maxval))
            proc_cols.append(cur_col)
            SQL_lst.append(SQL)
            exec_query(SQL)
    
    return SQL


def proc_hist_exp2_bak(tmpdb, sel_df, stat_obj, sessionid, db, tbl, cols, outdb, outhisttbl, H_bins=30, M_bins=20, L_bins=10):
    hist_cols_order = ["sessionid", "databasename", "tablename", "xcol", "xbin", "datatype", "xbeg", "xend", "xcnt", "xpct"]
    
    stat_df = stat_obj.result
    default_bins = 20
    
    
    # Build the historgram min/max boundary for each columns
    stat_df_min_local = stat_df[stat_df.xnique>0.0].select(["xcol","xmin"]).groupby("xcol").min().to_pandas()
    stat_df_max_local = stat_df[stat_df.xnique>0.0].select(["xcol","xmax"]).groupby("xcol").max().to_pandas()
    
    has_minmax_cols = set(stat_df_min_local.xcol.to_list() + stat_df_max_local.xcol.to_list())

    bound_dic  = []
    proc_cols = []
    SQL_lst = []
#    for cur_col in cols:
    for index, row in cols.iterrows():
        cur_col = row['colname']
        
        if cur_col in has_minmax_cols:
            if row['ToleranceLevel'] == 'H':
                no_bins = H_bins
            elif row['ToleranceLevel'] == 'M':
                no_bins = M_bins
            elif row['ToleranceLevel'] == 'L':
                no_bins = L_bins
            else:
                no_bins = default_bins        
            minval = math.floor(stat_df_min_local.loc[stat_df_min_local["xcol"] == cur_col]['min_xmin'].values[0] * 1000.0) / 1000.0
            maxval = math.ceil(stat_df_max_local.loc[stat_df_max_local["xcol"] == cur_col]['max_xmax'].values[0] * 1000.0) / 1000.0
            SQL = "SELECT sessionid, databasename, tablename, xcol, xbin, datatype,  xbeg, xend, xcnt, \
            100.000 * xcnt / SUM(xcnt) OVER (PARTITION BY datatype) AS xpct \
            FROM (SELECT %s AS sessionid, '%s' AS databasename, '%s' AS tablename, '%s' (VARCHAR(100)) AS xcol, \
            datatype, \
            (CASE WHEN %s = %s THEN 1 \
              WHEN %s = %s THEN %s \
              WHEN %s < %s THEN 0 \
              WHEN %s > %s THEN %s + 1 \
              ELSE CAST((%s - %s)/(CAST(%s - %s AS FLOAT)/%s) + 1 AS INTEGER) END ) AS xbin, \
            (CASE WHEN xbin = 0 THEN NULL ELSE %s + (xbin - 1) * ((%s - %s)/ %s) END) AS xbeg, \
            (CASE WHEN xbin > %s THEN NULL ELSE %s + xbin * ((%s - %s)/ %s) END) AS xend, \
            CAST(COUNT(0) AS FLOAT) AS xcnt \
            FROM %s.DQ_vol_filter_tbl \
            GROUP BY sessionid, databasename, tablename, xcol, datatype, xbin, xbeg, xend) t \
            " % (sessionid, db, tbl, cur_col, \
            maxval, minval, \
            cur_col, maxval, no_bins, \
            cur_col, minval, \
            cur_col, maxval, no_bins, \
            cur_col, minval, maxval, minval, no_bins, \
            minval, maxval, minval, no_bins, \
            no_bins, minval, maxval, minval, no_bins, tmpdb\
            )
            
            bound_dic.append("{%s,%s,%s}"%(no_bins, minval, maxval))
            proc_cols.append(cur_col)
            SQL_lst.append(SQL)

    SQL = "INSERT INTO %s.%s " % (outdb, outhisttbl)
    SQL += " UNION ALL ".join(SQL_lst)
    exec_query(SQL)
    DQ_log(" -Hist Cols[%s]" % (",".join(proc_cols)))
    DQ_log(" -Hist bound[%s]" % (",".join(bound_dic)))
    
    return SQL


def proc_hist_exp3(tmpdb, sel_df, stat_obj, sessionid, db, tbl, cols, outdb, outhisttbl, H_bins=30, M_bins=20, L_bins=10):
    hist_cols_order = ["sessionid", "databasename", "tablename", "xcol", "xbin", "datatype", "xbeg", "xend", "xcnt", "xpct"]
    
    stat_df = stat_obj.result
    default_bins = 20
    
    
    # Build the historgram min/max boundary for each columns
    stat_df_min_local = stat_df[stat_df.xnique>0.0].select(["xcol","xmin"]).groupby("xcol").min().to_pandas()
    stat_df_max_local = stat_df[stat_df.xnique>0.0].select(["xcol","xmax"]).groupby("xcol").max().to_pandas()
    
    has_minmax_cols = set(stat_df_min_local.xcol.to_list() + stat_df_max_local.xcol.to_list())

    bound_dic  = []
    proc_cols = []
    SQL_lst = []
#    for cur_col in cols:
    for index, row in cols.iterrows():
        cur_col = row['colname']
        
        if cur_col in has_minmax_cols:
            if row['ToleranceLevel'] == 'H':
                no_bins = H_bins
            elif row['ToleranceLevel'] == 'M':
                no_bins = M_bins
            elif row['ToleranceLevel'] == 'L':
                no_bins = L_bins
            else:
                no_bins = default_bins        
            minval = math.floor(stat_df_min_local.loc[stat_df_min_local["xcol"] == cur_col]['min_xmin'].values[0] * 1000.0) / 1000.0
            maxval = math.ceil(stat_df_max_local.loc[stat_df_max_local["xcol"] == cur_col]['max_xmax'].values[0] * 1000.0) / 1000.0
            SQL = "INSERT INTO %s.%s \
            SELECT sessionid, databasename, tablename, xcol, xbin, datatype,  xbeg, xend, xcnt, \
            100.000 * xcnt / SUM(xcnt) OVER (PARTITION BY datatype) AS xpct \
            FROM (SELECT %s AS sessionid, '%s' AS databasename, '%s' AS tablename, '%s' (VARCHAR(100)) AS xcol, \
            datatype, \
            (CASE WHEN %s = %s THEN 1 \
              WHEN %s = %s THEN %s \
              WHEN %s < %s THEN 0 \
              WHEN %s > %s THEN %s + 1 \
              ELSE CAST((%s - %s)/(CAST(%s - %s AS FLOAT)/%s) + 1 AS INTEGER) END ) AS xbin, \
            (CASE WHEN xbin = 0 THEN NULL ELSE %s + (xbin - 1) * ((%s - %s)/ %s) END) AS xbeg, \
            (CASE WHEN xbin > %s THEN NULL ELSE %s + xbin * ((%s - %s)/ %s) END) AS xend, \
            CAST(COUNT(0) AS FLOAT) AS xcnt \
            FROM %s.DQ_vol_filter_tbl \
            GROUP BY sessionid, databasename, tablename, xcol, datatype, xbin, xbeg, xend) t \
            " % (outdb, outhisttbl,
                 sessionid, db, tbl, cur_col, \
                 maxval, minval, \
                 cur_col, maxval, no_bins, \
                 cur_col, minval, \
                 cur_col, maxval, no_bins, \
                 cur_col, minval, maxval, minval, no_bins, \
                 minval, maxval, minval, no_bins, \
                 no_bins, minval, maxval, minval, no_bins, tmpdb\
                )
            
            bound_dic.append("{%s,%s,%s}"%(no_bins, minval, maxval))
            proc_cols.append(cur_col)
            SQL_lst.append(SQL)
            exec_query(SQL)

#    SQL = "INSERT INTO %s.%s " % (outdb, outhisttbl)
#    SQL += " UNION ALL ".join(SQL_lst)
#    exec_query(SQL)
    DQ_log(" -Hist Cols[%s]" % (",".join(proc_cols)))
    DQ_log(" -Hist bound[%s]" % (",".join(bound_dic)))
    
    return SQL


####################################################
# VAL Smirnov test for selected columns in 1 table #
####################################################
def proc_smirnov_test(src_df, sessionid,db, tbl, cols, outdb, outsvtbl, valdb):
    
    tmp_val_out = pd.DataFrame(columns=['tabletype', 'dbname', 'tablename', 'datatype'])
    sv_cols_order = ["sessionid", "databasename", "tablename", "colname", "M", "N", "D", "SmirnovPValue", "SmirnovPText"]
    
    for cur_col in cols:
        DQ_log("KS-test column: %s" % cur_col)
        sv_obj = valib.KSTest(data=src_df, dependent_column = cur_col, columns = 'datatype', stats_database = valdb, style ='s')
        sv_df = sv_obj.result
        sv_df = sv_df.assign(drop_columns = False, sessionid = sessionid, databasename = db, tablename = tbl, colname = cur_col)
        #sv_df.select(sv_cols_order).to_sql(outsvtbl, if_exists="append", primary_index=["databasename", "tablename", "colname"])
        write_df = sv_df.select(sv_cols_order)
        proc_insert_df_tble(write_df, outdb, outsvtbl)
        
    return sv_obj
 

#############################################
# Get the maximum date from the date column #
#############################################
def proc_max_date(df, tscol):
    
    try:
        max_date = df.select(tscol).max().to_pandas()
    except:
        return None , -1
    
    max_date_val = max_date.iloc[0][0]
    if max_date_val is None:
        return None, 0
    else:
        return pd.Timestamp.date(max_date_val), 0


##############################################################
# Define the new and prv data for selected table and columns #
##############################################################
def proc_sel_tblcols(sessionid, curdate, db, tbl, tscol, tscol2, tmpdb, delta_t=30, delta_h = 90, datetype='CUR'):
    
    prv_cnt = 0
    new_cnt = 0

    # Select the object
    init_df = DataFrame(in_schema(db, tbl))
    idx_lst = init_df.index
    
    # Check the ts column exist 
    if tscol not in init_df.columns:
        DQ_log("  - Warming: Cannot find the Timestamp column:"+tscol)
        return init_df, curdate, prv_cnt, new_cnt, -1
    
    sel_df = init_df.assign(updts_fmt = init_df[tscol].cast(type_=TIMESTAMP))

    max_date, rc = proc_max_date(sel_df, "updts_fmt")
    if rc < 0:
        return init_df, curdate, prv_cnt, new_cnt, -2
    if max_date is None:
        return init_df, curdate, prv_cnt, new_cnt, -3
    
    if datetype == 'MAX':
        use_date = max_date
    else:
        use_date = curdate

    # filtering new and previous data
    new_date = use_date - timedelta(days=delta_t)
    prv_date = use_date - timedelta(days=(delta_t+delta_h) )
    DQ_log("  - USE date>= "+ use_date.strftime('%Y-%m-%d'))
    DQ_log("  - NEW DATA with date>= "+ new_date.strftime('%Y-%m-%d'))
    DQ_log("  - PRV DATA with date>= "+ prv_date.strftime('%Y-%m-%d'))

    if tscol2 == None:
        #change
        #datatype_obj = case([(sel_df["updts_fmt"].expression >= (new_date), 'new')], else_= 'prv')
        datatype_obj = case((sel_df["updts_fmt"].expression >= (new_date), 'new'), else_= 'prv')
        sel_df2 = sel_df[sel_df["updts_fmt"] >= prv_date].assign(datatype = datatype_obj)

        # Build a table for filtered records
        #sel_df2.to_sql("DQ_temp_filter_tbl", schema_name =tmpdb, temporary=False, if_exists = 'replace')
        #sel_df2 = DataFrame(in_schema(tmpdb, "DQ_temp_filter_tbl"))

    else:
        if tscol2 not in init_df.columns:
            DQ_log("  - Warming: Cannot find the InactiveTimestamp column:"+tscol2)
            return init_df, curdate, prv_cnt, new_cnt, -1
        
        sel_df = init_df.assign(updts_fmt = init_df[tscol].cast(type_=TIMESTAMP),
                                updts_fmt2 = init_df[tscol2].cast(type_=TIMESTAMP))
#        datatype_obj = case([( and_(sel_df["updts_fmt"].expression >= (new_date), sel_df["updts_fmt2"].expression >= (use_date)) , 'new')]
#                            , else_= 'prv')
        #change
        # datatype_obj = case([( sel_df["updts_fmt"].expression >= (new_date), 'new')]
        #                     , else_= 'prv')
        datatype_obj = case(( sel_df["updts_fmt"].expression >= (new_date), 'new')
                            , else_= 'prv')
        
        sel_df2 = sel_df[sel_df["updts_fmt2"] >= prv_date].assign(datatype = datatype_obj)

    # Build a volatile table for filtered records
    drop_obj(tmpdb, "DQ_vol_filter_tbl", "T")
    SQL = "CREATE MULTISET VOLATILE TABLE DQ_vol_filter_tbl AS (" + sel_df2.show_query() + " ) WITH DATA NO PRIMARY INDEX ON COMMIT PRESERVE ROWS;"
    exec_query(SQL)
    sel_df2 = DataFrame(in_schema(tmpdb,"DQ_vol_filter_tbl"))

    # Get record count for each datatype
    datatype_cnt_df = sel_df2.groupby("datatype").assign(True, assined_count_col_=func.count(0)).to_pandas()
    if ('new' in datatype_cnt_df.datatype.to_list()):
        new_cnt = datatype_cnt_df.loc[datatype_cnt_df.datatype=='new']['assined_count_col_'].values[0]
    if ('prv' in datatype_cnt_df.datatype.to_list()):
        prv_cnt = datatype_cnt_df.loc[datatype_cnt_df.datatype=='prv']['assined_count_col_'].values[0]
    return sel_df2, use_date, prv_cnt, new_cnt, 0, idx_lst


##############################################################
# Define the new and prv data for selected table and columns #
##############################################################
def proc_sel_tblcols_bak(sessionid, curtime, db, tbl, tscol, delta_t=30, delta_h = 90):

    # Select the object
    init_df = DataFrame(in_schema(db, tbl))
    
    # Format the timestamp column
    sel_df = init_df.assign(updts_fmt = init_df[tscol].cast(type_=TIMESTAMP))

    # filtering new and previous data
    datatype_obj = case(
        [
            (sel_df.updts_fmt.expression >= (curtime - timedelta(days=delta_t)), 'new')
        ],
        else_= 'prv'
    )
    sel_df = sel_df[sel_df["updts_fmt"] >= (curtime - timedelta(days=(delta_t+delta_h) ))].assign(datatype = datatype_obj)
    
    return sel_df


################################
# Getting the characters usage #
################################
def proc_break_string_chr(sessionid, curtime, db, tbl, cols, tscol, outdb, outtblename, delta_t=30, delta_h = 90):
    newtime_start=curtime - timedelta(days=delta_t)
    prvtime_start=curtime - timedelta(days=delta_t+delta_h)
    newtime_start_str = newtime_start.strftime("%Y-%m-%d %H:%M:%S")
    prvtime_start_str = prvtime_start.strftime("%Y-%m-%d %H:%M:%S")

    for cur_col in cols:
        SQL = "SELECT %s AS sessionid, \
        '%s' AS databasename,\
        '%s' AS tablename, \
        '%s' AS colname, \
        Token, \
        SUM(CASE WHEN outKey = 'prv' THEN 1 ELSE 0 END) AS prv_char_cnt, \
        SUM(CASE WHEN outKey = 'new' THEN 1 ELSE 0 END) AS new_char_cnt \
        FROM \
        (WITH cte AS \
        (SELECT datatype, \
        UPPER(%s) AS s FROM DQ_vol_filter_tbl ) \
        SELECT * FROM TABLE (RegExp_Split_To_Table(datatype, cte.s, '(?=.)', 'i') \
        RETURNS (outKey CHAR(3), TokenNum INT, Token VARCHAR(31000)) \
        ) AS dt ) t \
        GROUP BY Token;" % \
        (sessionid, db, tbl, cur_col, cur_col)

        chr_df = DataFrame.from_query(SQL)
        #chr_df.to_sql(outtblename, if_exists="append", primary_index=["databasename", "tablename", "colname"])
        rc = proc_insert_df_tble(chr_df, outdb, outtblename)
        
    return None


def proc_break_string_chr2(sessionid, curtime, db, tbl, cols, tscol, outdb, outtblename, delta_t=30, delta_h = 90):
    newtime_start=curtime - timedelta(days=delta_t)
    prvtime_start=curtime - timedelta(days=delta_t+delta_h)
    newtime_start_str = newtime_start.strftime("%Y-%m-%d %H:%M:%S")
    prvtime_start_str = prvtime_start.strftime("%Y-%m-%d %H:%M:%S")
    max_count = 5
    
    if len(cols) > 0:
        chunks = [cols[x:x+max_count] for x in range(0, len(cols), max_count)]
    
        for chunk in chunks:
            comp_SQL = ''
            for cur_col in chunk:
                SQL = "SELECT %s AS sessionid, '%s' AS databasename,'%s' AS tablename, '%s' AS colname, Token, \
                SUM(CASE WHEN outKey = 'prv' THEN 1 ELSE 0 END) AS prv_char_cnt, \
                SUM(CASE WHEN outKey = 'new' THEN 1 ELSE 0 END) AS new_char_cnt \
                FROM \
                (WITH cte AS (SELECT datatype, UPPER(%s) AS s FROM DQ_vol_filter_tbl ) \
                SELECT * FROM TABLE (RegExp_Split_To_Table(datatype, cte.s, '(?=.)', 'i') \
                RETURNS (outKey CHAR(3), TokenNum INT, Token VARCHAR(31000)) \
                ) AS dt ) t \
                GROUP BY Token" % \
                (sessionid, db, tbl, cur_col, cur_col)
        
                if comp_SQL == '':
                    comp_SQL = SQL
                else:
                    comp_SQL = comp_SQL + ' UNION ALL ' + SQL

            # Process the columns within 1 chunk
            chr_df = DataFrame.from_query(comp_SQL)
            rc = proc_insert_df_tble(chr_df, outdb, outtblename)
        
    return None

def proc_break_string_chr3(indf, sessionid, tmpdb, db, tbl, cols, outdb, outtblename, max_char=50):
    SQL = "CREATE MULTISET VOLATILE TABLE tmp_col_char_vt (columnname VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC, datatype CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC"
    for i in list(range(1,max_char+1)):
        new_col_stmt = ", S"+str(i)+ " CHAR(1) CHARACTER SET UNICODE NOT CASESPECIFIC"
        SQL = SQL + new_col_stmt
    SQL = SQL + ") PRIMARY INDEX ( columnname) ON COMMIT PRESERVE ROWS;"
    
    drop_obj(tmpdb, "tmp_col_char_vt", "T")
    exec_query(SQL)
    
    # Break the string to characters
    for cur_col in cols:
        DQ_log("  - proceessing :"+cur_col)
        tmpdf = indf.assign(True,str_len = func.length(indf[cur_col].expression)).max().to_pandas()
        str_len = int(tmpdf.loc[0]['max_str_len'])
        chunk_cnt = math.floor((str_len -1)/max_char)
        
        for chunk in range(0,chunk_cnt+1):
            SQL = "INSERT INTO tmp_col_char_vt SELECT '"+cur_col+"', datatype"
            for i in list(range(1,max_char+1)):
                chr_loc = chunk*max_char + i
                SQL += ",SUBSTR(brk_str,"+str(chr_loc)+",1) AS s"+str(i)
            SQL += " FROM (SELECT datatype, UPPER("+cur_col+") AS brk_str FROM DQ_vol_filter_tbl) t;"
            exec_query(SQL)

    # Aggregate the characters
    DQ_log("  - Aggreate all the character counts ...")
    SQL = "INSERT INTO "+outdb+"."+outtblename+" SELECT "+str(sessionid)+",'"+db+"','"+tbl+"',columnname, brk_chr, SUM(CASE WHEN DATATYPE = 'prv' then cnt ELSE 0 END), SUM(CASE WHEN DATATYPE = 'new' then cnt ELSE 0 END) FROM ( "
    for i in list(range(1,max_char+1)):
        if i == 1:
            SQL += "SELECT columnname, datatype, S"+str(i)+" AS brk_chr, COUNT(0) AS cnt FROM tmp_col_char_vt WHERE S"+str(i)+"<>'' GROUP BY columnname, datatype,brk_chr "
        else:
            SQL += "UNION ALL SELECT columnname, datatype, S"+str(i)+" AS brk_chr, COUNT(0) AS cnt FROM tmp_col_char_vt WHERE S"+str(i)+"<>'' GROUP BY columnname, datatype,brk_chr "
    
    SQL += ") t GROUP BY columnname, brk_chr;"
    exec_query(SQL)
    drop_obj(tmpdb, "tmp_col_char_vt", "T")

    return None


def proc_break_string_chr_bak(sessionid, curtime, db, tbl, cols, tscol, outdb, outtblename, delta_t=30, delta_h = 90):
    newtime_start=curtime - timedelta(days=delta_t)
    prvtime_start=curtime - timedelta(days=delta_t+delta_h)
    newtime_start_str = newtime_start.strftime("%Y-%m-%d %H:%M:%S")
    prvtime_start_str = prvtime_start.strftime("%Y-%m-%d %H:%M:%S")

    for cur_col in cols:
        SQL = "SELECT %s AS sessionid, \
        '%s' AS databasename,\
        '%s' AS tablename, \
        '%s' AS colname, \
        Token, \
        SUM(CASE WHEN outKey = 'prv' THEN 1 ELSE 0 END) AS prv_char_cnt, \
        SUM(CASE WHEN outKey = 'new' THEN 1 ELSE 0 END) AS new_char_cnt \
        FROM \
        (WITH cte AS \
        (SELECT \
        (CASE WHEN CAST(%s AS TIMESTAMP) >= TIMESTAMP '%s' THEN 'new' ELSE 'prv' END) AS datatype, \
        UPPER(%s) AS s FROM %s.%s \
        WHERE CAST(%s AS TIMESTAMP) >= TIMESTAMP '%s') \
        SELECT * FROM TABLE (RegExp_Split_To_Table(datatype, cte.s, '(?=.)', 'i') \
        RETURNS (outKey CHAR(3), TokenNum INT, Token VARCHAR(31000)) \
        ) AS dt ) t \
        GROUP BY Token;" % \
        (sessionid, db, tbl, cur_col,
        tscol, newtime_start_str, cur_col, db, tbl, tscol, prvtime_start_str)

        chr_df = DataFrame.from_query(SQL)
        #chr_df.to_sql(outtblename, if_exists="append", primary_index=["databasename", "tablename", "colname"])
        rc = proc_insert_df_tble(chr_df, outdb, outtblename)
        
    return None


##########################################
# Find the bad char list from the string #
##########################################
def proc_find_badchr(tmpdb, indf, bad_list, sessionid, db, tbl, cols, outdb, outtblename):

    # Find any potential string have issue
    bad_str = "".join(bad_list)
    indf_new = indf[indf.datatype=="new"]
    outcols = ["sessionid","databasename","tablename", "colname", "token", "prv_char_cnt", "new_char_cnt"]
    
    # Create a volatile table to temporary hold the bad col value.
    SQL = "CREATE MULTISET VOLATILE TABLE DQ_bad_string_vt (colname VARCHAR(1024) CHARACTER SET LATIN NOT CASESPECIFIC, BadString VARCHAR(31000) CHARACTER SET UNICODE NOT CASESPECIFIC) NO PRIMARY INDEX ON COMMIT PRESERVE ROWS;"
    drop_obj(tmpdb, "DQ_bad_string_vt", "T")
    exec_query(SQL)
    
    ptr_df = DataFrame(in_schema(tmpdb, "DQ_bad_string_vt"))

    # get the columns and values that contain any special character
    for cur_col in cols:
        print("  - Analysis column:" + cur_col)
        bad_str_df = indf_new.assign(colname  = cur_col,
                                     brk_str = func.strtok(indf_new[cur_col].expression, bad_str ,1))
        bad_str_df = bad_str_df[bad_str_df[cur_col]!=bad_str_df.brk_str].select(['colname',cur_col])
        rc = proc_insert_df_tble(bad_str_df, tmpdb, "DQ_bad_string_vt")

    # find the specific bad character
    for cur_char in bad_list:
        bad_str_df = ptr_df.assign(token = cur_char,
                                   chr_loc = func.instr(ptr_df.BadString.expression, cur_char))
        bad_str_df = bad_str_df[bad_str_df.chr_loc >0].groupby(['colname','token']).assign(True, new_char_cnt = func.count(0))
        bad_str_df = bad_str_df.assign(sessionid = sessionid,
                                       databasename = db,
                                       tablename = tbl,
                                       prv_char_cnt = 0
                                      )
        out_df = bad_str_df.select(outcols)
        rc = proc_insert_df_tble(out_df, outdb, outtblename)
        

    return None


##########################################
# Find the bad char list from the string #
##########################################
def proc_find_badchr2(tmpdb, indf, bad_list, sessionid, db, tbl, cols, outdb, outtblename):

    # Find any potential string have issue
    bad_str = "".join(bad_list)
   

    # get the columns and values that contain any special character
    for cur_col in cols:
        print("  - Analysis column:" + cur_col)
        for cur_char in bad_list:
            SQL = "INSERT INTO %s.%s \
            SELECT %s AS sessionid, \
            '%s' AS databasename, \
            '%s' AS tablename, \
            '%s' AS colname, \
            '%s' AS token, \
            SUM(CASE WHEN datatype='prv' THEN 1 ELSE 0 END) AS prv_char_cnt, \
            SUM(CASE WHEN datatype='new' THEN 1 ELSE 0 END) AS new_char_cnt \
            FROM %s.DQ_vol_filter_tbl \
            WHERE INSTR(%s, '%s') > 0 \
            HAVING prv_char_cnt>0 OR new_char_cnt > 0 \
            ;" % (outdb, outtblename, sessionid, db, tbl, cur_col, cur_char, tmpdb, cur_col, cur_char)
            exec_query(SQL)

    return None


def proc_find_badchr2_bak(tmpdb, indf, bad_list, sessionid, db, tbl, cols, outdb, outtblename):

    # Find any potential string have issue
    bad_str = "".join(bad_list)
    indf_new = indf
    outcols = ["sessionid","databasename","tablename", "colname", "token", "sum_prv_char", "sum_new_char"]
    
    # Create a volatile table to temporary hold the bad col value.
    SQL = "CREATE MULTISET VOLATILE TABLE DQ_bad_string_vt (colname VARCHAR(1024) CHARACTER SET LATIN NOT CASESPECIFIC, datatype CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC, BadString VARCHAR(31000) CHARACTER SET UNICODE NOT CASESPECIFIC) NO PRIMARY INDEX ON COMMIT PRESERVE ROWS;"
    drop_obj(tmpdb, "DQ_bad_string_vt", "T")
    exec_query(SQL)
    
    ptr_df = DataFrame(in_schema(tmpdb, "DQ_bad_string_vt"))

    # get the columns and values that contain any special character
    for cur_col in cols:
        print("  - Analysis column:" + cur_col)
        bad_str_df = indf_new.assign(colname  = cur_col,
                                     brk_str = func.strtok(indf_new[cur_col].expression, bad_str ,1))
        bad_str_df = bad_str_df[bad_str_df[cur_col]!=bad_str_df.brk_str].select(['colname', 'datatype', cur_col])
        rc = proc_insert_df_tble(bad_str_df, tmpdb, "DQ_bad_string_vt")

    # find the specific bad character
    for cur_char in bad_list:
        bad_str_df = ptr_df.assign(token = cur_char,
                                   chr_loc = func.instr(ptr_df.BadString.expression, cur_char))
        #change
        # bad_str_df = bad_str_df[bad_str_df.chr_loc >0].assign(new_char = case([(bad_str_df.datatype.expression =='new',1)], else_ = 0), prv_char = case([(bad_str_df.datatype.expression =='prv',1)], else_ = 0))
        bad_str_df = bad_str_df[bad_str_df.chr_loc >0].assign(new_char = case((bad_str_df.datatype.expression =='new',1), else_ = 0), prv_char = case((bad_str_df.datatype.expression =='prv',1), else_ = 0))

        
        bad_str_df = bad_str_df.select(["colname","token","prv_char","new_char"]) .groupby(["colname","token"] ).sum()
        bad_str_df = bad_str_df.assign(sessionid = sessionid,
                                       databasename = db,
                                       tablename = tbl
                                      )
        out_df = bad_str_df.select(outcols)
        rc = proc_insert_df_tble(out_df, outdb, outtblename)
        

    return None


#######################################
# Get the count for each unique value #
#######################################
def proc_unq_count(inp_df, sessionid, db, tbl, cols, outdb, outtbl ):

    unq_cols_order = ["sessionid", "databasename", "tablename", "xcol", "xuniquevalue", "sum_prv_cnt", "sum_new_cnt"]

    for cur_col in cols:
        kwargs = {}
        col_list = [cur_col]
        for data_type in ('prv', 'new'):
            col_lbl = data_type+"_cnt"
            #change
            # cnt_obj = case([(inp_df.datatype.expression == data_type, 1)], else_ = 0)
            cnt_obj = case((inp_df.datatype.expression == data_type, 1), else_=0)
            kwargs[col_lbl] = cnt_obj
            col_list.append(col_lbl)
    
        unq_cnt_df = inp_df.assign(**kwargs).select(col_list).groupby(cur_col).sum()
        unq_cnt_df = unq_cnt_df.assign(drop_columns = False, 
                                       sessionid = sessionid, databasename = db, tablename = tbl, 
                                       xcol=cur_col, xuniquevalue = func.trim(unq_cnt_df[cur_col].expression)).select(unq_cols_order)

        proc_insert_df_tble(unq_cnt_df, outdb, outtbl)

    return 0
    

#######################################
# Filter the eligible columns process #
#######################################
def get_elig_cols(df, db, tbl, cols, prepost_lst, maxunqcnt = 30, ign_lst=None):
    elig_num_type = ['int', 'float', 'decimal.Decimal']
    elig_str_type = ['str']
    ret_col = ['dbname', 'tablename', 'colname', 'org_type', 'mod_type', 'ToleranceLevel']

    # Exclude columns (PI and datatype)
    idx_lst = ign_lst
    if idx_lst == None:
        idx_lst_lower = []
    else:
        idx_lst_lower = [x.lower() for x in idx_lst]
    idx_lst_lower.append("datatype")

    complete_df = pd.DataFrame(columns = ["colname", "coltype", "colname_upper"])
    for colname, coltype in df.dtypes._column_names_and_types:
        if colname.lower() not in idx_lst_lower:
            complete_df.loc[len(complete_df.index)] = [colname, coltype, colname.upper()] 
    complete_df = complete_df.set_index('colname_upper')

    # Handle Non-null select columns
    tmp_df = cols[cols.ColumnName.notnull()]
    tmp_df = tmp_df.assign(colname_upper=tmp_df.ColumnName.str.upper())
    tmp_df = tmp_df.set_index('colname_upper')

    if None in cols.ColumnName.to_list():
        merged_df = complete_df.merge(tmp_df, on='colname_upper', how="left")
        none_tol_level = cols[cols.ColumnName.isnull()]['ToleranceLevel'].iloc[0][0]
        merged_df['ToleranceLevel'] = merged_df['ToleranceLevel'].fillna(none_tol_level)
    else:
        merged_df = pd.concat([complete_df, tmp_df], axis=1, join="inner")

    result_lst = []
    for index, row in merged_df.iterrows():
        colname = row['colname']
        coltype = row['coltype']
        tollvl = row['ToleranceLevel']
        if coltype in elig_num_type:
            result_lst.append([db, tbl, colname, coltype, 'NUM', tollvl])
        elif coltype in elig_str_type:
            result_lst.append([db, tbl, colname, coltype, 'STR', tollvl])

    result_df = pd.DataFrame(result_lst, columns = ret_col) 
    
    # Find the possible category columns
    cat_cols_list = proc_get_cat_cols(df[df["datatype"]=="prv"], result_df.colname.to_list(), prepost_lst, maxunqcnt)
    
    #change2
    #result_df._set_value(result_df["colname"].isin(cat_cols_list), "mod_type", "UNQ")
    result_df.loc[result_df["colname"].isin(cat_cols_list), "mod_type"] = "UNQ"

    
    return result_df


#######################################
# Filter the eligible columns process #
#######################################
def get_elig_cols_bak(df, db, tbl, cols, maxunqcnt = 30):
    elig_num_type = ['int', 'float', 'decimal.Decimal']
    elig_str_type = ['str']
    ret_col = ['dbname', 'tablename', 'colname', 'org_type', 'mod_type']

    # Get the column names and types for selected object
    #df = DataFrame.from_table(in_schema(db, tbl))
        
    idx_lst = df.index
    idx_lst_lower = [x.lower() for x in idx_lst]
    idx_lst_lower.append("datatype")

    #all_col=df.dtypes
    
    if None in cols:
        cols_lower = []
    else:
        cols_lower = [x.lower() for x in cols]
    
    result_lst = []
    for colname, coltype in df.dtypes._column_names_and_types:
        #colname = colname.lower()
        if colname.lower() not in idx_lst_lower:
            if len(cols_lower)==0 or colname.lower() in cols_lower:
                if coltype in elig_num_type:
                    result_lst.append([db, tbl, colname, coltype, 'NUM'])
                elif coltype in elig_str_type:
                    result_lst.append([db, tbl, colname, coltype, 'STR'])
    result_df = pd.DataFrame(result_lst, columns = ret_col) 
    
    # Find the possible category columns
    cat_cols_list = proc_get_cat_cols(df[df["datatype"]=="prv"], result_df.colname.to_list(), maxunqcnt)
    result_df._set_value(result_df["colname"].isin(cat_cols_list), "mod_type", "UNQ")
    
    return result_df


#####################################################################
# Bulk PSI Calculation for all the Histogram columns in the session #
#####################################################################
def proc_calc_hist_psi(sessionid, db, srctbl, outdb, outtbl):

    # Prepare the dataframe from histogram result
    df = DataFrame(in_schema(db,srctbl))

    # Select the session and prevent zero percent
    kwargs = {}
    #change
    # kwargs['A'] = case([(df.prev_pct.expression > 0.00001, df.prev_pct.expression)],else_= 0.00001)
    # kwargs['B'] = case([(df.new_pct.expression > 0.00001, df.new_pct.expression)],else_= 0.00001)
    kwargs['A'] = case((df.prev_pct.expression > 0.00001, df.prev_pct.expression),else_=0.00001)
    kwargs['B'] = case((df.new_pct.expression > 0.00001, df.new_pct.expression),else_=0.00001)
    
    df = df[(df.sessionid == sessionid) & ((df.prev_pct >0.0) | (df.new_pct>0.0))].assign(**kwargs)

    # Add the PSI calculation
    kwargs['A_B'] = df.A - df.B
    kwargs['LNAB'] = func.LN(df.A.expression / df.B.expression)
    df = df.assign(**kwargs)
    df = df.assign(coltype="HST", psi=df.A_B * df.LNAB)
    
    # Output thr result
    psi_df = df.select(["sessionid","databasename","tablename","xcol","coltype","psi"]).groupby(["sessionid","databasename","tablename","xcol","coltype"]).sum()
    rc = proc_insert_df_tble(psi_df, outdb, outtbl)
    return rc

#######################################################################
# Bulk PSI Calculation for selected the Unique columns in the session #
#######################################################################
def proc_calc_unq_psi(sessionid, srcdb, srctbl, outdb, outtbl, min_unq_val = 10):
    # Filter by sessionid
    tmp_df = DataFrame(in_schema(srcdb,srctbl))
    tmp_df = tmp_df[tmp_df.sessionid == sessionid]

    # Add the window sum and count
    kwargs = {}
    kwargs['total_prv_cnt'] = func.sum(tmp_df.sum_prv_cnt.expression).over(partition_by = ["sessionid","databasename","tablename","xcol"])
    kwargs['total_new_cnt'] = func.sum(tmp_df.sum_new_cnt.expression).over(partition_by = ["sessionid","databasename","tablename","xcol"])
    kwargs['total_unq_val'] = func.count(0).over(partition_by = ["sessionid","databasename","tablename","xcol"])
    tmp_df = tmp_df.assign(**kwargs)

    # Calculate the percentage
    kwargs = {}
    kwargs['prv_pct'] = cast(tmp_df.sum_prv_cnt.expression, FLOAT) / cast(tmp_df.total_prv_cnt.expression, FLOAT)
    kwargs['new_pct'] = cast(tmp_df.sum_new_cnt.expression, FLOAT) / cast(tmp_df.total_new_cnt.expression, FLOAT)
    df = tmp_df[tmp_df.total_unq_val >= min_unq_val].assign(**kwargs)

    # Select the session and prevent zero percent
    kwargs = {}
    #change
    # kwargs['A'] = case([(df.prv_pct.expression > 0.00001, df.prv_pct.expression)],else_= 0.00001)
    # kwargs['B'] = case([(df.new_pct.expression > 0.00001, df.new_pct.expression)],else_= 0.00001)
    kwargs['A'] = case((df.prv_pct.expression > 0.00001, df.prv_pct.expression),else_= 0.00001)
    kwargs['B'] = case((df.new_pct.expression > 0.00001, df.new_pct.expression),else_= 0.00001)
    
    df = df[((df.prv_pct >0.0) | (df.new_pct>0.0))].assign(**kwargs)

    # Add the PSI calculation
    kwargs['A_B'] = df.A - df.B
    kwargs['LNAB'] = func.LN(df.A.expression / df.B.expression)
    df = df.assign(**kwargs)
    df = df.assign(coltype="UNQ", psi=df.A_B * df.LNAB)

    # Output thr result
    psi_df = df.select(["sessionid","databasename","tablename","xcol","coltype","psi"]).groupby(["sessionid","databasename","tablename","xcol","coltype"]).sum()
    rc = proc_insert_df_tble(psi_df, outdb, outtbl)
    return rc


##########################
# Create PSI level Alert #
##########################
def proc_crt_psi_alert(sessionid, all_col_df, Alert_set_df, srcdb, srctbl, trgdb, trgtbl):

    # Get the PSI result
    inp_df = DataFrame(in_schema(srcdb, srctbl))
    inp_df = inp_df[inp_df.sessionid == sessionid]

    # Get the tolerance level
    pst_level_df = Alert_set_df[Alert_set_df.AlertType == 'PSI_VALUE'].select(["ToleranceLevel", "ToleranceVal"])

    comb_df = inp_df.join(other = all_col_df, 
                          on = ["databasename=DbName","tablename=TableName","xcol=ColumnName"], 
                          how = "inner", lsuffix = "p", rsuffix = "c")

    # Get the columns over the psi tolerence
    comb_df2 = comb_df.join(other = pst_level_df,
                            on = "ToleranceLevel",
                            how = "inner", lsuffix = "x", rsuffix = "s")

    comb_df2 = comb_df2.assign(AlertType = "Changed Distribution", 
                               AlertDesc = "PSI value = "+ func.trim(cast(comb_df2.psi.expression, Numeric(7,4))) + " > " 
                               + func.trim(cast(comb_df2.ToleranceVal.expression, Numeric(5,2)))
                              )
    result_df = comb_df2[comb_df2.psi>comb_df2.ToleranceVal].select(["sessionid_p", "databasename", "TableName_p", "xcol", "ToleranceLevel_x","ToleranceVal", "Mod_Type", "AlertType", "AlertDesc" ])

    rc = proc_insert_df_tble(result_df, trgdb, trgtbl)

    return rc



#############################
# Create New Category Alert #
#############################
def proc_crt_newunq_alert(sessionid, all_col_df, srcdb, srctbl, trgdb, trgtbl):

    # Find the catorgy have no prev records
    inp_df = DataFrame(in_schema(srcdb, srctbl))
    inp_df = inp_df[(inp_df.sessionid == sessionid) & (inp_df.sum_prv_cnt==0) & (inp_df.xuniquevalue.notnull() == 1)]

    # Prepare the output
    comb_df = inp_df.join(other = all_col_df, 
                          on = ["databasename=DbName","tablename=TableName","xcol=ColumnName"], 
                          how = "inner", lsuffix = "p", rsuffix = "c")

    comb_df = comb_df.assign(ToleranceVal = None,
                             AlertType = "New Category", 
                             AlertDesc = " NEW Category [" + comb_df.xuniquevalue + "] with " + 
                             cast(func.trim(comb_df.sum_new_cnt.expression), VARCHAR(20)) + " record(s)"
                            )
    result_df = comb_df.select(["sessionid_p", "databasename", "TableName_p", "xcol", "ToleranceLevel", "ToleranceVal", "Mod_Type", "AlertType", "AlertDesc" ])

    rc = proc_insert_df_tble(result_df, trgdb, trgtbl)

    return rc


##############################
# Create New Character Alert #
##############################
def proc_crt_newchar_alert(sessionid, all_col_df, srcdb, srctbl, trgdb, trgtbl):

    # Find the character have no prev records
    inp_df = DataFrame(in_schema(srcdb, srctbl))
    inp_df = inp_df[(inp_df.sessionid == sessionid) & (inp_df.prv_char_cnt==0) & (inp_df.Token.notnull() == 1)]

    comb_df = inp_df.join(other = all_col_df, 
                          on = ["databasename=DbName","tablename=TableName","colname=ColumnName"], 
                          how = "inner", lsuffix = "p", rsuffix = "c")

    comb_df = comb_df.assign(ToleranceVal = None,
                             AlertType = "New CHAR", 
                             AlertDesc = " NEW Character [" + comb_df.Token + "] with " + 
                             cast(func.trim(comb_df.new_char_cnt.expression), VARCHAR(20)) + " time(s)"
                            )
    result_df = comb_df.select(["sessionid_p", "databasename", "TableName_p", "colname", "ToleranceLevel", "ToleranceVal", "Mod_Type", "AlertType", "AlertDesc" ])
    
    rc = proc_insert_df_tble(result_df, trgdb, trgtbl)

    return rc

#################################
# Create Outlier increase alert #
#################################
def proc_outlier_inc_alert(sessionid, all_col_df, Alert_set_df, srcdb, srctbl, trgdb, trgtbl):

    # Get the PSI result
    inp_df = DataFrame(in_schema(srcdb, srctbl))
    inp_df = inp_df[inp_df.sessionid == sessionid]
    inp_df = inp_df.assign(outlier_inc_pct = inp_df.outlier_cnt_new/inp_df.notnullcnt_new - inp_df.outlier_cnt_prv/inp_df.notnullcnt_prv)

    # Get the tolerance level
    pst_level_df = Alert_set_df[Alert_set_df.AlertType == 'OUTLIER_INC_PCT'].select(["ToleranceLevel", "ToleranceVal"])
    comb_df = inp_df.join(other = all_col_df, 
                          on = ["databasename=DbName","tablename=TableName","xcol=ColumnName"], 
                          how = "inner", lsuffix = "p", rsuffix = "c")

    # Get the columns over the Outlier % tolerence
    comb_df2 = comb_df.join(other = pst_level_df,
                            on = "ToleranceLevel",
                            how = "inner", lsuffix = "x", rsuffix = "s")

    # Get the columns over the tolerance limit 
    comb_df2 = comb_df2[comb_df2.outlier_inc_pct > comb_df2.ToleranceVal]
    comb_df2 = comb_df2.assign(AlertType = "Increase Outliers", 
                               AlertDesc = "Number of Outliers is increased by " + 
                               func.trim(cast(comb_df2.outlier_inc_pct.expression*100.0, Numeric(5,2))) + "%"
                              )

    # Prepare the output
    result_df = comb_df2.select(["sessionid_p", "databasename", "TableName_p", "xcol", "ToleranceLevel_x", "ToleranceVal", "Mod_Type", "AlertType", "AlertDesc" ])

    rc = proc_insert_df_tble(result_df, trgdb, trgtbl)
    return rc


##############################
# Create NULL increase alert #
##############################
def proc_null_inc_alert(sessionid, all_col_df, Alert_set_df, srcdb, srctbl, trgdb, trgtbl):

    null_level_df = Alert_set_df[Alert_set_df.AlertType == 'NULL_INC_PCT'].select(["ToleranceLevel", "ToleranceVal"])

    inp_df = DataFrame(in_schema(srcdb, srctbl))
    prv_df = inp_df[(inp_df.sessionid == sessionid) & (inp_df.datatype == 'prv') ].assign(null_pct = inp_df.xnull / inp_df.xcnt)
    new_df = inp_df[(inp_df.sessionid == sessionid) & (inp_df.datatype == 'new') ].assign(null_pct = inp_df.xnull / inp_df.xcnt)

    comb_df = prv_df.join(other = new_df, 
                          on = ["databasename","tablename","xcol"], 
                          how = "inner", lsuffix = "p", rsuffix = "n")

    comb_df = comb_df.join(other = all_col_df, 
                           on = ["databasename_p=DbName","tablename_p=TableName","xcol_p=ColumnName"], 
                           how = "inner", lsuffix = "p", rsuffix = "c")

    comb_df2 = comb_df.join(other = null_level_df,
                            on = "ToleranceLevel",
                            how = "inner", lsuffix = "x", rsuffix = "s")
    comb_df2 = comb_df2.assign(null_inc_pct = comb_df2.null_pct_n - comb_df2.null_pct_p)
    comb_df2 = comb_df2[comb_df2.null_inc_pct > comb_df2.ToleranceVal]

    comb_df2 = comb_df2.assign(AlertType = "Increase NULL records", 
                               AlertDesc = "Number of NULL records are increased by " + 
                               func.trim(cast(comb_df2.null_inc_pct.expression*100.0, Numeric(5,2))) + "%")

    # Prepare the output
    result_df = comb_df2.select(["sessionid_p", "databasename_p", "tablename_p", "xcol_p", "x_ToleranceLevel_x", "ToleranceVal", "Mod_Type", "AlertType", "AlertDesc" ])

    rc = proc_insert_df_tble(result_df, trgdb, trgtbl)
    
    return rc


#################################
# Create Statistics level alert #
#################################
def proc_stat_alert(sessionid, all_col_df, Alert_set_df, srcdb, srctbl, trgdb, trgtbl):

    # Get the tolerance level for each alert
    null_level_df = Alert_set_df[Alert_set_df.AlertType == 'NULL_INC_PCT'].select(["ToleranceLevel", "ToleranceVal"])
    max_level_df = Alert_set_df[Alert_set_df.AlertType == 'MAX_INC_PCT'].select(["ToleranceLevel", "ToleranceVal"])
    min_level_df = Alert_set_df[Alert_set_df.AlertType == 'MIN_DEC_PCT'].select(["ToleranceLevel", "ToleranceVal"])
    minmax_level_df = min_level_df.join(other=max_level_df, on ="ToleranceLevel", lsuffix = "mn", rsuffix = "mx")
    

    # Create the variables
    inp_df= DataFrame(in_schema(srcdb, srctbl))
    kwargs = {}
    kwargs['null_pct'] = inp_df.xnull / inp_df.xcnt
    kwargs['xrange'] = inp_df.xmax - inp_df.xmin
    prv_df = inp_df[(inp_df.sessionid == sessionid) & (inp_df.datatype == 'prv')  & (inp_df.xcnt > 0.0)].assign(**kwargs)
    new_df = inp_df[(inp_df.sessionid == sessionid) & (inp_df.datatype == 'new')  & (inp_df.xcnt > 0.0)].assign(**kwargs)

    # Combine pre and new record type 
    comb_df = prv_df.join(other = new_df, 
                          on = ["databasename","tablename","xcol"], 
                          how = "inner", lsuffix = "p", rsuffix = "n")
    kwargs = {}
    #change
    # kwargs['xmindif_pct'] = case([(comb_df.p_xrange.expression > 0.0,
    #                                (comb_df.p_xmin.expression - comb_df.n_xmin.expression) / comb_df.p_xrange.expression)
    #                              ], else_= (comb_df.p_xmin.expression - comb_df.n_xmin.expression)
    #                             )
    # kwargs['xmaxdif_pct'] = case([(comb_df.p_xrange.expression > 0.0,
    #                                (comb_df.n_xmax.expression - comb_df.p_xmax.expression) / comb_df.p_xrange.expression)
    #                              ], else_= (comb_df.n_xmax.expression - comb_df.p_xmax.expression)
    #                             )
    kwargs['xmindif_pct'] = case((comb_df.xrange_p.expression > 0.0,
                                   (comb_df.xmin_p.expression - comb_df.xmin_n.expression) / comb_df.xrange_p.expression)
                                 , else_= (comb_df.xmin_p.expression - comb_df.xmin_n.expression)
                                )
    kwargs['xmaxdif_pct'] = case((comb_df.xrange_p.expression > 0.0,
                                   (comb_df.xmax_n.expression - comb_df.xmax_p.expression) / comb_df.xrange_p.expression)
                                 , else_= (comb_df.xmax_n.expression - comb_df.xmax_p.expression)
                                )
    
    comb_df = comb_df.assign(**kwargs)
#    return comb_df
    
    # Add the Tolerance level
    comb_df = comb_df.join(other = all_col_df, 
                           on = ["databasename_p=DbName","tablename_p=TableName","xcol_p=ColumnName"], 
                           how = "inner", lsuffix = "p", rsuffix = "c")

    # Getting Null percent alert
    comb_df2 = comb_df.join(other = null_level_df,
                            on = "ToleranceLevel",
                            how = "inner", lsuffix = "x", rsuffix = "s")
    comb_df2 = comb_df2.assign(null_inc_pct = comb_df2.null_pct_n - comb_df2.null_pct_p)
    comb_df2 = comb_df2[comb_df2.null_inc_pct > comb_df2.ToleranceVal]

    comb_df2 = comb_df2.assign(AlertType = "Increase NULL records", 
                               AlertDesc = "Number of NULL records are increased by " + 
                               func.trim(cast(comb_df2.null_inc_pct.expression*100.0, Numeric(5,2))) + "%")

    # Prepare the output for null alert
    result_df = comb_df2.select(["sessionid_p", "databasename_p", "tablename_p", "xcol_p", "ToleranceLevel_x", "ToleranceVal", "Mod_Type", "AlertType", "AlertDesc" ])
    rc = proc_insert_df_tble(result_df, trgdb, trgtbl)

    # Getting MIN MAX percent alert
    comb_df2 = comb_df.join(other = minmax_level_df,
                            on = ["ToleranceLevel = ToleranceLevel_mn"],
                            how = "inner", lsuffix = "x", rsuffix = "s")
    
    comb_df2_min = comb_df2[comb_df2.xmindif_pct > comb_df2.ToleranceVal_mn]
    comb_df2_max = comb_df2[comb_df2.xmaxdif_pct > comb_df2.ToleranceVal_mx]

    comb_df2_min = comb_df2_min.assign(AlertType = "OVER MIN RANGE", 
                                       AlertDesc = "MIN value below " + 
                                       func.trim(cast(comb_df2_min.xmindif_pct.expression*100.0, Numeric(5,2))) + "%")

    comb_df2_max = comb_df2_max.assign(AlertType = "OVER MAX RANGE", 
                                       AlertDesc = "MAX value over " + 
                                       func.trim(cast(comb_df2_max.xmaxdif_pct.expression*100.0, Numeric(5,2))) + "%")
    
    result_df = comb_df2_min.select(["sessionid_p", "databasename_p", "tablename_p", "xcol_p", "ToleranceLevel_mn", "ToleranceVal_mn", "Mod_Type", "AlertType", "AlertDesc" ])
    rc = proc_insert_df_tble(result_df, trgdb, trgtbl)

    result_df = comb_df2_max.select(["sessionid_p", "databasename_p", "tablename_p", "xcol_p", "ToleranceLevel_mx", "ToleranceVal_mx", "Mod_Type", "AlertType", "AlertDesc" ])
    rc = proc_insert_df_tble(result_df, trgdb, trgtbl)
    
    return rc


####################
# Create TS Alert  #
####################
def proc_ts_issue_alert(sessionid, ts_err_df, trgdb, trgtbl):

    kwargs = {}
    kwargs['ToleranceVal'] = None
    kwargs['AlertType'] = 'TS Column issue'
    #change
    # kwargs['AlertDesc'] = case([(ts_err_df.Proc_Ind.expression == "X",
    #                              "TS Columns ["+ts_err_df.ColumnName.expression+"] does not exist")],
    #                            else_= "TS Columns ["+ts_err_df.ColumnName.expression+"] contains invalid value")
    kwargs['AlertDesc'] = case((ts_err_df.Proc_Ind.expression == "X",
                                 "TS Columns ["+ts_err_df.ColumnName.expression+"] does not exist"),
                               else_= "TS Columns ["+ts_err_df.ColumnName.expression+"] contains invalid value")
    tmp_df = ts_err_df.assign(**kwargs)
    result_df = tmp_df.select(["sessionid", "DbName", "TableName", "ColumnName", "ToleranceLevel", "ToleranceVal",
                               "Mod_Type", "AlertType", "AlertDesc" ])
    
    rc = proc_insert_df_tble(result_df, trgdb, trgtbl)
    
    return rc


#######################################
# Build VIEW from Teradata dataframe  #
#######################################
def td_build_view(td_df, targetdb, targettbl):
    SQL = "REPLACE VIEW "+targetdb+"."+targettbl+" AS "+ td_df.show_query() +";"
    try:
        rc = UtilFuncs._execute_query(query=SQL, fetchWarnings=False)
        return 0
    except:
        return -1

###########################
# End of VAL_DQ functions #
###########################
