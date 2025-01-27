create database TRNG_FinancialProtection_db from dbc as perm=800*1024**2;

CREATE MULTISET TABLE TRNG_FinancialProtection_db.consumer_complaints
( date_received DATE FORMAT 'mm/dd/yyyy', product VARCHAR(76) CHARACTER SET LATIN NOT CASESPECIFIC,
	sub_product VARCHAR(42) CHARACTER SET LATIN NOT CASESPECIFIC,
	issue VARCHAR(80) CHARACTER SET LATIN NOT CASESPECIFIC, sub_issue VARCHAR(80) CHARACTER SET LATIN NOT CASESPECIFIC,
	consumer_complaint_narrative VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC,
	company_public_response VARCHAR(119) CHARACTER SET LATIN NOT CASESPECIFIC,
	company VARCHAR(46) CHARACTER SET LATIN NOT CASESPECIFIC, state VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
	zip_code VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC, tags VARCHAR(29) CHARACTER SET LATIN NOT CASESPECIFIC,
	consumer_consent_provided VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
	submitted_via VARCHAR(11) CHARACTER SET LATIN NOT CASESPECIFIC,
	date_sent_to_company DATE FORMAT 'mm/dd/yyyy', company_response_to_consumer VARCHAR(31) CHARACTER SET LATIN NOT CASESPECIFIC,
	timely_response VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC,
	consumer_disputed VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC,
	complaint_id INTEGER) 
PRIMARY AMP INDEX (date_received) partition by column ;

delete TRNG_FinancialProtection_db.consumer_complaints;
insert into TRNG_FinancialProtection_db.consumer_complaints
select
date_received,
product,
sub_product,
issue,
sub_issue,
consumer_complaint_narrative,
company_public_response,
company,
state,
zip_code,
tags,
consumer_consent_provided,
submitted_via,
date_sent_to_company,
company_response_to_consumer,
timely_response,
consumer_disputed,
complaint_id
from 
gs_tables_db."TRNG_FinancialProtection_consumer_complaints";

replace view TRNG_FinancialProtection.consumer_complaints as locking row for access select * from  "TRNG_FinancialProtection_db"."consumer_complaints";
