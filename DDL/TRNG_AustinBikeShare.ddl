create database TRNG_AustinBikeShare from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_AustinBikeShare_trips", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AustinBikeShare/trips/'));
create foreign table gs_tables_db."TRNG_AustinBikeShare_Weather", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AustinBikeShare/Weather/'));
create foreign table gs_tables_db."TRNG_AustinBikeShare_stations", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AustinBikeShare/stations/'));
replace view TRNG_AustinBikeShare.trips as locking row for access select
"bikeid"
,"checkout_time"
,"duration_minutes"
,"end_station_id"
,"end_station_name"
,"MONTH_NUM"
,"start_station_id"
,"start_station_name"
,"start_time"
,"subscriber_type"
,"trip_id"
,"YEAR_NUM"
from gs_tables_db.TRNG_AustinBikeShare_trips;
replace view TRNG_AustinBikeShare.Weather as locking row for access select
"dt"
,"temp"
,"temp_min"
,"temp_max"
,"pressure"
,"humidity"
,"wind_speed"
,"wind_deg"
,"rain_1h"
,"rain_3h"
,"clouds"
,"weather_id"
,"weather_main"
,"weather_desc"
,"weather_icon"
from gs_tables_db.TRNG_AustinBikeShare_Weather;
replace view TRNG_AustinBikeShare.stations as locking row for access select
latitude
,longitude
,New ST_GEOMETRY('ST_POINT' ,longitude, latitude) location
,"name"
,station_id
,status
from gs_tables_db.TRNG_AustinBikeShare_stations;
