create database TRNG_TDU_CustomerService from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_TDU_CustomerService_agent_sales", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/agent-sales/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_employee_phone", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/employee-phone/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_location_employee", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/location-employee/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_emp_phone_2010", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/emp-phone-2010/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_location", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/location/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_employee", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/employee/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_daily_sales", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/daily-sales/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_country_sales", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/country-sales/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_customer", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/customer/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_department", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/department/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_Jan_sales", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/Jan-sales/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_Accounts", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/Accounts/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_contact", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/contact/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_daily_sales_2014", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/daily-sales-2014/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_location_phone", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/location-phone/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_job", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/job/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_Repair_time", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/Repair-time/'));
create foreign table gs_tables_db."TRNG_TDU_CustomerService_salestbl", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-CustomerService/salestbl/'));
replace view TRNG_TDU_CustomerService.Accounts as locking row for access select
"ACCOUNT_NUMBER"
,"STREET_NUMBER"
,"STREET"
,"CITY"
,"STATE"
,"ZIP_CODE"
,"BALANCE_FORWARD"
,"BALANCE_CURRENT"
from gs_tables_db.TRNG_TDU_CustomerService_Accounts;
replace view TRNG_TDU_CustomerService.agent_sales as locking row for access select
"agent_id"
,"sales_amt"
from gs_tables_db.TRNG_TDU_CustomerService_agent_sales;
replace view TRNG_TDU_CustomerService.contact as locking row for access select
"contact_number"
,"contact_name"
,"area_code"
,"phone"
,"extension"
,"last_call_date"
from gs_tables_db.TRNG_TDU_CustomerService_contact;
replace view TRNG_TDU_CustomerService.country_sales as locking row for access select
"country"
,"yr"
,"quarter"
,"sales"
from gs_tables_db.TRNG_TDU_CustomerService_country_sales;
replace view TRNG_TDU_CustomerService.customer as locking row for access select
"customer_number"
,"customer_name"
,"parent_customer_number"
,"sales_employee_number"
from gs_tables_db.TRNG_TDU_CustomerService_customer;
replace view TRNG_TDU_CustomerService.daily_sales as locking row for access select
"itemid"
,"salesdate"
,"sales"
from gs_tables_db.TRNG_TDU_CustomerService_daily_sales;
replace view TRNG_TDU_CustomerService.daily_sales_2014 as locking row for access select
"itemid"
,"salesdate"
,"sales"
from gs_tables_db.TRNG_TDU_CustomerService_daily_sales_2014;
replace view TRNG_TDU_CustomerService.department as locking row for access select
"department_number"
,"department_name"
,"budget_amount"
,"manager_employee_number"
from gs_tables_db.TRNG_TDU_CustomerService_department;
replace view TRNG_TDU_CustomerService.employee as locking row for access select
"employee_number"
,"manager_employee_number"
,"department_number"
,"job_code"
,"last_name"
,"first_name"
,"hire_date"
,"birthdate"
,"salary_amount"
from gs_tables_db.TRNG_TDU_CustomerService_employee;
replace view TRNG_TDU_CustomerService.employee_phone as locking row for access select
"employee_number"
,"area_code"
,"phone"
,"extension"
,"comment_line"
from gs_tables_db.TRNG_TDU_CustomerService_employee_phone;
replace view TRNG_TDU_CustomerService.emp_phone_2010 as locking row for access select
"Employee_Number"
,"Area_Code"
,"Phone_Number"
,"Extension"
from gs_tables_db.TRNG_TDU_CustomerService_emp_phone_2010;
replace view TRNG_TDU_CustomerService.Jan_sales as locking row for access select
"itemid"
,"salesdate"
,"sales"
from gs_tables_db.TRNG_TDU_CustomerService_Jan_sales;
replace view TRNG_TDU_CustomerService.job as locking row for access select
"job_code"
,"description"
,"hourly_billing_rate"
,"hourly_cost_rate"
from gs_tables_db.TRNG_TDU_CustomerService_job;
replace view TRNG_TDU_CustomerService.location as locking row for access select
"location_number"
,"customer_number"
,"first_address_line"
,"city"
,"state"
,"zip_code"
,"second_address_line"
,"third_address_line"
from gs_tables_db.TRNG_TDU_CustomerService_location;
replace view TRNG_TDU_CustomerService.location_employee as locking row for access select
"location_number"
,"employee_number"
from gs_tables_db.TRNG_TDU_CustomerService_location_employee;
replace view TRNG_TDU_CustomerService.location_phone as locking row for access select
"location_number"
,"area_code"
,"phone"
,"extension"
,"description"
,"comment_line"
from gs_tables_db.TRNG_TDU_CustomerService_location_phone;
replace view TRNG_TDU_CustomerService.Repair_time as locking row for access select
"serial_number"
,"product_desc"
,"start_time"
,"end_time"
from gs_tables_db.TRNG_TDU_CustomerService_Repair_time;
replace view TRNG_TDU_CustomerService.salestbl as locking row for access select
"storeid"
,"prodid"
,"sales"
from gs_tables_db.TRNG_TDU_CustomerService_salestbl;
