create database TRNG_TDU_Orders from demonow as perm=0;
create foreign table gs_tables_db."TRNG_TDU_Orders_orders",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Orders/orders/'));
create foreign table gs_tables_db."TRNG_TDU_Orders_orders_2012",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Orders/orders-2012/'));
create foreign table gs_tables_db."TRNG_TDU_Orders_orders_2013",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Orders/orders-2013/'));
replace view TRNG_TDU_Orders.orders as locking row for access select * from  gs_tables_db."TRNG_TDU_Orders_orders";
replace view TRNG_TDU_Orders.orders_2012 as locking row for access select * from  gs_tables_db."TRNG_TDU_Orders_orders_2012";
replace view TRNG_TDU_Orders.orders_2013 as locking row for access select * from  gs_tables_db."TRNG_TDU_Orders_orders_2013";
