create database TRNG_FSCustomerJourney from demonow as perm=0;
create foreign table gs_tables_db."TRNG_FSCustomerJourney_churn_predict_pivot", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/churn-predict-pivot/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_churn_predict_pivot_final", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/churn-predict-pivot-final/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_unknown_token", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-unknown-token/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_unknown_paths", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-unknown-paths/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_nonchurn_tf1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-nonchurn-tf1/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_churn_tfidf", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-churn-tfidf/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_nonchurner_paths", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-nonchurner-paths/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_churner_paths", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-churner-paths/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_MODEL1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/MODEL1/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_churn_model", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-churn-model/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_customertype", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/customertype/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_events", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/events/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_nonchurn_paths_token", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-nonchurn-paths-token/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_churn_tf1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-churn-tf1/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_customers", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/customers/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_nonchurn_paths_token_train_clean", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-nonchurn-paths-token-train-clean/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_churn_nb_input", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/churn-nb-input/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_nonchurn_tfidf_input1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-nonchurn-tfidf-input1/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_tfidf_slope", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-tfidf-slope/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_churn_paths_token_clean", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-churn-paths-token-clean/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_churn_paths_token", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-churn-paths-token/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_churn_tfidf_input1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-churn-tfidf-input1/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_complaints", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/complaints/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_churn_predict", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/churn-predict/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_nonchurn_paths_train_token", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-nonchurn-paths-train-token/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_nonchurn_tfidf", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-nonchurn-tfidf/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ConversionEventTable", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ConversionEventTable/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_product_cat_affinity", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/product-cat-affinity/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_unknown_token_clean", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-unknown-token-clean/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_events2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/events2/'));
create foreign table gs_tables_db."TRNG_FSCustomerJourney_ich_banking_nonchurn_paths_token_clean", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FSCustomerJourney/ich-banking-nonchurn-paths-token-clean/'));
replace view TRNG_FSCustomerJourney.churn_nb_input as locking row for access select
"customer_identifier"
,"interaction_type_list"
from gs_tables_db.TRNG_FSCustomerJourney_churn_nb_input;
replace view TRNG_FSCustomerJourney.churn_predict as locking row for access select
"customer_identifier"
,"prediction"
,"loglik"
from gs_tables_db.TRNG_FSCustomerJourney_churn_predict;
replace view TRNG_FSCustomerJourney.churn_predict_pivot as locking row for access select
"customer_identifier"
,"loglik_0"
,"loglik_1"
from gs_tables_db.TRNG_FSCustomerJourney_churn_predict_pivot;
replace view TRNG_FSCustomerJourney.churn_predict_pivot_final as locking row for access select
"doc_id"
,"prediction"
,"loglik_no_churn"
,"loglik_churn"
from gs_tables_db.TRNG_FSCustomerJourney_churn_predict_pivot_final;
replace view TRNG_FSCustomerJourney.complaints as locking row for access select
"id"
,"complaint"
from gs_tables_db.TRNG_FSCustomerJourney_complaints;
replace view TRNG_FSCustomerJourney.ConversionEventTable as locking row for access select
"conversion_event"
from gs_tables_db.TRNG_FSCustomerJourney_ConversionEventTable;
replace view TRNG_FSCustomerJourney.customers as locking row for access select
"id"
,"customer_identifier"
,"firstname"
,"lastname"
,"email"
,"phone"
,"birthday"
,"streetaddress"
,"city"
,"state"
,"zipcode"
,"latitude"
,"longitude"
,"num_accounts"
from gs_tables_db.TRNG_FSCustomerJourney_customers;
replace view TRNG_FSCustomerJourney.customertype as locking row for access select
"customer_type"
from gs_tables_db.TRNG_FSCustomerJourney_customertype;
replace view TRNG_FSCustomerJourney.events as locking row for access select
"event"
from gs_tables_db.TRNG_FSCustomerJourney_events;
replace view TRNG_FSCustomerJourney.events2 as locking row for access select
"event"
from gs_tables_db.TRNG_FSCustomerJourney_events2;
replace view TRNG_FSCustomerJourney.ich_banking as locking row for access select
"customer_skey"
,"customer_identifier"
,"customer_cookie"
,"customer_online_id"
,"customer_offline_id"
,"customer_type"
,"customer_days_active"
,"interaction_session_number"
,"interaction_timestamp"
,"interaction_source"
,"interaction_type"
,"sales_channel"
,"conversion_id"
,"product_category"
,"product_type"
,"conversion_sales"
,"conversion_cost"
,"conversion_margin"
,"conversion_units"
,"marketing_code"
,"marketing_category"
,"marketing_description"
,"marketing_placement"
,"mobile_flag"
,"updt"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking;
replace view TRNG_FSCustomerJourney.ich_banking_churner_paths as locking row for access select
"interaction_type_list"
,"click_depth"
,"customer_identifier"
,"product_category"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_churner_paths;
replace view TRNG_FSCustomerJourney.ich_banking_churn_model as locking row for access select
"token"
,"category"
,"prob"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_churn_model;
replace view TRNG_FSCustomerJourney.ich_banking_churn_paths_token as locking row for access select
"customer_identifier"
,"ngram"
,"n"
,"frequency"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_churn_paths_token;
replace view TRNG_FSCustomerJourney.ich_banking_churn_paths_token_clean as locking row for access select
"ngram"
,"customer_identifier"
,"n"
,"frequency"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_churn_paths_token_clean;
replace view TRNG_FSCustomerJourney.ich_banking_churn_tf1 as locking row for access select
"docid"
,"term"
,"tf"
,"count"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_churn_tf1;
replace view TRNG_FSCustomerJourney.ich_banking_churn_tfidf as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_churn_tfidf;
replace view TRNG_FSCustomerJourney.ich_banking_churn_tfidf_input1 as locking row for access select
"docid"
,"term"
,"count"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_churn_tfidf_input1;
replace view TRNG_FSCustomerJourney.ich_banking_nonchurner_paths as locking row for access select
"interaction_type_list"
,"click_depth"
,"customer_identifier"
,"product_category"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_nonchurner_paths;
replace view TRNG_FSCustomerJourney.ich_banking_nonchurn_paths_token as locking row for access select
"customer_identifier"
,"ngram"
,"n"
,"frequency"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_nonchurn_paths_token;
replace view TRNG_FSCustomerJourney.ich_banking_nonchurn_paths_token_clean as locking row for access select
"ngram"
,"customer_identifier"
,"n"
,"frequency"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_nonchurn_paths_token_clean;
replace view TRNG_FSCustomerJourney.ich_banking_nonchurn_paths_token_train_clean as locking row for access select
"ngram"
,"customer_identifier"
,"n"
,"frequency"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_nonchurn_paths_token_train_clean;
replace view TRNG_FSCustomerJourney.ich_banking_nonchurn_paths_train_token as locking row for access select
"customer_identifier"
,"ngram"
,"n"
,"frequency"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_nonchurn_paths_train_token;
replace view TRNG_FSCustomerJourney.ich_banking_nonchurn_tf1 as locking row for access select
"docid"
,"term"
,"tf"
,"count"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_nonchurn_tf1;
replace view TRNG_FSCustomerJourney.ich_banking_nonchurn_tfidf as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_nonchurn_tfidf;
replace view TRNG_FSCustomerJourney.ich_banking_nonchurn_tfidf_input1 as locking row for access select
"docid"
,"term"
,"count"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_nonchurn_tfidf_input1;
replace view TRNG_FSCustomerJourney.ich_banking_tfidf_slope as locking row for access select
"term"
,"grp"
,"sum_rank"
,"sum_tfidf"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_tfidf_slope;
replace view TRNG_FSCustomerJourney.ich_banking_unknown_paths as locking row for access select
"interaction_type_list"
,"click_depth"
,"customer_identifier"
,"product_category"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_unknown_paths;
replace view TRNG_FSCustomerJourney.ich_banking_unknown_token as locking row for access select
"customer_identifier"
,"ngram"
,"n"
,"frequency"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_unknown_token;
replace view TRNG_FSCustomerJourney.ich_banking_unknown_token_clean as locking row for access select
"ngram"
,"customer_identifier"
,"n"
,"frequency"
from gs_tables_db.TRNG_FSCustomerJourney_ich_banking_unknown_token_clean;
replace view TRNG_FSCustomerJourney.MODEL1 as locking row for access select
"ID"
,"MODEL"
from gs_tables_db.TRNG_FSCustomerJourney_MODEL1;
replace view TRNG_FSCustomerJourney.product_cat_affinity as locking row for access select
"col1_item1"
,"col1_item2"
,"cntb"
,"cnt1"
,"cnt2"
,"score"
,"support"
,"confidence"
,"lift"
,"z_score"
from gs_tables_db.TRNG_FSCustomerJourney_product_cat_affinity;
