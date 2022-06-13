create database TRNG_ColoradoCrimeDrug from demonow as perm=0;
create foreign table gs_tables_db."TRNG_ColoradoCrimeDrug_MARIJUANA_SALES_REVENUE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-ColoradoCrimeDrug/MARIJUANA-SALES-REVENUE/'));
create foreign table gs_tables_db."TRNG_ColoradoCrimeDrug_EMPLOYMENT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-ColoradoCrimeDrug/EMPLOYMENT/'));
create foreign table gs_tables_db."TRNG_ColoradoCrimeDrug_DUI_ARREST", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-ColoradoCrimeDrug/DUI-ARREST/'));
create foreign table gs_tables_db."TRNG_ColoradoCrimeDrug_DRUG_CRIME", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-ColoradoCrimeDrug/DRUG-CRIME/'));
create foreign table gs_tables_db."TRNG_ColoradoCrimeDrug_SEIZED_DRUGS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-ColoradoCrimeDrug/SEIZED-DRUGS/'));
create foreign table gs_tables_db."TRNG_ColoradoCrimeDrug_MENTAL_DISTRESS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-ColoradoCrimeDrug/MENTAL-DISTRESS/'));
create foreign table gs_tables_db."TRNG_ColoradoCrimeDrug_FORECLOSURE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-ColoradoCrimeDrug/FORECLOSURE/'));
create foreign table gs_tables_db."TRNG_ColoradoCrimeDrug_CRIME", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-ColoradoCrimeDrug/CRIME/'));
create foreign table gs_tables_db."TRNG_ColoradoCrimeDrug_PERSONAL_INCOME", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-ColoradoCrimeDrug/PERSONAL-INCOME/'));
replace view TRNG_ColoradoCrimeDrug.CRIME as locking row for access select
"AGENCY_NAME"
,"COUNTY_SHORT_NAME"
,"INCIDENT_TIMESTAMP"
,"OFFENSE"
,"OFFENSE_CATEGORY"
,"OFFENSE_GROUP"
,"CRIME_AGAINST"
,"OFFENDER_AGE"
,"CRIME_COUNT"
from gs_tables_db.TRNG_ColoradoCrimeDrug_CRIME;
replace view TRNG_ColoradoCrimeDrug.DRUG_CRIME as locking row for access select
"COUNTY_SHORT_NAME"
,"INCIDENT_DATE"
,"CRIMINAL_ACTIVITY_TYPE"
,"AGE"
,"NUMBER_OF_ARRESTEES"
,"CRIME_COUNT"
from gs_tables_db.TRNG_ColoradoCrimeDrug_DRUG_CRIME;
replace view TRNG_ColoradoCrimeDrug.DUI_ARREST as locking row for access select
"COUNTY_SHORT_NAME"
,"ARREST_TYPE"
,"ARREST_DATE"
,"AGE"
,"DRUG_TYPE"
,"NUMBER_OF_ARRESTEES"
,"CRIME_COUNT"
from gs_tables_db.TRNG_ColoradoCrimeDrug_DUI_ARREST;
replace view TRNG_ColoradoCrimeDrug.EMPLOYMENT as locking row for access select
"COUNTY_SHORT_NAME"
,"POPULATION_TOTAL"
,"POPULATION_AGE_16_OR_MORE"
,"NUMBER_OF_WORKERS_16_OR_MORE"
,"MEAN_TRAVEL_TIME_TO_WORK"
from gs_tables_db.TRNG_ColoradoCrimeDrug_EMPLOYMENT;
replace view TRNG_ColoradoCrimeDrug.FORECLOSURE as locking row for access select
"COUNTY_SHORT_NAME"
,"REPORT_DATE"
,"REPORT_YEAR"
,"REPORT_QUARTER"
,"SALES"
,"FORECLOSURES"
from gs_tables_db.TRNG_ColoradoCrimeDrug_FORECLOSURE;
replace view TRNG_ColoradoCrimeDrug.MARIJUANA_SALES_REVENUE as locking row for access select
"COUNTY_SHORT_NAME"
,"REVENUE_DATE"
,"MEDICAL_SALES"
,"RECREATIONAL_SALES"
from gs_tables_db.TRNG_ColoradoCrimeDrug_MARIJUANA_SALES_REVENUE;
replace view TRNG_ColoradoCrimeDrug.MENTAL_DISTRESS as locking row for access select
"COUNTY_SHORT_NAME"
,"EST_PERCENT_ADULT_MENTAL_DISTRESS"
from gs_tables_db.TRNG_ColoradoCrimeDrug_MENTAL_DISTRESS;
replace view TRNG_ColoradoCrimeDrug.PERSONAL_INCOME as locking row for access select
"COUNTY_SHORT_NAME"
,"PERIOD_YEAR"
,"PERIOD_DESC"
,"INCOME_MEASURE"
,"INCOME_DESC"
,"INCOME"
,"INCOME_RANK"
,"POPULATION"
,"RELEASE_DATE"
from gs_tables_db.TRNG_ColoradoCrimeDrug_PERSONAL_INCOME;
replace view TRNG_ColoradoCrimeDrug.SEIZED_DRUGS as locking row for access select
"COUNTY_SHORT_NAME"
,"INCIDENT_DATE"
,"DRUG_MEASUREMENT"
,"DRUG_TYPE"
,"DRUG_QUANTITY"
,"NUM_OF_DRUG_REPORTS"
from gs_tables_db.TRNG_ColoradoCrimeDrug_SEIZED_DRUGS;
