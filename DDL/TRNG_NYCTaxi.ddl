create database TRNG_NYCTaxi from demonow as perm=0;
create foreign table gs_tables_db."TRNG_NYCTaxi_trip_fare", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-NYCTaxi/trip-fare/'));
create foreign table gs_tables_db."TRNG_NYCTaxi_trip", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-NYCTaxi/trip/'));
replace view TRNG_NYCTaxi.trip as locking row for access select
"medallion"
,"hack_license"
,"vendor_id"
,"rate_code"
,"store_and_fwd_flag"
,"pickup_datetime"
,"dropoff_datetime"
,"passenger_count"
,"trip_time_in_secs"
,"trip_distance"
,"pickup_longitude"
,"pickup_latitude"
,"dropoff_longitude"
,"dropoff_latitude"
from gs_tables_db.TRNG_NYCTaxi_trip;
replace view TRNG_NYCTaxi.trip_fare as locking row for access select
"medallion"
,"hack_license"
,"vendor_id"
,"pickup_datetime"
,"payment_type"
,"fare_amount"
,"surcharge"
,"mta_tax"
,"tip_amount"
,"tolls_amount"
,"total_amount"
from gs_tables_db.TRNG_NYCTaxi_trip_fare;
