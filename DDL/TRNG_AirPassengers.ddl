create database TRNG_AirPassengers from Demo_User as perm=0;
create foreign table gs_tables_db.airpassengers, external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG_AirPassengers/airpassengers/'));
replace view TRNG_AirPassengers.airpassengers as locking row for access select
    "Date",
    Passengers,
    seriesID
from gs_tables_db.airpassengers;