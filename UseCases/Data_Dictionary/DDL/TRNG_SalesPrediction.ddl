create database TRNG_SalesPrediction from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_SalesPrediction_pandas_stores_rossmann", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SalesPrediction/pandas-stores-rossmann/'));
replace view TRNG_SalesPrediction.pandas_stores_rossmann as locking row for access select
"Store"
,"StoreType"
,"Assortment"
,"CompetitionDistance"
,"CompetitionOpenSinceMonth"
,"CompetitionOpenSinceYear"
,"Promo2"
,"Promo2SinceWeek"
,"Promo2SinceYear"
from gs_tables_db.TRNG_SalesPrediction_pandas_stores_rossmann;
