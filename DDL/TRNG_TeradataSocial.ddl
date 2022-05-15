create database TRNG_TeradataSocial from demonow as perm=0;
create foreign table gs_tables_db."TRNG_TeradataSocial_Events",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TeradataSocial/Events/'));
create foreign table gs_tables_db."TRNG_TeradataSocial_Events_stg",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TeradataSocial/Events-stg/'));
create foreign table gs_tables_db."TRNG_TeradataSocial_Quicklook",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TeradataSocial/Quicklook/'));
create foreign table gs_tables_db."TRNG_TeradataSocial_Sprinklr",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TeradataSocial/Sprinklr/'));
replace view TRNG_TeradataSocial.Events as locking row for access select * from  gs_tables_db."TRNG_TeradataSocial_Events";
replace view TRNG_TeradataSocial.Events_stg as locking row for access select * from  gs_tables_db."TRNG_TeradataSocial_Events_stg";
replace view TRNG_TeradataSocial.Quicklook as locking row for access select * from  gs_tables_db."TRNG_TeradataSocial_Quicklook";
replace view TRNG_TeradataSocial.Sprinklr as locking row for access select * from  gs_tables_db."TRNG_TeradataSocial_Sprinklr";
