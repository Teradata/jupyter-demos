create database TRNG_TAU2018 from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_TAU2018_partners2016", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TAU2018/partners2016/'));
create foreign table gs_tables_db."TRNG_TAU2018_partners2014", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TAU2018/partners2014/'));
create foreign table gs_tables_db."TRNG_TAU2018_tau_submission", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TAU2018/tau-submission/'));
replace view TRNG_TAU2018.partners2014 as locking row for access select
"id"
,"Proposal_Title"
from gs_tables_db.TRNG_TAU2018_partners2014;
replace view TRNG_TAU2018.partners2016 as locking row for access select
"id"
,"Proposal_Title"
,"Description"
from gs_tables_db.TRNG_TAU2018_partners2016;
replace view TRNG_TAU2018.tau_submission as locking row for access select
"Submission_No"
,"Submission_Type"
,"Proposal_Title"
,"Description"
,"Inserted_On_Date"
,"Business_Outcomes_and_Strategy"
,"Cultural_and_Process_Changes"
,"Advanced_Analytics_Capabilities"
,"Architecture_and_Technology_Strategy_and_Execution"
,"Information_Management_and_Data_Governance"
,"Self_Service_and_Business_Enablement"
,"Teradata_Platform_Optimization"
,"Relationship_to_Teradata_1"
,"First_Name_1"
,"Last_Name_1"
,"Company_1"
,"Job_Title_1"
,"Country_1"
,"role_1"
,"Speaker_ID_2"
,"Relationship_to_Teradata_2"
,"First_Name_2"
,"Last_Name_2"
,"Company_2"
,"Job_Title_2"
,"Country_2"
,"role_2"
from gs_tables_db.TRNG_TAU2018_tau_submission;
