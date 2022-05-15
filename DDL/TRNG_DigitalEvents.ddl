create database TRNG_DigitalEvents from demonow as perm=0;
create foreign table gs_tables_db."TRNG_DigitalEvents_Digital_Retail_Events",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DigitalEvents/Digital-Retail-Events/'));
create foreign table gs_tables_db."TRNG_DigitalEvents_Mobile_Money_Txns",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DigitalEvents/Mobile-Money-Txns/'));
replace view TRNG_DigitalEvents.Digital_Retail_Events as locking row for access select * from  gs_tables_db."TRNG_DigitalEvents_Digital_Retail_Events";
replace view TRNG_DigitalEvents.Mobile_Money_Txns as locking row for access select * from  gs_tables_db."TRNG_DigitalEvents_Mobile_Money_Txns";
