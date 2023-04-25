create database TRNG_Telco from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_Telco_telco_events", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Telco/telco-events/'));
create foreign table gs_tables_db."TRNG_Telco_telco_testing", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Telco/telco-testing/'));
create foreign table gs_tables_db."TRNG_Telco_telco_training", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Telco/telco-training/'));
replace view TRNG_Telco.telco_events as locking row for access select
"entity_id"
,"datestamp"
,"session_id"
,"event"
from gs_tables_db.TRNG_Telco_telco_events;
replace view TRNG_Telco.telco_testing as locking row for access select
"cust_id"
,"churn_flag"
,"plan_rate"
,"cust_days"
,"age"
,"region"
,"months_from_contract_end"
,"voice_calls_avg"
,"voice_minutes_avg"
,"data_usage_avg"
,"sms_usage_avg"
,"voicemail_calls"
,"support_calls"
,"support_minutes"
,"bill_dispute"
from gs_tables_db.TRNG_Telco_telco_testing;
replace view TRNG_Telco.telco_training as locking row for access select
"cust_id"
,"churn_flag"
,"open_dt"
,"plan_rate"
,"cust_days"
,"age"
,"region"
,"months_from_contract_end"
,"voice_calls_avg"
,"voice_minutes_avg"
,"data_usage_avg"
,"sms_usage_avg"
,"voicemail_calls"
,"support_calls"
,"support_minutes"
,"bill_dispute"
from gs_tables_db.TRNG_Telco_telco_training;
