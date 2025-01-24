#!/usr/bin/env python
# coding: utf-8

# # Teradata Vantage process to determine the change in Data distribution
# 
# Date: 02/16/2021
# Developed by: Teradata


import pandas as pd 
import numpy as np 
import getpass 
from datetime import datetime as dt 
from datetime import timedelta, date 
from sqlalchemy import func, sql, case, and_, or_, not_, cast 
import math 
import yaml

# Load Teradata Python packages
from teradataml.context.context import *
from teradataml.dataframe.dataframe import DataFrame
from teradataml.dataframe.dataframe import in_schema
from teradataml.dataframe.copy_to import copy_to_sql
from teradataml import configure
from teradataml import valib
from teradataml import db_drop_table
from teradataml import UtilFuncs

from teradatasqlalchemy import TIMESTAMP


# Load local functions
import VAL_DQ as val


################
# Main Process #
################

# Environment Setting
with open('setting.yaml') as f:
    setting = yaml.load(f, Loader=yaml.FullLoader)

################################################
# ***** No need to change anything below ***** #
################################################
VAL_Db = setting.get("VAL_Db")
Proc_Db = setting.get("Proc_Db")
Work_Db = setting.get("Work_Db")

Proc_Config_tbl = setting.get("Proc_Config_tbl")
Proc_Control_tbl = setting.get("Proc_Control_tbl")
Proc_Tolerance_tbl = setting.get("Proc_Tolerance_tbl")
Proc_Cat_PrePos_tbl = setting.get("Proc_Cat_PrePos_tbl")

Proc_Stat_result_tbl = setting.get("Proc_Stat_result_tbl")
Proc_Hist_Hist_tbl = setting.get("Proc_Hist_Hist_tbl")
Proc_Hist_psi_tbl = setting.get("Proc_Hist_psi_tbl")
Proc_sv_result_tbl = setting.get("Proc_sv_result_tbl")
Proc_outlier_result_tbl = setting.get("Proc_outlier_result_tbl")
Proc_char_cnt_tbl = setting.get("Proc_char_cnt_tbl")
Proc_unq_cnt_tbl = setting.get("Proc_unq_cnt_tbl")
Proc_proc_cols = setting.get("Proc_proc_cols")
Proc_Alert_tbl = setting.get("Proc_Alert_tbl")
Proc_bad_chr_tbl = setting.get("Proc_bad_chr_tbl")
Proc_badstr_tbl = setting.get("Proc_badstr_tbl")


# Preinstalled Views
Proc_Hist_compare_vw = setting.get("Proc_Hist_compare_vw")


# ***** No need to change anything below ***** #
all_out_tbls = [Proc_Stat_result_tbl, Proc_Hist_Hist_tbl, Proc_Hist_psi_tbl, Proc_sv_result_tbl,
                Proc_outlier_result_tbl, Proc_char_cnt_tbl, Proc_unq_cnt_tbl, Proc_proc_cols]
configure.val_install_location = setting.get("VAL_Db")


# Connect to Teradata
# pwd = setting.get('pwd')
# if (pwd == ''):
#     pwd = getpass.getpass("Password:")
td_context = create_context(host = setting.get('Hostname'), username = setting.get('User'), password = password,
                            logmech = setting.get('Logmech'), encryptdata = setting.get('EncryptData'), tmode = setting.get('TDmode'),
                            database = setting.get('Work_Db')
                           )


# Reading configuration
cuf_df = DataFrame(in_schema(Proc_Db, Proc_Config_tbl))
cuf_df = cuf_df[cuf_df['idx']==1].to_pandas()

new_days = cuf_df.iloc[0]['delta_new'].item()
hist_days = cuf_df.iloc[0]['delta_prv'].item()
outlier_method = cuf_df.iloc[0]['outlier_method']
max_category = cuf_df.iloc[0]['category_max_unq'].item()
min_prev_rec = cuf_df.iloc[0]['min_prv_rec'].item()
user_chr_sch = cuf_df.iloc[0]['enable_chr_search_ind'].item()

DQ_Date_Usage = cuf_df.iloc[0]['DATE_USAGE']
if DQ_Date_Usage[0:3].upper() == 'CUR':
    DQ_Date_Usage = 'CUR'
else:
    DQ_Date_Usage = 'MAX'

DQ_start_ts = date.today()

# Get Tolerance Parameters
tol_df = DataFrame(in_schema(Proc_Db, Proc_Tolerance_tbl)).to_pandas().reset_index()

