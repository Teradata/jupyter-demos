create database TRNG_AustinBikeShare from demonow as perm=0;
create foreign table gs_tables_db."TRNG_AustinBikeShare_stations",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AustinBikeShare/stations/'));
create foreign table gs_tables_db."TRNG_AustinBikeShare_trips",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AustinBikeShare/trips/'));
create foreign table gs_tables_db."TRNG_AustinBikeShare_Weather",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AustinBikeShare/Weather/'));
create foreign table gs_tables_db."TRNG_AustinBikeShare_weather_temporal",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AustinBikeShare/weather-temporal/'));
replace view TRNG_AustinBikeShare.Weather as locking row for access select * from  gs_tables_db."TRNG_AustinBikeShare_Weather";
replace view TRNG_AustinBikeShare.stations as locking row for access select * from  gs_tables_db."TRNG_AustinBikeShare_stations";
replace view TRNG_AustinBikeShare.trips as locking row for access select * from  gs_tables_db."TRNG_AustinBikeShare_trips";
replace view TRNG_AustinBikeShare.weather_temporal as locking row for access select * from  gs_tables_db."TRNG_AustinBikeShare_weather_temporal";
