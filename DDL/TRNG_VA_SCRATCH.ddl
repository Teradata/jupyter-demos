create database TRNG_VA_SCRATCH from demonow as perm=0;
create foreign table gs_tables_db."TRNG_VA_SCRATCH_VL_ops_check_ins", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-VA-SCRATCH/VL-ops-check-ins/'));
replace view TRNG_VA_SCRATCH.VL_ops_check_ins as locking row for access select
"Exec_Date"
,"Exec_User_Name"
,"DB_Name"
,"Object_Name"
,"Row_Count"
,"Insert_Ts"
from gs_tables_db.TRNG_VA_SCRATCH_VL_ops_check_ins;
