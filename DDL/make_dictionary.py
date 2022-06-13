import nbformat as nbf
import os
ddl_dir = '/home/jovyan/JupyterLabRoot/DDL'
notebook_filename = '/home/jovyan/JupyterLabRoot/UseCases/Data_Dictionary/Data_Dictionary.ipynb'
nb = nbf.v4.new_notebook()
md = '''<b style = "font-size:28px;font-family:Arial;color:#E37C4D">DemoNow Data Dictionary On NOS</b><img  src="Data_Dictionary.png" alt="Data_Dictionary" width="150" align="right" />
\n\n This data is being provided in NOS, having been exported from Teradata Vantage Live which was originally publicly sourced data. However, there has been value add to the content and structure of the data, and as such is protected work product of the Teradata Corporation.  It is provided for use with the demonstrations in DemoNow.
\n\nAfter each database description are two "run" commands:
<ol><li> a statement to create foreign tables to link to NOS, create a view database with 1:1 views pointing at those foreign tables, and any semantic views and other object needed by the demonstration</li>
<li> a statement to import data from NOS to create local tables and 1:1 views pointing at those local tables. </li></ol>
Click in the cell with the "run" statement and press SHIFT + ENTER to run either routine. All demonstrations will run either with NOS tables or local tables. The local tables will be faster, however that means you will need to manage local storage.

<br>A complete description of the design of these databases is included at the end of this notebook.
'''
nb['cells'] = [nbf.v4.new_markdown_cell(md)]

md = '''### Video Introduction to Data Dictionary (2.5 minutes)
Click in the cell below and press SHIFT + ENTER to play.'''
nb['cells'].append(nbf.v4.new_markdown_cell(md))

code = '''%%HTML
<iframe width="640" height="360" src="https://web.microsoftstream.com/embed/video/f8fddab8-6f0b-44e8-8594-04d396c78745?autoplay=true&showinfo=true" allowfullscreen style="border:none;"></iframe>'''
nb['cells'].append(nbf.v4.new_code_cell(code))

md = '''## Manage Your Space 
You may use the "manage space" routine below to view current space usage and available space.  
'''
nb['cells'].append(nbf.v4.new_markdown_cell(md))

code = "run -i ../../DDL/manage_space.py"
nb['cells'].append(nbf.v4.new_code_cell(code))

md = "## Available Demonstration Databases"
nb['cells'].append(nbf.v4.new_markdown_cell(md))

filelist = os.listdir(ddl_dir)
filelist.sort()
for fn in filelist:
    if fn.endswith(".ddl"):
        dbname = fn.replace(".ddl","")
        txt_fn = ddl_dir + "/" + dbname + ".txt"
        try:
            txt_file = open(txt_fn, "r")
            txt_content = txt_file.read()
            txt_file.close()
        except:
            txt_content = "No description available"
        md = "### " + dbname + "\n" + txt_content 
        code1 = "run -i ../../DDL/create_NOS_tables_and_views.py " + dbname + ".ddl"
        code2 = "run -i ../../DDL/import_tables_and_change_views.py " + dbname + "_db.ddl 1000"
        nb['cells'].append(nbf.v4.new_markdown_cell(md))
        nb['cells'].append(nbf.v4.new_code_cell(code1))
        nb['cells'].append(nbf.v4.new_code_cell(code2))
        #print (dbname, txtcontent)

md = '''
## Description of Databases, Tables, and Other Objects
\nAll data used in DemoNow is provided on Network Optimized Storage (NOS). That data has been exported in Parquet format. For Vantage to access that data, a foreign table is defined with the necessary credentials. For DemoNow, we create all of those definitions in the database gs_tables_db (gs = Google Storage) which also contains the Authentication object. 
\nThese tables were originally created on a database internal to the Teradata Corporation from publicly available data sources. The authors of demos referenced those tables and created other objects such as semantic views, macros, and stored procedures in those databases. To allow those demos to run with minimum changes, we create databases with views that provide 1:1 mapping to the foreign tables in the gs_tables_db. We then create any other database objects in that view database that will reference the 1:1 views as if they were local tables. The demos can then reference the view database with the same object naming as in the original database.
\nWe have also provided a routine to import the tables to a local database inside your Vantage virtual machine. It then changes the 1:1 views in the view database to point to the local tables. Performance will be better because there is no latency to NOS and the local table storage is optimized for fast access. All of the semantic views, macros, and stored procedures will continue to reference the 1:1 views which now point at local table storage.
<img  src="DemoNow_Table_Design.png" alt="DemoNow_Table_Design" width="600" align="right" />
\nYou can re-run either the "create_NOS_tables_and_views.py" or the "import_tables_and_change_views.py" via the run statement after each database to switch back and forth between 1:1 views pointing at foreign NOS tables or local Vantage tables. 
\nLocal storage is limited. To assist you, a "manage_space.py" routine was included at the top of this notebook to display the demo databases, the space used and the space available. You may enter the word "delete" followed by the numbers of any databases you want to delete. The table databases end with "_db" and the view databases have a similar name without the "_db" suffix. The view databases take no space, but if you decide to delete a table database and retain the view database to access foreign tables, you may need to re-run the "create_NOS_tables_and_views.py" to recreate the 1:1 views pointing at the foreign tables. 
'''
nb['cells'].append(nbf.v4.new_markdown_cell(md))        
        
md="\nCopyright © 2022 Teradata Corporation"
nb['cells'].append(nbf.v4.new_markdown_cell(md))

nb['kernelspec'] = 'Python 3'
with open(notebook_filename, 'w') as f:
    nbf.write(nb, f)

print (notebook_filename, "created")    
    