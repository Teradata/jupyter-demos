create database TRNG_RETAILDSE_DEV from demonow as perm=0;
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_CUST_STORE_EVENTS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/CUST-STORE-EVENTS/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_TwmExploreValues", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/TwmExploreValues/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_ASSOC_10PURCHASES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/ASSOC-10PURCHASES/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_TEMP_ERASE_CUSTOMERS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/TEMP-ERASE-CUSTOMERS/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_DecisionTreeScore1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/DecisionTreeScore1/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_CUST_ONLINE_EVENTS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/CUST-ONLINE-EVENTS/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_LREGModel1_rpt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/LREGModel1-rpt/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_LogisticOut1_txt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/LogisticOut1-txt/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_NEW_RETAIL_ALLCH_EVENT_DESC_MASTER", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/NEW-RETAIL-ALLCH-EVENT-DESC-MASTER/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_CUSTOMER_MASTER_ATTRIBUTES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/CUSTOMER-MASTER-ATTRIBUTES/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_LogisticScore1_txt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/LogisticScore1-txt/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_DecisionTreeScore1_rpt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/DecisionTreeScore1-rpt/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_FactorAnalysisScore1_rpt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/FactorAnalysisScore1-rpt/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_TwmExploreStatistics", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/TwmExploreStatistics/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_TwmExploreHistogram", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/TwmExploreHistogram/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_LogisticOut1_rpt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/LogisticOut1-rpt/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_CUST_CC_EVENTS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/CUST-CC-EVENTS/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_NEW_RETAIL_CUST_EVENTS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/NEW-RETAIL-CUST-EVENTS/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_LREGModel1_txt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/LREGModel1-txt/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_CUSTOMER_PURCHASES_FLAT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/CUSTOMER-PURCHASES-FLAT/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_NEW_CUSTOMERS_MASTER", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/NEW-CUSTOMERS-MASTER/'));
create foreign table gs_tables_db."TRNG_RETAILDSE_DEV_FactorAnalysisScore1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RETAILDSE-DEV/FactorAnalysisScore1/'));
replace view TRNG_RETAILDSE_DEV.ASSOC_10PURCHASES as locking row for access select
"ITEM1OF2"
,"ITEM2OF2"
,"LSUPPORT"
,"RSUPPORT"
,"SUPPORT"
,"CONFIDENCE"
,"LIFT"
,"ZSCORE"
from gs_tables_db.TRNG_RETAILDSE_DEV_ASSOC_10PURCHASES;
replace view TRNG_RETAILDSE_DEV.CUSTOMER_MASTER_ATTRIBUTES as locking row for access select
"CUSTOMER_ID"
,"CH_STORE"
,"CH_ONLINE"
,"CH_CALLCENTER"
,"CHANNEL_PRESENCE"
,"NUM_CHANNELS"
,"CHURN_FLAG"
,"STATE"
,"ZIP"
,"ETHNICITY"
,"GENDER"
,"LIFE_CUST_STA"
,"MAR_STA"
,"EDUC_LVL"
,"EMP_STA"
,"AGE"
,"HH_INCOME"
,"NUM_DEP"
,"NUM_TRANS_12MON"
,"VAL_TRA_12MON"
,"EMP_YRS"
,"NUM_EMAIL_LST_MON"
,"NUM_STRVST_LST_MON"
,"NUM_CALLS_LST_MON"
,"BRAND_STMNT_PRV6_MON"
from gs_tables_db.TRNG_RETAILDSE_DEV_CUSTOMER_MASTER_ATTRIBUTES;
replace view TRNG_RETAILDSE_DEV.CUSTOMER_PURCHASES_FLAT as locking row for access select
"CUSTOMER_ID"
,"ITEM1"
,"ITEM2"
,"ITEM3"
,"ITEM4"
,"ITEM5"
,"ITEM6"
,"ITEM7"
,"ITEM8"
,"ITEM9"
,"ITEM10"
,"ITEM11"
,"ITEM12"
,"ITEM13"
,"ITEM14"
,"ITEM15"
,"ITEM16"
,"ITEM17"
,"ITEM18"
,"ITEM19"
,"ITEM20"
from gs_tables_db.TRNG_RETAILDSE_DEV_CUSTOMER_PURCHASES_FLAT;
replace view TRNG_RETAILDSE_DEV.CUST_CC_EVENTS as locking row for access select
"CUSTOMER_ID"
,"EVENT"
,"DATESTAMP"
from gs_tables_db.TRNG_RETAILDSE_DEV_CUST_CC_EVENTS;
replace view TRNG_RETAILDSE_DEV.CUST_ONLINE_EVENTS as locking row for access select
"CUSTOMER_ID"
,"EVENT"
,"DATESTAMP"
from gs_tables_db.TRNG_RETAILDSE_DEV_CUST_ONLINE_EVENTS;
replace view TRNG_RETAILDSE_DEV.CUST_STORE_EVENTS as locking row for access select
"CUSTOMER_ID"
,"EVENT"
,"DATESTAMP"
from gs_tables_db.TRNG_RETAILDSE_DEV_CUST_STORE_EVENTS;
replace view TRNG_RETAILDSE_DEV.DecisionTreeScore1 as locking row for access select
"customer_id"
,"CHURN_IND"
,"PREDICTED_CHURN_IND"
,"_tm_confidence"
from gs_tables_db.TRNG_RETAILDSE_DEV_DecisionTreeScore1;
replace view TRNG_RETAILDSE_DEV.DecisionTreeScore1_rpt as locking row for access select
"partId"
,"XmlModel"
from gs_tables_db.TRNG_RETAILDSE_DEV_DecisionTreeScore1_rpt;
replace view TRNG_RETAILDSE_DEV.FactorAnalysisScore1 as locking row for access select
"customer_id"
,"Factor 1"
,"Factor 2"
,"Factor 3"
,"Factor 4"
,"Factor 5"
,"Factor 6"
,"Factor 7"
,"Factor 8"
,"Factor 9"
,"Factor 10"
,"Factor 11"
,"Factor 12"
,"Factor 13"
from gs_tables_db.TRNG_RETAILDSE_DEV_FactorAnalysisScore1;
replace view TRNG_RETAILDSE_DEV.FactorAnalysisScore1_rpt as locking row for access select
"partid"
,"XmlModel"
from gs_tables_db.TRNG_RETAILDSE_DEV_FactorAnalysisScore1_rpt;
replace view TRNG_RETAILDSE_DEV.LogisticOut1_rpt as locking row for access select
"rid"
,"Total Observations"
,"Total Iterations"
,"Initial Log Likelihood"
,"Final Log Likelihood"
,"Likelihood Ratio Test G Statistic"
,"Chi-Square Degrees of Freedom"
,"Chi-Square Value"
,"Chi-Square Probability"
,"McFaddens Pseudo R-Squared"
,"Dependent Variable"
,"Dependent Response Value"
,"Total Distinct Values"
from gs_tables_db.TRNG_RETAILDSE_DEV_LogisticOut1_rpt;
replace view TRNG_RETAILDSE_DEV.LogisticOut1_txt as locking row for access select
"partId"
,"XmlModel"
from gs_tables_db.TRNG_RETAILDSE_DEV_LogisticOut1_txt;
replace view TRNG_RETAILDSE_DEV.LogisticScore1_txt as locking row for access select
"partId"
,"XmlModel"
from gs_tables_db.TRNG_RETAILDSE_DEV_LogisticScore1_txt;
replace view TRNG_RETAILDSE_DEV.LREGModel1_rpt as locking row for access select
"rid"
,"STATE"
,"Total Observations"
,"Total Sum of Squares"
,"Multiple Correlation Coefficient (R):"
,"Squared Multiple Correlation Coefficient (1-Tolerance)"
,"Adjusted R-Squared"
,"Standard Error of Estimate"
,"Regression Sum of Squares"
,"Regression Degrees of Freedom"
,"Regression Mean-Square"
,"Regression F Ratio"
,"Regression P-Value"
,"Residual Sum of Squares"
,"Residual Degrees of Freedom"
,"Residual Mean-Square"
,"Output Database"
,"Output Tablename"
,"Dependent"
from gs_tables_db.TRNG_RETAILDSE_DEV_LREGModel1_rpt;
replace view TRNG_RETAILDSE_DEV.LREGModel1_txt as locking row for access select
"STATE"
,"partId"
,"XmlModel"
from gs_tables_db.TRNG_RETAILDSE_DEV_LREGModel1_txt;
replace view TRNG_RETAILDSE_DEV.NEW_CUSTOMERS_MASTER as locking row for access select
"CUSTOMER_ID"
,"CH_STORE"
,"CH_ONLINE"
,"CH_CALLCENTER"
,"CHANNEL_PRESENCE"
,"NUM_CHANNELS"
,"CHURN_FLAG"
,"STATE"
,"ZIP"
,"ETHNICITY"
,"GENDER"
,"LIFE_CUST_STA"
,"MAR_STA"
,"EDUC_LVL"
,"EMP_STA"
,"AGE"
,"HH_INCOME"
,"NUM_DEP"
,"NUM_TRANS_12MON"
,"VAL_TRA_12MON"
,"EMP_YRS"
,"NUM_EMAIL_LST_MON"
,"NUM_STRVST_LST_MON"
,"NUM_CALLS_LST_MON"
,"BRAND_STMNT_PRV6_MON"
from gs_tables_db.TRNG_RETAILDSE_DEV_NEW_CUSTOMERS_MASTER;
replace view TRNG_RETAILDSE_DEV.NEW_RETAIL_ALLCH_EVENT_DESC_MASTER as locking row for access select
"customer_id"
,"EVENT"
,"DATESTAMP"
from gs_tables_db.TRNG_RETAILDSE_DEV_NEW_RETAIL_ALLCH_EVENT_DESC_MASTER;
replace view TRNG_RETAILDSE_DEV.NEW_RETAIL_CUST_EVENTS as locking row for access select
"EVENT"
,"DATESTAMP"
,"ENTITY_ID"
from gs_tables_db.TRNG_RETAILDSE_DEV_NEW_RETAIL_CUST_EVENTS;
replace view TRNG_RETAILDSE_DEV.TEMP_ERASE_CUSTOMERS as locking row for access select
"ENTITY_ID"
from gs_tables_db.TRNG_RETAILDSE_DEV_TEMP_ERASE_CUSTOMERS;
replace view TRNG_RETAILDSE_DEV.TwmExploreHistogram as locking row for access select
"xdb"
,"xtbl"
,"xcol"
,"xbin"
,"xbeg"
,"xend"
,"xcnt"
,"xpct"
from gs_tables_db.TRNG_RETAILDSE_DEV_TwmExploreHistogram;
replace view TRNG_RETAILDSE_DEV.TwmExploreStatistics as locking row for access select
"xdb"
,"xtbl"
,"xcol"
,"xcnt"
,"xmin"
,"xmax"
,"xmean"
,"xstd"
from gs_tables_db.TRNG_RETAILDSE_DEV_TwmExploreStatistics;
replace view TRNG_RETAILDSE_DEV.TwmExploreValues as locking row for access select
"xdb"
,"xtbl"
,"xcol"
,"xtype"
,"xcnt"
,"xnull"
,"xunique"
,"xblank"
,"xzero"
,"xpos"
,"xneg"
from gs_tables_db.TRNG_RETAILDSE_DEV_TwmExploreValues;