# Historgram parameters
hist_H_bin = tol_df.loc[(tol_df.AlertType=='HISTOGRAM_BIN_SIZE') & (tol_df.ToleranceLevel.str.startswith('H')), ['ToleranceVal']]
hist_M_bin = tol_df.loc[(tol_df.AlertType=='HISTOGRAM_BIN_SIZE') & (tol_df.ToleranceLevel.str.startswith('M')), ['ToleranceVal']]
hist_L_bin = tol_df.loc[(tol_df.AlertType=='HISTOGRAM_BIN_SIZE') & (tol_df.ToleranceLevel.str.startswith('L')), ['ToleranceVal']]
hist_H_bin = hist_H_bin.iloc[0][0]
hist_M_bin = hist_M_bin.iloc[0][0]
hist_L_bin = hist_L_bin.iloc[0][0]


# Display the setting
val.DQ_log("**************************************************************************")
val.DQ_log("***************** Starting Data Quality Analysis Process *****************")
val.DQ_log("**************************************************************************")
val.DQ_log("Parameter Setting:")
val.DQ_log("  - Delta New : %s days" % new_days )
val.DQ_log("  - Delta Prv : %s days" % hist_days )
val.DQ_log("  - Minimun records for prev data : %s " % min_prev_rec)
val.DQ_log("  - Outlier Method: " + outlier_method )
val.DQ_log("  - Maximum Category uniqueness : %s" % max_category )
val.DQ_log("  - Which Date to use : "+ DQ_Date_Usage )
val.DQ_log("  - Current Date = "+ DQ_start_ts.strftime('%Y-%m-%d'))
val.DQ_log("  - Enable new charareter search : %s" % user_chr_sch )
val.DQ_log("Tolerance Setting:")
val.DQ_log("  - Histogram HIGH : %s bins" % hist_H_bin )
val.DQ_log("  - Histogram MID  : %s bins" % hist_M_bin )
val.DQ_log("  - Histogram LOW  : %s bins" % hist_L_bin )

# Get the new sessionid
sessionid = val.get_session_id(Proc_Db, all_out_tbls) + 1
val.DQ_log("Sessionid = %s" % sessionid)


# Get the Prefix and Postfix value for Category columns
prepost_df = DataFrame(in_schema(Proc_Db, Proc_Cat_PrePos_tbl))
prefix_df = prepost_df[prepost_df.Pre_ind==1].to_pandas().reset_index()
postfix_df = prepost_df[prepost_df.Pre_ind!=1].to_pandas().reset_index()

prepost_lst ={'pre_cat' : prefix_df[prefix_df.Category_ind==1]["PrePost"].to_list(),
              'pre_notcat' : prefix_df[prefix_df.Category_ind!=1]["PrePost"].to_list(),
              'post_cat' : postfix_df[postfix_df.Category_ind==1]["PrePost"].to_list(),
              'post_notcat' : postfix_df[postfix_df.Category_ind!=1]["PrePost"].to_list()}



# Get the bad characters list
badchar_df = DataFrame(in_schema(Proc_Db, Proc_bad_chr_tbl)).to_pandas().reset_index()
badchar_lst = badchar_df.badchar.to_list()
badchar_lst = [s.strip() for s in badchar_lst]


# Get the tables/views and Timestamp column to process
Control_tddf = DataFrame.from_table(in_schema(Proc_Db, Proc_Control_tbl))
Control_tddf = Control_tddf[Control_tddf.ActiveInd == 1] 
source_obj_df = Control_tddf.select(["DatabaseName","TableName","TsColumn", "InactiveTSColumn"]).groupby(["DatabaseName","TableName"]).min().to_pandas().sort_values(by=['DatabaseName','TableName'])

source_obj_df.columns = ['DatabaseName','TableName', 'TsColumn', 'InactiveTSColumn']

# Get the columns to process
# MultiIndex = DatabaseName, TableName
Control_df = Control_tddf.to_pandas(index_column=["DatabaseName","TableName"]).    sort_values(by=['DatabaseName','TableName', 'ColumnName' ]).reset_index()

