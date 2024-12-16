import teradatasql
import getpass
import sys
import time
import runpy
ddl_dir = '/home/jovyan/JupyterLabRoot/DDL'


if len(sys.argv) < 2:
    print ("ERROR: Procedure to run must be specified")
    sys.exit()
dbname_ddl = sys.argv[1]

try: 
    password = globals()["password"] 
except: 
    password = getpass.getpass(prompt='\nEnter password for user demo_user: ')
    
con = teradatasql.connect (host="host.docker.internal", user='demo_user', password=password ) 
cur = con.cursor()

cur.execute(dbname_ddl) 
cur.nextset()
tbl_list = cur.fetchall()
for row in tbl_list:
  print(row[0])
