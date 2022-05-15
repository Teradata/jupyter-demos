create database TRNG_SurvivalAnalysis from demonow as perm=0;
create foreign table gs_tables_db."TRNG_SurvivalAnalysis_heart_failure",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SurvivalAnalysis/heart-failure/'));
replace view TRNG_SurvivalAnalysis.heart_failure as locking row for access select * from  gs_tables_db."TRNG_SurvivalAnalysis_heart_failure";
