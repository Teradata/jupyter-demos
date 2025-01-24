create database TRNG_TDRetail from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_TDRetail_BRAND", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/BRAND/'));
create foreign table gs_tables_db."TRNG_TDRetail_SALES_TRANSACTION", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/SALES-TRANSACTION/'));
create foreign table gs_tables_db."TRNG_TDRetail_LLOYDS_LM_Logistic_MDL_txt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/LLOYDS-LM-Logistic-MDL-txt/'));
create foreign table gs_tables_db."TRNG_TDRetail_LOCATION", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/LOCATION/'));
create foreign table gs_tables_db."TRNG_TDRetail_DIVISION", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/DIVISION/'));
create foreign table gs_tables_db."TRNG_TDRetail_ITEM_INVENTORY", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ITEM-INVENTORY/'));
create foreign table gs_tables_db."TRNG_TDRetail_DISTRICT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/DISTRICT/'));
create foreign table gs_tables_db."TRNG_TDRetail_da_vinci_input", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/da-vinci-input/'));
create foreign table gs_tables_db."TRNG_TDRetail_LLOYDS_LM_Logistic_MDL_rpt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/LLOYDS-LM-Logistic-MDL-rpt/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_decisiontreepredict_1618948679828002", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-decisiontreepredict-1618948679828002/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_decisiontree_1618942685992395", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-decisiontree-1618942685992395/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_logregpredict_16181001027884072", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-logregpredict-16181001027884072/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_decisiontreepredict_1618940373924590_1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-decisiontreepredict-1618940373924590-1/'));
create foreign table gs_tables_db."TRNG_TDRetail_ITEM_SIZE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ITEM-SIZE/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_transform_16192412439276", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-transform-16192412439276/'));
create foreign table gs_tables_db."TRNG_TDRetail_COURSE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/COURSE/'));
create foreign table gs_tables_db."TRNG_TDRetail_LinearRegressionDemo1_txt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/LinearRegressionDemo1-txt/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_transform_16192796093160", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-transform-16192796093160/'));
create foreign table gs_tables_db."TRNG_TDRetail_SALES_TRANSACTION_LINE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/SALES-TRANSACTION-LINE/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_kmeanspredict_16181000783767858", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-kmeanspredict-16181000783767858/'));
create foreign table gs_tables_db."TRNG_TDRetail_SUBCATEGORY", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/SUBCATEGORY/'));
create foreign table gs_tables_db."TRNG_TDRetail_PROMO_OFFER_TYPE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/PROMO-OFFER-TYPE/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_decisiontreepredict_1618940373924590_2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-decisiontreepredict-1618940373924590-2/'));
create foreign table gs_tables_db."TRNG_TDRetail_admissions_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/admissions-train/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_transform_16192989384014", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-transform-16192989384014/'));
create foreign table gs_tables_db."TRNG_TDRetail_LLOYDS_2_join_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/LLOYDS-2-join-test/'));
create foreign table gs_tables_db."TRNG_TDRetail_LLOYDS_LM_Logistic_MDL", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/LLOYDS-LM-Logistic-MDL/'));
create foreign table gs_tables_db."TRNG_TDRetail_LLOYDS_KMEANS_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/LLOYDS-KMEANS-output/'));
create foreign table gs_tables_db."TRNG_TDRetail_LLOYDS_KMEANS_clusters", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/LLOYDS-KMEANS-clusters/'));
create foreign table gs_tables_db."TRNG_TDRetail_jcr_forecasts_output2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/jcr-forecasts-output2/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_CUSTOMER_SELECTION1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-CUSTOMER-SELECTION1/'));
create foreign table gs_tables_db."TRNG_TDRetail_da_vinci_100_serie", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/da-vinci-100-serie/'));
create foreign table gs_tables_db."TRNG_TDRetail_DEPARTMENT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/DEPARTMENT/'));
create foreign table gs_tables_db."TRNG_TDRetail_REGION", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/REGION/'));
create foreign table gs_tables_db."TRNG_TDRetail_LinearRegressionDemo1_rpt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/LinearRegressionDemo1-rpt/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_logreg_1618995196832341", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-logreg-1618995196832341/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_CFILTER_INPUT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-CFILTER-INPUT/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_transform_16193062902887", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-transform-16193062902887/'));
create foreign table gs_tables_db."TRNG_TDRetail_SALES_TRANSACTION_LINE_STAGING", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/SALES-TRANSACTION-LINE-STAGING/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_transform_16192728011620", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-transform-16192728011620/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_FORECAST_INPUT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-FORECAST-INPUT/'));
create foreign table gs_tables_db."TRNG_TDRetail_ZIPCODES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ZIPCODES/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_kmeans_16181001459650636", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-kmeans-16181001459650636/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_LDA_OUTPUT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-LDA-OUTPUT/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_decisiontreepredict_1618948679828002_2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-decisiontreepredict-1618948679828002-2/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_transform_16194116866268", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-transform-16194116866268/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_ROC_INPUT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-ROC-INPUT/'));
create foreign table gs_tables_db."TRNG_TDRetail_LLOYDS_LM_input", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/LLOYDS-LM-input/'));
create foreign table gs_tables_db."TRNG_TDRetail_jcr_forecasts_output3", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/jcr-forecasts-output3/'));
create foreign table gs_tables_db."TRNG_TDRetail_LinearRegressionDemo1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/LinearRegressionDemo1/'));
create foreign table gs_tables_db."TRNG_TDRetail_LLOYDS_1_TRANS_SUMMARY", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/LLOYDS-1-TRANS-SUMMARY/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_transform_16193175801759", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-transform-16193175801759/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_ROC", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-ROC/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_association_1618937536058150_21", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-association-1618937536058150-21/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_decisiontreepredict_1618948679828002_1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-decisiontreepredict-1618948679828002-1/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_transform_16194196560242", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-transform-16194196560242/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_IRIS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-IRIS/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_logreg_1618995196832341_rpt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-logreg-1618995196832341-rpt/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_logreg_1618995196832341_txt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-logreg-1618995196832341-txt/'));
create foreign table gs_tables_db."TRNG_TDRetail_PROMO_OFFER", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/PROMO-OFFER/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_CFILTER_OUTPUT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-CFILTER-OUTPUT/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_CF_INPUT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-CF-INPUT/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_decisiontree_1618945205628818", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-decisiontree-1618945205628818/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_CLASSIFICATION_METRICS3", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-CLASSIFICATION-METRICS3/'));
create foreign table gs_tables_db."TRNG_TDRetail_LLOYDS_LM_input_rescaled", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/LLOYDS-LM-input-rescaled/'));
create foreign table gs_tables_db."TRNG_TDRetail_PROMOTION", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/PROMOTION/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_decisiontreepredict_1618993737047644_1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-decisiontreepredict-1618993737047644-1/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_decisiontree_1618942822929503", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-decisiontree-1618942822929503/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_UNPIVOT_TEST", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-UNPIVOT-TEST/'));
create foreign table gs_tables_db."TRNG_TDRetail_SALES_TRANSACTION_TYPE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/SALES-TRANSACTION-TYPE/'));
create foreign table gs_tables_db."TRNG_TDRetail_ITEM", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ITEM/'));
create foreign table gs_tables_db."TRNG_TDRetail_da_vinci_id_serie", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/da-vinci-id-serie/'));
create foreign table gs_tables_db."TRNG_TDRetail_LLOYDS_KMEANS_input_rescaled", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/LLOYDS-KMEANS-input-rescaled/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_CLASSIFICATION_METRICS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-CLASSIFICATION-METRICS/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_decisiontreepredict_1618993737047644_2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-decisiontreepredict-1618993737047644-2/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_FORECAST_INPUT2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-FORECAST-INPUT2/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_transform_16192590704928", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-transform-16192590704928/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_decisiontreepredict_1618993737047644", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-decisiontreepredict-1618993737047644/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_FORECASTOTRON_INPUT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-FORECASTOTRON-INPUT/'));
create foreign table gs_tables_db."TRNG_TDRetail_STORES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/STORES/'));
create foreign table gs_tables_db."TRNG_TDRetail_SALES_TRANSACTION_STAGING", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/SALES-TRANSACTION-STAGING/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_decisiontree_1618938500192280", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-decisiontree-1618938500192280/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_association_1618937536058150_11", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-association-1618937536058150-11/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_transform_16194497027302", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-transform-16194497027302/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_FORECAST_OUTPUT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-FORECAST-OUTPUT/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_FORECAST_INPUT1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-FORECAST-INPUT1/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_transform_16191604019062", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-transform-16191604019062/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_transform_16198839012479", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-transform-16198839012479/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_logregpredict_1618995359820009", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-logregpredict-1618995359820009/'));
create foreign table gs_tables_db."TRNG_TDRetail_CATEGORY", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/CATEGORY/'));
create foreign table gs_tables_db."TRNG_TDRetail_LLOYDS_KMEANS_input", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/LLOYDS-KMEANS-input/'));
create foreign table gs_tables_db."TRNG_TDRetail_ALL_DIVISIONS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ALL-DIVISIONS/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_MDL_INPUT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-MDL-INPUT/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_decisiontreepredict_1618940373924590", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-decisiontreepredict-1618940373924590/'));
create foreign table gs_tables_db."TRNG_TDRetail_JCR_R_SCRIPTS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/JCR-R-SCRIPTS/'));
create foreign table gs_tables_db."TRNG_TDRetail_da_vinci_1_serie", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/da-vinci-1-serie/'));
create foreign table gs_tables_db."TRNG_TDRetail_ml__valib_transform_16193307069330", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDRetail/ml--valib-transform-16193307069330/'));
replace view TRNG_TDRetail.admissions_train as locking row for access select
"id"
,"masters"
,"gpa"
,"stats"
,"programming"
,"admitted"
from gs_tables_db.TRNG_TDRetail_admissions_train;
replace view TRNG_TDRetail.ALL_DIVISIONS as locking row for access select
"All_Divisions_Cd"
,"All_Divisions_Name"
from gs_tables_db.TRNG_TDRetail_ALL_DIVISIONS;
replace view TRNG_TDRetail.BRAND as locking row for access select
"mfg"
,"Brand_ID"
,"Brand_Name"
,"Brand_Party_Id"
from gs_tables_db.TRNG_TDRetail_BRAND;
replace view TRNG_TDRetail.CATEGORY as locking row for access select
"Category_ID"
,"Category_Desc"
,"Dept_ID"
from gs_tables_db.TRNG_TDRetail_CATEGORY;
replace view TRNG_TDRetail.COURSE as locking row for access select
"Course_CD"
,"Course_Title"
,"Course_Credit_Hours"
,"Course_Tuition"
,"Course_Cost"
from gs_tables_db.TRNG_TDRetail_COURSE;
replace view TRNG_TDRetail.da_vinci_100_serie as locking row for access select
"id_serie"
,"ts_value"
,"price"
,"volume"
from gs_tables_db.TRNG_TDRetail_da_vinci_100_serie;
replace view TRNG_TDRetail.da_vinci_1_serie as locking row for access select
"ts_value"
,"price"
,"volume"
from gs_tables_db.TRNG_TDRetail_da_vinci_1_serie;
replace view TRNG_TDRetail.da_vinci_id_serie as locking row for access select
"id_serie"
from gs_tables_db.TRNG_TDRetail_da_vinci_id_serie;
replace view TRNG_TDRetail.da_vinci_input as locking row for access select
"ts_value"
,"price"
,"volume"
from gs_tables_db.TRNG_TDRetail_da_vinci_input;
replace view TRNG_TDRetail.DEPARTMENT as locking row for access select
"Dept_ID"
,"Dept_Name"
from gs_tables_db.TRNG_TDRetail_DEPARTMENT;
replace view TRNG_TDRetail.DISTRICT as locking row for access select
"District_Cd"
,"District_Name"
,"Region_Cd"
,"District_Mgr_Associate_Id"
from gs_tables_db.TRNG_TDRetail_DISTRICT;
replace view TRNG_TDRetail.DIVISION as locking row for access select
"Division_Cd"
,"Division_Name"
,"Org_Party_Id"
,"All_Divisions_Cd"
,"Division_Mgr_Associate_Id"
from gs_tables_db.TRNG_TDRetail_DIVISION;
replace view TRNG_TDRetail.ITEM as locking row for access select
"Item_ID"
,"SubCategory_ID"
,"Item_SKU"
,"Item_Desc"
,"Item_Name"
,"Inventory_IND"
,"Vendor_Party_ID"
,"Commodity_CD"
,"Item_Color_CD"
,"Item_Size_CD"
,"Brand_ID"
from gs_tables_db.TRNG_TDRetail_ITEM;
replace view TRNG_TDRetail.ITEM_INVENTORY as locking row for access select
"Location_Id"
,"Item_Inv_Dt"
,"Item_Id"
,"On_Hand_Unit_Qty"
,"On_Hand_At_Retail_Amt"
,"On_Hand_Cost_Amt"
,"On_Order_Qty"
,"Lost_Sales_Day_Ind"
,"Item_Inv_Time"
from gs_tables_db.TRNG_TDRetail_ITEM_INVENTORY;
replace view TRNG_TDRetail.ITEM_SIZE as locking row for access select
"Item_Size_CD"
,"Item_Size"
from gs_tables_db.TRNG_TDRetail_ITEM_SIZE;
replace view TRNG_TDRetail.JCR_CFILTER_INPUT as locking row for access select
"TRANUID"
,"SubCategory_Desc"
,"VOLUME"
from gs_tables_db.TRNG_TDRetail_JCR_CFILTER_INPUT;
replace view TRNG_TDRetail.JCR_CFILTER_OUTPUT as locking row for access select
"ITEM1OF2"
,"ITEM2OF2"
,"LSUPPORT"
,"RSUPPORT"
,"SUPPORT"
,"CONFIDENCE"
,"LIFT"
,"ZSCORE"
from gs_tables_db.TRNG_TDRetail_JCR_CFILTER_OUTPUT;
replace view TRNG_TDRetail.JCR_CF_INPUT as locking row for access select
"transaction_id"
,"item_id"
,"store_id"
,"sum_amount"
,"sum_amount_net"
from gs_tables_db.TRNG_TDRetail_JCR_CF_INPUT;
replace view TRNG_TDRetail.JCR_CLASSIFICATION_METRICS as locking row for access select
"MODELID"
,"CUSTID"
,"TGT"
,"PROBA"
,"PRE"
,"TRUTH"
,"PCTILE"
from gs_tables_db.TRNG_TDRetail_JCR_CLASSIFICATION_METRICS;
replace view TRNG_TDRetail.JCR_CLASSIFICATION_METRICS3 as locking row for access select
"MODELID"
,"PCTILE"
,"POP"
,"TFP"
,"TTP"
,"P"
,"N"
,"TP"
,"TN"
,"FP"
,"FN"
from gs_tables_db.TRNG_TDRetail_JCR_CLASSIFICATION_METRICS3;
replace view TRNG_TDRetail.JCR_CUSTOMER_SELECTION1 as locking row for access select
"cust_id"
,"income"
,"years_with_bank"
from gs_tables_db.TRNG_TDRetail_JCR_CUSTOMER_SELECTION1;
replace view TRNG_TDRetail.JCR_FORECASTOTRON_INPUT as locking row for access select
"pk"
,"timeKey"
,"MODELID"
,"MARKET"
,"MATERIAL"
,"RDD_YEAR_MONTH"
,"MOY_smin"
,"DEMAND_Tp1"
,"DEMAND_Tp2"
,"DEMAND_Tp3"
,"DEMAND_Tp4"
,"DEMAND_Tp5"
,"DEMAND_Tp6"
,"DEMAND_Tp7"
,"DEMAND_Tp8"
,"DEMAND_Tp9"
,"DEMAND_Tp10"
,"DEMAND_Tp11"
,"DEMAND_Tp12"
,"DEMAND"
,"preorder_for_m0m1"
,"preorder_for_m0m2"
,"preorder_for_m0m3"
,"preorder_for_m0m4"
,"preorder_for_m0m5"
,"preorder_for_m0m6"
,"preorder_for_m0m7"
,"preorder_for_m0m8"
,"preorder_for_m0m9"
,"preorder_for_m0m10"
,"preorder_for_m0m11"
,"preorder_for_m0m12"
,"preorder_for_m0m13"
,"preorder_for_m1m1"
,"preorder_for_m1m2"
,"preorder_for_m2m1"
,"preorder_for_m1m3"
,"preorder_for_m2m2"
,"preorder_for_m3m1"
,"preorder_for_m1m4"
,"preorder_for_m2m3"
,"preorder_for_m3m2"
,"preorder_for_m4m1"
,"preorder_for_m1m5"
,"preorder_for_m2m4"
,"preorder_for_m3m3"
,"preorder_for_m4m2"
,"preorder_for_m5m1"
,"preorder_for_m1m6"
,"preorder_for_m2m5"
,"preorder_for_m3m4"
,"preorder_for_m4m3"
,"preorder_for_m5m2"
,"preorder_for_m6m1"
,"preorder_for_m1m7"
,"preorder_for_m2m6"
,"preorder_for_m3m5"
,"preorder_for_m4m4"
,"preorder_for_m5m3"
,"preorder_for_m6m2"
,"preorder_for_m7m1"
,"preorder_for_m1m8"
,"preorder_for_m2m7"
,"preorder_for_m3m6"
,"preorder_for_m4m5"
,"preorder_for_m5m4"
,"preorder_for_m6m3"
,"preorder_for_m7m2"
,"preorder_for_m8m1"
,"preorder_for_m1m9"
,"preorder_for_m2m8"
,"preorder_for_m3m7"
,"preorder_for_m4m6"
,"preorder_for_m5m5"
,"preorder_for_m6m4"
,"preorder_for_m7m3"
,"preorder_for_m8m2"
,"preorder_for_m9m1"
,"preorder_for_m1m10"
,"preorder_for_m2m9"
,"preorder_for_m3m8"
,"preorder_for_m4m7"
,"preorder_for_m5m6"
,"preorder_for_m6m5"
,"preorder_for_m7m4"
,"preorder_for_m8m3"
,"preorder_for_m9m2"
,"preorder_for_m10m1"
,"preorder_for_m1m11"
,"preorder_for_m2m10"
,"preorder_for_m3m9"
,"preorder_for_m4m8"
,"preorder_for_m5m7"
,"preorder_for_m6m6"
,"preorder_for_m7m5"
,"preorder_for_m8m4"
,"preorder_for_m9m3"
,"preorder_for_m10m2"
,"preorder_for_m11m1"
,"preorder_for_m1m12"
,"preorder_for_m2m11"
,"preorder_for_m3m10"
,"preorder_for_m4m9"
,"preorder_for_m5m8"
,"preorder_for_m6m7"
,"preorder_for_m7m6"
,"preorder_for_m8m5"
,"preorder_for_m9m4"
,"preorder_for_m10m3"
,"preorder_for_m11m2"
,"preorder_for_m12m1"
,"ProductFamily"
,"BICYC_MBRAND"
,"BICYC_SBRAND"
,"BICYC_POGSG1"
,"BICYC_POGSG2"
,"BICYC_POG_PG"
,"BICYC_TIRSEG"
,"BICYC_SEASON"
,"BICYC_AXLE"
,"BICYC_MKTLNE"
,"BICYC_SPEED"
,"BICYC_TYRTYP"
,"GROSS_WT"
,"VOLUME"
,"BICYK_RATIO"
,"BICYK_WID_MM"
,"BICYK_RIM_IN"
,"BICYC_ERMCS"
,"fc_offset"
,"fc_duration"
,"FUTURE_START_FLAG_y"
,"BICYC_CLABC"
,"demandCumul"
,"DEMAND_Tm1"
,"DEMAND_Tm2"
,"DEMAND_Tm3"
,"DEMAND_Tm4"
,"DEMAND_Tm5"
,"DEMAND_Tm6"
,"DEMAND_Tm7"
,"DEMAND_Tm8"
,"DEMAND_Tm9"
,"DEMAND_Tm10"
,"DEMAND_Tm11"
,"DEMAND_Tm12"
,"DEMAND_Tm13"
,"DEMAND_Tm14"
,"DEMAND_Tm15"
,"DEMAND_Tm16"
,"DEMAND_Tm17"
,"DEMAND_Tm18"
,"DEMAND_Tm19"
,"DEMAND_Tm20"
,"DEMAND_Tm21"
,"DEMAND_Tm22"
,"DEMAND_Tm23"
,"DEMAND_Tm24"
,"DEMAND0"
,"DEMAND3sum"
,"DEMAND3mean"
,"DEMAND6sum"
,"DEMAND6mean"
,"DEMAND12sum"
,"DEMAND12mean"
,"DEMAND0_lag3"
,"DEMAND3sum_lag3"
,"DEMAND3mean_lag3"
,"DEMAND6sum_lag3"
,"DEMAND6mean_lag3"
,"DEMAND12sum_lag3"
,"DEMAND0_lag6"
,"DEMAND3sum_lag6"
,"DEMAND3mean_lag6"
,"DEMAND6sum_lag6"
,"DEMAND6mean_lag6"
,"DEMAND12sum_lag6"
,"DEMAND0_lag12"
,"DEMAND3sum_lag12"
,"DEMAND3mean_lag12"
,"DEMAND6sum_lag12"
,"DEMAND6mean_lag12"
,"DEMAND12sum_lag12"
,"DEMAND3delta"
,"DEMAND6delta"
,"DEMAND6delta12"
,"DEMAND12delta"
,"DEMAND12delta6"
,"DEMAND12delta3"
,"lifetimeMonth"
,"discontinuedTracker"
,"discontinuedTracker2"
,"year"
,"MONTH"
,"meanYear"
,"meanYear3"
,"meanYear12"
,"meanMonth"
,"meanMonth3"
,"meanMonth12"
,"pfsum"
,"pfsum3"
,"pfsum12"
,"MBRANDsum"
,"MBRANDsum3"
,"MBRANDsum12"
,"SBRANDsum"
,"SBRANDsum3"
,"SBRANDsum12"
,"SEASONsum"
,"SEASONsum3"
,"SEASONsum12"
,"MKTLNEsum"
,"MKTLNEsum3"
,"MKTLNEsum12"
,"SPEEDsum"
,"SPEEDsum3"
,"SPEEDsum12"
,"MARKETsum"
,"MARKETsum3"
,"MARKETsum12"
,"MATERIALsum"
,"MATERIALsum3"
,"MATERIALsum12"
,"D1"
,"D2"
,"D3"
,"D4"
,"D5"
,"D6"
,"D7"
,"D8"
,"D9"
,"D10"
,"D11"
,"D12"
,"D13"
,"Dp1"
,"Dp2"
,"Dp3"
,"Dp4"
,"Dp5"
,"Dp6"
,"Dp7"
,"Dp8"
,"Dp9"
,"Dp10"
,"Dp11"
,"Dp12"
,"Dp13"
,"SumPreorders"
from gs_tables_db.TRNG_TDRetail_JCR_FORECASTOTRON_INPUT;
replace view TRNG_TDRetail.jcr_forecasts_output2 as locking row for access select
"MODELID"
,"RDD_YEAR_MONTH"
,"horizon"
,"forecast"
from gs_tables_db.TRNG_TDRetail_jcr_forecasts_output2;
replace view TRNG_TDRetail.jcr_forecasts_output3 as locking row for access select
"MODELID"
,"FORECASTS"
,"MARKET"
,"MATERIAL"
,"DEMANDt"
,"nb_months"
from gs_tables_db.TRNG_TDRetail_jcr_forecasts_output3;
replace view TRNG_TDRetail.JCR_FORECAST_INPUT as locking row for access select
"pk"
,"timeKey"
,"MODELID"
,"MARKET"
,"MATERIAL"
,"RDD_YEAR_MONTH"
,"MOY_smin"
,"DEMAND_Tp1"
,"DEMAND_Tp2"
,"DEMAND_Tp3"
,"DEMAND_Tp4"
,"DEMAND_Tp5"
,"DEMAND_Tp6"
,"DEMAND_Tp7"
,"DEMAND_Tp8"
,"DEMAND_Tp9"
,"DEMAND_Tp10"
,"DEMAND_Tp11"
,"DEMAND_Tp12"
,"DEMAND"
,"preorder_for_m0m1"
,"preorder_for_m0m2"
,"preorder_for_m0m3"
,"preorder_for_m0m4"
,"preorder_for_m0m5"
,"preorder_for_m0m6"
,"preorder_for_m0m7"
,"preorder_for_m0m8"
,"preorder_for_m0m9"
,"preorder_for_m0m10"
,"preorder_for_m0m11"
,"preorder_for_m0m12"
,"preorder_for_m0m13"
,"preorder_for_m1m1"
,"preorder_for_m1m2"
,"preorder_for_m2m1"
,"preorder_for_m1m3"
,"preorder_for_m2m2"
,"preorder_for_m3m1"
,"preorder_for_m1m4"
,"preorder_for_m2m3"
,"preorder_for_m3m2"
,"preorder_for_m4m1"
,"preorder_for_m1m5"
,"preorder_for_m2m4"
,"preorder_for_m3m3"
,"preorder_for_m4m2"
,"preorder_for_m5m1"
,"preorder_for_m1m6"
,"preorder_for_m2m5"
,"preorder_for_m3m4"
,"preorder_for_m4m3"
,"preorder_for_m5m2"
,"preorder_for_m6m1"
,"preorder_for_m1m7"
,"preorder_for_m2m6"
,"preorder_for_m3m5"
,"preorder_for_m4m4"
,"preorder_for_m5m3"
,"preorder_for_m6m2"
,"preorder_for_m7m1"
,"preorder_for_m1m8"
,"preorder_for_m2m7"
,"preorder_for_m3m6"
,"preorder_for_m4m5"
,"preorder_for_m5m4"
,"preorder_for_m6m3"
,"preorder_for_m7m2"
,"preorder_for_m8m1"
,"preorder_for_m1m9"
,"preorder_for_m2m8"
,"preorder_for_m3m7"
,"preorder_for_m4m6"
,"preorder_for_m5m5"
,"preorder_for_m6m4"
,"preorder_for_m7m3"
,"preorder_for_m8m2"
,"preorder_for_m9m1"
,"preorder_for_m1m10"
,"preorder_for_m2m9"
,"preorder_for_m3m8"
,"preorder_for_m4m7"
,"preorder_for_m5m6"
,"preorder_for_m6m5"
,"preorder_for_m7m4"
,"preorder_for_m8m3"
,"preorder_for_m9m2"
,"preorder_for_m10m1"
,"preorder_for_m1m11"
,"preorder_for_m2m10"
,"preorder_for_m3m9"
,"preorder_for_m4m8"
,"preorder_for_m5m7"
,"preorder_for_m6m6"
,"preorder_for_m7m5"
,"preorder_for_m8m4"
,"preorder_for_m9m3"
,"preorder_for_m10m2"
,"preorder_for_m11m1"
,"preorder_for_m1m12"
,"preorder_for_m2m11"
,"preorder_for_m3m10"
,"preorder_for_m4m9"
,"preorder_for_m5m8"
,"preorder_for_m6m7"
,"preorder_for_m7m6"
,"preorder_for_m8m5"
,"preorder_for_m9m4"
,"preorder_for_m10m3"
,"preorder_for_m11m2"
,"preorder_for_m12m1"
,"ProductFamily"
,"BICYC_MBRAND"
,"BICYC_SBRAND"
,"BICYC_POGSG1"
,"BICYC_POGSG2"
,"BICYC_POG_PG"
,"BICYC_TIRSEG"
,"BICYC_SEASON"
,"BICYC_AXLE"
,"BICYC_MKTLNE"
,"BICYC_SPEED"
,"BICYC_TYRTYP"
,"GROSS_WT"
,"VOLUME"
,"BICYK_RATIO"
,"BICYK_WID_MM"
,"BICYK_RIM_IN"
,"BICYC_ERMCS"
,"fc_offset"
,"fc_duration"
,"FUTURE_START_FLAG_y"
,"BICYC_CLABC"
,"demandCumul"
,"DEMAND_Tm1"
,"DEMAND_Tm2"
,"DEMAND_Tm3"
,"DEMAND_Tm4"
,"DEMAND_Tm5"
,"DEMAND_Tm6"
,"DEMAND_Tm7"
,"DEMAND_Tm8"
,"DEMAND_Tm9"
,"DEMAND_Tm10"
,"DEMAND_Tm11"
,"DEMAND_Tm12"
,"DEMAND_Tm13"
,"DEMAND_Tm14"
,"DEMAND_Tm15"
,"DEMAND_Tm16"
,"DEMAND_Tm17"
,"DEMAND_Tm18"
,"DEMAND_Tm19"
,"DEMAND_Tm20"
,"DEMAND_Tm21"
,"DEMAND_Tm22"
,"DEMAND_Tm23"
,"DEMAND_Tm24"
,"DEMAND0"
,"DEMAND3sum"
,"DEMAND3mean"
,"DEMAND6sum"
,"DEMAND6mean"
,"DEMAND12sum"
,"DEMAND12mean"
,"DEMAND0_lag3"
,"DEMAND3sum_lag3"
,"DEMAND3mean_lag3"
,"DEMAND6sum_lag3"
,"DEMAND6mean_lag3"
,"DEMAND12sum_lag3"
,"DEMAND0_lag6"
,"DEMAND3sum_lag6"
,"DEMAND3mean_lag6"
,"DEMAND6sum_lag6"
,"DEMAND6mean_lag6"
,"DEMAND12sum_lag6"
,"DEMAND0_lag12"
,"DEMAND3sum_lag12"
,"DEMAND3mean_lag12"
,"DEMAND6sum_lag12"
,"DEMAND6mean_lag12"
,"DEMAND12sum_lag12"
,"DEMAND3delta"
,"DEMAND6delta"
,"DEMAND6delta12"
,"DEMAND12delta"
,"DEMAND12delta6"
,"DEMAND12delta3"
,"lifetimeMonth"
,"discontinuedTracker"
,"discontinuedTracker2"
,"YEAR_DEMAND"
,"MONTH_DEMAND"
,"meanYear"
,"meanYear3"
,"meanYear12"
,"meanMonth"
,"meanMonth3"
,"meanMonth12"
,"pfsum"
,"pfsum3"
,"pfsum12"
,"MBRANDsum"
,"MBRANDsum3"
,"MBRANDsum12"
,"SBRANDsum"
,"SBRANDsum3"
,"SBRANDsum12"
,"SEASONsum"
,"SEASONsum3"
,"SEASONsum12"
,"MKTLNEsum"
,"MKTLNEsum3"
,"MKTLNEsum12"
,"SPEEDsum"
,"SPEEDsum3"
,"SPEEDsum12"
,"MARKETsum"
,"MARKETsum3"
,"MARKETsum12"
,"MATERIALsum"
,"MATERIALsum3"
,"MATERIALsum12"
,"D1"
,"D2"
,"D3"
,"D4"
,"D5"
,"D6"
,"D7"
,"D8"
,"D9"
,"D10"
,"D11"
,"D12"
,"D13"
,"Dp1"
,"Dp2"
,"Dp3"
,"Dp4"
,"Dp5"
,"Dp6"
,"Dp7"
,"Dp8"
,"Dp9"
,"Dp10"
,"Dp11"
,"Dp12"
,"Dp13"
,"SumPreorders"
from gs_tables_db.TRNG_TDRetail_JCR_FORECAST_INPUT;
replace view TRNG_TDRetail.JCR_FORECAST_INPUT1 as locking row for access select
"MODELID"
,"timeKey"
,"lifetimeMonth"
,"YEAR_DEMAND"
,"MONTH_DEMAND"
,"DEMAND"
from gs_tables_db.TRNG_TDRetail_JCR_FORECAST_INPUT1;
replace view TRNG_TDRetail.JCR_FORECAST_INPUT2 as locking row for access select
"MODELID"
,"timeKey"
,"lifetimeMonth"
,"YEAR_DEMAND"
,"MONTH_DEMAND"
,"DEMAND"
from gs_tables_db.TRNG_TDRetail_JCR_FORECAST_INPUT2;
replace view TRNG_TDRetail.JCR_FORECAST_OUTPUT as locking row for access select
"MODELID"
,"DATE_FORECAST"
,"FORECAST"
from gs_tables_db.TRNG_TDRetail_JCR_FORECAST_OUTPUT;
replace view TRNG_TDRetail.JCR_IRIS as locking row for access select
"sepal_length"
,"sepal_width"
,"petal_length"
,"petal_width"
,"species"
from gs_tables_db.TRNG_TDRetail_JCR_IRIS;
replace view TRNG_TDRetail.JCR_LDA_OUTPUT as locking row for access select
"docid"
,"topicid"
,"topicweight"
,"topicwords"
from gs_tables_db.TRNG_TDRetail_JCR_LDA_OUTPUT;
replace view TRNG_TDRetail.JCR_MDL_INPUT as locking row for access select
"transaction_id"
,"sum_amount"
,"sum_amount_net"
,"max_store_id"
,"count_item_id"
,"avg_price"
,"target"
,"value_basket"
from gs_tables_db.TRNG_TDRetail_JCR_MDL_INPUT;
replace view TRNG_TDRetail.JCR_ROC as locking row for access select
"MODELID"
,"PCTILE"
,"PCTILECNT"
,"TRUTH"
,"ALLCNT"
,"P"
,"N"
,"TP"
,"FP"
,"FN"
,"TN"
,"TPR"
,"FPR"
,"TNR"
,"PPV"
,"NPV"
,"FNR"
,"FDR"
,"FOR"
,"PT"
,"TS"
,"ACC"
,"BA"
,"F1"
,"MCC"
,"FM"
,"BM"
,"MK"
,"TRAPEZOIDAREA"
from gs_tables_db.TRNG_TDRetail_JCR_ROC;
replace view TRNG_TDRetail.JCR_ROC_INPUT as locking row for access select
"MODELID"
,"CUSTID"
,"TGT"
,"PROBA"
from gs_tables_db.TRNG_TDRetail_JCR_ROC_INPUT;
replace view TRNG_TDRetail.JCR_R_SCRIPTS as locking row for access select
"SCRIPTID"
,"RCONTRACT"
,"ROPERATOR"
from gs_tables_db.TRNG_TDRetail_JCR_R_SCRIPTS;
replace view TRNG_TDRetail.JCR_UNPIVOT_TEST as locking row for access select
"V1"
,"V2"
,"V3"
,"V4"
,"V5"
from gs_tables_db.TRNG_TDRetail_JCR_UNPIVOT_TEST;
replace view TRNG_TDRetail.LinearRegressionDemo1 as locking row for access select
"Column Name"
,"B Coefficient"
,"Standard Error"
,"T Statistic"
,"P-Value"
,"Lower"
,"Upper"
,"Standard Coefficient"
,"Incremental R-Squared"
,"Squared Multiple Correlation Coefficient (1-Tolerance)"
from gs_tables_db.TRNG_TDRetail_LinearRegressionDemo1;
replace view TRNG_TDRetail.LinearRegressionDemo1_rpt as locking row for access select
"rid"
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
from gs_tables_db.TRNG_TDRetail_LinearRegressionDemo1_rpt;
replace view TRNG_TDRetail.LinearRegressionDemo1_txt as locking row for access select
"partId"
,"XmlModel"
from gs_tables_db.TRNG_TDRetail_LinearRegressionDemo1_txt;
replace view TRNG_TDRetail.LLOYDS_1_TRANS_SUMMARY as locking row for access select
"var"
,"mean"
,"sdev"
,"p25"
,"p50"
,"p75"
,"p90"
,"p99"
from gs_tables_db.TRNG_TDRetail_LLOYDS_1_TRANS_SUMMARY;
replace view TRNG_TDRetail.LLOYDS_2_join_test as locking row for access select
"party_id"
,"customer_id_numeric"
,"key_n_582"
,"month1"
,"gambling_spend"
,"overall_spend"
,"which_month"
,"arrears_card"
,"arrears_loan"
,"arrears_mortgage"
,"arrears_pca"
,"rep_period"
,"age"
,"credit_turnover"
,"gender"
,"disability_2013"
,"disability_2014_2019"
,"jsa_2013"
,"jsa_2014_2019"
,"prop_gambled.x"
,"CC_payments"
,"DD_rejected"
,"Other_loan_pmnt"
,"Payday_loan_pmnt"
,"RETAIL_PCA_BL"
,"Secured_loan_pmnt"
,"DEATH_DT"
,"DOB"
,"GAMBLING_PROP"
,"LAST_OBS"
,"STATUS"
,"TIME_O"
,"gambling"
,"prop_spend"
,"spend"
,"rep_dt"
,"AGRMNT_ID"
,"product"
,"bar_spend"
,"credit_card"
,"debt_recovery"
,"education_spend"
,"fast_food_spend"
,"fitness_spend"
,"gambling_dummy.x"
,"gaming_spend"
,"hobbies_spend"
,"insurance_spend"
,"ISA"
,"loan"
,"missed_mortgage_payment"
,"misses_card_payment"
,"misses_loan_payment"
,"monthly_spend"
,"mortgage"
,"mortgage_spend"
,"nighttime_spend"
,"N_transactions.x"
,"off_licence_spend"
,"payday_loan"
,"pension"
,"prescription_spend"
,"savings"
,"self_care_spend"
,"social_activities_spend"
,"tobacco_spend"
,"transactions_spend.x"
,"travel_spend"
,"unplanned_od"
,"utilisation"
,"N_transactions.y"
,"transactions_spend.y"
,"gambling_dummy.y"
,"prop_gambled.y"
,"N_transactions_cond"
,"transactions_spend_cond"
,"prop_gambled_cond"
from gs_tables_db.TRNG_TDRetail_LLOYDS_2_join_test;
replace view TRNG_TDRetail.LLOYDS_KMEANS_clusters as locking row for access select
"clusterid"
,"cnt"
,"age"
,"GAMBLING_PROP"
,"gambling_spend"
,"overall_spend"
,"credit_turnover"
,"nighttime_spend"
from gs_tables_db.TRNG_TDRetail_LLOYDS_KMEANS_clusters;
replace view TRNG_TDRetail.LLOYDS_KMEANS_input as locking row for access select
"party_id"
,"age"
,"GAMBLING_PROP"
,"gambling_spend"
,"overall_spend"
,"credit_turnover"
,"nighttime_spend"
from gs_tables_db.TRNG_TDRetail_LLOYDS_KMEANS_input;
replace view TRNG_TDRetail.LLOYDS_KMEANS_input_rescaled as locking row for access select
"party_id"
,"age"
,"GAMBLING_PROP"
,"gambling_spend"
,"overall_spend"
,"credit_turnover"
,"nighttime_spend"
from gs_tables_db.TRNG_TDRetail_LLOYDS_KMEANS_input_rescaled;
replace view TRNG_TDRetail.LLOYDS_KMEANS_output as locking row for access select
"clusterid"
,"party_id"
from gs_tables_db.TRNG_TDRetail_LLOYDS_KMEANS_output;
replace view TRNG_TDRetail.LLOYDS_LM_input as locking row for access select
"party_id"
,"customer_id_numeric"
,"key_n_582"
,"month1"
,"gambling_spend"
,"overall_spend"
,"which_month"
,"arrears_card"
,"arrears_loan"
,"arrears_mortgage"
,"arrears_pca"
,"rep_period"
,"age"
,"credit_turnover"
,"gender"
,"disability_2013"
,"disability_2014_2019"
,"jsa_2013"
,"jsa_2014_2019"
,"prop_gambled"
,"CC_payments"
,"DD_rejected"
,"Other_loan_pmnt"
,"Payday_loan_pmnt"
,"RETAIL_PCA_BL"
,"Secured_loan_pmnt"
,"DEATH_DT"
,"DOB"
,"GAMBLING_PROP"
,"LAST_OBS"
,"STATUS"
,"TIME_O"
,"gambling"
,"prop_spend"
,"spend"
,"rep_dt"
,"AGRMNT_ID"
,"product"
,"bar_spend"
,"credit_card"
,"debt_recovery"
,"education_spend"
,"fast_food_spend"
,"fitness_spend"
,"gambling_dummy"
,"gaming_spend"
,"hobbies_spend"
,"insurance_spend"
,"ISA"
,"loan"
,"missed_mortgage_payment"
,"misses_card_payment"
,"misses_loan_payment"
,"monthly_spend"
,"mortgage"
,"mortgage_spend"
,"nighttime_spend"
,"N_transactions"
,"off_licence_spend"
,"payday_loan"
,"pension"
,"prescription_spend"
,"savings"
,"self_care_spend"
,"social_activities_spend"
,"tobacco_spend"
,"transactions_spend"
,"travel_spend"
,"unplanned_od"
,"utilisation"
from gs_tables_db.TRNG_TDRetail_LLOYDS_LM_input;
replace view TRNG_TDRetail.LLOYDS_LM_input_rescaled as locking row for access select
"party_id"
,"gender"
,"disability_2014_2019"
,"jsa_2014_2019"
,"age"
,"prop_gambled"
from gs_tables_db.TRNG_TDRetail_LLOYDS_LM_input_rescaled;
replace view TRNG_TDRetail.LLOYDS_LM_Logistic_MDL as locking row for access select
"Column Name"
,"B Coefficient"
,"Standard Error"
,"Wald Statistic"
,"T Statistic"
,"P-Value"
,"Odds Ratio"
,"Lower"
,"Upper"
,"Partial R"
,"Standardized Coefficient"
from gs_tables_db.TRNG_TDRetail_LLOYDS_LM_Logistic_MDL;
replace view TRNG_TDRetail.LLOYDS_LM_Logistic_MDL_rpt as locking row for access select
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
from gs_tables_db.TRNG_TDRetail_LLOYDS_LM_Logistic_MDL_rpt;
replace view TRNG_TDRetail.LLOYDS_LM_Logistic_MDL_txt as locking row for access select
"partId"
,"XmlModel"
from gs_tables_db.TRNG_TDRetail_LLOYDS_LM_Logistic_MDL_txt;
replace view TRNG_TDRetail.LOCATION as locking row for access select
"Location_Id"
,"Location_Name"
,"Location_Addr1"
,"Location_Addr2"
,"Location_Zipcode"
,"Location_Open_Dt"
,"Location_Close_Dt"
,"Location_Effective_Dt"
,"Location_Total_Area_Meas"
,"Chain_Cd"
,"Channel_Cd"
,"District_Cd"
,"Parent_Location_Id"
,"Location_Mgr_Associate_Id"
,"Location_Type_Cd"
from gs_tables_db.TRNG_TDRetail_LOCATION;
replace view TRNG_TDRetail.ml__valib_association_1618937536058150_11 as locking row for access select
"ITEM1OF2"
,"ITEM2OF2"
,"LSUPPORT"
,"RSUPPORT"
,"SUPPORT"
,"CONFIDENCE"
,"LIFT"
,"ZSCORE"
from gs_tables_db.TRNG_TDRetail_ml__valib_association_1618937536058150_11;
replace view TRNG_TDRetail.ml__valib_association_1618937536058150_21 as locking row for access select
"ITEM1OF3"
,"ITEM2OF3"
,"ITEM3OF3"
,"LSUPPORT"
,"RSUPPORT"
,"SUPPORT"
,"CONFIDENCE"
,"LIFT"
,"ZSCORE"
from gs_tables_db.TRNG_TDRetail_ml__valib_association_1618937536058150_21;
replace view TRNG_TDRetail.ml__valib_decisiontreepredict_1618940373924590 as locking row for access select
"transaction_id"
,"target"
,"_tm_node_id"
from gs_tables_db.TRNG_TDRetail_ml__valib_decisiontreepredict_1618940373924590;
replace view TRNG_TDRetail.ml__valib_decisiontreepredict_1618940373924590_1 as locking row for access select
"_tm_node_id"
,"_tm_prediction"
from gs_tables_db.TRNG_TDRetail_ml__valib_decisiontreepredict_1618940373924590_1;
replace view TRNG_TDRetail.ml__valib_decisiontreepredict_1618940373924590_2 as locking row for access select
"_tm_node_id"
,"_tm_sequence_id"
,"_tm_rule"
from gs_tables_db.TRNG_TDRetail_ml__valib_decisiontreepredict_1618940373924590_2;
replace view TRNG_TDRetail.ml__valib_decisiontreepredict_1618948679828002 as locking row for access select
"transaction_id"
,"target"
,"_tm_node_id"
from gs_tables_db.TRNG_TDRetail_ml__valib_decisiontreepredict_1618948679828002;
replace view TRNG_TDRetail.ml__valib_decisiontreepredict_1618948679828002_1 as locking row for access select
"_tm_node_id"
,"_tm_prediction"
from gs_tables_db.TRNG_TDRetail_ml__valib_decisiontreepredict_1618948679828002_1;
replace view TRNG_TDRetail.ml__valib_decisiontreepredict_1618948679828002_2 as locking row for access select
"_tm_node_id"
,"_tm_sequence_id"
,"_tm_rule"
from gs_tables_db.TRNG_TDRetail_ml__valib_decisiontreepredict_1618948679828002_2;
replace view TRNG_TDRetail.ml__valib_decisiontreepredict_1618993737047644 as locking row for access select
"transaction_id"
,"target"
,"_tm_node_id"
from gs_tables_db.TRNG_TDRetail_ml__valib_decisiontreepredict_1618993737047644;
replace view TRNG_TDRetail.ml__valib_decisiontreepredict_1618993737047644_1 as locking row for access select
"_tm_node_id"
,"_tm_prediction"
from gs_tables_db.TRNG_TDRetail_ml__valib_decisiontreepredict_1618993737047644_1;
replace view TRNG_TDRetail.ml__valib_decisiontreepredict_1618993737047644_2 as locking row for access select
"_tm_node_id"
,"_tm_sequence_id"
,"_tm_rule"
from gs_tables_db.TRNG_TDRetail_ml__valib_decisiontreepredict_1618993737047644_2;
replace view TRNG_TDRetail.ml__valib_decisiontree_1618938500192280 as locking row for access select
"partno"
,"sqlpart"
from gs_tables_db.TRNG_TDRetail_ml__valib_decisiontree_1618938500192280;
replace view TRNG_TDRetail.ml__valib_decisiontree_1618942685992395 as locking row for access select
"partno"
,"sqlpart"
from gs_tables_db.TRNG_TDRetail_ml__valib_decisiontree_1618942685992395;
replace view TRNG_TDRetail.ml__valib_decisiontree_1618942822929503 as locking row for access select
"partno"
,"sqlpart"
from gs_tables_db.TRNG_TDRetail_ml__valib_decisiontree_1618942822929503;
replace view TRNG_TDRetail.ml__valib_decisiontree_1618945205628818 as locking row for access select
"partno"
,"sqlpart"
from gs_tables_db.TRNG_TDRetail_ml__valib_decisiontree_1618945205628818;
replace view TRNG_TDRetail.ml__valib_kmeanspredict_16181000783767858 as locking row for access select
"clusterid"
,"transaction_id"
,"avg_price"
,"count_item_id"
,"sum_amount_net"
from gs_tables_db.TRNG_TDRetail_ml__valib_kmeanspredict_16181000783767858;
replace view TRNG_TDRetail.ml__valib_kmeans_16181001459650636 as locking row for access select
"clusterid"
,"cnt"
,"avg_price"
,"count_item_id"
,"sum_amount_net"
from gs_tables_db.TRNG_TDRetail_ml__valib_kmeans_16181001459650636;
replace view TRNG_TDRetail.ml__valib_logregpredict_16181001027884072 as locking row for access select
"transaction_id"
,"Probability"
,"tgt_estimated"
from gs_tables_db.TRNG_TDRetail_ml__valib_logregpredict_16181001027884072;
replace view TRNG_TDRetail.ml__valib_logregpredict_1618995359820009 as locking row for access select
"transaction_id"
,"Probability"
,"tgt_estimated"
from gs_tables_db.TRNG_TDRetail_ml__valib_logregpredict_1618995359820009;
replace view TRNG_TDRetail.ml__valib_logreg_1618995196832341 as locking row for access select
"Column Name"
,"B Coefficient"
,"Standard Error"
,"Wald Statistic"
,"T Statistic"
,"P-Value"
,"Odds Ratio"
,"Lower"
,"Upper"
,"Partial R"
,"Standardized Coefficient"
from gs_tables_db.TRNG_TDRetail_ml__valib_logreg_1618995196832341;
replace view TRNG_TDRetail.ml__valib_logreg_1618995196832341_rpt as locking row for access select
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
from gs_tables_db.TRNG_TDRetail_ml__valib_logreg_1618995196832341_rpt;
replace view TRNG_TDRetail.ml__valib_logreg_1618995196832341_txt as locking row for access select
"partId"
,"XmlModel"
from gs_tables_db.TRNG_TDRetail_ml__valib_logreg_1618995196832341_txt;
replace view TRNG_TDRetail.ml__valib_transform_16191604019062 as locking row for access select
"transaction_id"
,"inc1"
,"inc2"
,"inc3"
from gs_tables_db.TRNG_TDRetail_ml__valib_transform_16191604019062;
replace view TRNG_TDRetail.ml__valib_transform_16192412439276 as locking row for access select
"transaction_id"
,"sum_amount_drived"
from gs_tables_db.TRNG_TDRetail_ml__valib_transform_16192412439276;
replace view TRNG_TDRetail.ml__valib_transform_16192590704928 as locking row for access select
"transaction_id"
,"good_value_basket"
,"bad_value_basket"
from gs_tables_db.TRNG_TDRetail_ml__valib_transform_16192590704928;
replace view TRNG_TDRetail.ml__valib_transform_16192728011620 as locking row for access select
"transaction_id"
,"sum_amount_0_100"
,"sum_amount_logit"
,"sum_amount_mlogit"
,"sum_amount_tanh"
,"sum_amount_z"
from gs_tables_db.TRNG_TDRetail_ml__valib_transform_16192728011620;
replace view TRNG_TDRetail.ml__valib_transform_16192796093160 as locking row for access select
"transaction_id"
,"amount_3"
,"amount_4"
,"amount_5"
from gs_tables_db.TRNG_TDRetail_ml__valib_transform_16192796093160;
replace view TRNG_TDRetail.ml__valib_transform_16192989384014 as locking row for access select
"transaction_id"
,"amount_3"
,"amount_4"
,"amount_5"
from gs_tables_db.TRNG_TDRetail_ml__valib_transform_16192989384014;
replace view TRNG_TDRetail.ml__valib_transform_16193062902887 as locking row for access select
"transaction_id"
,"sum_amount_drived"
from gs_tables_db.TRNG_TDRetail_ml__valib_transform_16193062902887;
replace view TRNG_TDRetail.ml__valib_transform_16193175801759 as locking row for access select
"transaction_id"
,"amount_3"
,"amount_4"
,"amount_5"
,"sum_amount_drived"
,"good_value_basket"
,"bad_value_basket"
,"sum_amount_0_100"
,"sum_amount_logit"
,"sum_amount_mlogit"
,"sum_amount_tanh"
,"sum_amount_z"
from gs_tables_db.TRNG_TDRetail_ml__valib_transform_16193175801759;
replace view TRNG_TDRetail.ml__valib_transform_16193307069330 as locking row for access select
"transaction_id"
,"amount_3"
,"amount_4"
,"amount_5"
from gs_tables_db.TRNG_TDRetail_ml__valib_transform_16193307069330;
replace view TRNG_TDRetail.ml__valib_transform_16194116866268 as locking row for access select
"transaction_id"
,"amount_3"
,"amount_4"
,"amount_5"
,"sum_amount_drived"
,"good_value_basket"
,"bad_value_basket"
,"sum_amount_0_100"
,"sum_amount_logit"
,"sum_amount_mlogit"
,"sum_amount_tanh"
,"sum_amount_z"
from gs_tables_db.TRNG_TDRetail_ml__valib_transform_16194116866268;
replace view TRNG_TDRetail.ml__valib_transform_16194196560242 as locking row for access select
"transaction_id"
,"sum_amount_0_100"
,"sum_amount_logit"
,"sum_amount_mlogit"
,"sum_amount_tanh"
,"sum_amount_z"
from gs_tables_db.TRNG_TDRetail_ml__valib_transform_16194196560242;
replace view TRNG_TDRetail.ml__valib_transform_16194497027302 as locking row for access select
"transaction_id"
,"sum_amount_0_100"
,"sum_amount_logit"
,"sum_amount_mlogit"
,"sum_amount_tanh"
,"sum_amount_z"
from gs_tables_db.TRNG_TDRetail_ml__valib_transform_16194497027302;
replace view TRNG_TDRetail.ml__valib_transform_16198839012479 as locking row for access select
"transaction_id"
,"sum_amount_0_100"
,"sum_amount_logit"
,"sum_amount_mlogit"
,"sum_amount_tanh"
,"sum_amount_z"
from gs_tables_db.TRNG_TDRetail_ml__valib_transform_16198839012479;
replace view TRNG_TDRetail.PROMOTION as locking row for access select
"Promo_ID"
,"Promo_Desc"
from gs_tables_db.TRNG_TDRetail_PROMOTION;
replace view TRNG_TDRetail.PROMO_OFFER as locking row for access select
"Promo_Offer_ID"
,"Promo_Offer_Desc"
,"Promo_Offer_Start_Date"
,"Promo_Offer_End_Date"
,"Promo_Offer_Type_CD"
,"Promo_ID"
from gs_tables_db.TRNG_TDRetail_PROMO_OFFER;
replace view TRNG_TDRetail.PROMO_OFFER_TYPE as locking row for access select
"Promo_Offer_Type_CD"
,"Promo_Offer_Type_Desc"
from gs_tables_db.TRNG_TDRetail_PROMO_OFFER_TYPE;
replace view TRNG_TDRetail.REGION as locking row for access select
"Region_Cd"
,"Region_Name"
,"Division_Cd"
,"Region_Mgr_Associate_Id"
from gs_tables_db.TRNG_TDRetail_REGION;
replace view TRNG_TDRetail.SALES_TRANSACTION as locking row for access select
"Sales_Tran_Id"
,"Visit_Id"
,"location_id"
,"Tran_Status_Cd"
,"Reported_As_Dttm"
,"Tran_Type_Cd"
,"MKB_Cost_Amt"
,"MKB_Item_Qty"
,"MKB_Number_Unique_Items_Qty"
,"MKB_Rev_Amt"
,"Associate_Party_Id"
,"individual_party_id"
,"Tran_Start_Dttm_DD"
,"Tran_Date"
,"Tran_End_Dttm_DD"
from gs_tables_db.TRNG_TDRetail_SALES_TRANSACTION;
replace view TRNG_TDRetail.SALES_TRANSACTION_LINE as locking row for access select
"Sales_Tran_Id"
,"Sales_Tran_Line_Num"
,"Item_Id"
,"Item_Qty"
,"Unit_Selling_Price_Amt"
,"Unit_Cost_Amt"
,"Tran_Line_Status_Cd"
,"Sales_Tran_Line_Start_Dttm"
,"Tran_Line_Sales_Type_Cd"
,"Sales_Tran_Line_End_Dttm"
,"Tran_Line_Date"
,"location_id"
from gs_tables_db.TRNG_TDRetail_SALES_TRANSACTION_LINE;
replace view TRNG_TDRetail.SALES_TRANSACTION_LINE_STAGING as locking row for access select
"Sales_Tran_Id"
,"Sales_Tran_Line_Num"
,"Item_Id"
,"Item_Qty"
,"Unit_Selling_Price_Amt"
,"Unit_Cost_Amt"
,"Tran_Line_Status_Cd"
,"Sales_Tran_Line_Start_Dttm"
,"Tran_Line_Sales_Type_Cd"
,"Sales_Tran_Line_End_Dttm"
,"Tran_Line_Date"
,"location_id"
from gs_tables_db.TRNG_TDRetail_SALES_TRANSACTION_LINE_STAGING;
replace view TRNG_TDRetail.SALES_TRANSACTION_STAGING as locking row for access select
"Sales_Tran_Id"
,"Visit_Id"
,"location_id"
,"Tran_Status_Cd"
,"Reported_As_Dttm"
,"Tran_Type_Cd"
,"MKB_Cost_Amt"
,"MKB_Item_Qty"
,"MKB_Number_Unique_Items_Qty"
,"MKB_Rev_Amt"
,"Associate_Party_Id"
,"individual_party_id"
,"Tran_Start_Dttm_DD"
,"Tran_Date"
,"Tran_End_Dttm_DD"
from gs_tables_db.TRNG_TDRetail_SALES_TRANSACTION_STAGING;
replace view TRNG_TDRetail.SALES_TRANSACTION_TYPE as locking row for access select
"Sales_Transaction_Type_Cd"
,"Sales_Transaction_Type_Desc"
from gs_tables_db.TRNG_TDRetail_SALES_TRANSACTION_TYPE;
replace view TRNG_TDRetail.STORES as locking row for access select
"STORE_ID"
,"STORE_NAME"
,"ADDRESS"
,"CUR_INV_OH"
,"YTD_SALES"
,"YTD_COGS"
,"YTD_AVG_INV"
,"YTD_INV_TURNS"
,"STORE_MGR"
,"STORE_CONTACT"
,"GEOMETRY_VARCHAR"
from gs_tables_db.TRNG_TDRetail_STORES;
replace view TRNG_TDRetail.SUBCATEGORY as locking row for access select
"SubCategory_ID"
,"SubCategory_Desc"
,"Category_ID"
from gs_tables_db.TRNG_TDRetail_SUBCATEGORY;
replace view TRNG_TDRetail.ZIPCODES as locking row for access select
"zip_code"
,"longitude"
,"latitude"
,"city"
,"state"
,"county"
from gs_tables_db.TRNG_TDRetail_ZIPCODES;
replace view TRNG_TDRetail.JCR_CALENDAR as 
select * from sys_calendar.CALENDAR

