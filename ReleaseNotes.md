<b style = 'font-size:28px;font-family:Arial;color:#E37C4D'>DemoNow Phase 1 Release Notes</b><img id=Teradata-logo src="https://www.teradata.com/Teradata/Images/Rebrand/Teradata_logo-two_color.png" alt="Teradata" width="220" align="right" />
 
This "phase 1" edition of DemoNow is running on a virtual machine with:
* vCPUS: 2
* Memory: 14 GB
* Storage: 100 GB

If you use this platform for 4 hours a day for half of the days in a month ( ~ 40 hours), the cost to Teradata is $8.90.  There is an application that will check your machine every 5 minutes and if there has been no usage for 4 hours, it will suspend your machine. You can return to the DemoNow Web Console to resume your machine and that takes between 10 and 15 seconds. You can also suspend your machine manually from the DemoNow Web Console. 

Installed on your virtual machine is:
* SLES 12 with Vantage 17.20.03.02 with 36.9 GB of total Perm space
    * Nodes: 1
    * Parsing Engines: 1
    * AMPs: 4
* Docker
    * Jupyter
    * Superset
 
 For Phase 1 of DemoNow, you must be logged onto the Teradata Intranet to be able to access the IP addresses documented on the DemoNow web console. 
 
 ## Updates:
 ### September 21, 2022
 * Uploaded pending changes to Jupyter notebooks
 * Changed DDL in Jupyter to create all databases under the Demo_User logon ID (See note below)
 * Updated markdown files including index.md, README.me and Menus/*
 
 ### Note: 
 Default Vantage storage allocated 5 GB to Demo_User and left 23.8 GB under DBC. In the next release of the platform, we will move 20 GB from DBC to Demo_User. With the changes in this release, you could run out of space in Demo_User.  To fix:<br>
 
 create database x from dbc as perm=20*1024**3;<br>
 give x to demo_user;<br>
 drop database x;<br>
 
 