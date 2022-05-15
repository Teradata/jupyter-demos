create database TRNG_APJ_TechSummit21 from demonow as perm=0;
create foreign table gs_tables_db."TRNG_APJ_TechSummit21_diabetic_data",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-APJ-TechSummit21/diabetic-data/'));
create foreign table gs_tables_db."TRNG_APJ_TechSummit21_hospital_codes",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-APJ-TechSummit21/hospital-codes/'));
replace view TRNG_APJ_TechSummit21.diabetic_data as locking row for access select * from  gs_tables_db."TRNG_APJ_TechSummit21_diabetic_data";
replace view TRNG_APJ_TechSummit21.hospital_codes as locking row for access select * from  gs_tables_db."TRNG_APJ_TechSummit21_hospital_codes";
