create database TRNG_KneeReplacement from demonow as perm=0;
create foreign table gs_tables_db."TRNG_KneeReplacement_knee_replacement",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-KneeReplacement/knee-replacement/'));
replace view TRNG_KneeReplacement.knee_replacement as locking row for access select * from  gs_tables_db."TRNG_KneeReplacement_knee_replacement";
