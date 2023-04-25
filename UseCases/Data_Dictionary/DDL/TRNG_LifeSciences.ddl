create database TRNG_LifeSciences from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_LifeSciences_Organizations", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LifeSciences/Organizations/'));
create foreign table gs_tables_db."TRNG_LifeSciences_Observations", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LifeSciences/Observations/'));
create foreign table gs_tables_db."TRNG_LifeSciences_Imaging_Studies", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LifeSciences/Imaging-Studies/'));
create foreign table gs_tables_db."TRNG_LifeSciences_Care_plans", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LifeSciences/Care-plans/'));
create foreign table gs_tables_db."TRNG_LifeSciences_Payer_Transitions", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LifeSciences/Payer-Transitions/'));
create foreign table gs_tables_db."TRNG_LifeSciences_Procedures", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LifeSciences/Procedures/'));
create foreign table gs_tables_db."TRNG_LifeSciences_Conditions", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LifeSciences/Conditions/'));
create foreign table gs_tables_db."TRNG_LifeSciences_Providers", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LifeSciences/Providers/'));
create foreign table gs_tables_db."TRNG_LifeSciences_Immunizations", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LifeSciences/Immunizations/'));
create foreign table gs_tables_db."TRNG_LifeSciences_Allergy", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LifeSciences/Allergy/'));
create foreign table gs_tables_db."TRNG_LifeSciences_Devices", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LifeSciences/Devices/'));
create foreign table gs_tables_db."TRNG_LifeSciences_Medications", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LifeSciences/Medications/'));
create foreign table gs_tables_db."TRNG_LifeSciences_Payers", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LifeSciences/Payers/'));
create foreign table gs_tables_db."TRNG_LifeSciences_Patients", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LifeSciences/Patients/'));
create foreign table gs_tables_db."TRNG_LifeSciences_Encounter", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LifeSciences/Encounter/'));
replace view TRNG_LifeSciences.Allergy as locking row for access select
"Start_Dt"
,"Stop_Dt"
,"Patient"
,"Encounter"
,"A_Code"
,"A_Description"
from gs_tables_db.TRNG_LifeSciences_Allergy;
replace view TRNG_LifeSciences.Care_plans as locking row for access select
"Care_plan"
,"Start_Dt"
,"Stop_Dt"
,"Patient"
,"Encounter"
,"C_Code"
,"C_Description"
,"ReasonCode"
,"ReasonDescription"
from gs_tables_db.TRNG_LifeSciences_Care_plans;
replace view TRNG_LifeSciences.Conditions as locking row for access select
"Start_Dt"
,"Stop_Dt"
,"Patient"
,"Encounter"
,"Co_Code"
,"Co_Description"
from gs_tables_db.TRNG_LifeSciences_Conditions;
replace view TRNG_LifeSciences.Devices as locking row for access select
"Start_Dtm"
,"Stop_Dtm"
,"Patient"
,"Encounter"
,"D_Code"
,"D_Description"
,"UDI"
from gs_tables_db.TRNG_LifeSciences_Devices;
replace view TRNG_LifeSciences.Encounter as locking row for access select
"Encounter"
,"Start_Dtm"
,"Stop_Dtm"
,"Patient"
,"Organization"
,"Provider"
,"Payer"
,"EncounterClass"
,"E_Code"
,"E_Description"
,"Base_Encounter_Cost"
,"Total_Claim_Cost"
,"Payer_Coverage"
,"ReasonCode"
,"ReasonDescription"
from gs_tables_db.TRNG_LifeSciences_Encounter;
replace view TRNG_LifeSciences.Imaging_Studies as locking row for access select
"Imaging_Study"
,"Imaging_Study_Dtm"
,"Patient"
,"Encounter"
,"Body_Site_Code"
,"Body_Site_Description"
,"Modality_Code"
,"Modality_Description"
,"SOP_Code"
,"SOP_Description"
from gs_tables_db.TRNG_LifeSciences_Imaging_Studies;
replace view TRNG_LifeSciences.Immunizations as locking row for access select
"Immunization_Dtm"
,"Patient"
,"Encounter"
,"I_Code"
,"I_Description"
,"Immunization_Cost"
from gs_tables_db.TRNG_LifeSciences_Immunizations;
replace view TRNG_LifeSciences.Medications as locking row for access select
"Start_Dtm"
,"Stop_Dtm"
,"Patient"
,"Payer"
,"Encounter"
,"M_Code"
,"M_Description"
,"Base_Cost"
,"Payer_Coverage"
,"Dispenses"
,"TotalCost"
,"ReasonCode"
,"ReasonDescription"
from gs_tables_db.TRNG_LifeSciences_Medications;
replace view TRNG_LifeSciences.Observations as locking row for access select
"Observation_Dtm"
,"Patient"
,"Encounter"
,"O_Code"
,"O_Description"
,"Observation_Value"
,"Units"
,"Observation_Type"
from gs_tables_db.TRNG_LifeSciences_Observations;
replace view TRNG_LifeSciences.Organizations as locking row for access select
"Organization"
,"Organization_Nm"
,"Address"
,"City"
,"State"
,"Zip"
,"Lat"
,"Lon"
,"Phone"
,"Revenue"
,"Utilization"
from gs_tables_db.TRNG_LifeSciences_Organizations;
replace view TRNG_LifeSciences.Patients as locking row for access select
"Patient"
,"BirthDate"
,"DeathDate"
,"SSN"
,"Drivers"
,"Passport"
,"Prefix"
,"First_Nm"
,"Last_Nm"
,"Suffix"
,"Maiden"
,"Marital"
,"Race"
,"Ethnicity"
,"Gender"
,"BirthPlace"
,"Address"
,"City"
,"County"
,"State"
,"Zip"
,"Lat"
,"Lon"
,"Healthcare_Expenses"
,"Healthcare_Coverage"
from gs_tables_db.TRNG_LifeSciences_Patients;
replace view TRNG_LifeSciences.Payers as locking row for access select
"Payer"
,"Payer_Nm"
,"Address"
,"City"
,"State_Headquartered"
,"Zip"
,"Phone"
,"Amount_Covered"
,"Amount_Uncovered"
,"Revenue"
,"Covered_Encounters"
,"Uncovered_Encounters"
,"Covered_Medications"
,"Uncovered_Medications"
,"Covered_Procedures"
,"Uncovered_Procedures"
,"Covered_Immunizations"
,"Uncovered_Immunizations"
,"Unique_Customers"
,"QOLS_Avg"
,"Member_Months"
from gs_tables_db.TRNG_LifeSciences_Payers;
replace view TRNG_LifeSciences.Payer_Transitions as locking row for access select
"Patient"
,"Start_Year"
,"End_Year"
,"Payer"
,"Ownership"
from gs_tables_db.TRNG_LifeSciences_Payer_Transitions;
replace view TRNG_LifeSciences.Procedures as locking row for access select
"Procedure_Dtm"
,"Patient"
,"Encounter"
,"P_Code"
,"P_Description"
,"Base_Cost"
,"ReasonCode"
,"ReasonDescription"
from gs_tables_db.TRNG_LifeSciences_Procedures;
replace view TRNG_LifeSciences.Providers as locking row for access select
"Provider"
,"Organization"
,"Provider_Nm"
,"Gender"
,"Speciality"
,"Address"
,"City"
,"State"
,"Zip"
,"Lat"
,"Lon"
,"Utilization"
from gs_tables_db.TRNG_LifeSciences_Providers;
