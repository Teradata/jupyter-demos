create database TRNG_UX from demonow as perm=0;
create foreign table gs_tables_db."TRNG_UX_UXUserDatabase", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-UX/UXUserDatabase/'));
create foreign table gs_tables_db."TRNG_UX_QUALITY", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-UX/QUALITY/'));
replace view TRNG_UX.QUALITY as locking row for access select
"Measure"
,"Sub_Measure"
,"Metric_Name"
,"Metric_Month"
,"Target_Type"
,"Score"
,"thread_id"
from gs_tables_db.TRNG_UX_QUALITY;
replace view TRNG_UX.UXUserDatabase as locking row for access select
"Date"
,"Year"
,"Research Catergory"
,"Research Name"
,"Study Type"
,"Company"
,"Persona"
,"Archetype"
,"TAS"
,"SUS"
,"NPS"
,"AE"
,"Notes"
,"thread_id"
from gs_tables_db.TRNG_UX_UXUserDatabase;
