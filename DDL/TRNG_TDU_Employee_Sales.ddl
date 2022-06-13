create database TRNG_TDU_Employee_Sales from demonow as perm=0;
create foreign table gs_tables_db."TRNG_TDU_Employee_Sales_Location", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Employee-Sales/Location/'));
create foreign table gs_tables_db."TRNG_TDU_Employee_Sales_Employee_Phone", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Employee-Sales/Employee-Phone/'));
create foreign table gs_tables_db."TRNG_TDU_Employee_Sales_SalesTbl", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Employee-Sales/SalesTbl/'));
create foreign table gs_tables_db."TRNG_TDU_Employee_Sales_Location_Employee", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Employee-Sales/Location-Employee/'));
create foreign table gs_tables_db."TRNG_TDU_Employee_Sales_Job", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Employee-Sales/Job/'));
create foreign table gs_tables_db."TRNG_TDU_Employee_Sales_Repair_Time", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Employee-Sales/Repair-Time/'));
create foreign table gs_tables_db."TRNG_TDU_Employee_Sales_Employee", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Employee-Sales/Employee/'));
create foreign table gs_tables_db."TRNG_TDU_Employee_Sales_Customer", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Employee-Sales/Customer/'));
create foreign table gs_tables_db."TRNG_TDU_Employee_Sales_Location_Phone", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Employee-Sales/Location-Phone/'));
create foreign table gs_tables_db."TRNG_TDU_Employee_Sales_Contact", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Employee-Sales/Contact/'));
create foreign table gs_tables_db."TRNG_TDU_Employee_Sales_Jan_Sales", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Employee-Sales/Jan-Sales/'));
create foreign table gs_tables_db."TRNG_TDU_Employee_Sales_Department", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Employee-Sales/Department/'));
create foreign table gs_tables_db."TRNG_TDU_Employee_Sales_Daily_Sales", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Employee-Sales/Daily-Sales/'));
replace view TRNG_TDU_Employee_Sales.Contact as locking row for access select
"contact_number"
,"contact_name"
,"area_code"
,"phone"
,"extension"
,"last_call_date"
from gs_tables_db.TRNG_TDU_Employee_Sales_Contact;
replace view TRNG_TDU_Employee_Sales.Customer as locking row for access select
"customer_number"
,"customer_name"
,"parent_customer_number"
,"sales_employee_number"
from gs_tables_db.TRNG_TDU_Employee_Sales_Customer;
replace view TRNG_TDU_Employee_Sales.Daily_Sales as locking row for access select
"itemid"
,"salesdate"
,"sales"
from gs_tables_db.TRNG_TDU_Employee_Sales_Daily_Sales;
replace view TRNG_TDU_Employee_Sales.Department as locking row for access select
"department_number"
,"department_name"
,"budget_amount"
,"manager_employee_number"
from gs_tables_db.TRNG_TDU_Employee_Sales_Department;
replace view TRNG_TDU_Employee_Sales.Employee as locking row for access select
"employee_number"
,"manager_employee_number"
,"department_number"
,"job_code"
,"last_name"
,"first_name"
,"hire_date"
,"birthdate"
,"salary_amount"
from gs_tables_db.TRNG_TDU_Employee_Sales_Employee;
replace view TRNG_TDU_Employee_Sales.Employee_Phone as locking row for access select
"employee_number"
,"area_code"
,"phone"
,"extension"
,"comment_line"
from gs_tables_db.TRNG_TDU_Employee_Sales_Employee_Phone;
replace view TRNG_TDU_Employee_Sales.Jan_Sales as locking row for access select
"itemid"
,"salesdate"
,"sales"
from gs_tables_db.TRNG_TDU_Employee_Sales_Jan_Sales;
replace view TRNG_TDU_Employee_Sales.Job as locking row for access select
"job_code"
,"description"
,"hourly_billing_rate"
,"hourly_cost_rate"
from gs_tables_db.TRNG_TDU_Employee_Sales_Job;
replace view TRNG_TDU_Employee_Sales.Location as locking row for access select
"location_number"
,"customer_number"
,"first_address_line"
,"city"
,"state"
,"zip_code"
,"second_address_line"
,"third_address_line"
from gs_tables_db.TRNG_TDU_Employee_Sales_Location;
replace view TRNG_TDU_Employee_Sales.Location_Employee as locking row for access select
"location_number"
,"employee_number"
from gs_tables_db.TRNG_TDU_Employee_Sales_Location_Employee;
replace view TRNG_TDU_Employee_Sales.Location_Phone as locking row for access select
"location_number"
,"area_code"
,"phone"
,"extension"
,"description"
,"comment_line"
from gs_tables_db.TRNG_TDU_Employee_Sales_Location_Phone;
replace view TRNG_TDU_Employee_Sales.Repair_Time as locking row for access select
"serial_number"
,"product_desc"
,"start_time"
,"end_time"
from gs_tables_db.TRNG_TDU_Employee_Sales_Repair_Time;
replace view TRNG_TDU_Employee_Sales.SalesTbl as locking row for access select
"storeid"
,"prodid"
,"sales"
from gs_tables_db.TRNG_TDU_Employee_Sales_SalesTbl;
