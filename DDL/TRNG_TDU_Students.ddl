create database TRNG_TDU_Students from demonow as perm=0;
create foreign table gs_tables_db."TRNG_TDU_Students_State", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Students/State/'));
create foreign table gs_tables_db."TRNG_TDU_Students_City", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Students/City/'));
create foreign table gs_tables_db."TRNG_TDU_Students_Orders", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Students/Orders/'));
create foreign table gs_tables_db."TRNG_TDU_Students_Customers", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Students/Customers/'));
replace view TRNG_TDU_Students.City as locking row for access select
"cityname"
,"citystate"
,"citypop"
from gs_tables_db.TRNG_TDU_Students_City;
replace view TRNG_TDU_Students.Customers as locking row for access select
"cust_id"
,"cust_name"
,"cust_addr"
from gs_tables_db.TRNG_TDU_Students_Customers;
replace view TRNG_TDU_Students.Orders as locking row for access select
"order_id"
,"order_date"
,"cust_id"
,"order_status"
from gs_tables_db.TRNG_TDU_Students_Orders;
replace view TRNG_TDU_Students.State as locking row for access select
"stateid"
,"statename"
,"statepop"
,"statecapitol"
from gs_tables_db.TRNG_TDU_Students_State;
