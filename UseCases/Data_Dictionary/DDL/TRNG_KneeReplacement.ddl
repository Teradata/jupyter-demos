create database TRNG_KneeReplacement from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_KneeReplacement_knee_replacement", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-KneeReplacement/knee-replacement/'));
replace view TRNG_KneeReplacement.knee_replacement as locking row for access select
"memberid"
,"proccode"
,"diagcode"
,"shortdesc"
,"amount"
,"tstamp"
,"firstname"
,"lastname"
,"email"
,"state"
from gs_tables_db.TRNG_KneeReplacement_knee_replacement;
replace VIEW TRNG_KneeReplacement.knee_replacement_events AS
SELECT memberid as entity_id, tstamp AS datestamp, shortdesc as event,
memberid, proccode, diagcode, shortdesc, amount, tstamp, firstname, lastname, email, state        
FROM gs_tables_db."TRNG_KneeReplacement_knee_replacement";

