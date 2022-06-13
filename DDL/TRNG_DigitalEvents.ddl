create database TRNG_DigitalEvents from demonow as perm=0;
create foreign table gs_tables_db."TRNG_DigitalEvents_Mobile_Money_Txns", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DigitalEvents/Mobile-Money-Txns/'));
create foreign table gs_tables_db."TRNG_DigitalEvents_Digital_Retail_Events", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DigitalEvents/Digital-Retail-Events/'));
create foreign table gs_tables_db."TRNG_DigitalEvents_cashapp_accts_to_customers", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DigitalEvents/cashapp-accts-to-customers/'));
create foreign table gs_tables_db."TRNG_DigitalEvents_Streaming_Txns_Fit_Table", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DigitalEvents/Streaming-Txns-Fit-Table/'));
create foreign table gs_tables_db."TRNG_DigitalEvents_txn_history", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DigitalEvents/txn-history/'));
replace view TRNG_DigitalEvents.cashapp_accts_to_customers as locking row for access select
"customer_identifier"
,"nameOrig"
from gs_tables_db.TRNG_DigitalEvents_cashapp_accts_to_customers;
replace view TRNG_DigitalEvents.Digital_Retail_Events as locking row for access select
"Entity_Id"
,"datestamp"
,"event"
,"session_id"
from gs_tables_db.TRNG_DigitalEvents_Digital_Retail_Events;
replace view TRNG_DigitalEvents.Mobile_Money_Txns as locking row for access select
"step"
,"type"
,"amount"
,"nameOrig"
,"oldbalanceOrig"
,"newbalanceOrig"
,"nameDest"
,"oldbalanceDest"
,"newbalanceDest"
,"isFraud"
,"isFlaggedFraud"
,"txn_id"
from gs_tables_db.TRNG_DigitalEvents_Mobile_Money_Txns;
replace view TRNG_DigitalEvents.Streaming_Txns_Fit_Table as locking row for access select
"type"
,"type_TRANSFER"
,"type_PAYMENT"
,"type_CASH_IN"
,"type_CASH_OUT"
,"type_DEBIT"
,"type_other"
from gs_tables_db.TRNG_DigitalEvents_Streaming_Txns_Fit_Table;
replace view TRNG_DigitalEvents.txn_history as locking row for access select
"LOCATION"
,"Payload"
from gs_tables_db.TRNG_DigitalEvents_txn_history;
REPLACE VIEW TRNG_DigitalEvents.txn_history_view
AS (
    SELECT
    CAST($path.$txn_type AS CHAR(10)) "type",
    CAST(payload.txn_id As BIGINT) txn_id,
    CAST(payload.step AS BIGINT) step,
    CAST(payload.amount AS FLOAT) amount,
    CAST(payload.nameOrig AS VARCHAR(100)) nameOrig,
    CAST(payload.oldbalanceOrig AS FLOAT) oldbalanceOrig,
    CAST(payload.newbalanceOrig AS FLOAT) newbalanceOrig,
    CAST(payload.nameDest AS VARCHAR(100)) nameDest,
    CAST(payload.oldbalanceDest AS FLOAT) oldbalanceDest,
    CAST(payload.newbalanceDest AS FLOAT) newbalanceDest,
    CAST(payload.isFraud AS BIGINT) isFraud,
    CAST(payload.isFlaggedFraud AS BIGINT) isFlaggedFraud
FROM TRNG_DigitalEvents.txn_history);

