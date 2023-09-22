<img id=Teradata-logo src="../images/CSAE_Header.png" alt="Teradata" width="100%"  /><br>
# Introduction for Programmers

<p>These demos can be used as examples that you can use to build your own applications. They also provide data you can use for your own demos or tools. Use the "Developer Information" filter under "Getting Started" for more details. </p>

### Experimenting and Saving

As you go through the demonstrations, feel free to experiment with the parameters and re-run a cell.
You can also insert a cell to add your own code to inspect tables or copy/paste code to try your own version of a cell.
If you mess up, you can close the notebook without saving and start with a fresh copy.
If you really mess up, delete your environment and create a new one.</p>

<p>When you are done experimenting and close the notebook, it will ask you if you want to save. 
If you save the notebook, it will save any changes or outputs that were created by the execution of the notebook. 
Running a notebook and saving it with outputs will allow you to come back later and demonstrate the content and outputs without the response time of this tiny Vantage platform.</p>

### Language Versions

<p>There may be one or more language versions for each demo. </p>

- <b>Python</b> - pure Python code using python methods via the Jupyter Python Kernel giving you access to a wide variety of libraries including TeradataML to execute SQL statements on Vantage. 
- <b>SQL</b> - Uses the Teradata SQL kernel to execute SQL statements on Vantage. Output is more limited to table output and some limited graphing capabilities. Those are described in the "Charting and Visualization" notebook in Getting_started. These versions are most useful examples if you want examples of SQL for your BI/AI/ML tools. 
- <b>PY_SQL</b> - These notebooks are Python executing SQL statements as literals and using Python libraries to create more impressive outputs. 
- <b>ReadOnly</b> - This uses the nbviewer web application to view a saved version of the notebooks with outputs in a browser.  Some of the graphs for the Python versions have minor interactivity but mostly these are just for reading the code and seeing outputs without processing time. 


### Getting Data

<p>The notebooks have 2 lines with syntax to call to a database stored procedure named "get_data".</p>

- one will be suffixed with <b>"cloud"</b> and will create foreign tables in the database gs_tables_db pointing at cloud storage and create a database with views pointing at those foreign tables. 
- one will be suffixed with <b>"local"</b> and will import the data to tables on your platform to a database with a "_db" suffix and create the view database pointing at the local tables.

<p>One of the two lines were commented out when we curated the demos based on judgement of which one would provide a better experience. 
If the demo does a single access to the data and does most of the rest of the work with intermediate tables, then the "Cloud" version may have been chosen. If there was more frequent access to the cloud storage, then "local" may have been chosen.</p>

<p>Some of the demos have tables with over 1,000 columns. The creation of those tables and views may take 30-60 seconds.</p> 

<p>At the end of each demo is a call to a database stored procedure named "remove data". That will delete the tables, views and databases created by the demo. You can skip that cell if you would like to rerun the demo without waiting to set up the databases or if you'd like to use the data for your own applications or tools.  There is also a "[Data Dictionary](../UseCases/Data_Dictionary/Data_Dictionary.ipynb)" use case that will allow you view all of the available data and set up the databases, tables, and views without needing to access the demo.</p>

<p>You can also import data from your cloud storage by creating foreign tables to access directly or using insert/select to populate local tables. For more information, see:</p> 

[Teradata Vantage Native Object Store Getting Started Guide](https://docs.teradata.com/r/Enterprise_IntelliFlex_VMware/Teradata-VantageTM-Native-Object-Store-Getting-Started-Guide-17.20/Welcome-to-Native-Object-Store) 

### Peeking Behind the Scenes

<p>As mentioned previously, you can insert a cell into a notebook to issue an SQL query to look at database/table contents.  You can also use File/New/Console and chose to use the Teradata SQL Kernel. Once there, issue:<br>
&emsp;%connect local<br>
    and press <b>shift-enter</b> to connect to the database as demo_user with your password. Then you can issue type in a command and press <b>shift-enter</b> to execute commands.  Examples:<br>
&emsp;select current_timestamp;<br>
&emsp;help database demo_user;<br>
&emsp;help databse gs_table_db;<br>
&emsp;flush query logging with all;<br>
&emsp;select * from dbc.qrylog where starttime > current_timestamp - interval '5' minute order by starttime;<br>

### Getting Started Notebooks for Developers
    
#### Data Loading (Python)
Shows how to use python to load CSV data from local storage and from zipped files<br>
[Python Version](.././Getting_Started/Data_Loading/Data_Loading_Python.ipynb)

#### Data Loading (SQL)
Shows multiple ways to load data from local CSV files, and cloud files on Google and AWS using the SQL kernel.<br>
[SQL Version](.././Getting_Started/Data_Loading/Data_Loading_SQL.ipynb)

#### Query Service REST API
Demonstration of using REST API calls to Vantage which is useful for web or mobile applications to access and maintain data.<br>
[Python Version](.././UseCases/Query_Service/Query_Service.ipynb)

#### SQL Basics in Jupyter
This guide will walk you through writing your first SQL queries in Jupyter.  It uses some of the Vantage system tables as a source for the queries.<br>
[SQL Version](.././Getting_Started/SQL_Basics_in_Jupyter/SQL_Basics_in_Jupyter_SQL.ipynb)

#### teradataml Python Basics
Introduction to Teradataml package for Python including connecting to Vantage, Teradata DataFrames, data manipulation and export to Pandas.<br>
[Python Version](.././Getting_Started/teradataml_Python_Basics/teradataml_Python_Basics_Python.ipynb)

#### Intro to Panda for Python
Provides step-by-step instructions on the basics of using Python Pandas with Jupyter notebooks.<br>
[Python Version](.././Getting_Started/Intro_to_Pandas_For_Python/Intro_to_Pandas_For_Python.ipynb)

#### Charting and Visualization
Data from queries is brought to life with graphics and charts. This shows how to use the %chart magic command to display results.<br>
[SQL Version](.././Getting_Started/Charting_and_Visualization/Charting_and_Visualization_SQL.ipynb)

#### VAL Overview
Vantage Analytics Library (VAL) is a set of over 50 functions for advanced analytics. This provides an overview and links to an 8 minute video overview.<br>
[SQL Version](.././UseCases/Vantage_Analytics_Library/VAL_Overview_SQL.ipynb)

#### Data Dictionary
This provides an index to all of the databases used by demo notebooks on this machine, allowing you to use that data for your own notebooks or BI tools.<br>
[Python Version](.././UseCases/Data_Dictionary/Data_Dictionary.ipynb)

#### How to Submit Your Demos
It is very easy to submit your demo for publication. Tell us directory with the notebook and referenced files and grant us access to your database.  We'll take it from there.<br>
[Python Version](.././Getting_Started/How_to_Submit_Your_Demos/How_to_Submit_Your_Demos.ipynb) &ensp; [Video](./Getting_Started/How_to_Submit_Your_Demos/How_to_Submit_Your_Demos_Video.ipynb)

    
---

<footer style="padding:10px;background:#f9f9f9;border-bottom:3px solid #394851">©2023 Teradata. All Rights Reserved</footer>
