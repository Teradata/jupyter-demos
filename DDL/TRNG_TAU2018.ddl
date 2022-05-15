create database TRNG_TAU2018 from demonow as perm=0;
create foreign table gs_tables_db."TRNG_TAU2018_partners2014",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TAU2018/partners2014/'));
create foreign table gs_tables_db."TRNG_TAU2018_partners2016",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TAU2018/partners2016/'));
create foreign table gs_tables_db."TRNG_TAU2018_tau_submission",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TAU2018/tau-submission/'));
replace view TRNG_TAU2018.partners2014 as locking row for access select * from  gs_tables_db."TRNG_TAU2018_partners2014";
replace view TRNG_TAU2018.partners2016 as locking row for access select * from  gs_tables_db."TRNG_TAU2018_partners2016";
replace view TRNG_TAU2018.tau_submission as locking row for access select * from  gs_tables_db."TRNG_TAU2018_tau_submission";
