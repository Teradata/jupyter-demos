create database TRNG_TelcoChurn from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_TelcoChurn_MobilePayEvents", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/MobilePayEvents/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_churn_predict_svm", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-churn-predict-svm/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_links", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-links/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_all_nonchurn_paths_token_clean", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-all-nonchurn-paths-token-clean/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_telco_cdr_model", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/telco-cdr-model/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_telco_cdr", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/telco-cdr/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_all_nonchurn_tfidf", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-all-nonchurn-tfidf/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_all_churn_paths_token", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-all-churn-paths-token/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_churn_predict_pivot", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-churn-predict-pivot/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_all_churn_tfidf", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-all-churn-tfidf/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_telco_cdr_data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/telco-cdr-data/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_events_churn_attrib", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-events-churn-attrib/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_all_churn_tfidf_input1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-all-churn-tfidf-input1/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_churn_predict", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-churn-predict/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_unknown_token", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-unknown-token/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_TIMEGROUP", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/TIMEGROUP/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_all_tfidf_slope", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-all-tfidf-slope/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_telco_cdr_cluster", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/telco-cdr-cluster/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_all_churn_paths", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-all-churn-paths/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_MobilePayEventsClean", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/MobilePayEventsClean/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_all_nonchurn_tfidf_input1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-all-nonchurn-tfidf-input1/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_all_churn_tf1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-all-churn-tf1/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_unknown_paths", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-unknown-paths/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_nodes", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-nodes/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_mobilepay_nonfraud_tfidf", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/mobilepay-nonfraud-tfidf/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_churn_predict_pivot_final", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-churn-predict-pivot-final/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_mobile_pay_fraud_paths", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/mobile-pay-fraud-paths/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_mobilepay_fraud_paths_token", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/mobilepay-fraud-paths-token/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_all_churn_paths_token_clean", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-all-churn-paths-token-clean/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_mobilepay_fraud_tfidf_input1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/mobilepay-fraud-tfidf-input1/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_churn_model", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-churn-model/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_mobilepay_fraud_paths_paths_token_clean", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/mobilepay-fraud-paths-paths-token-clean/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_all_nonchurn_tf1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-all-nonchurn-tf1/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_mobilepayfraud_tfidf_slope", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/mobilepayfraud-tfidf-slope/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_customer_staging", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/customer-staging/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_mobilepay_fraud_tf1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/mobilepay-fraud-tf1/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_data_non_churners", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-data-non-churners/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_MobilePayEvent", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/MobilePayEvent/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-data/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_events", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/events/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_unknown_token_clean", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-unknown-token-clean/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_mobilepay_fraud_tfidf", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/mobilepay-fraud-tfidf/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_all_nonchurn_paths_token", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-all-nonchurn-paths-token/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_mobilepayfraud_slope", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/mobilepayfraud-slope/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_mobilepay_fraud_paths", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/mobilepay-fraud-paths/'));
create foreign table gs_tables_db."TRNG_TelcoChurn_csi_telco_all_nonchurn_paths", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoChurn/csi-telco-all-nonchurn-paths/'));
replace view TRNG_TelcoChurn.csi_telco_all_churn_paths as locking row for access select
"customerid"
,"event_cnt"
,"path"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_all_churn_paths;
replace view TRNG_TelcoChurn.csi_telco_all_churn_paths_token as locking row for access select
"customerid"
,"ngram"
,"n"
,"frequency"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_all_churn_paths_token;
replace view TRNG_TelcoChurn.csi_telco_all_churn_paths_token_clean as locking row for access select
"ngram"
,"customerid"
,"n"
,"frequency"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_all_churn_paths_token_clean;
replace view TRNG_TelcoChurn.csi_telco_all_churn_tf1 as locking row for access select
"docid"
,"term"
,"tf"
,"count"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_all_churn_tf1;
replace view TRNG_TelcoChurn.csi_telco_all_churn_tfidf as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_all_churn_tfidf;
replace view TRNG_TelcoChurn.csi_telco_all_churn_tfidf_input1 as locking row for access select
"docid"
,"term"
,"count"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_all_churn_tfidf_input1;
replace view TRNG_TelcoChurn.csi_telco_all_nonchurn_paths as locking row for access select
"customerid"
,"event_cnt"
,"path"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_all_nonchurn_paths;
replace view TRNG_TelcoChurn.csi_telco_all_nonchurn_paths_token as locking row for access select
"customerid"
,"ngram"
,"n"
,"frequency"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_all_nonchurn_paths_token;
replace view TRNG_TelcoChurn.csi_telco_all_nonchurn_paths_token_clean as locking row for access select
"ngram"
,"customerid"
,"n"
,"frequency"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_all_nonchurn_paths_token_clean;
replace view TRNG_TelcoChurn.csi_telco_all_nonchurn_tf1 as locking row for access select
"docid"
,"term"
,"tf"
,"count"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_all_nonchurn_tf1;
replace view TRNG_TelcoChurn.csi_telco_all_nonchurn_tfidf as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_all_nonchurn_tfidf;
replace view TRNG_TelcoChurn.csi_telco_all_nonchurn_tfidf_input1 as locking row for access select
"docid"
,"term"
,"count"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_all_nonchurn_tfidf_input1;
replace view TRNG_TelcoChurn.csi_telco_all_tfidf_slope as locking row for access select
"term"
,"grp"
,"sum_rank"
,"sum_tfidf"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_all_tfidf_slope;
replace view TRNG_TelcoChurn.csi_telco_churn_model as locking row for access select
"token"
,"category"
,"prob"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_churn_model;
replace view TRNG_TelcoChurn.csi_telco_churn_predict as locking row for access select
"customer_id"
,"prediction"
,"loglik"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_churn_predict;
replace view TRNG_TelcoChurn.csi_telco_churn_predict_pivot as locking row for access select
"customer_id"
,"loglik_0"
,"loglik_1"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_churn_predict_pivot;
replace view TRNG_TelcoChurn.csi_telco_churn_predict_pivot_final as locking row for access select
"customer_id"
,"prediction"
,"loglik_0"
,"loglik_1"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_churn_predict_pivot_final;
replace view TRNG_TelcoChurn.csi_telco_churn_predict_svm as locking row for access select
"customer_id"
,"predict_value"
,"predict_confidence"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_churn_predict_svm;
replace view TRNG_TelcoChurn.csi_telco_data as locking row for access select
"customerid"
,"event"
,"category"
,"amount"
,"duration"
,"notes"
,"tstamp"
,"timegroup"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_data;
replace view TRNG_TelcoChurn.csi_telco_data_non_churners as locking row for access select
"customerid"
,"event"
,"category"
,"amount"
,"duration"
,"notes"
,"tstamp"
,"timegroup"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_data_non_churners;
replace view TRNG_TelcoChurn.csi_telco_events_churn_attrib as locking row for access select
"customerid"
,"event"
,"ttime"
,"attribution"
,"time_to_conversion"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_events_churn_attrib;
replace view TRNG_TelcoChurn.csi_telco_links as locking row for access select
"col1_item1"
,"col1_item2"
,"cnt_call"
,"dur_call"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_links;
replace view TRNG_TelcoChurn.csi_telco_nodes as locking row for access select
"nodes"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_nodes;
replace view TRNG_TelcoChurn.csi_telco_unknown_paths as locking row for access select
"customer_id"
,"event_cnt"
,"path"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_unknown_paths;
replace view TRNG_TelcoChurn.csi_telco_unknown_token as locking row for access select
"customer_id"
,"ngram"
,"n"
,"frequency"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_unknown_token;
replace view TRNG_TelcoChurn.csi_telco_unknown_token_clean as locking row for access select
"ngram"
,"customer_id"
,"n"
,"frequency"
from gs_tables_db.TRNG_TelcoChurn_csi_telco_unknown_token_clean;
replace view TRNG_TelcoChurn.customer_staging as locking row for access select
"customerid"
,"gender"
,"title_abr"
,"firstname"
,"middleinitial"
,"lastname"
,"streetaddress"
,"city"
,"state"
,"statefull"
,"postcode"
,"country"
,"countryfull"
,"username"
,"email"
,"phone"
,"telephonecountrycode"
,"age"
,"nationalid"
,"guid"
,"latitude"
,"longitude"
from gs_tables_db.TRNG_TelcoChurn_customer_staging;
replace view TRNG_TelcoChurn.events as locking row for access select
"event"
from gs_tables_db.TRNG_TelcoChurn_events;
replace view TRNG_TelcoChurn.MobilePayEvent as locking row for access select
"event"
from gs_tables_db.TRNG_TelcoChurn_MobilePayEvent;
replace view TRNG_TelcoChurn.MobilePayEvents as locking row for access select
"customerid"
,"event"
,"category"
,"amount"
,"duration"
,"notes"
,"tstamp"
,"timegroup"
from gs_tables_db.TRNG_TelcoChurn_MobilePayEvents;
replace view TRNG_TelcoChurn.MobilePayEventsClean as locking row for access select
"customerid"
,"event"
,"tstamp"
from gs_tables_db.TRNG_TelcoChurn_MobilePayEventsClean;
replace view TRNG_TelcoChurn.mobilepayfraud_slope as locking row for access select
"term"
,"grp"
,"sum_rank"
,"sum_tfidf"
from gs_tables_db.TRNG_TelcoChurn_mobilepayfraud_slope;
replace view TRNG_TelcoChurn.mobilepayfraud_tfidf_slope as locking row for access select
"term"
,"grp"
,"sum_rank"
,"sum_tfidf"
from gs_tables_db.TRNG_TelcoChurn_mobilepayfraud_tfidf_slope;
replace view TRNG_TelcoChurn.mobilepay_fraud_paths as locking row for access select
"customerid"
,"event_cnt"
,"path"
from gs_tables_db.TRNG_TelcoChurn_mobilepay_fraud_paths;
replace view TRNG_TelcoChurn.mobilepay_fraud_paths_paths_token_clean as locking row for access select
"ngram"
,"customerid"
,"n"
,"frequency"
from gs_tables_db.TRNG_TelcoChurn_mobilepay_fraud_paths_paths_token_clean;
replace view TRNG_TelcoChurn.mobilepay_fraud_paths_token as locking row for access select
"customerid"
,"ngram"
,"n"
,"frequency"
from gs_tables_db.TRNG_TelcoChurn_mobilepay_fraud_paths_token;
replace view TRNG_TelcoChurn.mobilepay_fraud_tf1 as locking row for access select
"docid"
,"term"
,"tf"
,"count"
from gs_tables_db.TRNG_TelcoChurn_mobilepay_fraud_tf1;
replace view TRNG_TelcoChurn.mobilepay_fraud_tfidf as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_TelcoChurn_mobilepay_fraud_tfidf;
replace view TRNG_TelcoChurn.mobilepay_fraud_tfidf_input1 as locking row for access select
"docid"
,"term"
,"count"
from gs_tables_db.TRNG_TelcoChurn_mobilepay_fraud_tfidf_input1;
replace view TRNG_TelcoChurn.mobilepay_nonfraud_tfidf as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_TelcoChurn_mobilepay_nonfraud_tfidf;
replace view TRNG_TelcoChurn.mobile_pay_fraud_paths as locking row for access select
"customerid"
,"event"
,"category"
,"amount"
,"duration"
,"notes"
,"tstamp"
,"timegroup"
from gs_tables_db.TRNG_TelcoChurn_mobile_pay_fraud_paths;
replace view TRNG_TelcoChurn.telco_cdr as locking row for access select
"fromuserid"
,"touserid"
,"numbercalls"
,"secondscalls"
,"datestamp"
from gs_tables_db.TRNG_TelcoChurn_telco_cdr;
replace view TRNG_TelcoChurn.telco_cdr_cluster as locking row for access select
"fromuserid"
,"clusterid"
from gs_tables_db.TRNG_TelcoChurn_telco_cdr_cluster;
replace view TRNG_TelcoChurn.telco_cdr_data as locking row for access select
"customer_identifier"
,"customer_type"
,"interaction_timestamp"
,"interaction_type"
,"interaction_source"
from gs_tables_db.TRNG_TelcoChurn_telco_cdr_data;
replace view TRNG_TelcoChurn.telco_cdr_model as locking row for access select
"clusterid"
,"numbercalls"
,"secondscalls"
,"size"
,"withinss"
from gs_tables_db.TRNG_TelcoChurn_telco_cdr_model;
replace view TRNG_TelcoChurn.TIMEGROUP as locking row for access select
"timegroup"
from gs_tables_db.TRNG_TelcoChurn_TIMEGROUP;
REPLACE VIEW telco_events AS
SELECT customerid as entity_id, tstamp AS datestamp, event as event,
      customerid, category, amount, duration, notes, tstamp, timegroup
FROM csi_telco_data;

