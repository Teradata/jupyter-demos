create database TRNG_PD from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_PD_River_Buoy_NonPTI", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/River-Buoy-NonPTI/'));
create foreign table gs_tables_db."TRNG_PD_Region_C", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/Region-C/'));
create foreign table gs_tables_db."TRNG_PD_Job", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/Job/'));
create foreign table gs_tables_db."TRNG_PD_Department", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/Department/'));
create foreign table gs_tables_db."TRNG_PD_EmpPhone", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/EmpPhone/'));
create foreign table gs_tables_db."TRNG_PD_Employee", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/Employee/'));
create foreign table gs_tables_db."TRNG_PD_Buoy_Stations_S", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/Buoy-Stations-S/'));
create foreign table gs_tables_db."TRNG_PD_date_dim", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/date-dim/'));
create foreign table gs_tables_db."TRNG_PD_Nation_C", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/Nation-C/'));
replace view TRNG_PD.Buoy_Stations_S as locking row for access select
"StationID"
,"Location"
from gs_tables_db.TRNG_PD_Buoy_Stations_S;
replace view TRNG_PD.date_dim as locking row for access select
"d_date_sk"
,"d_date_id"
,"d_date"
,"d_month_seq"
,"d_week_seq"
,"d_quarter_seq"
,"d_year"
,"d_dow"
,"d_moy"
,"d_dom"
,"d_qoy"
,"d_fy_year"
,"d_fy_quarter_seq"
,"d_fy_week_seq"
,"d_day_name"
,"d_quarter_name"
,"d_holiday"
,"d_weekend"
,"d_following_holiday"
,"d_first_dom"
,"d_last_dom"
,"d_same_day_ly"
,"d_same_day_lq"
,"d_current_day"
,"d_current_week"
,"d_current_month"
,"d_current_quarter"
,"d_current_year"
from gs_tables_db.TRNG_PD_date_dim;
replace view TRNG_PD.Department as locking row for access select
"DeptNumber"
,"DeptName"
,"DeptMgrNumber"
,"BudgetAmount"
from gs_tables_db.TRNG_PD_Department;
replace view TRNG_PD.Employee as locking row for access select
"EmpNumber"
,"DeptNumber"
,"EmpMgrNumber"
,"JobCode"
,"LastName"
,"FirstName"
,"SalaryAmount"
from gs_tables_db.TRNG_PD_Employee;
replace view TRNG_PD.EmpPhone as locking row for access select
"EmpNumber"
,"AreaCode"
,"PhoneNumber"
,"Extension"
from gs_tables_db.TRNG_PD_EmpPhone;
replace view TRNG_PD.Job as locking row for access select
"JobCode"
,"JobDesc"
from gs_tables_db.TRNG_PD_Job;
replace view TRNG_PD.Nation_C as locking row for access select
"NationKey"
,"NationName"
,"RegionKey"
from gs_tables_db.TRNG_PD_Nation_C;
replace view TRNG_PD.Region_C as locking row for access select
"RegionKey"
,"RegionName"
from gs_tables_db.TRNG_PD_Region_C;
replace view TRNG_PD.River_Buoy_NonPTI as locking row for access select
"TD_TIMECODE"
,"StationID"
,"Velocity"
,"Height"
from gs_tables_db.TRNG_PD_River_Buoy_NonPTI;
REPLACE VIEW TRNG_PD.LargeTableSpaceTotal 
( DBname , Acctname , Tabname , CurrentPermSum , PeakPermSum , NumVprocs ) 
AS SELECT DatabaseName , 
          AccountName , 
          TableName , 
          SUM ( CurrentPerm ) ( FORMAT 'zzz,zzz,zzz,zz9' ) , 
          SUM ( PeakPerm ) ( FORMAT 'zzz,zzz,zzz,zz9' ) , 
          COUNT ( * ) ( FORMAT 'ZZ9' ) 
FROM      DBC.Tablesize 
GROUP BY 1 , 2 , 3 
HAVING SUM ( currentperm ) > 1E4 ;

REPLACE MACRO TRNG_PD.SetAnsiDate_OFF as (SET SESSION DATEFORM = INTEGERDATE; );

REPLACE MACRO TRNG_PD.SetAnsiDate_ON as (SET SESSION DATEFORM = ANSIDATE; );

