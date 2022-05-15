create database TRNG_Telco from demonow as perm=0;
create foreign table gs_tables_db."TRNG_Telco_telco_events",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Telco/telco-events/'));
create foreign table gs_tables_db."TRNG_Telco_telco_testing",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Telco/telco-testing/'));
create foreign table gs_tables_db."TRNG_Telco_telco_training",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Telco/telco-training/'));
replace view TRNG_Telco.telco_events as locking row for access select * from  gs_tables_db."TRNG_Telco_telco_events";
replace view TRNG_Telco.telco_testing as locking row for access select * from  gs_tables_db."TRNG_Telco_telco_testing";
replace view TRNG_Telco.telco_training as locking row for access select * from  gs_tables_db."TRNG_Telco_telco_training";
