create database TRNG_TDU_Orders from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_TDU_Orders_orders", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Orders/orders/'));
create foreign table gs_tables_db."TRNG_TDU_Orders_orders_2013", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Orders/orders-2013/'));
create foreign table gs_tables_db."TRNG_TDU_Orders_orders_2012", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-Orders/orders-2012/'));
replace view TRNG_TDU_Orders.orders as locking row for access select
"order_id"
,"order_date"
,"cust_id"
,"order_status"
from gs_tables_db.TRNG_TDU_Orders_orders;
replace view TRNG_TDU_Orders.orders_2012 as locking row for access select
"o_orderid"
,"o_custid"
,"o_orderstatus"
,"o_totalprice"
,"o_orderdate"
,"o_orderpriority"
,"o_clerk"
,"o_shippriority"
,"o_comment"
from gs_tables_db.TRNG_TDU_Orders_orders_2012;
replace view TRNG_TDU_Orders.orders_2013 as locking row for access select
"o_orderid"
,"o_custid"
,"o_orderstatus"
,"o_totalprice"
,"o_orderdate"
,"o_orderpriority"
,"o_clerk"
,"o_shippriority"
,"o_comment"
from gs_tables_db.TRNG_TDU_Orders_orders_2013;
