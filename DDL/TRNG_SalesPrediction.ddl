create database TRNG_SalesPrediction from demonow as perm=0;
create foreign table gs_tables_db."TRNG_SalesPrediction_pandas_stores_rossmann",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SalesPrediction/pandas-stores-rossmann/'));
replace view TRNG_SalesPrediction.pandas_stores_rossmann as locking row for access select * from  gs_tables_db."TRNG_SalesPrediction_pandas_stores_rossmann";
