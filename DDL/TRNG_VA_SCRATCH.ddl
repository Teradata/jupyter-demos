create database TRNG_VA_SCRATCH from demonow as perm=0;
create foreign table gs_tables_db."TRNG_VA_SCRATCH_rf_test_1",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-VA-SCRATCH/rf-test-1/'));
create foreign table gs_tables_db."TRNG_VA_SCRATCH_test_1_rf185023",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-VA-SCRATCH/test-1-rf185023/'));
create foreign table gs_tables_db."TRNG_VA_SCRATCH_VL_ops_check_ins",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-VA-SCRATCH/VL-ops-check-ins/'));
replace view TRNG_VA_SCRATCH.VL_ops_check_ins as locking row for access select * from  gs_tables_db."TRNG_VA_SCRATCH_VL_ops_check_ins";
replace view TRNG_VA_SCRATCH.rf_test_1 as locking row for access select * from  gs_tables_db."TRNG_VA_SCRATCH_rf_test_1";
replace view TRNG_VA_SCRATCH.test_1_rf185023 as locking row for access select * from  gs_tables_db."TRNG_VA_SCRATCH_test_1_rf185023";
