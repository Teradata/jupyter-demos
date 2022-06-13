create database TRNG_AP from demonow as perm=0;
create foreign table gs_tables_db."TRNG_AP_Customer", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AP/Customer/'));
create foreign table gs_tables_db."TRNG_AP_Trans", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AP/Trans/'));
create foreign table gs_tables_db."TRNG_AP_Accounts", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AP/Accounts/'));
replace view TRNG_AP.Accounts as locking row for access select
"Account_Number"
,"Street_Number"
,"Street"
,"City"
,"State"
,"Zip_Code"
,"Balance_Forward"
,"Balance_Current"
from gs_tables_db.TRNG_AP_Accounts;
replace view TRNG_AP.Customer as locking row for access select
"Customer_Number"
,"Last_Name"
,"First_Name"
,"Social_Security"
from gs_tables_db.TRNG_AP_Customer;
replace view TRNG_AP.Trans as locking row for access select
"Trans_Number"
,"Trans_Date"
,"Account_Number"
,"Trans_ID"
,"Trans_Amount"
from gs_tables_db.TRNG_AP_Trans;
REPLACE MACRO TRNG_AP.Sel_Acct200_m AS (
SELECT Account_Number
       ,Street_Number
       ,Street
       ,City
       ,State
       ,Zip_Code
       ,Balance_Forward
       ,0.99    (DECIMAL (10,2))
  FROM  TRNG_AP.Accounts
  WHERE Account_Number < 20024101
;SELECT Account_Number
       ,Street_Number
       ,Street
       ,City
       ,State
       ,Zip_Code
       ,Balance_Forward
       ,Balance_Current
  FROM  TRNG_AP.Accounts
  WHERE Account_Number BETWEEN 20024101 AND 20024200
; );

REPLACE MACRO TRNG_AP.Sel_Cust3K_m AS (
SELECT
      Customer_Number
     ,Last_Name
     ,First_Name
     ,Social_Security
     FROM TRNG_AP.Customer
     WHERE Customer_Number BETWEEN 6001 AND 9000
; );

REPLACE MACRO TRNG_AP.Sel_Cust4K_m AS (
SELECT
      Customer_Number
     ,Last_Name
     ,First_Name
     ,Social_security
     FROM TRNG_AP.Customer
     WHERE Customer_Number < 6001
; );

REPLACE MACRO TRNG_AP.Sel_Cust7K_m AS (
SELECT
      Customer_Number
     ,Last_Name
     ,First_Name
     ,Social_security
     FROM TRNG_AP.Customer
; );

