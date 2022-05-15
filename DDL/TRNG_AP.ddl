create database TRNG_AP from demonow as perm=0;
create foreign table gs_tables_db."TRNG_AP_Accounts",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AP/Accounts/'));
create foreign table gs_tables_db."TRNG_AP_Customer",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AP/Customer/'));
create foreign table gs_tables_db."TRNG_AP_Trans",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AP/Trans/'));
replace view TRNG_AP.Accounts as locking row for access select * from  gs_tables_db."TRNG_AP_Accounts";
replace view TRNG_AP.Customer as locking row for access select * from  gs_tables_db."TRNG_AP_Customer";
replace view TRNG_AP.Trans as locking row for access select * from  gs_tables_db."TRNG_AP_Trans";
