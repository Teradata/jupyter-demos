import teradatasql
import getpass
import sys
ddl_dir = '/home/jovyan/JupyterLabRoot/DDL'
if len(sys.argv) == 1:
    print ("ERROR: Database DDL name was not provided")
    sys.exit()
dbname_ddl = sys.argv[1]
dbname = dbname_ddl.replace(".ddl","")

try: x = globals()[dbname]
except:
    print ("will be creating ",dbname,"tables and views")
else:
    print ("... using existing", dbname,"database")
    # sys.exit()

try: 
    password = globals()["password"] 
except: 
    password = getpass.getpass(prompt='\nEnter password for user demo_user: ')
    
errorcount = 0
statementcount = 0
try: 
    with teradatasql.connect (host="host.docker.internal", user='demo_user', password=password ) as con:
        with con.cursor () as cur:   
            try:
                with open(ddl_dir + "/" + dbname_ddl) as f:
                    stmt = ""
                    for line in f:
                        # print (line, end=' ')
                        if line.strip() != "":
                            stmt = stmt + " " + line
                        if ";" in line:
                            statementcount = statementcount + 1
                            print ("executing:", stmt[:70], "...")
                            try:
                                cur.execute(stmt)
                            except Exception as ex:
                                if "[Error 5612]" in str(ex) or "[Error 3803]" in str(ex):
                                    print ("... already existed")
                                else:
                                    print("error occured:", str(ex).split("\n") [0])
                                errorcount = errorcount + 1
                            stmt = ""
                    if stmt != "":
                        statementcount = statementcount + 1
                        print ("executing:", stmt[:70], "...")
                        try:
                            cur.execute(stmt)
                        except Exception as ex:
                            if "[Error 5612]" in str(ex) or "[Error 3803]" in str(ex):
                                print ("... already existed")
                            else:
                                print("error occured:", str(ex).split("\n") [0])
                            errorcount = errorcount + 1
            except IOError as err:
                print ("\nError reading the file", sys.argv[1], err)
                sys.exit()
except:
    print ("Logon was unsuccessful")
else:    
    globals()[dbname] = "Y"            
    print("\n\nDefinition of ",dbname, " complete with ", statementcount, " statements and ", errorcount," errors")