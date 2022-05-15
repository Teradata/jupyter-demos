create database TRNG_SalesOffload from demonow as perm=0;
create foreign table gs_tables_db."TRNG_SalesOffload_sales_fact",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SalesOffload/sales-fact/'));
replace view TRNG_SalesOffload.sales_fact as locking row for access select * from  gs_tables_db."TRNG_SalesOffload_sales_fact";
