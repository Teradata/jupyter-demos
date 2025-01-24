create database TRNG_FinancialProtection from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_FinancialProtection_consumer_complaints", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-FinancialProtection/consumer-complaints/'));
replace view TRNG_FinancialProtection.consumer_complaints as locking row for access select
"date_received"
,"product"
,"sub_product"
,"issue"
,"sub_issue"
,"consumer_complaint_narrative"
,"company_public_response"
,"company"
,"state"
,"zip_code"
,"tags"
,"consumer_consent_provided"
,"submitted_via"
,"date_sent_to_company"
,"company_response_to_consumer"
,"timely_response"
,"consumer_disputed"
,"complaint_id"
from gs_tables_db.TRNG_FinancialProtection_consumer_complaints;
