create database TRNG_LondonTube from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_LondonTube_TubeStations", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LondonTube/TubeStations/'));
create foreign table gs_tables_db."TRNG_LondonTube_TubeLines", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LondonTube/TubeLines/'));
create foreign table gs_tables_db."TRNG_LondonTube_stepFree_NN", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LondonTube/stepFree-NN/'));
create foreign table gs_tables_db."TRNG_LondonTube_Theatres", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LondonTube/Theatres/'));
create foreign table gs_tables_db."TRNG_LondonTube_Art_Centers", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LondonTube/Art-Centers/'));
create foreign table gs_tables_db."TRNG_LondonTube_dance_performance", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LondonTube/dance-performance/'));
create foreign table gs_tables_db."TRNG_LondonTube_Museums", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LondonTube/Museums/'));
create foreign table gs_tables_db."TRNG_LondonTube_Cinemas", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-LondonTube/Cinemas/'));
replace view TRNG_LondonTube.Art_Centers as locking row for access select
"objectid"
,"name"
,"address1"
,"address2"
,"address3"
,"borough_name"
,"borough_code"
,"postcode"
,"open_status"
,"lat"
,"lon"
from gs_tables_db.TRNG_LondonTube_Art_Centers;
replace view TRNG_LondonTube.Cinemas as locking row for access select
"objectid"
,"name"
,"address1"
,"address2"
,"address3"
,"borough_name"
,"borough_code"
,"postcode"
,"open_status"
,"lat"
,"lon"
from gs_tables_db.TRNG_LondonTube_Cinemas;
replace view TRNG_LondonTube.dance_performance as locking row for access select
"objectid"
,"name"
,"address1"
,"address2"
,"address3"
,"borough_name"
,"borough_code"
,"postcode"
,"open_status"
,"lat"
,"lon"
from gs_tables_db.TRNG_LondonTube_dance_performance;
replace view TRNG_LondonTube.Museums as locking row for access select
"objectid"
,"name"
,"address1"
,"address2"
,"address3"
,"borough_name"
,"borough_code"
,"postcode"
,"open_status"
,"lat"
,"lon"
from gs_tables_db.TRNG_LondonTube_Museums;
replace view TRNG_LondonTube.stepFree_NN as locking row for access select
"STATION"
,"LINE"
,"DESCRIPTION"
,"STEP_FREE_FLAG"
from gs_tables_db.TRNG_LondonTube_stepFree_NN;
replace view TRNG_LondonTube.Theatres as locking row for access select
"objectid"
,"name"
,"address1"
,"address2"
,"address3"
,"borough_name"
,"borough_code"
,"postcode"
,"open_status"
,"lat"
,"lon"
from gs_tables_db.TRNG_LondonTube_Theatres;
replace view TRNG_LondonTube.TubeLines as locking row for access select
"LINE"
,"FROM_STATION"
,"TO_STATION"
from gs_tables_db.TRNG_LondonTube_TubeLines;
replace view TRNG_LondonTube.TubeStations as locking row for access select
"STATION"
,"OSX"
,"OSY"
,"LATITUDE"
,"LONGITUDE"
,"TUBEZONE"
,"POSTCODE"
from gs_tables_db.TRNG_LondonTube_TubeStations;
