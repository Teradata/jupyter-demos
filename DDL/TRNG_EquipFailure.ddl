create database TRNG_EquipFailure from demonow as perm=0;
create foreign table gs_tables_db."TRNG_EquipFailure_DEMO_EQUIP_TRAINING_stat_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EquipFailure/DEMO-EQUIP-TRAINING-stat-output/'));
create foreign table gs_tables_db."TRNG_EquipFailure_DEMO_EQUIP_LOGS_text_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EquipFailure/DEMO-EQUIP-LOGS-text-output/'));
create foreign table gs_tables_db."TRNG_EquipFailure_DEMO_EQUIP_EVENTS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EquipFailure/DEMO-EQUIP-EVENTS/'));
create foreign table gs_tables_db."TRNG_EquipFailure_movie_tweets_text_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EquipFailure/movie-tweets-text-output/'));
create foreign table gs_tables_db."TRNG_EquipFailure_DEMO_EQUIP_TRAINING_model_predictions", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EquipFailure/DEMO-EQUIP-TRAINING-model-predictions/'));
create foreign table gs_tables_db."TRNG_EquipFailure_DEMO_EQUIP_TRAINING_monitor", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EquipFailure/DEMO-EQUIP-TRAINING-monitor/'));
create foreign table gs_tables_db."TRNG_EquipFailure_DEMO_EQUIP_TRAINING_count_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EquipFailure/DEMO-EQUIP-TRAINING-count-output/'));
create foreign table gs_tables_db."TRNG_EquipFailure_DEMO_EQUIP_TRAINING_cluster", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EquipFailure/DEMO-EQUIP-TRAINING-cluster/'));
create foreign table gs_tables_db."TRNG_EquipFailure_DEMO_EQUIP_TESTING", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EquipFailure/DEMO-EQUIP-TESTING/'));
create foreign table gs_tables_db."TRNG_EquipFailure_DEMO_EQUIP_TRAINING_acc_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EquipFailure/DEMO-EQUIP-TRAINING-acc-output/'));
create foreign table gs_tables_db."TRNG_EquipFailure_DEMO_EQUIP_TRAINING", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EquipFailure/DEMO-EQUIP-TRAINING/'));
create foreign table gs_tables_db."TRNG_EquipFailure_DEMO_EQUIP_LOGS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EquipFailure/DEMO-EQUIP-LOGS/'));
replace view TRNG_EquipFailure.DEMO_EQUIP_EVENTS as locking row for access select
"entity_id"
,"datestamp"
,"event"
from gs_tables_db.TRNG_EquipFailure_DEMO_EQUIP_EVENTS;
replace view TRNG_EquipFailure.DEMO_EQUIP_LOGS as locking row for access select
"equipment_id"
,"service_date"
,"model"
,"description"
from gs_tables_db.TRNG_EquipFailure_DEMO_EQUIP_LOGS;
replace view TRNG_EquipFailure.DEMO_EQUIP_LOGS_text_output as locking row for access select
"text"
,"frequency"
from gs_tables_db.TRNG_EquipFailure_DEMO_EQUIP_LOGS_text_output;
replace view TRNG_EquipFailure.DEMO_EQUIP_TESTING as locking row for access select
"equipment_id"
,"model_name"
,"age_days"
,"onsite_days"
,"last_repair_cd"
,"days_since_last_repair"
,"operating_days"
,"operating_hours"
,"equip_work_cycles"
,"cnt_pump_threshold_events"
,"cnt_repair_events"
,"cnt_load_threshold_events"
,"breakdown_next_30_ind"
from gs_tables_db.TRNG_EquipFailure_DEMO_EQUIP_TESTING;
replace view TRNG_EquipFailure.DEMO_EQUIP_TRAINING as locking row for access select
"equipment_id"
,"model_name"
,"age_days"
,"onsite_days"
,"last_repair_cd"
,"days_since_last_repair"
,"operating_days"
,"operating_hours"
,"equip_work_cycles"
,"cnt_pump_threshold_events"
,"cnt_repair_events"
,"cnt_load_threshold_events"
,"breakdown_next_30_ind"
from gs_tables_db.TRNG_EquipFailure_DEMO_EQUIP_TRAINING;
replace view TRNG_EquipFailure.DEMO_EQUIP_TRAINING_acc_output as locking row for access select
"measure"
,"0"
,"1"
from gs_tables_db.TRNG_EquipFailure_DEMO_EQUIP_TRAINING_acc_output;
replace view TRNG_EquipFailure.DEMO_EQUIP_TRAINING_cluster as locking row for access select
"equipment_id"
,"clusterid"
from gs_tables_db.TRNG_EquipFailure_DEMO_EQUIP_TRAINING_cluster;
replace view TRNG_EquipFailure.DEMO_EQUIP_TRAINING_count_output as locking row for access select
"observation"
,"0"
,"1"
from gs_tables_db.TRNG_EquipFailure_DEMO_EQUIP_TRAINING_count_output;
replace view TRNG_EquipFailure.DEMO_EQUIP_TRAINING_model_predictions as locking row for access select
"breakdown_next_30_ind"
,"equipment_id"
,"prediction"
,"confidence_lower"
,"confidence_upper"
,"score"
from gs_tables_db.TRNG_EquipFailure_DEMO_EQUIP_TRAINING_model_predictions;
replace view TRNG_EquipFailure.DEMO_EQUIP_TRAINING_monitor as locking row for access select
"message"
from gs_tables_db.TRNG_EquipFailure_DEMO_EQUIP_TRAINING_monitor;
replace view TRNG_EquipFailure.DEMO_EQUIP_TRAINING_stat_output as locking row for access select
"key"
,"value"
from gs_tables_db.TRNG_EquipFailure_DEMO_EQUIP_TRAINING_stat_output;
replace view TRNG_EquipFailure.movie_tweets_text_output as locking row for access select
"equipment_id"
,"out_polarity"
,"sentiment_words"
,"inTotal"
,"pos"
,"neg"
,"score"
from gs_tables_db.TRNG_EquipFailure_movie_tweets_text_output;
