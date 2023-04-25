create database TRNG_IndoorSensor from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_IndoorSensor_connectivity", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-IndoorSensor/connectivity/'));
create foreign table gs_tables_db."TRNG_IndoorSensor_sensor_locations", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-IndoorSensor/sensor-locations/'));
replace view TRNG_IndoorSensor.connectivity as locking row for access select
"sendid"
,"receiveid"
,"reachprob"
from gs_tables_db.TRNG_IndoorSensor_connectivity;
replace view TRNG_IndoorSensor.sensor_locations as locking row for access select
"id"
,"x"
,"y"
from gs_tables_db.TRNG_IndoorSensor_sensor_locations;
