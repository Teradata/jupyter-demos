create database TRNG_IdentityMatch from demonow as perm=0;
create foreign table gs_tables_db."TRNG_IdentityMatch_AC_CUSTOMER_EXTERNAL_DATA",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-IdentityMatch/AC-CUSTOMER-EXTERNAL-DATA/'));
create foreign table gs_tables_db."TRNG_IdentityMatch_REF_GOLDEN_CUST",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-IdentityMatch/REF-GOLDEN-CUST/'));
replace view TRNG_IdentityMatch.AC_CUSTOMER_EXTERNAL_DATA as locking row for access select * from  gs_tables_db."TRNG_IdentityMatch_AC_CUSTOMER_EXTERNAL_DATA";
replace view TRNG_IdentityMatch.REF_GOLDEN_CUST as locking row for access select * from  gs_tables_db."TRNG_IdentityMatch_REF_GOLDEN_CUST";
