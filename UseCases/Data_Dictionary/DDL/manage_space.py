import teradatasql
import getpass
import sys
import time
ddl_dir = '/home/jovyan/JupyterLabRoot/DDL'

try: 
    password = globals()["password"] 
except: 
    password = getpass.getpass(prompt='\nEnter password for user Demo_User: ')
    
con = teradatasql.connect (host="host.docker.internal", user='Demo_User', password=password ) 
cur = con.cursor()

cur.execute("select sum(maxperm), sum(currentperm) from dbc.allspace")
ans = cur.fetchone()
maxperm = ans[0]
curperm = ans[1]

cur.execute("""select	space.databasename
     ,sum(currentperm)/1024**2 CUR_MB
     ,sum(maxperm)/1024**2  Max_MB
	 ,TableCount
	 ,ViewCount 
from	dbc.allspacev space left join
	(select databasename, 
	sum(case when tablekind in ('T', 'O') then 1 else 0 end) TableCount,
	sum(case when tablekind in ('V') then 1 else 0 end) ViewCount
	from dbc.tablesv where databasename in (select child from dbc.childrenv where parent = 'Demo_User')
	group by 1 ) object_cnt
on space.databasename = object_cnt.databasename
where	space.databasename in (
	select	child 
	from	dbc.childrenv 
	where	parent = 'Demo_User') 
    and tablename = 'All'
    and space.databasename <> 'gs_tables_db'
group by 1, 4, 5 
union 
select	' Demo_User'
    ,sum(currentperm)/1024**2  CUR_MB
    ,sum(maxperm)/1024**2  Max_MB
    ,TableCount
    ,ViewCount
from dbc.allspace,
(select sum(case when tablekind in ('T', 'O') then 1 else 0 end) TableCount,
	sum(case when tablekind in ('V') then 1 else 0 end) ViewCount
    from dbc.tablesv where databasename = 'Demo_User') democnt
where databasename = 'Demo_User' and tablename = 'All'
order by 1;
""")

db_list = cur.fetchall() 

print ("\n Current Space Utilization Report")
print ("     ",f'{"Databasename":<30}', f'{"Cur MB":>10}', f'{"Max MB":>10}', f'{"#Tables":>10}', f'{"#Views":>10}')
dbc_cur = 0
dbc_max = 0
use_cur = 0
use_max = 0
cnt = 0
for db in db_list:
#    if "remaining space" in db[0]:
#        dbc_cur = db[1]
#        dbc_max = db[2]
#        print ("     ", f'{db[0]:<30}', f'{round(db[1],1):10,}', f'{round(db[2],1):10,}')
    if "gs_tables_db" in db[0] or "Demo_User" in db[0]:
        use_cur = use_cur + db[1]
        use_max = use_max + db[2]
        cnt = cnt + 1
        if db[3] == None:
            print (f'{cnt:5,}',f'{db[0] + " (delete only)":<30}', f'{round(db[1],1):10,}', f'{round(db[2],1):10,}')
        else:
            print (f'{cnt:5,}',f'{db[0] + " (delete only)":<30}', f'{round(db[1],1):10,}', f'{round(db[2],1):10,}', f'{db[3]:10,}', f'{db[4]:10,}')
    else:
        use_cur = use_cur + db[1]
        use_max = use_max + db[2]
        cnt = cnt + 1
        if db[3] == None:
            print (f'{cnt:5,}',f'{db[0]:<30}', f'{round(db[1],1):10,}', f'{round(db[2],1):10,}')
        else:
            print (f'{cnt:5,}',f'{db[0]:<30}', f'{round(db[1],1):10,}', f'{round(db[2],1):10,}', f'{db[3]:10,}', f'{db[4]:10,}')

given_space = maxperm - dbc_max
remaining = dbc_max - dbc_cur
usable = remaining -1000
print ("\nThis platform has a total of",f'{int(round(maxperm / 1024**2,0)):,}',"MB.", f'{int(round(maxperm / 1024**2 - dbc_max,0)):,}', " MB has been allocated to databases.")
print ("The total space used by all tables is",f'{int(round(curperm / 1024**2,0)):,}', "MB which is",f'{int(round(100 * curperm / maxperm,0)):,}',"% of Max Perm. Ideal for this machine is < 80%")

print ('\nIf you would like to delete databases, type the word "drop" followed by the line numbers from the list above you want to delete.')
print ("if Demo_User is selected, it will only delete its contents.")
delete_req = input("Enter your drop request or just press enter: ")
delete_num = delete_req.split()
if len(delete_num) == 0:
    print ("... nothing dropped")
    sys.exit()
if delete_num[0].lower() != "drop" and delete_num[0].lower() != "delete":
    print ('ERROR: was expecting the word "drop" or "delete" and not "',delete_num[0],'"')
    sys.exit()
delete_num.remove(delete_num[0])
delete_num.sort()
print ("\nThe following databases will be deleted and/or dropped")
for i in delete_num:
    if not i.isnumeric():
        print ('ERROR: all entries after "drop" must be numbers from the list above. "',i,'" was not valid.')
        sys.exit()
    if int(i) > len(db_list):
        print ('ERROR: Your entry of "',i,'" was not in the range of 1 to',len(db_list))
        sys.exit()
    if db_list[int(i)-1][0] == 'gs_tables_db' or db_list[int(i)-1][0] == 'Demo_User':
        print (db_list[int(i)-1][0], "will only be deleted")
    else:
        print (db_list[int(i)-1][0])
confirm = input('Enter the word "yes" to confirm this deletion: ')
if confirm.lower() != "yes":
    print ('The confirmation of "yes" was not given.  Nothing deleted.')
    sys.exit()
    
before_time = time.time()
for i in delete_num:
    if db_list[int(i)-1][0] != "gs_tables_db":
        print ("Deleting contents of " + db_list[int(i)-1][0])
        if "Demo_User" in db_list[int(i)-1][0]:
            cur.execute("""select tablename, tablekind from dbc.tablesv where databasename = 'Demo_User'
            and tablekind in ('T', 'O', 'V');""")
            tbl_list = cur.fetchall() 
            for tbl in tbl_list:
                if 'V' in tbl[1]: 
                   cur.execute("drop view Demo_User." + str(tbl[0]) + ";")
                else:
                   cur.execute("drop table Demo_User." + str(tbl[0]) + ";")
        else:
            cur.execute("delete database " + db_list[int(i)-1][0] +";")
        if db_list[int(i)-1][0] != 'gs_tables_db' and 'Demo_User' not in db_list[int(i)-1][0]:
            print ("Dropping " + db_list[int(i)-1][0])
            cur.execute("drop database " + db_list[int(i)-1][0] +";")
        cur.execute("""select 'drop table gs_tables_db.' || trim(tablename) || ';' (title '') 
        from dbc.tablesv 
        where databasename = 'gs_tables_db' and 
        tablename like '""" + db_list[int(i)-1][0] + "%' order by 1;")
        drop_list = cur.fetchall()
        for stmt in drop_list:
            print ("Executing:", stmt[0])
            cur.execute(stmt[0])
after_time = time.time()
secs = "{:.1f}".format(after_time - before_time) 
print ("\nDrop processing complete.  That took",secs,"seconds.")