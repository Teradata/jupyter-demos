create database TRNG_MC_CRIME from demonow as perm=0;
create foreign table gs_tables_db."TRNG_MC_CRIME_mc_crime", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MC-Crime/mc-crime/'));
create view TRNG_MC_CRIME.mc_crime as locking row for access select
Incident_ID
,Offence_Code
,CR_Number
,Dispatch_Date_Time
,NIBRS_Code
,Victims
,Crime_Name1
,Crime_Name2
,Crime_Name3
,Police_District_Name
,Block_Address
,City
,State
,Zip_Code
,Agency
,Place
,Sector
,Beat
,PRA
,Address_Number
,Street_Prefix
,Street_Name
,Street_Suffix
,Street_Type
,Start_Date_Time
,End_Date_Time
,Latitude
,Longitude
,Police_District_Number
,Location1 as location 
from gs_tables_db."TRNG_MC_CRIME_mc_crime";
