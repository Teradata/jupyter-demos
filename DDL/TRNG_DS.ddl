create database TRNG_DS from demonow as perm=0;
create foreign table gs_tables_db."TRNG_DS_Orders_2021", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DS/Orders-2021/'));
create foreign table gs_tables_db."TRNG_DS_Orders", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DS/Orders/'));
create foreign table gs_tables_db."TRNG_DS_Orders_1600", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DS/Orders-1600/'));
replace view TRNG_DS.Orders as locking row for access select
"orderid"
,"custid"
,"orderstatus"
,"ordertotal"
,"orderdate"
,"orderpriority"
,"clerk"
,"location"
,"shippriority"
,"ordercomment"
from gs_tables_db.TRNG_DS_Orders;
replace view TRNG_DS.Orders_1600 as locking row for access select
"orderid"
,"custid"
,"orderstatus"
,"ordertotal"
,"orderdate"
,"orderpriority"
,"clerk"
,"location"
,"shippriority"
,"ordercomment"
from gs_tables_db.TRNG_DS_Orders_1600;
replace view TRNG_DS.Orders_2021 as locking row for access select
"orderid"
,"custid"
,"orderstatus"
,"ordertotal"
,"orderdate"
,"orderpriority"
,"clerk"
,"location"
,"shippriority"
,"ordercomment"
from gs_tables_db.TRNG_DS_Orders_2021;
