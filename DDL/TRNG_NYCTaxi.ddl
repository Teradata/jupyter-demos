create database TRNG_NYCTaxi from demonow as perm=0;
create foreign table gs_tables_db."TRNG_NYCTaxi_trip",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-NYCTaxi/trip/'));
create foreign table gs_tables_db."TRNG_NYCTaxi_trip_fare",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-NYCTaxi/trip-fare/'));
replace view TRNG_NYCTaxi.trip as locking row for access select * from  gs_tables_db."TRNG_NYCTaxi_trip";
replace view TRNG_NYCTaxi.trip_fare as locking row for access select * from  gs_tables_db."TRNG_NYCTaxi_trip_fare";
