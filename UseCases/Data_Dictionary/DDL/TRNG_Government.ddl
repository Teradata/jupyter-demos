create database TRNG_Government from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_Government_pam_problem_trucks_data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Government/pam-problem-trucks-data/'));
create foreign table gs_tables_db."TRNG_Government_COVID19_RAWMOD", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Government/COVID19-RAWMOD/'));
create foreign table gs_tables_db."TRNG_Government_pam_maintenance_depots", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Government/pam-maintenance-depots/'));
create foreign table gs_tables_db."TRNG_Government_pam_truckswithData", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Government/pam-truckswithData/'));
create foreign table gs_tables_db."TRNG_Government_pam_problem_trucks", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Government/pam-problem-trucks/'));
create foreign table gs_tables_db."TRNG_Government_ridb_system", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Government/ridb-system/'));
create foreign table gs_tables_db."TRNG_Government_pam_truck_route", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Government/pam-truck-route/'));
create foreign table gs_tables_db."TRNG_Government_pam_planned_data_component_breakdown", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Government/pam-planned-data-component-breakdown/'));
create foreign table gs_tables_db."TRNG_Government_atbats", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Government/atbats/'));
create foreign table gs_tables_db."TRNG_Government_uic_lud", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Government/uic-lud/'));
create foreign table gs_tables_db."TRNG_Government_npath_plus", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Government/npath-plus/'));
replace view TRNG_Government.atbats as locking row for access select
"ab_id"
,"batter_id"
,"event"
,"g_id"
,"inning"
,"o"
,"p_score"
,"p_throws"
,"pitcher_id"
,"stand"
,"top"
from gs_tables_db.TRNG_Government_atbats;
replace view TRNG_Government.COVID19_RAWMOD as locking row for access select
"REPORT_DT"
,"STATE"
,"COUNTRY"
,"LAST_TS"
,"CONFIRMED"
,"DEATHS"
,"RECOVERED"
,"ADMIN2"
,"COMBINED_KEY"
,"ACTIVE"
,"LATITUDE"
,"LONGITUDE"
from gs_tables_db.TRNG_Government_COVID19_RAWMOD;
replace view TRNG_Government.npath_plus as locking row for access select
"ab_id"
,"pitcher"
,"batter"
,"away_team"
,"home_team"
,"event"
,"last_pitch"
,"top"
,"path"
,"pitch_count"
from gs_tables_db.TRNG_Government_npath_plus;
replace view TRNG_Government.pam_maintenance_depots as locking row for access select
"latitude"
,"longitude"
,"truck_id"
,"name"
from gs_tables_db.TRNG_Government_pam_maintenance_depots;
replace view TRNG_Government.pam_planned_data_component_breakdown as locking row for access select
"event_date"
,"event_id"
,"planned"
,"truck_id"
,"Fuel Pump"
,"Fuel Injector"
,"Engine Coolant"
,"Battery Failure"
,"Brakepad Issue"
,"Tire Wearout"
,"fuel pump temparature"
,"pressure"
,"engine temparature"
,"battery voltage"
,"brakeoil pressure"
,"tire depth"
from gs_tables_db.TRNG_Government_pam_planned_data_component_breakdown;
replace view TRNG_Government.pam_problem_trucks as locking row for access select
"truck_id"
,"latitude"
,"longitude"
,"status"
,"type"
,"last_date"
,"next_date"
from gs_tables_db.TRNG_Government_pam_problem_trucks;
replace view TRNG_Government.pam_problem_trucks_data as locking row for access select
"truck_id"
,"Sensor History (Sec)"
,"FPTemp_"
,"fuel pump temperature"
,"Pressure_"
,"pressure"
,"engine temperature"
,"battery voltage"
,"brakeoil pressure"
,"tire depth"
from gs_tables_db.TRNG_Government_pam_problem_trucks_data;
replace view TRNG_Government.pam_truckswithData as locking row for access select
"truck_id"
from gs_tables_db.TRNG_Government_pam_truckswithData;
replace view TRNG_Government.pam_truck_route as locking row for access select
"latitude"
,"longitude"
,"group"
,"truck_id"
from gs_tables_db.TRNG_Government_pam_truck_route;
replace view TRNG_Government.ridb_system as locking row for access select
"AS_OF_DATE"
,"UIC"
,"POSSIBLE_HOURS"
,"AVAIL_HOURS"
,"NMCS_HOURS"
,"NMCS_ORG_HOURS"
,"NMCS_SPT_HOURS"
,"NMCM_ORG_HOURS"
,"NMCM_SPT_HOURS"
from gs_tables_db.TRNG_Government_ridb_system;
replace view TRNG_Government.uic_lud as locking row for access select
"UIC"
,"LONG_UNT_DESC"
from gs_tables_db.TRNG_Government_uic_lud;
create view v_pam_planned_data_component_breakdown_rownum as 
select 
Row_number() 
                 OVER( 
                   ORDER BY 1) AS ROWNUM,
cast("event_date" as timestamp) as event_date
,"event_id" as event_id
,"planned" as planned
,"truck_id" as truck_id
,"Fuel Pump" as Fuel_Pump
,"Fuel Injector" as Fuel_Injector
,"Engine Coolant" as Engine_Coolant
,"Battery Failure" as Battery_Failure
,"Brakepad Issue" as Brakepad_Issue
,"Tire Wearout" as Tire_Wearout
,cast("fuel pump temparature" as int) as fuel_pump_temparature
,cast("pressure" as int) as pressure
,cast("engine temparature" as int) as engine_temparature
,cast("battery voltage" as int) as battery_voltage
,cast("brakeoil pressure" as int) as brakeoil_pressure
,cast("tire depth" as int) as tire_depth
from pam_planned_data_component_breakdown
where "battery voltage" <> 'x'
and event_date is not null;

create view trng_government.v_ridb_system_lud as
SELECT cast(AS_OF_DATE as timestamp) as AS_OF_DATE,
    a.UIC as uic,
    POSSIBLE_HOURS,
    AVAIL_HOURS,
    NMCS_HOURS,
    NMCS_ORG_HOURS,
    NMCS_SPT_HOURS,
    NMCM_ORG_HOURS,
    NMCM_SPT_HOURS,
    long_unt_desc
    FROM trng_government.ridb_system a, TRNG_Government.uic_lud b
    where a.uic = b.uic;

replace view trng_government.v_ridb_system_lud_1 as
SELECT cast(AS_OF_DATE as timestamp(0)) as AS_OF_DATE,
    a.UIC as uic,
    POSSIBLE_HOURS,
    AVAIL_HOURS,
    NMCS_HOURS,
    NMCS_ORG_HOURS,
    NMCS_SPT_HOURS,
    NMCM_ORG_HOURS,
    NMCM_SPT_HOURS,
    long_unt_desc
    FROM trng_government.ridb_system a, TRNG_Government.uic_lud b
    where a.uic = b.uic;

