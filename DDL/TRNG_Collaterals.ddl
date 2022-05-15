create database TRNG_Collaterals from demonow as perm=0;
create foreign table gs_tables_db."TRNG_Collaterals_Orders_1600",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Collaterals/Orders-1600/'));
create foreign table gs_tables_db."TRNG_Collaterals_Photos",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Collaterals/Photos/'));
create foreign table gs_tables_db."TRNG_Collaterals_TF_Materials",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Collaterals/TF-Materials/'));
replace view TRNG_Collaterals.Orders_1600 as locking row for access select * from  gs_tables_db."TRNG_Collaterals_Orders_1600";
replace view TRNG_Collaterals.Photos as locking row for access select * from  gs_tables_db."TRNG_Collaterals_Photos";
replace view TRNG_Collaterals.TF_Materials as locking row for access select * from  gs_tables_db."TRNG_Collaterals_TF_Materials";
