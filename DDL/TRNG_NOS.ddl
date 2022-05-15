create database TRNG_NOS from demonow as perm=0;
create foreign table gs_tables_db."TRNG_NOS_inputdata",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-NOS/inputdata/'));
replace view TRNG_NOS.inputdata as locking row for access select * from  gs_tables_db."TRNG_NOS_inputdata";
