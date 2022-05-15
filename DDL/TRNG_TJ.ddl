create database TRNG_TJ from demonow as perm=0;
create foreign table gs_tables_db."TRNG_TJ_dwh_coveo",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TJ/dwh-coveo/'));
replace view TRNG_TJ.dwh_coveo as locking row for access select * from  gs_tables_db."TRNG_TJ_dwh_coveo";