replace view TRNG_TDRetail.JCR_CLASSIFICATION_METRICS2 as 
select 
 MODELID
,CUSTID
,PCTILE
,TGT
,PROBA
,PRE 
,case when TGT = 1 then 1 else 0 end as P
,case when TGT = 0 then 1 else 0 end as N
,case when TGT =  PRE and TGT = 1 then 1 else 0 end as TP
,case when TGT =  PRE and TGT = 0 then 1 else 0 end as TN
,case when TGT <> PRE and TGT = 0 then 1 else 0 end as FP 
,case when TGT <> PRE and TGT = 1 then 1 else 0 end as FN
,sum(FP) over (partition by 1) as TFP
,sum(TP) over (partition by 1) as TTP
from TRNG_TDRetail.JCR_CLASSIFICATION_METRICS

replace view TRNG_TDRetail.JCR_CLASSIFICATION_METRICS4 as 
select 
a.* 
,TP*1.0000/P as TPR
,TN*1.0000/N as TNR
,TP*1.0000/(TP+FP) as PPV
,TN*1.0000/(TN+FN) as NPV
,FN*1.0000/P as FNR
,FP*1.0000/N as FPR
,FP*1.0000/(FP+TP) as FDR
,FN*1.0000/(FN+TN) as "FOR"

