create database TRNG_Energy_Consumption from demonow as perm=0;
create foreign table gs_tables_db."TRNG_Energy_Consumption_energy_no_consumption_datamart",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Energy-Consumption/energy-no-consumption-datamart/'));
replace view TRNG_Energy_Consumption.energy_no_consumption_datamart as locking row for access select * from  gs_tables_db."TRNG_Energy_Consumption_energy_no_consumption_datamart";
