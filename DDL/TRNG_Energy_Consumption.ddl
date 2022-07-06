create database TRNG_Energy_Consumption from demonow as perm=0;
create foreign table gs_tables_db."TRNG_Energy_Consumption_energy_no_consumption_datamart", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Energy-Consumption/energy-no-consumption-datamart/'));
replace view TRNG_Energy_Consumption.energy_no_consumption_datamart as locking row for access select
"TD_TIMECODE"
,"consumption"
,"y"
,"m"
,"d"
,"h"
,"weekday"
,"nasa_temp"
,"cap_air_temperature"
,"cap_cloud_area_fraction"
,"cap_precipitation_amount"
,"is_dark"
,"is_light"
,"is_from_light_to_dark"
,"is_from_dark_to_light"
,"is_holiday"
,"is_pre_holiday"
from gs_tables_db.TRNG_Energy_Consumption_energy_no_consumption_datamart;
