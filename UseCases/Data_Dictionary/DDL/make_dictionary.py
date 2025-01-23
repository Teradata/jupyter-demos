import nbformat as nbf
import teradatasql
import getpass
import sys
import time
import os

try: 
    password = globals()["password"] 
except:
    print("Connecting to get list of ddl files")
    password = getpass.getpass(prompt='\nEnter password for user demo_user: ')
    
con = teradatasql.connect (host="host.docker.internal", user='demo_user', password=password ) 
cur = con.cursor()
cur.execute("select distinct databasename from gs_tables_db.ddl where databasename like 'DEMO%' order by 1")
ddl_list = cur.fetchall()

ddl_dir = '/home/jovyan/JupyterLabRoot/DDL'
notebook_filename = '/home/jovyan/JupyterLabRoot/UseCases/Data_Dictionary/Data_Dictionary.ipynb'
nb = nbf.v4.new_notebook()
md = '''<b style = "font-size:28px;font-family:Arial;color:#E37C4D">ClearScape Analytics Experience Data Dictionary</b><img  src="Data_Dictionary.png" alt="Data_Dictionary" width="150" align="right" />
\n\n This data is being provided in cloud storage, having been exported from Teradata Vantage Live which was originally publicly sourced data. However, there has been value add to the content and structure of the data, and as such is protected work product of the Teradata Corporation.  It is provided for use with the demonstrations in the ClearScape Analytics Experience.
\n\nAfter each database description there may be one or two "run" commands:
<ol><li> a statement to create foreign tables linked to the <b>cloud</b>, create a view database with 1:1 views pointing at those foreign tables, and any semantic views and other object needed by the demonstration</li>
<li> a statement to import data from the cloud to create <b>local</b> tables and 1:1 views pointing at those local tables. </li></ol>
Click in the cell with the "run" statement and press SHIFT + ENTER to run either routine. All demonstrations will run either with <b>cloud</b> tables or <b>local</b> tables. The local tables will be faster, however that means you will need to manage local storage.

<br>A complete description of the design of these databases is included at the end of this notebook.
'''
nb['cells'] = [nbf.v4.new_markdown_cell(md)]

md = '''<p style = 'font-size:18px;font-family:Arial;color:#E37C4D'><b>Manage Your Space</b></p> 
You may use the "manage space" routine below to view current space usage and available space.  
'''
nb['cells'].append(nbf.v4.new_markdown_cell(md))

code = "run -i ../../DDL/manage_space.py"
nb['cells'].append(nbf.v4.new_code_cell(code))

md = "<hr><b style = 'font-size:28px;font-family:Arial;color:#E37C4D'>Available Demonstration Databases</b>"
nb['cells'].append(nbf.v4.new_markdown_cell(md))

cur_dbname = ' '
for ddl in ddl_list:
    ddl_str = str(ddl[0])
    dbname = ddl_str.rsplit("_",1)[0] 
    if cur_dbname != dbname:
        if cur_dbname != ' ':
            code = '%run -i ../run_procedure.py "call remove_data(' + "'" +  cur_dbname + "'" + ')";   # only needed if you want to clean up space'
            nb['cells'].append(nbf.v4.new_code_cell(code))
        cur_dbname = dbname
        txt_fn = ddl_dir + "/" + dbname + ".txt"
        try:
            txt_file = open(txt_fn, "r")
            txt_content = txt_file.read()
            txt_file.close()
        except:
            txt_content = "No description available"
        md = "### " + dbname + "\n" + txt_content 
        nb['cells'].append(nbf.v4.new_markdown_cell(md))
    code = '%run -i ../run_procedure.py "call get_data(' + "'" +  ddl_str + "'" + ')";'
    nb['cells'].append(nbf.v4.new_code_cell(code))
code = '%run -i ../run_procedure.py "call remove_data(' + "'" +  cur_dbname + "'" + ')";   # only needed if you want to clean up space'
nb['cells'].append(nbf.v4.new_code_cell(code))
  
md = '''
<hr>
<b style = 'font-size:28px;font-family:Arial;color:#E37C4D'>Description of Databases, Tables, and Other Objects</b>
<img  src="DemoNow_Table_Design.png" alt="DemoNow_Table_Design" width="600" align="right" />
\nAll data used in for these demos is provided on Cloud Storage. That data has been exported in Parquet format. For Vantage to access that data, a foreign table is defined with the necessary credentials. For ClearScape Analytics, we create the foreign table definitions in the database gs_tables_db (gs = Google Storage) which also contains the Authentication object. We use a stored procedure to run scripts to create the foreign tables, optionally local tables, and a view database with 1:1 views, macros, and stored procedures needed for those databases. The script suffix indicates which version of tables you will get:
<ol>
<li> xxx_<b>cloud</b> - uses 1:1 views pointing directly at the foreign tables.  Faster to setup, but slower demo execution</li>
<li> xxx_<b>local</b> - imports the data to local tables and creates 1:1 views pointing at the local tables. Slower to set up, faster demo execution, but may cause database storage space considerations.</li>
</ol>
\nYou can run either the xxx_<b>cloud</b> or xxx_<b>local</b> script, but if you want to switch, you should run the corresponding remove_data procedure. There is also a "manage_space.py" routine included at the top of this notebook to display the demo databases, the space used and the space available. You may enter the word "delete" followed by the numbers of any databases you want to delete. The table databases end with "_db" and the view databases have a similar name without the "_db" suffix. 
\n
The original source data for these demonstrations was exported from an internal platform used by Teradata associates for demonstrations called Vantage-Live. These tables have not been curated and some of the databases have several hundred tables ... some are copies and some are just work tables. Some may be useful in creating your demos. You can access those from:<br>
[Legacy Data Dictionary](Data_Dictionary_Legacy.ipynb)

'''
nb['cells'].append(nbf.v4.new_markdown_cell(md))        
        
md="\nCopyright © 2022, 2023 Teradata Corporation"
nb['cells'].append(nbf.v4.new_markdown_cell(md))

nb['kernelspec'] = 'Python 3'
with open(notebook_filename, 'w') as f:
    nbf.write(nb, f)

print (notebook_filename, "created")    
    