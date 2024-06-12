create database TRNG_RETAILDSE from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_RETAILDSE_ATTRIBUTION_MODEL_LAST_CLICK", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE/ATTRIBUTION-MODEL-LAST-CLICK/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_WEB_LOG_JSON_ONLY", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE/WEB-LOG-JSON-ONLY/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_STORE_VISIT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE/STORE-VISIT/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_ATTRIBUTION_MODEL_FIRST_CLICK", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE/ATTRIBUTION-MODEL-FIRST-CLICK/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_PURCHASE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE/PURCHASE/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_PROSPECT_TRANSACTION", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE/PROSPECT-TRANSACTION/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_CALL_CENTER_CALLS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE/CALL-CENTER-CALLS/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_ATTRIBUTION_MODEL_UNIFORM", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE/ATTRIBUTION-MODEL-UNIFORM/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_ATTRIBUTION_MODEL_EXPONENTIAL", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE/ATTRIBUTION-MODEL-EXPONENTIAL/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_WEB_LOG", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE/WEB-LOG/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_WEB", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE/WEB/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_RETAIL_COMPNEW", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE/RETAIL-COMPNEW/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_WEB_COMMENT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE/WEB-COMMENT/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_PROSPECT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE/PROSPECT/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_ATTRIBUTION_CONVERSION", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE/ATTRIBUTION-CONVERSION/'));
replace view TRNG_RETAILDSE.ATTRIBUTION_CONVERSION as locking row for access select
"CONVERSION"
from gs_tables_db.TRNG_RETAILDSE_ATTRIBUTION_CONVERSION;
replace view TRNG_RETAILDSE.ATTRIBUTION_MODEL_EXPONENTIAL as locking row for access select
"ID"
,"MODEL"
from gs_tables_db.TRNG_RETAILDSE_ATTRIBUTION_MODEL_EXPONENTIAL;
replace view TRNG_RETAILDSE.ATTRIBUTION_MODEL_FIRST_CLICK as locking row for access select
"ID"
,"MODEL"
from gs_tables_db.TRNG_RETAILDSE_ATTRIBUTION_MODEL_FIRST_CLICK;
replace view TRNG_RETAILDSE.ATTRIBUTION_MODEL_LAST_CLICK as locking row for access select
"ID"
,"MODEL"
from gs_tables_db.TRNG_RETAILDSE_ATTRIBUTION_MODEL_LAST_CLICK;
replace view TRNG_RETAILDSE.ATTRIBUTION_MODEL_UNIFORM as locking row for access select
"ID"
,"MODEL"
from gs_tables_db.TRNG_RETAILDSE_ATTRIBUTION_MODEL_UNIFORM;
replace view TRNG_RETAILDSE.CALL_CENTER_CALLS as locking row for access select
"CALL_ID"
,"customer_id"
,"CC_REP_ID"
,"CC_CALL_DT"
,"CALL_TYPE"
from gs_tables_db.TRNG_RETAILDSE_CALL_CENTER_CALLS;
replace view TRNG_RETAILDSE.PROSPECT as locking row for access select
"PROSPECT_ID"
,"F_NAME"
,"L_NAME"
,"PROSPECT_ZIP"
,"GENDER"
,"INCOME"
,"AGE"
from gs_tables_db.TRNG_RETAILDSE_PROSPECT;
replace view TRNG_RETAILDSE.PROSPECT_TRANSACTION as locking row for access select
"customer_id"
,"DATESTAMP"
,"EVENT"
from gs_tables_db.TRNG_RETAILDSE_PROSPECT_TRANSACTION;
replace view TRNG_RETAILDSE.PURCHASE as locking row for access select
"TRANSACTION_ID"
,"CUSTOMER_ID"
,"PRODUCT_ID"
,"STORE_ID"
,"PRODUCT_NAME"
,"STORE_NAME"
,"REGION"
,"CITY"
,"TRANSACTION_DT"
,"BASKET_ID"
,"QUANTITY"
,"UNIT_PRICE"
,"CHANNEL_TYPE"
from gs_tables_db.TRNG_RETAILDSE_PURCHASE;
replace view TRNG_RETAILDSE.RETAIL_COMPNEW as locking row for access select
"CUSTOMER_ID"
,"DATESTAMP"
,"EVENT"
from gs_tables_db.TRNG_RETAILDSE_RETAIL_COMPNEW;
replace view TRNG_RETAILDSE.STORE_VISIT as locking row for access select
"STORE_ID"
,"customer_id"
,"VISIT_DT"
,"ACTION"
from gs_tables_db.TRNG_RETAILDSE_STORE_VISIT;
replace view TRNG_RETAILDSE.WEB as locking row for access select
"TD_TIMECODE"
,"customer_id"
,"SERVER_ID"
,"PAGE"
,"BROWSE_ID"
from gs_tables_db.TRNG_RETAILDSE_WEB;
replace view TRNG_RETAILDSE.WEB_COMMENT as locking row for access select
"comment_id"
,"customer_id"
,"comment_text"
,"comment_summary"
from gs_tables_db.TRNG_RETAILDSE_WEB_COMMENT;
replace view TRNG_RETAILDSE.WEB_LOG as locking row for access select
"TD_TIMECODE"
,"CUSTOMER_ID"
,"SERVER_ID"
,"PAGE"
,"BROWSE_ID"
from gs_tables_db.TRNG_RETAILDSE_WEB_LOG;
--replace view TRNG_RETAILDSE.WEB_LOG_JSON_ONLY as locking row for access select
--"WEBLOG"
--from gs_tables_db.TRNG_RETAILDSE_WEB_LOG_JSON_ONLY;
