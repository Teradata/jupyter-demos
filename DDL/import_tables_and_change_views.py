import teradatasql
import getpass
import sys
import time
import runpy
ddl_dir = '/home/jovyan/JupyterLabRoot/DDL'

if len(sys.argv) != 3:
    print ("ERROR: Database DDL name was not provided and MB for database must be supplied")
    sys.exit()
dbname_ddl = sys.argv[1]
dbname_size = sys.argv[2]
dbname = dbname_ddl.replace(".ddl","")

if dbname[-3:] != "_db":
    print ("ERROR: The filename format should end _db.ddl")
    sys.exit()
dbname_view = dbname.replace("_db","")  

try: 
    password = globals()["password"] 
except: 
    password = getpass.getpass(prompt='\nEnter password for user demo_user: ')
    
con = teradatasql.connect (host="host.docker.internal", user='demo_user', password=password ) 
cur = con.cursor()

cur.execute("select tablename from dbc.tablesv where databasename = 'gs_tables_db' and tablename like '" + dbname_view + "%' order by 1;")
tbl_list = cur.fetchall() 
if len(tbl_list) == 0:
    print ("\nNote: running create_NOS_tables_and_views.py first to ensure we have all semantic views and objects for database")
    sys.argv = ['', dbname_ddl.replace("_db.",".")]
    runpy.run_path('../../DDL/create_NOS_tables_and_views.py', run_name='__main__')
    print ("\n ... continuing to import data")
    
cur.execute("select databasename from dbc.databasesv where databasename = '" + dbname_view + "'")
have_dbname_view = "y"
print ("rows from viewdb:", cur.rowcount)
if cur.rowcount == 0 :
    have_dbname_view = "n"

# the following block is probably not needed if the create NOS worked
cur.execute("select tablename from dbc.tablesv where databasename = 'gs_tables_db' and tablename like '" + dbname_view + "%' order by 1;")
tbl_list = cur.fetchall() 
if len(tbl_list) == 0:
    print ("ERROR: there are no tables in gs_tables_db that begin with " + dbname_view)
    sys.exit()
 
cur.execute("select databasename from dbc.databasesv where databasename = '" + dbname + "'")
if cur.rowcount == 0 :

    try:
        cur.execute ("create database " + dbname + " from dbc as perm=" + dbname_size + "*1024**2;")
        cur.execute ("give " + dbname + " to demo_user;")
        cur.execute ("grant all on " + dbname + " to public with grant option;")
    except Exception as err:
        print("\n\nERROR creating database", dbname, err)
        sys.exit()

    tcount=0
    
    for tbl in tbl_list:
        tcount = tcount + 1
        nos_tbl = tbl[0]
        nos_tbl = nos_tbl.replace(" ","")
        tblname = nos_tbl.replace(dbname_view + "_","")
        print ("creating:" , tblname, " from:", nos_tbl, "  table", tcount, " of ", len(tbl_list))
        cur.execute ("create table " + dbname + "." + tblname + " as (select * from gs_tables_db." + nos_tbl + ") with no data no primary index partition by column;")
        cur.execute ("alter table " + dbname + "." + tblname + " drop location;")
        cur.execute ("select trim(columnname) from dbc.columnsv where databasename = 'gs_tables_db' and tablename = '" + nos_tbl + "' and columnname <> 'location' order by columnid;")
        list = cur.fetchall()
        col_list = ','.join([str(elem) for elem in list])
        col_list = col_list.replace('[','"').replace(']','"').replace("'","")
        insert_sql = "INSERT into " + dbname + "." + tblname + " select " + col_list + " from gs_tables_db." + nos_tbl + ";"
        print ("Executing: ", insert_sql)
        before_time = time.time()
        cur.execute (insert_sql)
        after_time = time.time()
        secs = "{:.1f}".format(after_time - before_time) 
        rcnt = f"{cur.rowcount:,}"    
        print ("Rows Inserted:", rcnt, "   The INSERT took:", secs, " seconds")
    cur.execute("select sum(currentperm), sum(maxperm) from dbc.allspacev where databasename = '" + dbname + "' and tablename = 'all';") 
    db_info = cur.fetchone()
    free_space = str(int(db_info[1] - 1.1 * db_info[0]))
    cur.execute("create database x from " + dbname + " as perm=" + free_space +";")
    cur.execute("give x to dbc;")
    cur.execute("drop database x;")
else:
     print ("Note: Database " + dbname + " already existed.")   
       
if have_dbname_view == "n":
    cur.execute ("create database " + dbname_view + " from demonow as perm = 0;")
    cur.execute ("grant all on " + dbname_view + " to public with grant option;")
    print ("Note: creating view(s) in " + dbname_view + " to point to table(s) in " + dbname)
               
for tbl in tbl_list:
    nos_tbl = tbl[0]
    nos_tbl = nos_tbl.replace(" ","")
    tblname = nos_tbl.replace(dbname_view + "_","")
    print ("creating view: ", tblname)
    cur.execute ("replace view " + dbname_view + "." + tblname + " as locking row for access select * from " + dbname + "." + tblname + ";")
   
print ("Done: There are now ", len(tbl_list), " views in " + dbname_view + " pointing at tables in " + dbname)