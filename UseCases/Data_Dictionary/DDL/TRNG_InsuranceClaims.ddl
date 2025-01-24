create database TRNG_InsuranceClaims from demo_user as perm=0;
create database TRNG_InsuranceClaims_DB from demo_user as perm=2000000;
Grant all on TRNG_InsuranceClaims to demo_user with grant option;
Grant all on TRNG_InsuranceClaims_DB to demo_user with grant option;
Grant all on TRNG_InsuranceClaims_DB to TRNG_InsuranceClaims with grant option;
COMMENT ON TRNG_InsuranceClaims AS 'created for demonow:TRNG_InsuranceClaims';
COMMENT ON TRNG_InsuranceClaims_DB AS 'created for demonow:TRNG_InsuranceClaims';
create foreign table gs_tables_db.TRNG_InsuranceClaims_PolicyDet_org, external security gs_tables_db.auth 
using (location('/gs/storage.googleapis.com/demonow_development/DEMO_InsuranceClaims/'));
COMMENT ON gs_tables_db.TRNG_InsuranceClaims_PolicyDet_org AS 'created for demonow:TRNG_InsuranceClaims';
CREATE MULTISET TABLE TRNG_InsuranceClaims_DB.TRNG_InsuranceClaims_Policy_Det(
Policy_ID INTEGER,
Customer_ID INTEGER,
Policy_State CHAR(2) NOT NULL,
Policy_premium_Amt INTEGER,
auto_make Varchar(20),
auto_model Varchar(30),
Policy_Validity PERIOD(DATE) NOT NULL AS VALIDTIME
)PRIMARY INDEX(Policy_ID);
COMMENT ON TRNG_InsuranceClaims_DB.TRNG_InsuranceClaims_Policy_Det AS 'created for demonow:TRNG_InsuranceClaims';
Insert into TRNG_InsuranceClaims_DB.TRNG_InsuranceClaims_Policy_Det
Select
Policy_ID ,
Customer_ID,
Policy_state ,
Policy_premium_Amt ,
auto_make ,
auto_model ,
PERIOD(policy_start_date, policy_end_date)
FROM gs_tables_db.TRNG_InsuranceClaims_PolicyDet_org;
Create multiset table TRNG_InsuranceClaims_DB.TRNG_InsuranceClaims_Details 
(Policy_id INTEGER,
Claim_id INTEGER,
Incident_date date,
claim_date date, 
Claim_amount INTEGER
)PRIMARY INDEX (Policy_id);
COMMENT ON TRNG_InsuranceClaims_DB.TRNG_InsuranceClaims_Details AS 'created for demonow:TRNG_InsuranceClaims';
Insert into TRNG_InsuranceClaims_DB.TRNG_InsuranceClaims_Details  (Policy_id,Claim_id,Incident_date,claim_date,Claim_amount)
Select Top 200 
Policy_ID ,
Random(10000, 90000) , 
BEGIN(Policy_Validity) + Random(-5, 20), 
END(Policy_Validity) + Random(-40, 3),
Random(250,3000) 
from TRNG_InsuranceClaims_DB.TRNG_InsuranceClaims_Policy_Det where BEGIN(Policy_Validity) >= '2010-01-01' and END(policy_Validity) between '2021-01-01' and '2022-12-31';
CREATE MULTISET TABLE TRNG_InsuranceClaims_DB.TRNG_InsuranceClaims_Policy_Bitemp (
Policy_ID INTEGER,
Customer_ID INTEGER,
Policy_State CHAR(2) NOT NULL,
Policy_premium_Amt INTEGER,
auto_make Varchar(20),
auto_model Varchar(30),
Policy_Validity PERIOD(DATE) NOT NULL AS VALIDTIME,
Policy_Duration PERIOD(TIMESTAMP(6) WITH TIME ZONE) NOT NULL
AS TRANSACTIONTIME
)
PRIMARY INDEX (Policy_ID)
PARTITION BY CASE_N(
(END(Policy_Validity) IS NULL OR
END(Policy_Validity) >= CURRENT_DATE AT
INTERVAL -'12:59' HOUR TO MINUTE) AND
END(Policy_Duration) >= CURRENT_TIMESTAMP,
END(Policy_Validity) < CURRENT_DATE AT
INTERVAL -'12:59' HOUR TO MINUTE AND
END(Policy_Duration) >= CURRENT_TIMESTAMP,
END(Policy_Duration) < CURRENT_TIMESTAMP);
COMMENT ON TRNG_InsuranceClaims_DB.TRNG_InsuranceClaims_Policy_Bitemp AS 'created for demonow:TRNG_InsuranceClaims';
Insert into TRNG_InsuranceClaims_DB.TRNG_InsuranceClaims_Policy_Bitemp
Select
Policy_Id ,
Customer_id,
Policy_state ,
Policy_premium_Amt ,
auto_make ,
auto_model ,
PERIOD(Policy_start_date, Policy_end_date),
PERIOD(cast(Policy_start_date as timestamp with time zone), cast(Policy_end_date as timestamp with time zone))    
FROM gs_tables_db.TRNG_InsuranceClaims_PolicyDet_org
where policy_state = 'OH'
and Policy_end_date < current_date;
replace view TRNG_InsuranceClaims.Policy_Details_org as locking row for access 
Select
Policy_ID ,
Customer_ID,
Policy_state ,
Policy_premium_Amt ,
auto_make ,
auto_model ,
policy_start_date, 
policy_end_date
FROM gs_tables_db.TRNG_InsuranceClaims_PolicyDet_org;
COMMENT ON TRNG_InsuranceClaims.Policy_Details_org AS 'created for demonow:TRNG_InsuranceClaims';
replace view TRNG_InsuranceClaims.Policy_Details as 
Sequenced VALIDTIME
Select
Policy_ID ,
Customer_ID,
Policy_state ,
Policy_premium_Amt ,
auto_make ,
auto_model ,
Policy_Validity
from TRNG_InsuranceClaims_DB.TRNG_InsuranceClaims_Policy_Det;
COMMENT ON TRNG_InsuranceClaims.Policy_Details AS 'created for demonow:TRNG_InsuranceClaims';
replace view TRNG_InsuranceClaims.Insurance_Claims_Details as locking row for access 
Select
Policy_id ,
Claim_id ,
Incident_date ,
claim_date , 
Claim_amount
from TRNG_InsuranceClaims_DB.TRNG_InsuranceClaims_Details ;
COMMENT ON TRNG_InsuranceClaims.Insurance_Claims_Details AS 'created for demonow:TRNG_InsuranceClaims';
replace view TRNG_InsuranceClaims.Policy_Bitemp as 
sequenced validtime and sequenced transactiontime 
Select
Policy_ID ,
Customer_ID ,
Policy_State ,
Policy_premium_Amt ,
auto_make ,
auto_model ,
Policy_Validity ,
Policy_Duration 
FROM TRNG_InsuranceClaims_DB.TRNG_InsuranceClaims_Policy_Bitemp;
COMMENT ON TRNG_InsuranceClaims.Policy_Bitemp AS 'created for demonow:TRNG_InsuranceClaims';