# Processing each object (table or view)
for index, row in source_obj_df.iterrows():
    rec_cnt = 0
    cur_dbname = row['DatabaseName']
    cur_tblname = row['TableName']
    cur_tscol = row['TsColumn']
    cur_inactivetscol = row['InactiveTSColumn']
    no_bin = 20
    
    val.DQ_log("-----------------------------------------------------------------------------")
    val.DQ_log('Processing  :' + cur_dbname+"."+cur_tblname + ' Date column ['+cur_tscol +']' )
    #col_df = Control_df.loc[(cur_dbname, cur_tblname), ["ColumnName","ToleranceLevel"]].reset_index()
    col_df = Control_df[(Control_df.DatabaseName==cur_dbname) & (Control_df.TableName==cur_tblname)][["ColumnName","ToleranceLevel"]]
    
    val.DQ_log("Create DataFrame")
    td_df, use_date, prv_cnt, new_cnt, selrc, idx_lst= val.proc_sel_tblcols(sessionid, DQ_start_ts, cur_dbname, cur_tblname, 
                                                                            cur_tscol, cur_inactivetscol, 
                                                                            setting.get("User"), 
                                                                            delta_t=new_days, delta_h = hist_days, datetype=DQ_Date_Usage)
    
    val.DQ_log("  - Prv Records [%s] New Records [%s]" % (prv_cnt, new_cnt))
    
    if prv_cnt > min_prev_rec and new_cnt > 0 and selrc==0:

        val.DQ_log("Getting eligiable columns and type")
        elg_df = val.get_elig_cols(td_df, cur_dbname, cur_tblname, col_df, prepost_lst, max_category, idx_lst)
        cur_all_cols = elg_df['colname'].tolist()
        cur_num_cols_tol = elg_df[['colname','ToleranceLevel']].loc[elg_df['mod_type']=='NUM']
        cur_num_cols = elg_df['colname'].loc[elg_df['mod_type']=='NUM'].tolist()
        cur_str_cols = elg_df['colname'].loc[elg_df['mod_type']=='STR'].tolist()
        cur_unq_cols = elg_df['colname'].loc[elg_df['mod_type']=='UNQ'].tolist()
#        val.DQ_log("  -NUM Col[%]" % (",".join(cur_num_cols)))
#        val.DQ_log("  -STR Col[%]" % (",".join(cur_str_cols)))
#        val.DQ_log("  -CAT Col[%]" % (",".join(cur_unq_cols)))
    
        # Processing unique columns
        if len(cur_unq_cols) > 0:
            val.DQ_log("Starting of unique value Analysis for "+cur_tblname )
            val.proc_unq_count(td_df, sessionid, cur_dbname, cur_tblname, cur_unq_cols, Proc_Db, Proc_unq_cnt_tbl )
            val.DQ_log("End of unique value Analysis for "+cur_tblname )

        # Processing strings columns
        if len(cur_str_cols) > 0:
            if cur_tscol in cur_str_cols:
                cur_str_cols.remove(cur_tscol)

            if user_chr_sch == 1:
                val.DQ_log("Starting of special char analysis for "+cur_tblname )
                val.proc_find_badchr2(setting.get("User"), td_df, badchar_lst, sessionid, cur_dbname, cur_tblname, cur_str_cols, Proc_Db, Proc_char_cnt_tbl)
                val.DQ_log("End of of special char analysis for "+cur_tblname )
            elif user_chr_sch == 2 :
                val.DQ_log("Starting of string Analysis for "+cur_tblname )
                val.proc_find_badchr(td_df, badchar_lst, sessionid, cur_dbname, cur_tblname, cur_str_cols, Proc_Db, Proc_badstr_tbl)
                val.DQ_log("End of string Analysis for "+cur_tblname )
            else:
                elg_df = elg_df.loc[elg_df['mod_type']!='STR']

        # Processing numeric columns
        if len(cur_num_cols) > 0:
            val.DQ_log("Starting of Numeric Analysis for "+cur_tblname )

            val.DQ_log("Statistics Analysis")
            stat_result = val.proc_data_exp(td_df, sessionid, cur_dbname, cur_tblname, cur_num_cols,                                             Proc_Db, Proc_Stat_result_tbl)
        
            # check if there are record in both new and prev to continue
            col_type_cnt = stat_result.result.select(["xcol","datatype","xcnt"])
            type_cnt = col_type_cnt.groupby("datatype").assign(type_cnt_max=func.max(col_type_cnt.xcnt.expression)).to_pandas()
            if type_cnt.shape[0] >= 2:
                
                val.DQ_log("Histogram Analysis")
                hist_result = val.proc_hist_exp2(setting.get("User"), td_df, stat_result, sessionid, cur_dbname, cur_tblname, 
                                                cur_num_cols_tol, Proc_Db, Proc_Hist_Hist_tbl,
                                                hist_H_bin, hist_M_bin, hist_L_bin)
                val.DQ_log("Outlier Analysis")
                rec_cnt = val.proc_outlier_cnt(td_df, sessionid, cur_dbname, cur_tblname, 
                                               stat_result, Proc_Db, Proc_outlier_result_tbl, method = outlier_method)
                val.DQ_log("Outlier Analysis procecessed %s columns" % rec_cnt)
                #val.DQ_log("Smirnov Test")
                #tmp_results = val.proc_smirnov_test(td_df, sessionid, cur_dbname, cur_tblname, \
                #                                    cur_num_cols, Proc_Db, Proc_sv_result_tbl, \
                #                                    VAL_Db)
            else:
                val.DQ_log("No records in either New or Prev time windows, skip the analysis...")
            val.DQ_log("End of Numeric Analysis for "+cur_tblname )

        rec_cnt = val.proc_write_proc_cols(td_context, sessionid, use_date, elg_df, Proc_Db, Proc_proc_cols, prv_cnt, new_cnt, 'Y')

    else:
        elg_df = pd.DataFrame(columns=['dbname', 'tablename', 'colname', 'ToleranceLevel', 'org_type', 'mod_type'])
        elg_df.loc[0] = [cur_dbname,cur_tblname, cur_tscol, None, None, None]
        if selrc == -1:
            rec_cnt = val.proc_write_proc_cols(td_context, sessionid, use_date, elg_df, Proc_Db, Proc_proc_cols, prv_cnt, new_cnt, 'X')
        elif selrc == -2:
            rec_cnt = val.proc_write_proc_cols(td_context, sessionid, use_date, elg_df, Proc_Db, Proc_proc_cols, prv_cnt, new_cnt, 'I')
        else:
            rec_cnt = val.proc_write_proc_cols(td_context, sessionid, use_date, elg_df, Proc_Db, Proc_proc_cols, prv_cnt, new_cnt, 'N')

        rec_cnt = 0

    val.DQ_log("Finished processing %s columns" % rec_cnt)


