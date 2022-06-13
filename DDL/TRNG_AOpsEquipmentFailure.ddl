create database TRNG_AOpsEquipmentFailure from demonow as perm=0;
create foreign table gs_tables_db."TRNG_AOpsEquipmentFailure_stryker_gen_part_fails", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AOpsEquipmentFailure/stryker-gen-part-fails/'));
create foreign table gs_tables_db."TRNG_AOpsEquipmentFailure_stryker_gen_miles", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AOpsEquipmentFailure/stryker-gen-miles/'));
create foreign table gs_tables_db."TRNG_AOpsEquipmentFailure_WblMLE_Work", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AOpsEquipmentFailure/WblMLE-Work/'));
create foreign table gs_tables_db."TRNG_AOpsEquipmentFailure_wblMLE_Data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AOpsEquipmentFailure/wblMLE-Data/'));
create foreign table gs_tables_db."TRNG_AOpsEquipmentFailure_wbl_mdl", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AOpsEquipmentFailure/wbl-mdl/'));
replace view TRNG_AOpsEquipmentFailure.stryker_gen_miles as locking row for access select
"Serial_Nmbr"
,"data_month"
,"monthly_miles"
from gs_tables_db.TRNG_AOpsEquipmentFailure_stryker_gen_miles;
replace view TRNG_AOpsEquipmentFailure.stryker_gen_part_fails as locking row for access select
"serial_nmbr"
,"part_nmbr"
,"miles"
,"fail_qty"
from gs_tables_db.TRNG_AOpsEquipmentFailure_stryker_gen_part_fails;
replace view TRNG_AOpsEquipmentFailure.wblMLE_Data as locking row for access select
"grp_ID"
,"level_id"
,"nmbr_in_grp"
,"Status"
,"time_to_fail"
,"Start_time"
from gs_tables_db.TRNG_AOpsEquipmentFailure_wblMLE_Data;
replace view TRNG_AOpsEquipmentFailure.WblMLE_Work as locking row for access select
"grp_id"
,"level_id"
,"iteration"
,"beta"
,"eta"
,"beta_d"
,"eta_d"
,"alpha"
,"eq1"
,"eq2"
,"d11"
,"d12"
,"d21"
,"d22"
,"s0"
,"s1"
,"flag1"
,"flag2"
from gs_tables_db.TRNG_AOpsEquipmentFailure_WblMLE_Work;
replace view TRNG_AOpsEquipmentFailure.wbl_mdl as locking row for access select
"grp_id"
,"beta"
,"eta"
,"r2"
from gs_tables_db.TRNG_AOpsEquipmentFailure_wbl_mdl;
REPLACE VIEW vStryker_gen_cum_miles AS LOCKING ROW FOR ACCESS
SELECT serial_nmbr, data_month, monthly_miles 
, Sum(monthly_miles) Over (PARTITION BY serial_nmbr ORDER BY data_month ROWS Unbounded Preceding) AS cum_miles
, cum_miles - monthly_miles AS prior_miles
FROM stryker_gen_miles;

REPLACE VIEW vStryker_gen_part_fails_delta AS LOCKING ROW FOR ACCESS 
SELECT serial_nmbr, part_nmbr, miles, fail_qty
, ZeroIfNull(Sum(miles) Over (PARTITION BY serial_nmbr, part_nmbr ORDER BY miles ROWS BETWEEN 1 Preceding AND 1 Preceding)) AS prior_miles
, miles - prior_miles AS part_miles 
FROM stryker_gen_part_fails;

