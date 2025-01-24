create database TRNG_NOS from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_NOS_inputdata", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-NOS/inputdata/'));
replace view TRNG_NOS.inputdata as locking row for access select
"order_id"
,"order_date"
,"product_name"
,"order_count"
from gs_tables_db.TRNG_NOS_inputdata;
