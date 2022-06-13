create database TRNG_EVCarBattery from demonow as perm=0;
create foreign table gs_tables_db."TRNG_EVCarBattery_dealers", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarBattery/dealers/'));
create foreign table gs_tables_db."TRNG_EVCarBattery_customers", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarBattery/customers/'));
create foreign table gs_tables_db."TRNG_EVCarBattery_badbatts", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarBattery/badbatts/'));
create foreign table gs_tables_db."TRNG_EVCarBattery_parts", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarBattery/parts/'));
create foreign table gs_tables_db."TRNG_EVCarBattery_mfg_plants", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarBattery/mfg-plants/'));
create foreign table gs_tables_db."TRNG_EVCarBattery_dtc", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarBattery/dtc/'));
create foreign table gs_tables_db."TRNG_EVCarBattery_service_visits", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarBattery/service-visits/'));
create foreign table gs_tables_db."TRNG_EVCarBattery_vehicles", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarBattery/vehicles/'));
create foreign table gs_tables_db."TRNG_EVCarBattery_bom", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarBattery/bom/'));
replace view TRNG_EVCarBattery.badbatts as locking row for access select
"vin"
from gs_tables_db.TRNG_EVCarBattery_badbatts;
replace view TRNG_EVCarBattery.bom as locking row for access select
"id"
,"vin"
,"part_no"
,"vendor_id"
,"lot_no"
,"quantity"
from gs_tables_db.TRNG_EVCarBattery_bom;
replace view TRNG_EVCarBattery.customers as locking row for access select
"Id"
,"Gender"
,"GivenName"
,"MiddleInitial"
,"Surname"
,"StreetAddress"
,"City"
,"State"
,"ZipCode"
,"Country"
,"EmailAddress"
,"Username"
,"Passwd"
,"TelephoneNumber"
,"MothersMaiden"
,"Birthday"
,"CCType"
,"CCNumber"
,"CVV2"
,"CCExpires"
,"NationalID"
,"UPS"
,"Occupation"
,"Company"
,"Vehicle"
,"DomainName"
,"BloodType"
,"Pounds"
,"Kilograms"
,"FeetInches"
,"Centimeters"
,"GUID"
,"Latitude"
,"Longitude"
from gs_tables_db.TRNG_EVCarBattery_customers;
replace view TRNG_EVCarBattery.dealers as locking row for access select
"Id"
,"Company"
,"StreetAddress"
,"City"
,"State"
,"ZipCode"
,"Country"
,"EmailAddress"
,"TelephoneNumber"
,"DomainName"
,"Latitude"
,"Longitude"
from gs_tables_db.TRNG_EVCarBattery_dealers;
replace view TRNG_EVCarBattery.dtc as locking row for access select
"fault_code"
,"description"
from gs_tables_db.TRNG_EVCarBattery_dtc;
replace view TRNG_EVCarBattery.mfg_plants as locking row for access select
"Id"
,"Company"
,"StreetAddress"
,"City"
,"State"
,"ZipCode"
,"Country"
,"EmailAddress"
,"TelephoneNumber"
,"Latitude"
,"Longitude"
from gs_tables_db.TRNG_EVCarBattery_mfg_plants;
replace view TRNG_EVCarBattery.parts as locking row for access select
"part_no"
,"description"
from gs_tables_db.TRNG_EVCarBattery_parts;
replace view TRNG_EVCarBattery.service_visits as locking row for access select
"id"
,"vin"
,"dealer_id"
,"service"
,"cost"
,"warranty"
from gs_tables_db.TRNG_EVCarBattery_service_visits;
replace view TRNG_EVCarBattery.vehicles as locking row for access select
"vin"
,"yr"
,"model"
,"customer_id"
,"dealer_id"
,"mfg_plant_id"
from gs_tables_db.TRNG_EVCarBattery_vehicles;
