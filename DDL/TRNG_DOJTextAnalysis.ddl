create database TRNG_DOJTextAnalysis from demonow as perm=0;
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_moisturizer_reviews_text_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/moisturizer-reviews-text-output/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_enron_email", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/enron-email/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_moisturizer_sentiment", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/moisturizer-sentiment/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_moisturizer_reviews", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/moisturizer-reviews/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_AMZ_FINE_FOOD_REVIEWS3_text_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/AMZ-FINE-FOOD-REVIEWS3-text-output/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_AMZ_FINE_FOOD_REVIEWS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/AMZ-FINE-FOOD-REVIEWS/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_tf_rename", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/tf-rename/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_cyber_events", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/cyber-events/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_tfidf_output1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/tfidf-output1/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_text_parsed", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/text-parsed/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_moisturizer_ngram", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/moisturizer-ngram/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_tf_output1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/tf-output1/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_AMZ_FINE_FOOD_REVIEWS_text_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/AMZ-FINE-FOOD-REVIEWS-text-output/'));
replace view TRNG_DOJTextAnalysis.AMZ_FINE_FOOD_REVIEWS as locking row for access select
"Id"
,"ProductId"
,"UserId"
,"ProfileName"
,"HelpfulnessNumerator"
,"HelpfulnessDenominator"
,"Score"
,"ReviewTime"
,"ReviewSummary"
,"ReviewText"
from gs_tables_db.TRNG_DOJTextAnalysis_AMZ_FINE_FOOD_REVIEWS;
replace view TRNG_DOJTextAnalysis.AMZ_FINE_FOOD_REVIEWS3_text_output as locking row for access select
"Id"
,"out_polarity"
,"sentiment_words"
,"inTotal"
,"pos"
,"neg"
,"score"
from gs_tables_db.TRNG_DOJTextAnalysis_AMZ_FINE_FOOD_REVIEWS3_text_output;
replace view TRNG_DOJTextAnalysis.AMZ_FINE_FOOD_REVIEWS_text_output as locking row for access select
"ProductId"
,"out_polarity"
,"sentiment_words"
,"inTotal"
,"pos"
,"neg"
,"score"
from gs_tables_db.TRNG_DOJTextAnalysis_AMZ_FINE_FOOD_REVIEWS_text_output;
replace view TRNG_DOJTextAnalysis.cyber_events as locking row for access select
"event_date_time"
,"code"
,"codedesc"
from gs_tables_db.TRNG_DOJTextAnalysis_cyber_events;
replace view TRNG_DOJTextAnalysis.enron_email as locking row for access select
"received_date"
,"sender"
,"sender_email_address"
,"recipients"
,"recipients_email_addresses"
,"subject"
,"contents"
,"message_id"
,"sent_date"
,"folder"
,"node_id"
,"received_date_timezone"
,"sent_date_timezone"
,"thread"
,"attachments"
,"input_path"
,"importance"
,"priority"
,"message_size"
,"has_replied"
,"has_forwarded"
,"is_flagged"
,"action_date"
,"action_date_timezone"
,"sender_ip_address"
,"to1"
,"bcc"
,"cc"
,"number_of_attachments"
,"attachment_size"
,"message_type"
,"job_uuid"
from gs_tables_db.TRNG_DOJTextAnalysis_enron_email;
replace view TRNG_DOJTextAnalysis.moisturizer_ngram as locking row for access select
"serial_id"
,"ngram"
,"n"
,"frequency"
from gs_tables_db.TRNG_DOJTextAnalysis_moisturizer_ngram;
replace view TRNG_DOJTextAnalysis.moisturizer_reviews as locking row for access select
"serial_id"
,"orig_id"
,"author"
,"date_entered"
,"title1"
,"score"
,"body"
from gs_tables_db.TRNG_DOJTextAnalysis_moisturizer_reviews;
replace view TRNG_DOJTextAnalysis.moisturizer_reviews_text_output as locking row for access select
"serial_id"
,"out_polarity"
,"sentiment_words"
,"inTotal"
,"pos"
,"neg"
,"score"
from gs_tables_db.TRNG_DOJTextAnalysis_moisturizer_reviews_text_output;
replace view TRNG_DOJTextAnalysis.moisturizer_sentiment as locking row for access select
"path"
from gs_tables_db.TRNG_DOJTextAnalysis_moisturizer_sentiment;
replace view TRNG_DOJTextAnalysis.text_parsed as locking row for access select
"docid"
,"term"
,"tf_idf"
,"tf"
,"idf"
,"token"
,"frequency"
,"location"
from gs_tables_db.TRNG_DOJTextAnalysis_text_parsed;
replace view TRNG_DOJTextAnalysis.tfidf_output1 as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_DOJTextAnalysis_tfidf_output1;
replace view TRNG_DOJTextAnalysis.tf_output1 as locking row for access select
"docid"
,"term"
,"tf"
,"count"
from gs_tables_db.TRNG_DOJTextAnalysis_tf_output1;
replace view TRNG_DOJTextAnalysis.tf_rename as locking row for access select
"docid"
,"term"
,"count"
from gs_tables_db.TRNG_DOJTextAnalysis_tf_rename;