# # Bulk PSI Calculation
rc = val.proc_calc_hist_psi(sessionid, Proc_Db, Proc_Hist_compare_vw, Proc_Db, Proc_Hist_psi_tbl)
rc = val.proc_calc_unq_psi(sessionid, Proc_Db, Proc_unq_cnt_tbl, Proc_Db, Proc_Hist_psi_tbl, min_unq_val = 2)


#######################
# Creating the alerts #
#######################

# Clear the alert result if exist
val.DQ_log("Clear existing Alerts for sessionid = %s" % sessionid)
rc = val.del_tbl_session(sessionid, Proc_Db, [Proc_Alert_tbl])

# Get the processed columns
val.DQ_log("Get all the processed tables and columns...")
proc_col_df = DataFrame(in_schema(Proc_Db, Proc_proc_cols))
proc_inval_df = proc_col_df[(proc_col_df.sessionid == sessionid) & ((proc_col_df.Proc_Ind == 'X') | (proc_col_df.Proc_Ind == 'I'))]
proc_col_df = proc_col_df[(proc_col_df.sessionid == sessionid) & (proc_col_df.Proc_Ind == 'Y')]

# Get the alert setting
val.DQ_log("Get the alert parameters")
Alert_set_df = DataFrame(in_schema(Proc_Db, Proc_Tolerance_tbl))

# Create alert with TS column issue
val.DQ_log("Creating Timestamp alerts...")
rc = val.proc_ts_issue_alert(sessionid, proc_inval_df, Proc_Db, Proc_Alert_tbl)

# Create alert with high PSI value: Data Drift for NUM & CAT column types
val.DQ_log("Creating Data Drift (PSI) alerts...")
rc = val.proc_crt_psi_alert(sessionid, proc_col_df, Alert_set_df, Proc_Db, Proc_Hist_psi_tbl, Proc_Db, Proc_Alert_tbl)

# Create alert with new Category for CAT column type
val.DQ_log("Creating New Category alerts...")
rc = val.proc_crt_newunq_alert(sessionid, proc_col_df, Proc_Db, Proc_unq_cnt_tbl, Proc_Db, Proc_Alert_tbl)

# Create alert with new characters alerts for STR column type
val.DQ_log("Creating New characters alerts...")
rc = val.proc_crt_newchar_alert(sessionid, proc_col_df, Proc_Db, Proc_char_cnt_tbl, Proc_Db, Proc_Alert_tbl)

# Create alert when % of outlier in the column increased for NUM column type
val.DQ_log("Creating Outliers alerts...")
rc = val.proc_outlier_inc_alert(sessionid, proc_col_df, Alert_set_df, Proc_Db, Proc_outlier_result_tbl, Proc_Db, Proc_Alert_tbl)

# Create alert based on statistics values for NUM column type
val.DQ_log("Creating Statistics alerts...")
rc = val.proc_stat_alert(sessionid, proc_col_df, Alert_set_df, Proc_Db, Proc_Stat_result_tbl, Proc_Db, Proc_Alert_tbl)



# One must run remove_context() to close the connection and garbage collect internally generated objects.
val.DQ_log("Disconnecting from Vantage ...")
#remove_context()


##################
# End of Process #
##################
val.DQ_log("VAL_DQ finished successfully.")
