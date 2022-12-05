create database TRNG_CreditCard from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_CreditCard_credit_card", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CreditCard/credit_card/'));
replace view TRNG_CreditCard.credit_card as locking row for access select
"SK_ID_CURR"
,"TARGET"
,"NAME_CONTRACT_TYPE"
,"CODE_GENDER"
,"FLAG_OWN_CAR"
,"CNT_CHILDREN"
,"AMT_INCOME_TOTAL"
,"NAME_FAMILY_STATUS"
,"REGION_POPULATION_RELATIVE"
,"FLAG_MOBIL"
,"FLAG_EMP_PHONE"
,"CNT_FAM_MEMBERS"
,"HOUSETYPE_MODE"
,"OCCUPATION_TYPE"
,"AGE"
from gs_tables_db.TRNG_CreditCard_credit_card;