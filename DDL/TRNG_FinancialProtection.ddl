create database TRNG_FinancialProtection from demonow as perm=0;
create foreign table gs_tables_db."TRNG_FinancialProtection_consumer_complaints",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FinancialProtection/consumer-complaints/'));
replace view TRNG_FinancialProtection.consumer_complaints as locking row for access select * from  gs_tables_db."TRNG_FinancialProtection_consumer_complaints";
