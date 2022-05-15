create database TRNG_UX from demonow as perm=0;
create foreign table gs_tables_db."TRNG_UX_INSIGHTS_DOVETAIL",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-UX/INSIGHTS-DOVETAIL/'));
create foreign table gs_tables_db."TRNG_UX_QUALITY",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-UX/QUALITY/'));
create foreign table gs_tables_db."TRNG_UX_UXUserDatabase",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-UX/UXUserDatabase/'));
replace view TRNG_UX.INSIGHTS_DOVETAIL as locking row for access select * from  gs_tables_db."TRNG_UX_INSIGHTS_DOVETAIL";
replace view TRNG_UX.QUALITY as locking row for access select * from  gs_tables_db."TRNG_UX_QUALITY";
replace view TRNG_UX.UXUserDatabase as locking row for access select * from  gs_tables_db."TRNG_UX_UXUserDatabase";
