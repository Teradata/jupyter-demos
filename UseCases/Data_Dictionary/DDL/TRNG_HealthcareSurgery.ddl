create database TRNG_HealthcareSurgery from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_HealthcareSurgery_healthcare_sample_recordid", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HealthcareSurgery/healthcare-sample-recordid/'));
create foreign table gs_tables_db."TRNG_HealthcareSurgery_surgery_events_model", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HealthcareSurgery/surgery-events-model/'));
create foreign table gs_tables_db."TRNG_HealthcareSurgery_healthcare_modularity", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HealthcareSurgery/healthcare-modularity/'));
create foreign table gs_tables_db."TRNG_HealthcareSurgery_healthcare_all_paths_tfidf_input", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HealthcareSurgery/healthcare-all-paths-tfidf-input/'));
create foreign table gs_tables_db."TRNG_HealthcareSurgery_healthcare_all_paths", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HealthcareSurgery/healthcare-all-paths/'));
create foreign table gs_tables_db."TRNG_HealthcareSurgery_healthcare_all_paths_token", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HealthcareSurgery/healthcare-all-paths-token/'));
create foreign table gs_tables_db."TRNG_HealthcareSurgery_healthcare_all_paths_tf", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HealthcareSurgery/healthcare-all-paths-tf/'));
create foreign table gs_tables_db."TRNG_HealthcareSurgery_healthcare_all_paths_tfidf", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HealthcareSurgery/healthcare-all-paths-tfidf/'));
create foreign table gs_tables_db."TRNG_HealthcareSurgery_healthcarecfilter", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HealthcareSurgery/healthcarecfilter/'));
create foreign table gs_tables_db."TRNG_HealthcareSurgery_surgery_events_cluster", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HealthcareSurgery/surgery-events-cluster/'));
create foreign table gs_tables_db."TRNG_HealthcareSurgery_healthcare_surgery_events", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HealthcareSurgery/healthcare-surgery-events/'));
create foreign table gs_tables_db."TRNG_HealthcareSurgery_healthcare_all_paths_token_clean", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HealthcareSurgery/healthcare-all-paths-token-clean/'));
replace view TRNG_HealthcareSurgery.healthcarecfilter as locking row for access select
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
from gs_tables_db.TRNG_HealthcareSurgery_healthcarecfilter;
replace view TRNG_HealthcareSurgery.healthcare_all_paths as locking row for access select
"record_id"
,"path"
from gs_tables_db.TRNG_HealthcareSurgery_healthcare_all_paths;
replace view TRNG_HealthcareSurgery.healthcare_all_paths_tf as locking row for access select
"docid"
,"term"
,"tf"
,"count"
from gs_tables_db.TRNG_HealthcareSurgery_healthcare_all_paths_tf;
replace view TRNG_HealthcareSurgery.healthcare_all_paths_tfidf as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_HealthcareSurgery_healthcare_all_paths_tfidf;
replace view TRNG_HealthcareSurgery.healthcare_all_paths_tfidf_input as locking row for access select
"docid"
,"term"
,"count"
from gs_tables_db.TRNG_HealthcareSurgery_healthcare_all_paths_tfidf_input;
replace view TRNG_HealthcareSurgery.healthcare_all_paths_token as locking row for access select
"record_id"
,"ngram"
,"n"
,"frequency"
from gs_tables_db.TRNG_HealthcareSurgery_healthcare_all_paths_token;
replace view TRNG_HealthcareSurgery.healthcare_all_paths_token_clean as locking row for access select
"ngram"
,"record_id"
,"n"
,"frequency"
from gs_tables_db.TRNG_HealthcareSurgery_healthcare_all_paths_token_clean;
replace view TRNG_HealthcareSurgery.healthcare_modularity as locking row for access select
"src_community_id"
,"target_community_id"
,"resolution"
,"weight"
from gs_tables_db.TRNG_HealthcareSurgery_healthcare_modularity;
replace view TRNG_HealthcareSurgery.healthcare_sample_recordid as locking row for access select
"docid"
from gs_tables_db.TRNG_HealthcareSurgery_healthcare_sample_recordid;
replace view TRNG_HealthcareSurgery.healthcare_surgery_events as locking row for access select
"record_id"
,"type_of_admission"
,"admitting_diagnosis"
,"diagnosis"
,"codenum"
,"icd9"
,"procedure_desc"
,"daynum"
,"rn"
from gs_tables_db.TRNG_HealthcareSurgery_healthcare_surgery_events;
replace view TRNG_HealthcareSurgery.surgery_events_cluster as locking row for access select
"cluster_id"
,"record_id"
from gs_tables_db.TRNG_HealthcareSurgery_surgery_events_cluster;
replace view TRNG_HealthcareSurgery.surgery_events_model as locking row for access select
"set_id"
,"cluster_id"
,"codenum"
,"icd9"
,"type_of_admission"
,"within_cluster_ss"
,"cluster_weight"
,"distance_metric"
,"category_weights"
from gs_tables_db.TRNG_HealthcareSurgery_surgery_events_model;
REPLACE VIEW diagnosis_events AS
SELECT record_id as entity_id, CURRENT_DATE + daynum AS datestamp, diagnosis as event,
record_id, type_of_admission, admitting_diagnosis, diagnosis, codenum, icd9, procedure_desc, daynum, rn
FROM healthcare_surgery_events;

REPLACE VIEW surgery_events AS
SELECT record_id as entity_id, CURRENT_DATE + daynum AS datestamp, procedure_desc as event,
record_id, type_of_admission, admitting_diagnosis, diagnosis, codenum, icd9, procedure_desc, daynum, rn
FROM healthcare_surgery_events;