,(1-FPR-TPR)/2 as AUC

,(sqrt(TPR*(-1*TNR+1)) + TNR - 1)/(TPR+TNR-1) as PT
,TP*1.0000/(TP+FN+FP) as TS

,(TP+TN)*1.0000/(P+N) as ACC
,(TPR + TNR)*1.0000/2 as BA

,2*(PPV*TPR)/(PPV+TPR) as F1

,(TP*TN-FP*FN)/sqrt((TP+FP)*(TP+FN)*(TN+FP)*(TN+FN)) as MCC
,sqrt(PPV*TPR) as FM
,TPR+TNR-1 as BM
,PPV+NPV-1 as MK

from TRNG_TDRetail.JCR_CLASSIFICATION_METRICS3 a

 CREATE VIEW "TRNG_TDRETAIL"."ml__aggregate_agg__1618937487951264" AS select "transaction_id", sum(amount) AS sum_amount, sum(amount_net) AS sum_amount_net, max(store_id) AS max_store_id, count(item_id) AS count_item_id from "JCR_TRANS_F" group by "transaction_id"

 CREATE VIEW "TRNG_TDRETAIL"."ml__aggregate_agg__1618937499929571" AS select "transaction_id", sum(amount) AS sum_amount, sum(amount_net) AS sum_amount_net, max(store_id) AS max_store_id, count(item_id) AS count_item_id from "JCR_TRANS_F" group by "transaction_id"

 CREATE VIEW "TRNG_TDRETAIL"."ml__aggregate_count__16181001346570287" AS select "target", "tgt_estimated", count(t1_transaction_id) AS count_t1_transaction_id, count(t2_transaction_id) AS count_t2_transaction_id, count("Probability") AS "count_Probability" from (select "t1"."transaction_id" as "t1_transaction_id", "t2"."transaction_id" as "t2_transaction_id", "target", "Probability", "tgt_estimated" from (select transaction_id,target from "JCR_MDL_INPUT") as t1 inner join "TRNG_TDRETAIL"."ml__valib_logregpr
edict_16181001027884072" as t2 on "t1"."transaction_id" = "t2"."transaction_id") as temp_table group by "target", "tgt_estimated"

 CREATE VIEW "TRNG_TDRETAIL"."ml__aggregate_count__16181001592587953" AS select "target", "tgt_estimated", count(t1_transaction_id) AS count_t1_transaction_id, count(t2_transaction_id) AS count_t2_transaction_id, count("Probability") AS "count_Probability" from (select "t1"."transaction_id" as "t1_transaction_id", "t2"."transaction_id" as "t2_transaction_id", "target", "Probability", "tgt_estimated" from (select transaction_id,target from "JCR_MDL_INPUT") as t1 inner join "TRNG_TDRETAIL"."ml__valib_logregpr
edict_16181001027884072" as t2 on "t1"."transaction_id" = "t2"."transaction_id") as temp_table group by "target", "tgt_estimated"

 CREATE VIEW "TRNG_TDRETAIL"."ml__aggregate_count__1618937851357315" AS select "sampleid", count(transaction_id) AS count_transaction_id, count(sum_amount) AS count_sum_amount, count(sum_amount_net) AS count_sum_amount_net, count(max_store_id) AS count_max_store_id, count(count_item_id) AS count_count_item_id from (select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,sampleid as "sampleid" from "TRNG_TDRETAIL"."ml__aggregate_agg__1618937499929571" SAMPLE 0.2,0.8) as temp_table group by
 "sampleid"

 CREATE VIEW "TRNG_TDRETAIL"."ml__aggregate_count__1618938194170301" AS select "sampleid", count(transaction_id) AS count_transaction_id, count(sum_amount) AS count_sum_amount, count(sum_amount_net) AS count_sum_amount_net, count(max_store_id) AS count_max_store_id, count(count_item_id) AS count_count_item_id, count(avg_price) AS count_avg_price, count(target) AS count_target, count(value_basket) AS count_value_basket from (select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price
,target,value_basket,sampleid as "sampleid" from "TRNG_TDRETAIL"."ml__assign__1618945521983675" SAMPLE 0.2,0.8) as temp_table group by "sampleid"

 CREATE VIEW "TRNG_TDRETAIL"."ml__aggregate_count__1618941206332313" AS select "sampleid", count(transaction_id) AS count_transaction_id, count(sum_amount) AS count_sum_amount, count(sum_amount_net) AS count_sum_amount_net, count(max_store_id) AS count_max_store_id, count(count_item_id) AS count_count_item_id, count(avg_price) AS count_avg_price, count(target) AS count_target, count(value_basket) AS count_value_basket from (select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price
,target,value_basket,sampleid as "sampleid" from "JCR_MDL_INPUT" SAMPLE 0.2,0.8) as temp_table group by "sampleid"

 CREATE VIEW "TRNG_TDRETAIL"."ml__aggregate_count__1618999850695880" AS select "target", "tgt_estimated", count(t1_transaction_id) AS count_t1_transaction_id, count(t2_transaction_id) AS count_t2_transaction_id, count("Probability") AS "count_Probability" from (select "t1"."transaction_id" as "t1_transaction_id", "t2"."transaction_id" as "t2_transaction_id", "target", "Probability", "tgt_estimated" from (select transaction_id,target from "JCR_MDL_INPUT") as t1 inner join "TRNG_TDRETAIL"."ml__valib_logregpre
dict_16181001027884072" as t2 on "t1"."transaction_id" = "t2"."transaction_id") as temp_table group by "target", "tgt_estimated"

 CREATE VIEW "TRNG_TDRETAIL"."ml__aggregate_count__16193373333660" AS select "amount_3", "amount_4", "amount_5", count(transaction_id) AS count_transaction_id from "TRNG_TDRETAIL"."ml__valib_transform_16193307069330" group by "amount_3", "amount_4", "amount_5"

 CREATE VIEW "TRNG_TDRETAIL"."ml__assign__1618936939094060" AS select transaction_id AS transaction_id, sum_amount * CAST(1.0 as FLOAT) AS sum_amount, sum_amount_net AS sum_amount_net, max_store_id AS max_store_id, count_item_id AS count_item_id, (sum_amount * CAST(1.0 as FLOAT)) / count_item_id AS avg_price, random(0, 1) AS target from "TRNG_TDRETAIL"."ml__aggregate_agg__1618937487951264"

 CREATE VIEW "TRNG_TDRETAIL"."ml__assign__1618945521983675" AS select transaction_id AS transaction_id, sum_amount AS sum_amount, sum_amount_net AS sum_amount_net, max_store_id AS max_store_id, count_item_id AS count_item_id, avg_price AS avg_price, target AS target, CASE WHEN (sum_amount_net > 20) THEN 'good' ELSE 'bad' END AS value_basket from "TRNG_TDRETAIL"."ml__assign__1618936939094060"

 CREATE VIEW "TRNG_TDRETAIL"."ml__filter__1618936864688444" AS select * from (select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket,sampleid as "sampleid" from "TRNG_TDRETAIL"."ml__assign__1618945521983675" SAMPLE 0.2,0.8) as temp_table where "sampleid" = 1

 CREATE VIEW "TRNG_TDRETAIL"."ml__filter__1618937198797886" AS select * from (select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket,sampleid as "sampleid" from "TRNG_TDRETAIL"."ml__assign__1618945521983675" SAMPLE 0.2,0.8) as temp_table where "sampleid" = 2

 CREATE VIEW "TRNG_TDRETAIL"."ml__filter__1618940043656100" AS select * from (select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket,sampleid as "sampleid" from "TRNG_TDRETAIL"."ml__assign__1618945521983675" SAMPLE 0.2,0.8) as temp_table where "sampleid" = 1

 CREATE VIEW "TRNG_TDRETAIL"."ml__filter__1618940665325505" AS select * from (select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket,sampleid as "sampleid" from "TRNG_TDRETAIL"."ml__assign__1618945521983675" SAMPLE 0.2,0.8) as temp_table where "sampleid" = 2

 CREATE VIEW "TRNG_TDRETAIL"."ml__filter__1618940757587922" AS select * from (select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,sampleid as "sampleid" from "TRNG_TDRETAIL"."ml__aggregate_agg__1618937499929571" SAMPLE 0.2,0.8) as temp_table where "sampleid" = 1

 CREATE VIEW "TRNG_TDRETAIL"."ml__filter__1618941867253716" AS select * from (select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket,sampleid as "sampleid" from "JCR_MDL_INPUT" SAMPLE 0.2,0.8) as temp_table where "sampleid" = 1

 CREATE VIEW "TRNG_TDRETAIL"."ml__filter__1618942355794860" AS select * from (select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket,sampleid as "sampleid" from "JCR_MDL_INPUT" SAMPLE 0.2,0.8) as temp_table where "sampleid" = 2

 CREATE VIEW "TRNG_TDRETAIL"."ml__join__16181000296199793" AS select "t1"."transaction_id" as "t1_transaction_id", "t2"."transaction_id" as "t2_transaction_id", "target", "Probability", "tgt_estimated" from (select transaction_id,target from "JCR_MDL_INPUT") as t1 inner join "TRNG_TDRETAIL"."ml__valib_logregpredict_16181001027884072" as t2 on "t1"."transaction_id" = "t2"."transaction_id"

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16181000208913492" AS select target,tgt_estimated,count_t1_transaction_id from (select "target", "tgt_estimated", count(t1_transaction_id) AS count_t1_transaction_id, count(t2_transaction_id) AS count_t2_transaction_id, count("Probability") AS "count_Probability" from (select "t1"."transaction_id" as "t1_transaction_id", "t2"."transaction_id" as "t2_transaction_id", "target", "Probability", "tgt_estimated" from (select transaction_id,target from "JCR_MDL_INPUT") as 
t1 inner join "TRNG_TDRETAIL"."ml__valib_logregpredict_16181001027884072" as t2 on "t1"."transaction_id" = "t2"."transaction_id") as temp_table group by "target", "tgt_estimated") as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16181000218146895" AS select target,tgt_estimated,count_t1_transaction_id from (select "target", "tgt_estimated", count(t1_transaction_id) AS count_t1_transaction_id, count(t2_transaction_id) AS count_t2_transaction_id, count("Probability") AS "count_Probability" from (select "t1"."transaction_id" as "t1_transaction_id", "t2"."transaction_id" as "t2_transaction_id", "target", "Probability", "tgt_estimated" from (select transaction_id,target from "JCR_MDL_INPUT") as 
t1 inner join "TRNG_TDRETAIL"."ml__valib_logregpredict_16181001027884072" as t2 on "t1"."transaction_id" = "t2"."transaction_id") as temp_table group by "target", "tgt_estimated") as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16181001023007074" AS select target,tgt_estimated,count_t1_transaction_id from (select "target", "tgt_estimated", count(t1_transaction_id) AS count_t1_transaction_id, count(t2_transaction_id) AS count_t2_transaction_id, count("Probability") AS "count_Probability" from (select "t1"."transaction_id" as "t1_transaction_id", "t2"."transaction_id" as "t2_transaction_id", "target", "Probability", "tgt_estimated" from (select transaction_id,target from "JCR_MDL_INPUT") as 
t1 inner join "TRNG_TDRETAIL"."ml__valib_logregpredict_16181001027884072" as t2 on "t1"."transaction_id" = "t2"."transaction_id") as temp_table group by "target", "tgt_estimated") as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16181001385810602" AS select target,tgt_estimated,count_t1_transaction_id from (select "target", "tgt_estimated", count(t1_transaction_id) AS count_t1_transaction_id, count(t2_transaction_id) AS count_t2_transaction_id, count("Probability") AS "count_Probability" from (select "t1"."transaction_id" as "t1_transaction_id", "t2"."transaction_id" as "t2_transaction_id", "target", "Probability", "tgt_estimated" from (select transaction_id,target from "JCR_MDL_INPUT") as 
t1 inner join "TRNG_TDRETAIL"."ml__valib_logregpredict_16181001027884072" as t2 on "t1"."transaction_id" = "t2"."transaction_id") as temp_table group by "target", "tgt_estimated") as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16181001964346799" AS select clusterid,transaction_id,avg_price,count_item_id,sum_amount_net from (select * from (select row_number() over (order by "clusterid" asc) - 1 as tdml_row_num, clusterid,transaction_id,avg_price,count_item_id,sum_amount_net from "TRNG_TDRETAIL"."ml__valib_kmeanspredict_16181000783767858") as temp_table where tdml_row_num < 10) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16181003297822207" AS select transaction_id,"Probability",tgt_estimated from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,"Probability",tgt_estimated from "TRNG_TDRETAIL"."ml__valib_logregpredict_16181001027884072") as temp_table where tdml_row_num < 5) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16181007897354804" AS select target,tgt_estimated,count_t1_transaction_id from (select "target", "tgt_estimated", count(t1_transaction_id) AS count_t1_transaction_id, count(t2_transaction_id) AS count_t2_transaction_id, count("Probability") AS "count_Probability" from (select "t1"."transaction_id" as "t1_transaction_id", "t2"."transaction_id" as "t2_transaction_id", "target", "Probability", "tgt_estimated" from (select transaction_id,target from "TRNG_TDRETAIL"."ml_
_filter__1618941867253716") as t1 inner join "TRNG_TDRETAIL"."ml__valib_logregpredict_16181001027884072" as t2 on "t1"."transaction_id" = "t2"."transaction_id") as temp_table group by "target", "tgt_estimated") as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__1618936866569104" AS select "ITEM1OF3","ITEM2OF3","ITEM3OF3","LSUPPORT","RSUPPORT","SUPPORT","CONFIDENCE","LIFT","ZSCORE" from (select * from (select row_number() over (order by "ITEM1OF3" asc) - 1 as tdml_row_num, "ITEM1OF3","ITEM2OF3","ITEM3OF3","LSUPPORT","RSUPPORT","SUPPORT","CONFIDENCE","LIFT","ZSCORE" from "TRNG_TDRETAIL"."ml__valib_association_1618937536058150_21") as temp_table where tdml_row_num < 10) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__1618937000616733" AS select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket from "JCR_MDL_INPUT") as temp_table where tdml_row_num < 5) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__1618937571932278" AS select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id from "TRNG_TDRETAIL"."ml__aggregate_agg__1618937499929571") as temp_table where tdml_row_num < 2) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__1618937968590739" AS select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket from "JCR_MDL_INPUT") as temp_table where tdml_row_num < 2) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__1618937984128233" AS select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket from "JCR_MDL_INPUT") as temp_table where tdml_row_num < 5) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__1618938017873704" AS select iteration,temp_id,primary_key,transaction_id,transaction_line_id,amount,item_id,store_id,amount_net from (select * from (select row_number() over (order by "primary_key" asc) - 1 as tdml_row_num, iteration,temp_id,primary_key,transaction_id,transaction_line_id,amount,item_id,store_id,amount_net from "JCR_TRANS_F") as temp_table where tdml_row_num < 5) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__1618938325143311" AS select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket from "JCR_MDL_INPUT") as temp_table where tdml_row_num < 2) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__1618938518054755" AS select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket from "JCR_MDL_INPUT") as temp_table where tdml_row_num < 5) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__1618941786845314" AS select transaction_id,item_id,store_id,sum_iteration,sum_temp_id,sum_primary_key,sum_transaction_line_id,sum_amount,sum_amount_net from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,item_id,store_id,sum_iteration,sum_temp_id,sum_primary_key,sum_transaction_line_id,sum_amount,sum_amount_net from (select "transaction_id", "item_id", "store_id", sum(iteration) AS sum_iteration, sum(temp
_id) AS sum_temp_id, sum(primary_key) AS sum_primary_key, sum(transaction_line_id) AS sum_transaction_line_id, sum(amount) AS sum_amount, sum(amount_net) AS sum_amount_net from "JCR_TRANS_F" group by "transaction_id", "item_id", "store_id") as temp_table) as temp_table where tdml_row_num < 5) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__1618999862531580" AS select transaction_id,"Probability",tgt_estimated from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,"Probability",tgt_estimated from "TRNG_TDRETAIL"."ml__valib_logregpredict_1618995359820009") as temp_table where tdml_row_num < 5) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16191983352899" AS select transaction_id,amount_3,amount_4,amount_5 from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,amount_3,amount_4,amount_5 from "TRNG_TDRETAIL"."ml__valib_transform_16192796093160") as temp_table where tdml_row_num < 10) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16192544255726" AS select transaction_id,sum_amount_drived from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,sum_amount_drived from "TRNG_TDRETAIL"."ml__valib_transform_16192412439276") as temp_table where tdml_row_num < 5) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16193023707129" AS select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket from "JCR_MDL_INPUT") as temp_table where tdml_row_num < 10) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16193199535836" AS select transaction_id,sum_amount_0_100,sum_amount_logit,sum_amount_mlogit,sum_amount_tanh,sum_amount_z from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,sum_amount_0_100,sum_amount_logit,sum_amount_mlogit,sum_amount_tanh,sum_amount_z from "TRNG_TDRETAIL"."ml__valib_transform_16192728011620") as temp_table where tdml_row_num < 5) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16193557814261" AS select transaction_id,good_value_basket,bad_value_basket from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,good_value_basket,bad_value_basket from "TRNG_TDRETAIL"."ml__valib_transform_16192590704928") as temp_table where tdml_row_num < 5) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16193823304364" AS select transaction_id,sum_amount_drived from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,sum_amount_drived from "TRNG_TDRETAIL"."ml__valib_transform_16193062902887") as temp_table where tdml_row_num < 5) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16194150948649" AS select transaction_id,amount_3,amount_4,amount_5,sum_amount_drived,good_value_basket,bad_value_basket,sum_amount_0_100,sum_amount_logit,sum_amount_mlogit,sum_amount_tanh,sum_amount_z from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,amount_3,amount_4,amount_5,sum_amount_drived,good_value_basket,bad_value_basket,sum_amount_0_100,sum_amount_logit,sum_amount_mlogit,sum_amount_tanh,sum_am
ount_z from "TRNG_TDRETAIL"."ml__valib_transform_16194116866268") as temp_table where tdml_row_num < 5) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16194332689011" AS select transaction_id,sum_amount_0_100,sum_amount_logit,sum_amount_mlogit,sum_amount_tanh,sum_amount_z from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,sum_amount_0_100,sum_amount_logit,sum_amount_mlogit,sum_amount_tanh,sum_amount_z from "TRNG_TDRETAIL"."ml__valib_transform_16194196560242") as temp_table where tdml_row_num < 5) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16198088643045" AS select transaction_id,sum_amount_drived from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,sum_amount_drived from "TRNG_TDRETAIL"."ml__valib_transform_16192412439276") as temp_table where tdml_row_num < 5) as temp_table

 CREATE VIEW "TRNG_TDRETAIL"."ml__select__16199733448791" AS select transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket from (select * from (select row_number() over (order by "transaction_id" asc) - 1 as tdml_row_num, transaction_id,sum_amount,sum_amount_net,max_store_id,count_item_id,avg_price,target,value_basket from "JCR_MDL_INPUT") as temp_table where tdml_row_num < 10) as temp_table

