
##########################
# Load all the libraries #
##########################

# Load libraries
import pandas as pd
import numpy as np
import getpass
from datetime import datetime as dt
from datetime import timedelta, date
from sqlalchemy import func, sql, case, and_, or_, not_, cast, Numeric
from os import walk
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
from teradatasqlalchemy import TIMESTAMP, VARCHAR

# Load local functions
import VAL_DQ as val


#######################
# Environment Setting #
#######################
with open('setting.yaml') as f:
    setting = yaml.load(f, Loader=yaml.FullLoader)

VAL_Db = setting.get("VAL_Db")
Proc_Db = setting.get("Proc_Db")
Work_Db = setting.get("Work_Db")
Data_Db = setting.get("Data_Db")


################################################################################################

#######################
# Connect to Teradata #
#######################
val.DQ_log("Connnecting to Teradata...")
# pwd = setting.get('pwd')
# if (pwd == ''):
#     pwd = getpass.getpass("Password:")
td_context = create_context(host = setting.get('Hostname'), username = setting.get('User'), password = password,
                            logmech = setting.get('Logmech'), encryptdata = setting.get('EncryptData'), tmode = setting.get('TDmode'),
                            database = setting.get('Work_Db'))



######################
# read all DDL files #
######################
ddlpath="./DDL"

f = []
for (dirpath, dirnames, filenames) in walk(ddlpath):
    f.extend(filenames)
    break


########################################
# Create all the tables from DDL files #
########################################
val.DQ_log("Creating all the tables and views...")
obj_lst =[]
val.DQ_log("Creating all DQ tables")
for filename in f:
    if filename[-4:] == ".sql":
        tbl_name = filename[0:-4]
        val.DQ_log("  + Create Table: " + tbl_name)
        sqlf = open(ddlpath+"/"+filename, "r")
        sql = sqlf.read()
        sql = sql.replace("[DQ_DATADB_TEMPLATE]", Data_Db)
        rc = val.drop_obj(Data_Db, tbl_name, type='T')
        rc = val.exec_query(sql)
        if Proc_Db != Data_Db:
            val.DQ_log("  + Create View: " + tbl_name)
            sql = "REPLACE VIEW "+Proc_Db+"."+tbl_name+" AS LOCKING ROW FOR ACCESS SELECT * FROM "+Data_Db+"."+tbl_name+";"
            rc = val.exec_query(sql)
        

#######################
# Load Default values #
#######################
val.DQ_log("Loading the default values...")
loadpath="./LOADDEFAULT"
f = []
for (dirpath, dirnames, filenames) in walk(loadpath):
    f.extend(filenames)
    break

obj_lst =[]
val.DQ_log("Loading Default values")
for filename in f:
    if filename[-4:] == ".sql":
        tbl_name = filename[0:-4]
        val.DQ_log("  + Processing: " + filename)
        sqlf = open(loadpath+"/"+filename, "r")
        sql = sqlf.read()
        sql = sql.replace("[DQ_DATADB_TEMPLATE]", Data_Db)
        sql = sql.replace("[DQ_VIEWDB_TEMPLATE]", Proc_Db)
        rc = val.exec_query(sql)

val.DQ_log("Initial database setting is done.")
val.DQ_log("Please setup the control table[%s] manually before running the DQ process." % setting.get("Proc_Control_tbl"))

# One must run remove_context() to close the connection and garbage collect internally generated objects.
#remove_context()


##################
# End of process #
##################
