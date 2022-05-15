import nbformat as nbf
import os
ddl_dir = '/home/jovyan/JupyterLabRoot/DDL'
notebook_filename = '/home/jovyan/JupyterLabRoot/UseCases/Data_Dictionary/Data_Dictionary.ipynb'
nb = nbf.v4.new_notebook()
md = '<b style = "font-size:28px;font-family:Arial;color:#E37C4D">DemoNow Data Dictionary On NOS</b><img  src="Data_Dictionary.jpg" alt="DemoNow" width="150" align="right" />\n\n This data is being provided in NOS, having been exported from Teradata Vantage Live which was originally publicly sourced data. However, there has been value add to the content and structure of the data, and as such is protected work product of the Teradata Corporation.  It is provided for use with the demonstrations in DemoNow.\n\nAfter each database description is a "run" command that will execute the statements to define the foreign tables in NOS and the views for the logical database. Click the cell with the "run" statement and press SHIFT + ENTER to define those tables.'
nb['cells'] = [nbf.v4.new_markdown_cell(md)]

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
#        md = '"' + md + '"'
        code = "run -i ../../DDL/create_database.py " + dbname + ".ddl"
#        code = '"' + code + '"'
        nb['cells'].append(nbf.v4.new_markdown_cell(md))
        nb['cells'].append(nbf.v4.new_code_cell(code))
        #print (dbname, txtcontent)

md="\nCopyright © 2022 Teradata Corporation"
nb['cells'].append(nbf.v4.new_markdown_cell(md))

nb['kernelspec'] = 'Python 3'
with open(notebook_filename, 'w') as f:
    nbf.write(nb, f)

print (notebook_filename, "created")    
    