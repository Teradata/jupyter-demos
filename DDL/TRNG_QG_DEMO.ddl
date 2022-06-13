create database TRNG_QG_DEMO from demonow as perm=0;
create foreign table gs_tables_db."TRNG_QG_DEMO_customer", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/customer/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_macheye_customer_accounts", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/macheye-customer-accounts/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_macheye_customer", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/macheye-customer/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_macheye_retail_store", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/macheye-retail-store/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_RETAIL_PRODUCT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/RETAIL-PRODUCT/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_macheye_employee", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/macheye-employee/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_telco_store", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/telco-store/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_macheye_trans", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/macheye-trans/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_macheye_emp_phone", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/macheye-emp-phone/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_macheye_retail_product", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/macheye-retail-product/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_telco_callcenter", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/telco-callcenter/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_RETAIL_STORE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/RETAIL-STORE/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_macheye_retail_customer", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/macheye-retail-customer/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_macheye_orders", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/macheye-orders/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_accounts", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/accounts/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_macheye_department", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/macheye-department/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_RETAIL_TRANSACTIONS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/RETAIL-TRANSACTIONS/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_macheye_customer_accounts_reference", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/macheye-customer-accounts-reference/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_macheye_job", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/macheye-job/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_telco_online", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/telco-online/'));
create foreign table gs_tables_db."TRNG_QG_DEMO_RETAIL_CUSTOMER", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-QG-DEMO/RETAIL-CUSTOMER/'));
replace view TRNG_QG_DEMO.accounts as locking row for access select
"acct_nbr"
,"cust_id"
,"acct_type"
,"account_active"
,"acct_start_date"
,"acct_end_date"
,"starting_balance"
,"ending_balance"
from gs_tables_db.TRNG_QG_DEMO_accounts;
replace view TRNG_QG_DEMO.customer as locking row for access select
"cust_id"
,"income"
,"age"
,"years_with_bank"
,"nbr_children"
,"gender"
,"marital_status"
,"name_prefix"
,"first_name"
,"last_name"
,"street_nbr"
,"street_name"
,"postal_code"
,"city_name"
,"state_code"
from gs_tables_db.TRNG_QG_DEMO_customer;
replace view TRNG_QG_DEMO.macheye_customer as locking row for access select
"Customer_Number"
,"Last_Name"
,"First_Name"
,"Social_Security"
from gs_tables_db.TRNG_QG_DEMO_macheye_customer;
replace view TRNG_QG_DEMO.macheye_customer_accounts as locking row for access select
"Account_Number"
,"Street_Number"
,"Street"
,"City"
,"State"
,"Zip_Code"
,"Balance_Forward"
,"Balance_Current"
from gs_tables_db.TRNG_QG_DEMO_macheye_customer_accounts;
replace view TRNG_QG_DEMO.macheye_customer_accounts_reference as locking row for access select
"Customer_Number"
,"Account_Number"
,"custid"
from gs_tables_db.TRNG_QG_DEMO_macheye_customer_accounts_reference;
replace view TRNG_QG_DEMO.macheye_department as locking row for access select
"Dept_Number"
,"Dept_Name"
,"Dept_Mgr_Number"
,"Budget_Amount"
from gs_tables_db.TRNG_QG_DEMO_macheye_department;
replace view TRNG_QG_DEMO.macheye_employee as locking row for access select
"Employee_Number"
,"Dept_Number"
,"Emp_Mgr_Number"
,"Job_Code"
,"Last_Name"
,"First_Name"
,"Salary_Amount"
from gs_tables_db.TRNG_QG_DEMO_macheye_employee;
replace view TRNG_QG_DEMO.macheye_emp_phone as locking row for access select
"Employee_Number"
,"Area_Code"
,"Phone_Number"
,"Extension"
from gs_tables_db.TRNG_QG_DEMO_macheye_emp_phone;
replace view TRNG_QG_DEMO.macheye_job as locking row for access select
"Job_Code"
,"Job_Desc"
from gs_tables_db.TRNG_QG_DEMO_macheye_job;
replace view TRNG_QG_DEMO.macheye_orders as locking row for access select
"orderid"
,"custid"
,"orderstatus"
,"totalprice"
,"orderdate"
,"orderpriority"
,"clerk"
,"location"
,"shippriority"
,"ordercomment"
from gs_tables_db.TRNG_QG_DEMO_macheye_orders;
replace view TRNG_QG_DEMO.macheye_retail_customer as locking row for access select
"id"
,"age"
,"gender"
,"name"
from gs_tables_db.TRNG_QG_DEMO_macheye_retail_customer;
replace view TRNG_QG_DEMO.macheye_retail_product as locking row for access select
"id"
,"productcategory"
,"productcost"
,"productname"
,"recomsaleprice"
,"servingsize"
from gs_tables_db.TRNG_QG_DEMO_macheye_retail_product;
replace view TRNG_QG_DEMO.macheye_retail_store as locking row for access select
"id"
,"brand"
,"capacity"
,"city"
,"country"
,"district"
,"latitude"
,"longitude"
,"outletdesign"
,"outlettype"
,"ownership_type"
,"phonenumber"
,"state"
,"store_name"
,"store_number"
,"steet_address"
,"territory"
,"timezone"
,"zipcode"
,"state_name"
,"county"
from gs_tables_db.TRNG_QG_DEMO_macheye_retail_store;
replace view TRNG_QG_DEMO.macheye_trans as locking row for access select
"Trans_Number"
,"Trans_Date"
,"Account_Number"
,"Trans_ID"
,"Trans_Amount"
from gs_tables_db.TRNG_QG_DEMO_macheye_trans;
replace view TRNG_QG_DEMO.RETAIL_CUSTOMER as locking row for access select
"ID"
,"AGE"
,"GENDER"
,"NAME"
from gs_tables_db.TRNG_QG_DEMO_RETAIL_CUSTOMER;
replace view TRNG_QG_DEMO.RETAIL_PRODUCT as locking row for access select
"ID"
,"PRODUCTCATEGORY"
,"PRODUCTCOST"
,"PRODUCTNAME"
,"RECOMSALEPRICE"
,"SERVINGSIZE"
from gs_tables_db.TRNG_QG_DEMO_RETAIL_PRODUCT;
replace view TRNG_QG_DEMO.RETAIL_STORE as locking row for access select
"ID"
,"BRAND"
,"CAPACITY"
,"CITY"
,"COUNTRY"
,"DISTRICT"
,"LATITUDE"
,"LONGITUDE"
,"OUTLETDESIGN"
,"OUTLETTYPE"
,"OWNERSHIP_TYPE"
,"PHONENUMBER"
,"STATE"
,"STORE_NAME"
,"STORE_NUMBER"
,"STEET_ADDRESS"
,"TERRITORY"
,"TIMEZONE"
,"ZIPCODE"
,"STATE_NAME"
,"COUNTY"
from gs_tables_db.TRNG_QG_DEMO_RETAIL_STORE;
replace view TRNG_QG_DEMO.RETAIL_TRANSACTIONS as locking row for access select
"ID"
,"COUPONCODE"
,"COUPONTYPE"
,"CREATED_AT"
,"CUSTOMERNAME"
,"CUSTOMERREVIEW"
,"GROSSMARGIN"
,"ORDERTYPE"
,"PAYMENTTYPE"
,"AMOUNT"
,"SERVINGTIME"
,"TXNID"
,"PRODUCT_ID"
,"STORE_ID"
,"CUSTOMER_ID"
from gs_tables_db.TRNG_QG_DEMO_RETAIL_TRANSACTIONS;
replace view TRNG_QG_DEMO.telco_callcenter as locking row for access select
"customer_id"
,"session_id"
,"channel"
,"action"
,"datestamp"
from gs_tables_db.TRNG_QG_DEMO_telco_callcenter;
replace view TRNG_QG_DEMO.telco_online as locking row for access select
"customer_id"
,"session_id"
,"channel"
,"action"
,"datestamp"
from gs_tables_db.TRNG_QG_DEMO_telco_online;
replace view TRNG_QG_DEMO.telco_store as locking row for access select
"customer_id"
,"sessionid"
,"channel"
,"action"
,"datestamp"
from gs_tables_db.TRNG_QG_DEMO_telco_store;
