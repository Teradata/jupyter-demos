create database TRNG_CONNECTEDFACTORY from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_TAB_TIME_INFO_QM2_SM", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-TAB-TIME-INFO-QM2-SM/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_C1_Scored_Data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM2-Part-C1-Scored-Data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM3_Part_B1_Scored_Data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM3-Part-B1-Scored-Data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_asset_attribute_data_weather", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-asset-attribute-data-weather/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_TAB_QM_RAW", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-TAB-QM-RAW/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_truck_attribute_data_general", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-truck-attribute-data-general/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_TAF_GRP_INSTANCE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/TAF-GRP-INSTANCE/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_xg_pred", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-xg-pred/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_problem_trucks_data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-problem-trucks-data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_TAB_QM_SCORED", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-TAB-QM-SCORED/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_asset_attribute_data_general", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-asset-attribute-data-general/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_TAF_LAST_VALID_RUN", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/TAF-LAST-VALID-RUN/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_gehc_full_export", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/gehc-full-export/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_cf_ti_0.95", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/cf-ti-0.95/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_taf_run_status", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/taf-run-status/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_seq_integers", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/seq-integers/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_bea_tmpColumns", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/bea-tmpColumns/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM1_Part_C1_Scored_Data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM1-Part-C1-Scored-Data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_rfs_pred_imp", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-rfs-pred-imp/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_TAF_RESULT_KS_TEST", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/TAF-RESULT-KS-TEST/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_planned_data_ext", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-planned-data-ext/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_replacement_data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-replacement-data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_B2_Scored_Data_e", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM2-Part-B2-Scored-Data-e/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_cf_0.9", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/cf-0.9/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_cox_predict", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-cox-predict/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_survival_rf_pred1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-survival-rf-pred1/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_taf_result_logitval_rpt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/taf-result-logitval-rpt/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_lr_pred_imp", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-lr-pred-imp/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_trailer_type", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-trailer-type/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_rf_pred", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-rf-pred/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_planned_data_component_breakdown", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-planned-data-component-breakdown/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_out", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-out/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_TAB_TIME_INFO_QM1_SM", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-TAB-TIME-INFO-QM1-SM/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_dt_imp", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-dt-imp/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM3_Part_B2_Scored_Data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM3-Part-B2-Scored-Data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_maintenance_depots", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-maintenance-depots/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_B2_Scored_Data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM2-Part-B2-Scored-Data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_log_pred_updated", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-log-pred-updated/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_lr_pred_ext", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-lr-pred-ext/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_bea_wbl_prepdata", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/bea-wbl-prepdata/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_lr_pred", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-lr-pred/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_planned_data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-planned-data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_problem_trucks", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-problem-trucks/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_xg_pred_updated", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/xg-pred-updated/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_asset_data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-asset-data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_ml__td_sqlmr_out__1627516763203152", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/ml--td-sqlmr-out--1627516763203152/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_sts_pred_imp", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-sts-pred-imp/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_survival_ts_pred", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-survival-ts-pred/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_bea_tmpCombine", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/bea-tmpCombine/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_ml__td_glm0_1627517161702454", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/ml--td-glm0-1627517161702454/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_rf_pam_survival_pred", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/rf-pam-survival-pred/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_A_Scored_Data_e", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM2-Part-A-Scored-Data-e/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_SIM_T_SIM_AGG_DATASET", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-SIM-T-SIM-AGG-DATASET/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM1_Part_B2_Scored_Data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM1-Part-B2-Scored-Data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_rf_pred_sur", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-rf-pred-sur/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_TAB_TIME_INFO_QM3_SM", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-TAB-TIME-INFO-QM3-SM/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_rf_pred_imp", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-rf-pred-imp/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM1_Part_A_Scored_Data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM1-Part-A-Scored-Data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_cf_ti_0.85", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/cf-ti-0.85/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_truck_route", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-truck-route/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_xg_pred_updated", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-xg-pred-updated/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_cox_pred", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-cox-pred/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_B1_Scored_Data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM2-Part-B1-Scored-Data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_lrs_pred_imp", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-lrs-pred-imp/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_SIM_T_SIM_ADS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-SIM-T-SIM-ADS/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM3_Part_A_Scored_Data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM3-Part-A-Scored-Data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_rf_pred_updated", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/rf-pred-updated/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_truckswithData", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-truckswithData/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_cox_predict_365", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-cox-predict-365/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_cf_ti_0.8", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/cf-ti-0.8/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_planned_data_new", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/planned-data-new/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_cox_coef", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-cox-coef/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_lr_coef", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-lr-coef/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_dt_pred_imp", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-dt-pred-imp/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_SIM_T_SIM_AGG_ADS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-SIM-T-SIM-AGG-ADS/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_tmp", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/tmp/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_bea_tmphists", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/bea-tmphists/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_taf_result_logitval_txt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/taf-result-logitval-txt/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM3_Part_C1_Scored_Data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM3-Part-C1-Scored-Data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_TWM_CUSTOMER", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/TWM-CUSTOMER/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_TAF_GRP_DEFN", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/TAF-GRP-DEFN/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_asset_attribute_data_usage", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-asset-attribute-data-usage/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_rf_imp", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-rf-imp/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_rf_pred_updated", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-rf-pred-updated/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_survival_pred_updated", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/survival-pred-updated/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM1_Part_B1_Scored_Data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM1-Part-B1-Scored-Data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_beaWelllimits", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/beaWelllimits/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_survival_rf_pred", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-survival-rf-pred/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_xg_pred_ext", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-xg-pred-ext/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_CMN_T_SIM_AGG_ADS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-CMN-T-SIM-AGG-ADS/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_B1_Scored_Data_e", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM2-Part-B1-Scored-Data-e/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_C1_Scored_Data_e", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM2-Part-C1-Scored-Data-e/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_acs_dt_pred", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-acs-dt-pred/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_A_Scored_Data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/MVP-ML-QM2-Part-A-Scored-Data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_repair_data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-repair-data/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_cf_ti_0.9", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/cf-ti-0.9/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_pam_truck_attribute_data_usage", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/pam-truck-attribute-data-usage/'));
create foreign table gs_tables_db."TRNG_CONNECTEDFACTORY_bea_tmpdata", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CONNECTEDFACTORY/bea-tmpdata/'));
replace view TRNG_CONNECTEDFACTORY.beaWelllimits as locking row for access select
"Well_ID"
,"q25_torque"
,"q75_torque"
,"q25_RPM"
,"q75_RPM"
,"q25_wob"
,"q75_wob"
,"q25_ROP"
,"q75_ROP"
,"lcl_torque"
,"lcl_RPM"
,"lcl_WOB"
,"lcl_ROP"
,"ucl_torque"
,"ucl_rpm"
,"ucl_WOB"
,"ucl_ROP"
from gs_tables_db.TRNG_CONNECTEDFACTORY_beaWelllimits;
replace view TRNG_CONNECTEDFACTORY.bea_tmpColumns as locking row for access select
"TableName"
,"DatabaseName"
,"ColumnName"
,"ColumnId"
from gs_tables_db.TRNG_CONNECTEDFACTORY_bea_tmpColumns;
replace view TRNG_CONNECTEDFACTORY.bea_tmpCombine as locking row for access select
"idx"
,"datacnt"
,"histgr"
from gs_tables_db.TRNG_CONNECTEDFACTORY_bea_tmpCombine;
replace view TRNG_CONNECTEDFACTORY.bea_tmpdata as locking row for access select
"tm_secs"
,"tm_hr"
,"rand_val"
,"trendval"
,"dataval"
from gs_tables_db.TRNG_CONNECTEDFACTORY_bea_tmpdata;
replace view TRNG_CONNECTEDFACTORY.bea_tmphists as locking row for access select
"idx"
,"histgr"
from gs_tables_db.TRNG_CONNECTEDFACTORY_bea_tmphists;
replace view TRNG_CONNECTEDFACTORY.bea_wbl_prepdata as locking row for access select
"grp_id"
,"level_id"
,"nmbr_in_grp"
,"status"
,"stress_val"
from gs_tables_db.TRNG_CONNECTEDFACTORY_bea_wbl_prepdata;
replace view TRNG_CONNECTEDFACTORY.cf_0.9 as locking row for access select
"UNPLANNED"
,"PLANNED"
from gs_tables_db.TRNG_CONNECTEDFACTORY_cf_0.9;
replace view TRNG_CONNECTEDFACTORY.cf_ti_0.8 as locking row for access select
"UNPLANNED"
,"PLANNED"
from gs_tables_db.TRNG_CONNECTEDFACTORY_cf_ti_0.8;
replace view TRNG_CONNECTEDFACTORY.cf_ti_0.85 as locking row for access select
"UNPLANNED"
,"PLANNED"
from gs_tables_db.TRNG_CONNECTEDFACTORY_cf_ti_0.85;
replace view TRNG_CONNECTEDFACTORY.cf_ti_0.9 as locking row for access select
"UNPLANNED"
,"PLANNED"
from gs_tables_db.TRNG_CONNECTEDFACTORY_cf_ti_0.9;
replace view TRNG_CONNECTEDFACTORY.cf_ti_0.95 as locking row for access select
"UNPLANNED"
,"PLANNED"
from gs_tables_db.TRNG_CONNECTEDFACTORY_cf_ti_0.95;
replace view TRNG_CONNECTEDFACTORY.gehc_full_export as locking row for access select
"SUBJECT_KEY"
,"SUBJECT_SERIAL"
,"SUBJECT_TIME"
,"PIV_5543293_1039367_130"
,"PIV_5543293_337893_20"
,"PIV_5543293_1039367_135"
,"PIV_5543293_1039367_60"
,"PIV_5543293_337893_90"
,"PIV_5543293_1039367_30"
,"PIV_5543293_957515_90"
,"PIV_5543293_957515_50"
,"PIV_5543293_876862_75"
,"PIV_5543293_876862_80"
,"PIV_5543293_337893_40"
,"PIV_5543293_1039367_110"
,"PIV_5779285_214451_10"
,"PIV_5543293_337893_60"
,"PIV_5543293_957515_30"
,"PIV_5543293_1039367_115"
,"PIV_5543293_774450_20"
,"PIV_5779285_214451_30"
,"PIV_5543293_1039367_70"
,"PIV_5543293_876862_10"
,"PIV_5543293_300274_10"
,"PIV_5543293_1039367_105"
,"PIV_5543293_337893_MultiLNs"
,"PIV_5543293_957515_40"
,"PIV_5779285_777485_20"
,"PIV_5543293_957515_10"
,"PIV_5543293_1039367_5"
,"PIV_5779285_777485_30"
,"PIV_5543293_1039367_75"
,"PIV_5543293_110213_40"
,"PIV_5543293_1039367_150"
,"PIV_5543293_1039367_155"
,"PIV_5779285_777485_40"
,"PIV_5543293_876862_60"
,"PIV_5543293_957515_20"
,"PIV_5543293_293611_20"
,"PIV_5543293_337893_70"
,"PIV_5543293_293611_30"
,"PIV_5543293_337893_25"
,"PIV_5543293_1039367_40"
,"PIV_5543293_110213_30"
,"PIV_5543293_337893_80"
,"PIV_5543293_1039367_50"
,"PIV_5543293_774450_10"
,"PIV_5779285_777485_10"
,"PIV_5543293_1039367_140"
,"PIV_5543293_876862_20"
,"PIV_5543293_957515_100"
,"PIV_5543293_1039367_160"
,"PIV_5543293_912840_10"
,"PIV_5543293_1039367_125"
,"PIV_5543293_110213_10"
,"PIV_5779285_214451_20"
,"PIV_5543293_876862_70"
,"PIV_5543293_337893_50"
,"PIV_5543293_300274_30"
,"PIV_5543293_912840_20"
,"PIV_5543293_1039367_100"
,"PIV_5543293_0_145"
,"PIV_5543293_703934_10"
,"PIV_5543293_293611_10"
,"PIV_5543293_110213_20"
,"PIV_5543293_300274_20"
,"PIV_5543293_110213_50"
,"PIV_5543293_300274_40"
,"PIV_5543293_957515_70"
,"PIV_5543293_876862_30"
,"PIV_5543293_876862_50"
,"PIV_5543293_1039367_10"
,"PIV_5543293_876862_40"
,"PIV_5543293_957515_75"
,"PIV_5543293_1039367_120"
,"PIV_5543293_957515_60"
,"PIV_5543293_957515_80"
,"PIV_5543293_774450_30"
from gs_tables_db.TRNG_CONNECTEDFACTORY_gehc_full_export;
replace view TRNG_CONNECTEDFACTORY.ml__td_glm0_1627517161702454 as locking row for access select
"attribute"
,"predictor"
,"category"
,"estimate"
,"std_err"
,"z_score"
,"p_value"
,"significance"
,"family"
from gs_tables_db.TRNG_CONNECTEDFACTORY_ml__td_glm0_1627517161702454;
replace view TRNG_CONNECTEDFACTORY.ml__td_sqlmr_out__1627516763203152 as locking row for access select
"predictor"
,"estimate"
,"std_error"
,"z_score"
,"p_value"
,"significance"
from gs_tables_db.TRNG_CONNECTEDFACTORY_ml__td_sqlmr_out__1627516763203152;
replace view TRNG_CONNECTEDFACTORY.MVP_CMN_T_SIM_AGG_ADS as locking row for access select
"SIM_ID"
,"ID"
,"OPERATOR"
,"PART_NO"
,"DT"
,"SHIFT"
,"JOB_START_TIME"
,"JOB_END_TIME"
,"ACTUAL_OUTPUT_POLES"
,"BDOWN_MACHINE_FAILURE"
,"MATERIAL_MISSING"
,"NORM_CYC_TIME"
,"NO_PROD_SCHED"
,"OPERATOR_MISSING"
,"OTHER_MISC"
,"PLANNED_OUTPUT_POLES"
,"SCHED_PMS"
,"SCRAP_FEET"
,"SPEED_LOSSES"
,"STARTUP_LOSS"
,"TOOL_CHANGE"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_CMN_T_SIM_AGG_ADS;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM1_Part_A_Scored_Data as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM1_Part_A_Scored_Data;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM1_Part_B1_Scored_Data as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM1_Part_B1_Scored_Data;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM1_Part_B2_Scored_Data as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM1_Part_B2_Scored_Data;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM1_Part_C1_Scored_Data as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM1_Part_C1_Scored_Data;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM2_Part_A_Scored_Data as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_A_Scored_Data;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM2_Part_A_Scored_Data_e as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_A_Scored_Data_e;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM2_Part_B1_Scored_Data as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_B1_Scored_Data;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM2_Part_B1_Scored_Data_e as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_B1_Scored_Data_e;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM2_Part_B2_Scored_Data as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_B2_Scored_Data;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM2_Part_B2_Scored_Data_e as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_B2_Scored_Data_e;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM2_Part_C1_Scored_Data as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_C1_Scored_Data;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM2_Part_C1_Scored_Data_e as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM2_Part_C1_Scored_Data_e;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM3_Part_A_Scored_Data as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM3_Part_A_Scored_Data;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM3_Part_B1_Scored_Data as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM3_Part_B1_Scored_Data;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM3_Part_B2_Scored_Data as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM3_Part_B2_Scored_Data;
replace view TRNG_CONNECTEDFACTORY.MVP_ML_QM3_Part_C1_Scored_Data as locking row for access select
"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_ML_QM3_Part_C1_Scored_Data;
replace view TRNG_CONNECTEDFACTORY.MVP_SIM_T_SIM_ADS as locking row for access select
"UNIQ_ID"
,"PART_NBR"
,"operator_name"
,"PROCESS_TS"
,"TARGET_VIOLATION"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"TEMP"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_SIM_T_SIM_ADS;
replace view TRNG_CONNECTEDFACTORY.MVP_SIM_T_SIM_AGG_ADS as locking row for access select
"SIM_ID"
,"ID"
,"OPERATOR"
,"PART_NO"
,"DT"
,"SHIFT"
,"JOB_START_TIME"
,"JOB_END_TIME"
,"ACTUAL_OUTPUT_POLES"
,"BDOWN_MACHINE_FAILURE"
,"MATERIAL_MISSING"
,"NORM_CYC_TIME"
,"NO_PROD_SCHED"
,"OPERATOR_MISSING"
,"OTHER_MISC"
,"PLANNED_OUTPUT_POLES"
,"SCHED_PMS"
,"SCRAP_FEET"
,"SPEED_LOSSES"
,"STARTUP_LOSS"
,"TOOL_CHANGE"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_SIM_T_SIM_AGG_ADS;
replace view TRNG_CONNECTEDFACTORY.MVP_SIM_T_SIM_AGG_DATASET as locking row for access select
"REC_ID"
,"actual_output_poles"
,"bdown_machine_failure"
,"material_missing"
,"norm_cyc_time"
,"no_prod_sched"
,"operator_missing"
,"other_misc"
,"planned_output_poles"
,"sched_pms"
,"scrap_feet"
,"speed_losses"
,"startup_loss"
,"tool_change"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_SIM_T_SIM_AGG_DATASET;
replace view TRNG_CONNECTEDFACTORY.MVP_TAB_QM_RAW as locking row for access select
"rec_id"
,"CREATE_DTTM"
,"ID"
,"uniq_id"
,"part_nbr"
,"operator_name"
,"PROCESS_TS"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_TAB_QM_RAW;
replace view TRNG_CONNECTEDFACTORY.MVP_TAB_QM_SCORED as locking row for access select
"tmp_id"
,"create_dttm"
,"ID"
,"uniq_id"
,"part_nbr"
,"target_violation"
,"ACTUAL_ID"
,"ACTUAL_OD"
,"ACTUAL_W_THICKNESS"
,"D_H_TEMP"
,"E_TEMP"
,"H_PRESSURE"
,"L_SPEED"
,"S_SPEED"
,"S_TEMP"
,"S_TORQUE"
,"ZONE1_TEMP"
,"ZONE2_TEMP"
,"ZONE3_TEMP"
,"temp"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_TAB_QM_SCORED;
replace view TRNG_CONNECTEDFACTORY.MVP_TAB_TIME_INFO_QM1_SM as locking row for access select
"tmp_id"
,"create_dttm"
,"create_fday"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_TAB_TIME_INFO_QM1_SM;
replace view TRNG_CONNECTEDFACTORY.MVP_TAB_TIME_INFO_QM2_SM as locking row for access select
"tmp_id"
,"create_dttm"
,"create_fday"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_TAB_TIME_INFO_QM2_SM;
replace view TRNG_CONNECTEDFACTORY.MVP_TAB_TIME_INFO_QM3_SM as locking row for access select
"tmp_id"
,"create_dttm"
,"create_fday"
from gs_tables_db.TRNG_CONNECTEDFACTORY_MVP_TAB_TIME_INFO_QM3_SM;
replace view TRNG_CONNECTEDFACTORY.pam_acs_cox_coef as locking row for access select
"id"
,"predictor"
,"category"
,"coefficient"
,"exp_coef"
,"std_error"
,"z_score"
,"p_value"
,"significance"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_cox_coef;
replace view TRNG_CONNECTEDFACTORY.pam_acs_cox_pred as locking row for access select
"event_id"
,"planned"
,"time_interval"
,"survival_prob"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_cox_pred;
replace view TRNG_CONNECTEDFACTORY.pam_acs_cox_predict as locking row for access select
"asset_id"
,"planned"
,"time_interval"
,"survival_prob"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_cox_predict;
replace view TRNG_CONNECTEDFACTORY.pam_acs_cox_predict_365 as locking row for access select
"asset_id"
,"planned"
,"time_interval"
,"survival_prob"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_cox_predict_365;
replace view TRNG_CONNECTEDFACTORY.pam_acs_dt_imp as locking row for access select
"Feature"
,"Importance"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_dt_imp;
replace view TRNG_CONNECTEDFACTORY.pam_acs_dt_pred as locking row for access select
"ASSET_ID"
,"EVENT_DATE"
,"EVENT_ID"
,"PLANNED"
,"FUEL_PUMP"
,"FUEL_INJECTOR"
,"ENGINE_COOLANT"
,"BATTERY_FAILURE"
,"BRAKEPAD_ISSUE"
,"TIRE_WEAROUT"
,"FUEL_PUMP_TEMPARATURE"
,"pressure"
,"ENGINE_TEMPARATURE"
,"BATTERY_VOLTAGE"
,"BRAKEOIL_PRESSURE"
,"TIRE_DEPTH"
,"PREVIOUS_UNPLANNED"
,"PREVIOUS_REPAIRS"
,"LATITUDE"
,"LONGITUDE"
,"START_DATE"
,"END_DATE"
,"TRAILER_TYPE"
,"TRUCK_OPERATING_MODE"
,"TRUCK_OPERATING_REGION"
,"TRUCK_SIZE"
,"TRUCK_AVG_DAILY_OPERATING_HOURS"
,"TIME_INTERVAL"
,"Prediction"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_dt_pred;
replace view TRNG_CONNECTEDFACTORY.pam_acs_dt_pred_imp as locking row for access select
"Feature"
,"Importance"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_dt_pred_imp;
replace view TRNG_CONNECTEDFACTORY.pam_acs_log_pred_updated as locking row for access select
"Planned"
,"Prediction"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_log_pred_updated;
replace view TRNG_CONNECTEDFACTORY.pam_acs_lrs_pred_imp as locking row for access select
"Feature"
,"Importance"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_lrs_pred_imp;
replace view TRNG_CONNECTEDFACTORY.pam_acs_lr_coef as locking row for access select
"attribute"
,"predictor"
,"category"
,"estimate"
,"std_err"
,"z_score"
,"p_value"
,"significance"
,"family"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_lr_coef;
replace view TRNG_CONNECTEDFACTORY.pam_acs_lr_pred as locking row for access select
"ASSET_ID"
,"EVENT_DATE"
,"EVENT_ID"
,"PLANNED"
,"FUEL_PUMP"
,"FUEL_INJECTOR"
,"ENGINE_COOLANT"
,"BATTERY_FAILURE"
,"BRAKEPAD_ISSUE"
,"TIRE_WEAROUT"
,"FUEL_PUMP_TEMPARATURE"
,"pressure"
,"ENGINE_TEMPARATURE"
,"BATTERY_VOLTAGE"
,"BRAKEOIL_PRESSURE"
,"TIRE_DEPTH"
,"PREVIOUS_UNPLANNED"
,"PREVIOUS_REPAIRS"
,"LATITUDE"
,"LONGITUDE"
,"START_DATE"
,"END_DATE"
,"TRAILER_TYPE"
,"TRUCK_OPERATING_MODE"
,"TRUCK_OPERATING_REGION"
,"TRUCK_SIZE"
,"TRUCK_AVG_DAILY_OPERATING_HOURS"
,"TIME_INTERVAL"
,"Prediction"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_lr_pred;
replace view TRNG_CONNECTEDFACTORY.pam_acs_lr_pred_ext as locking row for access select
"event_id"
,"planned"
,"fitted_value"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_lr_pred_ext;
replace view TRNG_CONNECTEDFACTORY.pam_acs_lr_pred_imp as locking row for access select
"Feature"
,"Importance"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_lr_pred_imp;
replace view TRNG_CONNECTEDFACTORY.pam_acs_rfs_pred_imp as locking row for access select
"feature"
,"weight"
,"std"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_rfs_pred_imp;
replace view TRNG_CONNECTEDFACTORY.pam_acs_rf_imp as locking row for access select
"Feature"
,"Importance"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_rf_imp;
replace view TRNG_CONNECTEDFACTORY.pam_acs_rf_pred as locking row for access select
"ASSET_ID"
,"EVENT_DATE"
,"EVENT_ID"
,"PLANNED"
,"FUEL_PUMP"
,"FUEL_INJECTOR"
,"ENGINE_COOLANT"
,"BATTERY_FAILURE"
,"BRAKEPAD_ISSUE"
,"TIRE_WEAROUT"
,"FUEL_PUMP_TEMPARATURE"
,"pressure"
,"ENGINE_TEMPARATURE"
,"BATTERY_VOLTAGE"
,"BRAKEOIL_PRESSURE"
,"TIRE_DEPTH"
,"PREVIOUS_UNPLANNED"
,"PREVIOUS_REPAIRS"
,"LATITUDE"
,"LONGITUDE"
,"START_DATE"
,"END_DATE"
,"TRAILER_TYPE"
,"TRUCK_OPERATING_MODE"
,"TRUCK_OPERATING_REGION"
,"TRUCK_SIZE"
,"TRUCK_AVG_DAILY_OPERATING_HOURS"
,"TIME_INTERVAL"
,"Prediction"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_rf_pred;
replace view TRNG_CONNECTEDFACTORY.pam_acs_rf_pred_imp as locking row for access select
"Feature"
,"Importance"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_rf_pred_imp;
replace view TRNG_CONNECTEDFACTORY.pam_acs_rf_pred_sur as locking row for access select
"PLND_CNT"
,"UNPLND_CNT"
,"DAY"
,"SURV_PROB"
,"FAIL_PROB"
,"PLND_COST"
,"UNPLND_COST"
,"TOTAL_COST"
,"UNPLND_COST_ACT"
,"PLND_COST_ACT"
,"TOTAL_COST_ACT"
,"TOTAL_SAVINGS"
,"TOTAL_SAVINGS_PER_REPAIR"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_rf_pred_sur;
replace view TRNG_CONNECTEDFACTORY.pam_acs_rf_pred_updated as locking row for access select
"ASSET_ID"
,"EVENT_DATE"
,"EVENT_ID"
,"PLANNED"
,"FUEL_PUMP"
,"FUEL_INJECTOR"
,"ENGINE_COOLANT"
,"BATTERY_FAILURE"
,"BRAKEPAD_ISSUE"
,"TIRE_WEAROUT"
,"FUEL_PUMP_TEMPARATURE"
,"pressure"
,"ENGINE_TEMPARATURE"
,"BATTERY_VOLTAGE"
,"BRAKEOIL_PRESSURE"
,"TIRE_DEPTH"
,"PREVIOUS_UNPLANNED"
,"PREVIOUS_REPAIRS"
,"LATITUDE"
,"LONGITUDE"
,"START_DATE"
,"END_DATE"
,"TRAILER_TYPE"
,"TRUCK_OPERATING_MODE"
,"TRUCK_OPERATING_REGION"
,"TRUCK_SIZE"
,"TRUCK_AVG_DAILY_OPERATING_HOURS"
,"TIME_INTERVAL"
,"Prediction"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_rf_pred_updated;
replace view TRNG_CONNECTEDFACTORY.pam_acs_sts_pred_imp as locking row for access select
"feature"
,"weight"
,"std"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_sts_pred_imp;
replace view TRNG_CONNECTEDFACTORY.pam_acs_xg_pred as locking row for access select
"event_id"
,"planned"
,"prediction"
,"confidence_lower"
,"confidence_upper"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_xg_pred;
replace view TRNG_CONNECTEDFACTORY.pam_acs_xg_pred_ext as locking row for access select
"event_id"
,"planned"
,"prediction"
,"confidence_lower"
,"confidence_upper"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_xg_pred_ext;
replace view TRNG_CONNECTEDFACTORY.pam_acs_xg_pred_updated as locking row for access select
"Planned"
,"Prediction"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_acs_xg_pred_updated;
replace view TRNG_CONNECTEDFACTORY.pam_asset_attribute_data_general as locking row for access select
"asset_attribute_data_general.asset_id"
,"asset_attribute_data_general.truck_operating_mode"
,"asset_attribute_data_general.truck_operating_region"
,"asset_attribute_data_general.truck_size"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_asset_attribute_data_general;
replace view TRNG_CONNECTEDFACTORY.pam_asset_attribute_data_usage as locking row for access select
"asset_attribute_data_trailer_type.asset_id"
,"asset_attribute_data_trailer_type.trailer_type"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_asset_attribute_data_usage;
replace view TRNG_CONNECTEDFACTORY.pam_asset_attribute_data_weather as locking row for access select
"asset_attribute_data_usage.asset_id"
,"asset_attribute_data_usage.truck_avg_daily_operating_hours"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_asset_attribute_data_weather;
replace view TRNG_CONNECTEDFACTORY.pam_asset_data as locking row for access select
"asset_data.asset_id"
,"asset_data.end_date"
,"asset_data.latitude"
,"asset_data.longitude"
,"asset_data.previous_repairs"
,"asset_data.previous_unplanned"
,"asset_data.start_date"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_asset_data;
replace view TRNG_CONNECTEDFACTORY.pam_maintenance_depots as locking row for access select
"latitude"
,"longitude"
,"truck_id"
,"name"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_maintenance_depots;
replace view TRNG_CONNECTEDFACTORY.pam_out as locking row for access select
"time1"
,"time2"
,"time3"
,"time4"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_out;
replace view TRNG_CONNECTEDFACTORY.pam_planned_data as locking row for access select
"planned_data.asset_id"
,"planned_data.event_date"
,"planned_data.event_id"
,"planned_data.planned"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_planned_data;
replace view TRNG_CONNECTEDFACTORY.pam_planned_data_component_breakdown as locking row for access select
"event_date"
,"event_id"
,"planned"
,"truck_id"
,"Fuel Pump"
,"Fuel Injector"
,"Engine Coolant"
,"Battery Failure"
,"Brakepad Issue"
,"Tire Wearout"
,"fuel pump temparature"
,"pressure"
,"engine temparature"
,"battery voltage"
,"brakeoil pressure"
,"tire depth"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_planned_data_component_breakdown;
replace view TRNG_CONNECTEDFACTORY.pam_planned_data_ext as locking row for access select
"planned_data.asset_id"
,"planned_data.event_date"
,"planned_data.event_id"
,"planned_data.planned"
,"Fuel Pump"
,"Fuel Injector"
,"Engine Coolant"
,"Battery Failure"
,"Brakepad Issue"
,"Tire Wearout"
,"fuel pump temparature"
,"pressure"
,"engine temparature"
,"battery voltage"
,"brakeoil pressure"
,"tire depth"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_planned_data_ext;
replace view TRNG_CONNECTEDFACTORY.pam_problem_trucks as locking row for access select
"truck_id"
,"latitude"
,"longitude"
,"status"
,"type"
,"last_date"
,"next_date"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_problem_trucks;
replace view TRNG_CONNECTEDFACTORY.pam_problem_trucks_data as locking row for access select
"truck_id"
,"Sensor History (Sec)"
,"FPTemp_"
,"fuel pump temperature"
,"Pressure_"
,"pressure"
,"engine temperature"
,"battery voltage"
,"brakeoil pressure"
,"tire depth"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_problem_trucks_data;
replace view TRNG_CONNECTEDFACTORY.pam_repair_data as locking row for access select
"repair_data.asset_id"
,"repair_data.event_date"
,"repair_data.event_id"
,"repair_data.installed_date"
,"repair_data.previous_repairs"
,"repair_data.previous_unplanned"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_repair_data;
replace view TRNG_CONNECTEDFACTORY.pam_replacement_data as locking row for access select
"event_date"
,"event_id"
,"installed_date"
,"previous_repairs"
,"previous_unplanned"
,"truck_id"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_replacement_data;
replace view TRNG_CONNECTEDFACTORY.pam_survival_rf_pred as locking row for access select
"day1"
,"day2"
,"day3"
,"day4"
,"day6"
,"day7"
,"day9"
,"day10"
,"day12"
,"day15"
,"day16"
,"day17"
,"day18"
,"day20"
,"day21"
,"day23"
,"day24"
,"day28"
,"day29"
,"day30"
,"day31"
,"day32"
,"day34"
,"day35"
,"day42"
,"day43"
,"day45"
,"day46"
,"day47"
,"day49"
,"day50"
,"day51"
,"day53"
,"day56"
,"day57"
,"day61"
,"day62"
,"day64"
,"day65"
,"day66"
,"day68"
,"day72"
,"day74"
,"day75"
,"day76"
,"day77"
,"day78"
,"day79"
,"day80"
,"day81"
,"day84"
,"day85"
,"day87"
,"day88"
,"day90"
,"day94"
,"day95"
,"day96"
,"day98"
,"day106"
,"day108"
,"day109"
,"day110"
,"day111"
,"day112"
,"day114"
,"day125"
,"day130"
,"day134"
,"day137"
,"day139"
,"day142"
,"day143"
,"day144"
,"day147"
,"day151"
,"day152"
,"day156"
,"day160"
,"day163"
,"day164"
,"day168"
,"day173"
,"day175"
,"day179"
,"day180"
,"day182"
,"day183"
,"day188"
,"day192"
,"day194"
,"day195"
,"day204"
,"day206"
,"day207"
,"day208"
,"day215"
,"day221"
,"day223"
,"day224"
,"day228"
,"day229"
,"day236"
,"day246"
,"day247"
,"day253"
,"day260"
,"day263"
,"day265"
,"day270"
,"day274"
,"day288"
,"day289"
,"day291"
,"day299"
,"day301"
,"day307"
,"day313"
,"day336"
,"day347"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_survival_rf_pred;
replace view TRNG_CONNECTEDFACTORY.pam_survival_rf_pred1 as locking row for access select
"day1"
,"day2"
,"day3"
,"day4"
,"day6"
,"day7"
,"day9"
,"day10"
,"day12"
,"day15"
,"day16"
,"day17"
,"day18"
,"day20"
,"day21"
,"day23"
,"day24"
,"day28"
,"day29"
,"day30"
,"day31"
,"day32"
,"day34"
,"day35"
,"day42"
,"day43"
,"day45"
,"day46"
,"day47"
,"day49"
,"day50"
,"day51"
,"day53"
,"day56"
,"day57"
,"day61"
,"day62"
,"day64"
,"day65"
,"day66"
,"day68"
,"day72"
,"day74"
,"day75"
,"day76"
,"day77"
,"day78"
,"day79"
,"day80"
,"day81"
,"day84"
,"day85"
,"day87"
,"day88"
,"day90"
,"day94"
,"day95"
,"day96"
,"day98"
,"day106"
,"day108"
,"day109"
,"day110"
,"day111"
,"day112"
,"day114"
,"day125"
,"day130"
,"day134"
,"day137"
,"day139"
,"day142"
,"day143"
,"day144"
,"day147"
,"day151"
,"day152"
,"day156"
,"day160"
,"day163"
,"day164"
,"day168"
,"day173"
,"day175"
,"day179"
,"day180"
,"day182"
,"day183"
,"day188"
,"day192"
,"day194"
,"day195"
,"day204"
,"day206"
,"day207"
,"day208"
,"day215"
,"day221"
,"day223"
,"day224"
,"day228"
,"day229"
,"day236"
,"day246"
,"day247"
,"day253"
,"day260"
,"day263"
,"day265"
,"day270"
,"day274"
,"day288"
,"day289"
,"day291"
,"day299"
,"day301"
,"day307"
,"day313"
,"day336"
,"day347"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_survival_rf_pred1;
replace view TRNG_CONNECTEDFACTORY.pam_survival_ts_pred as locking row for access select
"time1.0"
,"time2.0"
,"time3.0"
,"time4.0"
,"time6.0"
,"time7.0"
,"time9.0"
,"time10.0"
,"time12.0"
,"time15.0"
,"time16.0"
,"time17.0"
,"time18.0"
,"time20.0"
,"time21.0"
,"time23.0"
,"time24.0"
,"time28.0"
,"time29.0"
,"time30.0"
,"time31.0"
,"time32.0"
,"time34.0"
,"time35.0"
,"time42.0"
,"time43.0"
,"time45.0"
,"time46.0"
,"time47.0"
,"time49.0"
,"time50.0"
,"time51.0"
,"time53.0"
,"time56.0"
,"time57.0"
,"time61.0"
,"time62.0"
,"time64.0"
,"time65.0"
,"time66.0"
,"time68.0"
,"time72.0"
,"time74.0"
,"time75.0"
,"time76.0"
,"time77.0"
,"time78.0"
,"time79.0"
,"time80.0"
,"time81.0"
,"time84.0"
,"time85.0"
,"time87.0"
,"time88.0"
,"time90.0"
,"time94.0"
,"time95.0"
,"time96.0"
,"time98.0"
,"time106.0"
,"time108.0"
,"time109.0"
,"time110.0"
,"time111.0"
,"time112.0"
,"time114.0"
,"time125.0"
,"time130.0"
,"time134.0"
,"time137.0"
,"time139.0"
,"time142.0"
,"time143.0"
,"time144.0"
,"time147.0"
,"time151.0"
,"time152.0"
,"time156.0"
,"time160.0"
,"time163.0"
,"time164.0"
,"time168.0"
,"time173.0"
,"time175.0"
,"time179.0"
,"time180.0"
,"time182.0"
,"time183.0"
,"time188.0"
,"time192.0"
,"time194.0"
,"time195.0"
,"time204.0"
,"time206.0"
,"time207.0"
,"time208.0"
,"time215.0"
,"time221.0"
,"time223.0"
,"time224.0"
,"time228.0"
,"time229.0"
,"time236.0"
,"time246.0"
,"time247.0"
,"time253.0"
,"time260.0"
,"time263.0"
,"time265.0"
,"time270.0"
,"time274.0"
,"time288.0"
,"time289.0"
,"time291.0"
,"time299.0"
,"time301.0"
,"time307.0"
,"time313.0"
,"time336.0"
,"time347.0"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_survival_ts_pred;
replace view TRNG_CONNECTEDFACTORY.pam_trailer_type as locking row for access select
"truck_id"
,"trailer_type"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_trailer_type;
replace view TRNG_CONNECTEDFACTORY.pam_truckswithData as locking row for access select
"truck_id"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_truckswithData;
replace view TRNG_CONNECTEDFACTORY.pam_truck_attribute_data_general as locking row for access select
"truck_id"
,"truck_operating_mode"
,"truck_operating_region"
,"truck_size"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_truck_attribute_data_general;
replace view TRNG_CONNECTEDFACTORY.pam_truck_attribute_data_usage as locking row for access select
"truck_id"
,"truck_avg_operating_hours"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_truck_attribute_data_usage;
replace view TRNG_CONNECTEDFACTORY.pam_truck_route as locking row for access select
"latitude"
,"longitude"
,"group"
,"truck_id"
from gs_tables_db.TRNG_CONNECTEDFACTORY_pam_truck_route;
replace view TRNG_CONNECTEDFACTORY.planned_data_new as locking row for access select
"planned_data.asset_id"
,"planned_data.event_date"
,"planned_data.event_id"
,"planned_data.planned"
,"Fuel Pump"
,"Fuel Injector"
,"Engine Coolant"
,"Battery Failure"
,"Brakepad Issue"
,"Tire Wearout"
,"fuel pump temparature"
,"pressure"
,"engine temparature"
,"battery voltage"
,"brakeoil pressure"
,"tire depth"
from gs_tables_db.TRNG_CONNECTEDFACTORY_planned_data_new;
replace view TRNG_CONNECTEDFACTORY.rf_pam_survival_pred as locking row for access select
"time1.0"
,"time2.0"
,"time3.0"
,"time4.0"
,"time6.0"
,"time7.0"
,"time9.0"
,"time10.0"
,"time12.0"
,"time15.0"
,"time16.0"
,"time17.0"
,"time18.0"
,"time20.0"
,"time21.0"
,"time23.0"
,"time24.0"
,"time28.0"
,"time29.0"
,"time30.0"
,"time31.0"
,"time32.0"
,"time34.0"
,"time35.0"
,"time42.0"
,"time43.0"
,"time45.0"
,"time46.0"
,"time47.0"
,"time49.0"
,"time50.0"
,"time51.0"
,"time53.0"
,"time56.0"
,"time57.0"
,"time61.0"
,"time62.0"
,"time64.0"
,"time65.0"
,"time66.0"
,"time68.0"
,"time72.0"
,"time74.0"
,"time75.0"
,"time76.0"
,"time77.0"
,"time78.0"
,"time79.0"
,"time80.0"
,"time81.0"
,"time84.0"
,"time85.0"
,"time87.0"
,"time88.0"
,"time90.0"
,"time94.0"
,"time95.0"
,"time96.0"
,"time98.0"
,"time106.0"
,"time108.0"
,"time109.0"
,"time110.0"
,"time111.0"
,"time112.0"
,"time114.0"
,"time125.0"
,"time130.0"
,"time134.0"
,"time137.0"
,"time139.0"
,"time142.0"
,"time143.0"
,"time144.0"
,"time147.0"
,"time151.0"
,"time152.0"
,"time156.0"
,"time160.0"
,"time163.0"
,"time164.0"
,"time168.0"
,"time173.0"
,"time175.0"
,"time179.0"
,"time180.0"
,"time182.0"
,"time183.0"
,"time188.0"
,"time192.0"
,"time194.0"
,"time195.0"
,"time204.0"
,"time206.0"
,"time207.0"
,"time208.0"
,"time215.0"
,"time221.0"
,"time223.0"
,"time224.0"
,"time228.0"
,"time229.0"
,"time236.0"
,"time246.0"
,"time247.0"
,"time253.0"
,"time260.0"
,"time263.0"
,"time265.0"
,"time270.0"
,"time274.0"
,"time288.0"
,"time289.0"
,"time291.0"
,"time299.0"
,"time301.0"
,"time307.0"
,"time313.0"
,"time336.0"
,"time347.0"
from gs_tables_db.TRNG_CONNECTEDFACTORY_rf_pam_survival_pred;
replace view TRNG_CONNECTEDFACTORY.rf_pred_updated as locking row for access select
"Planned"
,"Prediction"
from gs_tables_db.TRNG_CONNECTEDFACTORY_rf_pred_updated;
replace view TRNG_CONNECTEDFACTORY.seq_integers as locking row for access select
"seq_int"
from gs_tables_db.TRNG_CONNECTEDFACTORY_seq_integers;
replace view TRNG_CONNECTEDFACTORY.survival_pred_updated as locking row for access select
"ASSET_ID"
,"LATITUDE"
,"LONGITUDE"
,"day1"
,"day2"
,"day3"
,"day4"
,"day6"
,"day7"
,"day9"
,"day10"
,"day12"
,"day15"
,"day16"
,"day17"
,"day18"
,"day20"
,"day21"
,"day23"
,"day24"
,"day28"
,"day29"
,"day30"
,"day31"
,"day32"
,"day34"
,"day35"
,"day42"
,"day43"
,"day45"
,"day46"
,"day47"
,"day49"
,"day50"
,"day51"
,"day53"
,"day56"
,"day57"
,"day61"
,"day62"
,"day64"
,"day65"
,"day66"
,"day68"
,"day72"
,"day74"
,"day75"
,"day76"
,"day77"
,"day78"
,"day79"
,"day80"
,"day81"
,"day84"
,"day85"
,"day87"
,"day88"
,"day90"
,"day94"
,"day95"
,"day96"
,"day98"
,"day106"
,"day108"
,"day109"
,"day110"
,"day111"
,"day112"
,"day114"
,"day125"
,"day130"
,"day134"
,"day137"
,"day139"
,"day142"
,"day143"
,"day144"
,"day147"
,"day151"
,"day152"
,"day156"
,"day160"
,"day163"
,"day164"
,"day168"
,"day173"
,"day175"
,"day179"
,"day180"
,"day182"
,"day183"
,"day188"
,"day192"
,"day194"
,"day195"
,"day204"
,"day206"
,"day207"
,"day208"
,"day215"
,"day221"
,"day223"
,"day224"
,"day228"
,"day229"
,"day236"
,"day246"
,"day247"
,"day253"
,"day260"
,"day263"
,"day265"
,"day270"
,"day274"
,"day288"
,"day289"
,"day291"
,"day299"
,"day301"
,"day307"
,"day313"
,"day336"
,"day347"
from gs_tables_db.TRNG_CONNECTEDFACTORY_survival_pred_updated;
replace view TRNG_CONNECTEDFACTORY.TAF_GRP_DEFN as locking row for access select
"GRP_ID"
,"GRP_DESC"
,"ANALYTIC_ID"
,"ANALYTIC_DESC"
,"ANALYTIC_SUB_ID"
,"ANALYTIC_SUB_DESC"
,"LEVEL_1_DIMENSION"
,"LEVEL_2_DIMENSION"
,"LEVEL_3_DIMENSION"
,"LEVEL_4_DIMENSION"
,"LEVEL_5_DIMENSION"
,"LEVEL_6_DIMENSION"
,"LEVEL_7_DIMENSION"
,"LEVEL_8_DIMENSION"
,"LEVEL_9_DIMENSION"
,"LEVEL_10_DIMENSION"
,"PARAMETER_ID"
,"PARAMETER_ALERT_ID"
,"TS_GRP"
,"TS_ID"
,"START_TS_VALID"
,"END_TS_VALID"
,"CAL_ID"
,"SIZE_RULE1_VAL"
,"SIZE_RULE2_VAL"
,"ACTIVE_IND"
,"ALERT_IND"
,"EXTRACT_IND"
,"TABLE_DB"
,"VIEW_DB"
,"SP_DB"
,"DIMS_TXT"
,"DIMS_TXT_PROC"
,"DATA_TXT"
,"DATA_TXT_PROC"
,"CALCS_TXT"
,"CALCS_TXT_PROC"
,"INIT_DIMS_TXT"
,"INIT_DIMS_TXT_PROC"
,"INIT_DATA_TXT"
,"INIT_DATA_TXT_PROC"
,"INIT_CALCS_TXT"
,"INIT_CALCS_TXT_PROC"
,"SCORE_TXT"
,"SCORE_TXT_PROC"
,"ALERT_TXT"
,"ALERT_TXT_PROC"
,"EXTRACT_TXT"
,"EXTRACT_TXT_PROC"
,"INIT_EXTRACT_TXT"
,"INIT_EXTRACT_TXT_PROC"
,"CREATION_USER_ID"
,"CREATION_TS"
,"MODIFIED_USER_ID"
,"MODIFIED_TS"
,"sub_grp_column"
from gs_tables_db.TRNG_CONNECTEDFACTORY_TAF_GRP_DEFN;
replace view TRNG_CONNECTEDFACTORY.TAF_GRP_INSTANCE as locking row for access select
"LEVEL_ID"
,"GRP_ID"
,"MODEL_GRP_ID"
,"LEVEL_1_INSTANCE"
,"LEVEL_2_INSTANCE"
,"LEVEL_3_INSTANCE"
,"LEVEL_4_INSTANCE"
,"LEVEL_5_INSTANCE"
,"LEVEL_6_INSTANCE"
,"LEVEL_7_INSTANCE"
,"LEVEL_8_INSTANCE"
,"LEVEL_9_INSTANCE"
,"LEVEL_10_INSTANCE"
,"TS_ID"
,"LAST_CALC_TS"
,"DATA_START_TS_VALID"
,"DATA_END_TS_VALID"
,"GRP_DATA_POINT_CNT1"
,"GRP_DATA_POINT_CNT2"
,"ANALYTIC_PARAMETER_ID"
,"GRP_CALC_REQD"
,"RUN_ID"
from gs_tables_db.TRNG_CONNECTEDFACTORY_TAF_GRP_INSTANCE;
replace view TRNG_CONNECTEDFACTORY.TAF_LAST_VALID_RUN as locking row for access select
"run_id"
,"LAST_LOAD_TS"
,"ETL_LOAD_TS"
,"COMPLETE_FLAG"
from gs_tables_db.TRNG_CONNECTEDFACTORY_TAF_LAST_VALID_RUN;
replace view TRNG_CONNECTEDFACTORY.TAF_RESULT_KS_TEST as locking row for access select
"grp_id"
,"level_id"
,"ref_sub_grp_id"
,"sub_grp_id"
,"ks_score"
from gs_tables_db.TRNG_CONNECTEDFACTORY_TAF_RESULT_KS_TEST;
replace view TRNG_CONNECTEDFACTORY.taf_result_logitval_rpt as locking row for access select
"rid"
,"grp_id"
,"level_id"
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
from gs_tables_db.TRNG_CONNECTEDFACTORY_taf_result_logitval_rpt;
replace view TRNG_CONNECTEDFACTORY.taf_result_logitval_txt as locking row for access select
"grp_id"
,"level_id"
,"partId"
,"XmlModel"
from gs_tables_db.TRNG_CONNECTEDFACTORY_taf_result_logitval_txt;
replace view TRNG_CONNECTEDFACTORY.taf_run_status as locking row for access select
"STATUS_ID"
,"RUN_ID"
,"RUN_TS"
,"RUN_LOC"
,"RUN_INFO_TXT"
,"ROWS_UPDATE"
,"ETL_LOAD_TS"
from gs_tables_db.TRNG_CONNECTEDFACTORY_taf_run_status;
replace view TRNG_CONNECTEDFACTORY.tmp as locking row for access select
"grp_id"
,"x"
from gs_tables_db.TRNG_CONNECTEDFACTORY_tmp;
replace view TRNG_CONNECTEDFACTORY.TWM_CUSTOMER as locking row for access select
"cust_id"
,"income"
,"age"
,"years_with_bank"
,"nbr_children"
,"gender"
,"marital_status"
,"name_prefix"
,"first_name"
,"last_name"
,"street_nbr"
,"street_name"
,"postal_code"
,"city_name"
,"state_code"
from gs_tables_db.TRNG_CONNECTEDFACTORY_TWM_CUSTOMER;
replace view TRNG_CONNECTEDFACTORY.xg_pred_updated as locking row for access select
"Planned"
,"Prediction"
from gs_tables_db.TRNG_CONNECTEDFACTORY_xg_pred_updated;
REPLACE VIEW trng_connectedfactory.bea_vProblem_trucks_data AS LOCKING ROW FOR ACCESS
SELECT	truck_id, "Sensor History (Sec)" AS sensor_sec
, FPTemp_ AS fptemp
, Pressure_ AS pressure
, "engine temperature" AS engTemp
, "battery voltage" AS batVolt
, "brakeoil pressure" AS brakePress
, "tire depth" AS tireDepth
FROM	trng_connectedFactory.pam_problem_trucks_data;

CREATE VIEW trng_connectedfactory.bea_vProblem_trucks_data_deep AS LOCKING ROW FOR ACCESS 
SELECT * FROM td_unpivot ( ON trng_connectedfactory.bea_vproblem_trucks_data 
USING value_columns ('sensor_Measure')
unpivot_column('sensor_name')
column_list('fptemp','pressure','engTemp','batVolt','brakePress','tireDepth')
) a;

 CREATE VIEW "TRNG_CONNECTEDFACTORY"."ml___frmqry_v_1627516161978591" AS SELECT * from  TRNG_CONNECTEDFACTORY.pam_acs_combined_data_test_cox

 CREATE VIEW "TRNG_CONNECTEDFACTORY"."ml___frmqry_v_1627516466771872" AS SELECT * from  TRNG_CONNECTEDFACTORY.pam_acs_combined_data_test

 CREATE VIEW "TRNG_CONNECTEDFACTORY"."ml___frmqry_v_1627516519946308" AS SELECT * from  TRNG_CONNECTEDFACTORY.PAM_ACS_COMBINED_DATA_TRN_EXT

 CREATE VIEW "TRNG_CONNECTEDFACTORY"."ml___frmqry_v_1627516909139282" AS SELECT * from  TRNG_CONNECTEDFACTORY.PAM_ACS_COMBINED_DATA_TEST_EXT

 CREATE VIEW "TRNG_CONNECTEDFACTORY"."ml___frmqry_v_1627517694401979" AS SELECT * from  TRNG_CONNECTEDFACTORY.pam_acs_combined_data_trn

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM1_Part_A_Raw_Data AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_A' sample
   when target_violation = 0 then 80000
   when target_violation = 1 then 20000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM1_Part_B1_Raw_Data AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_B1' sample
   when target_violation = 0 then 80000
   when target_violation = 1 then 20000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM1_Part_B2_Raw_Data AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_B2' sample
   when target_violation = 0 then 80000
   when target_violation = 1 then 20000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM1_Part_C1_Raw_Data AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_C1' sample
   when target_violation = 0 then 80000
   when target_violation = 1 then 20000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM1_Score_Data_Part_A AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_A' sample
   when target_violation = 0 then 0.4
   when target_violation = 1 then 0.1 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM1_Score_Data_Part_B1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_B1' sample
   when target_violation = 0 then 0.4
   when target_violation = 1 then 0.1 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM1_Score_Data_Part_B2 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_B2' sample
   when target_violation = 0 then 0.4
   when target_violation = 1 then 0.1 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM1_Score_Data_Part_C1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_C1' sample
   when target_violation = 0 then 0.4
   when target_violation = 1 then 0.1 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM2_Part_A_Raw_Data AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_A' sample
   when target_violation = 0 then 80000
   when target_violation = 1 and temp >= 32 then 16000
   when target_violation = 1 and temp < 32 then 4000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM2_Part_B1_Raw_Data AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_B1' sample
   when target_violation = 0 then 80000
   when target_violation = 1 and temp >= 32 then 16000
   when target_violation = 1 and temp < 32 then 4000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM2_Part_B2_Raw_Data AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_B2' sample
   when target_violation = 0 then 80000
   when target_violation = 1 and temp >= 32 then 16000
   when target_violation = 1 and temp < 32 then 4000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM2_Part_C1_Raw_Data AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_C1' sample
   when target_violation = 0 then 80000
   when target_violation = 1 and temp >= 32 then 16000
   when target_violation = 1 and temp < 32 then 4000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM2_Score_Data_Part_A AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_A' sample
   when target_violation = 0 then 128000
   when target_violation = 1 and temp >= 32 then 25000
   when target_violation = 1 and temp < 32 then 7000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM2_Score_Data_Part_B1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_B1' sample
   when target_violation = 0 then 128000
   when target_violation = 1 and temp >= 32 then 25000
   when target_violation = 1 and temp < 32 then 7000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM2_Score_Data_Part_B2 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_B2' sample
   when target_violation = 0 then 128000
   when target_violation = 1 and temp >= 32 then 25000
   when target_violation = 1 and temp < 32 then 7000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM2_Score_Data_Part_C1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_C1' sample
   when target_violation = 0 then 128000
   when target_violation = 1 and temp >= 32 then 25000
   when target_violation = 1 and temp < 32 then 7000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM3_Part_A_Raw_Data AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_A' sample
   when target_violation = 0 then 80000
   when target_violation = 1 and temp >= 32 then 16000
   when target_violation = 1 and temp < 32 then 4000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM3_Part_B1_Raw_Data AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_B1' sample
   when target_violation = 0 then 80000
   when target_violation = 1 and temp >= 32 then 16000
   when target_violation = 1 and temp < 32 then 4000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM3_Part_B2_Raw_Data AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_B2' sample
   when target_violation = 0 then 80000
   when target_violation = 1 and temp >= 32 then 16000
   when target_violation = 1 and temp < 32 then 4000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM3_Part_C1_Raw_Data AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_C1' sample
   when target_violation = 0 then 80000
   when target_violation = 1 and temp >= 32 then 16000
   when target_violation = 1 and temp < 32 then 4000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM3_Score_Data_Part_A AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-09-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-12-31') and
   part_nbr = 'Product_Type_A' sample
   when target_violation = 0 then 128000
   when target_violation = 1 then 32000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM3_Score_Data_Part_B1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-09-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-12-31') and
   part_nbr = 'Product_Type_B1' sample
   when target_violation = 0 then 128000
   when target_violation = 1 then 32000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM3_Score_Data_Part_B2 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-09-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-12-31') and
   part_nbr = 'Product_Type_B2' sample
   when target_violation = 0 then 128000
   when target_violation = 1 then 32000 END;

REPLACE view TRNG_ConnectedFactory.MVP_ML_QM3_Score_Data_Part_C1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-09-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-12-31') and
   part_nbr = 'Product_Type_C1' sample
   when target_violation = 0 then 128000
   when target_violation = 1 then 32000 END;

CREATE VIEW TRNG_ConnectedFactory.MVP_TAB_EXOG_STORY AS LOCKING ROW FOR ACCESS
    SELECT *
        FROM TRNG_ConnectedFactory.MVP_TAB_QM_Exog_View
        WHERE MONTH( create_dttm)>=5
            AND  MONTH(create_dttm)<=8;

CREATE VIEW TRNG_ConnectedFactory.MVP_TAB_LOSS_COST AS
    SELECT a.part_nbr,
        a.raw_mon "Raw Month",
        b.score_mon "Scored Month",
        SUM(a.raw_amt)"Raw Amt",
        SUM(b.score_amt)"Scored Amt",
        (SUM(a.raw_amt)-SUM(b.score_amt)) "Savings"
        FROM
        (
        SELECT part_nbr,
            MONTH(create_dttm)"raw_mon",
            (COUNT(*)*75)"raw_amt"
            FROM TRNG_ConnectedFactory.MVP_TAB_RAW_VIEW
            WHERE target_violation=1
            GROUP BY part_nbr,
                MONTH(create_dttm)) a
        FULL OUTER JOIN
        (
        SELECT part_nbr,
            MONTH(create_dttm)"score_mon",
            (COUNT(*)*75)"score_amt"
            FROM TRNG_ConnectedFactory.MVP_TAB_SCORED_VIEW
            WHERE target_violation=1
            GROUP BY part_nbr,
                MONTH(create_dttm))b
        ON (a.part_nbr=b.part_nbr AND a.raw_mon=b.score_mon)
        GROUP BY a.part_nbr,
            a.raw_mon,
            b.score_mon;

CREATE VIEW TRNG_ConnectedFactory.MVP_TAB_MODEL_STORY AS LOCKING ROW FOR ACCESS
    SELECT *
        FROM 
        (
        SELECT part_nbr,
            target_violation,
            create_dttm
            FROM TRNG_ConnectedFactory.MVP_TAB_RAW_VIEW
            WHERE MONTH(create_dttm) IN (1,2)
        UNION ALL
        SELECT part_nbr,
            target_violation,
            create_dttm
            FROM TRNG_ConnectedFactory.MVP_TAB_SCORED_VIEW
            WHERE MONTH(create_dttm)>=3
                AND  MONTH(create_dttm)<=12)t1;

REPLACE VIEW TRNG_ConnectedFactory.MVP_TAB_OEEAgg_View AS LOCKING ROW FOR ACCESS
    SELECT t1.actual_output_poles*151 "Actual Footage",
        (t1.actual_output_poles*151)-(t1.scrap_feet) "Good Footage",
        CAST(((t1.actual_output_poles*151)-(t1.scrap_feet))/151.0 AS DECIMAL(10,5)) "Good Output (Units)",
        (bdown_machine_failure+material_missing+operator_missing+speed_losses+startup_loss+tool_change+other_misc) "Total Lost Time",
        (CAST(((t1.actual_output_poles*151)-(t1.scrap_feet))/151.0 AS DECIMAL(10,5)))/NULLIF(CAST(t1.actual_output_poles AS DECIMAL(10,2)),0) "Quality",
        (t1.actual_output_poles)*(t1.norm_cyc_time) "Planned Method Time (mins)",
        CAST((t1.actual_output_poles-CAST(((t1.actual_output_poles*151)-(t1.scrap_feet))/151.0 AS DECIMAL(10,5)))*CAST(t1.norm_cyc_time AS DECIMAL(10,2))
        AS DECIMAL(10,2))"Quality Loss (min)",
        t1.*
        FROM TRNG_ConnectedFactory.MVP_CMN_T_SIM_AGG_ADS t1;

CREATE VIEW TRNG_ConnectedFactory.MVP_TAB_QM_EXOG_VIEW AS LOCKING ROW FOR ACCESS
    SELECT *
        FROM TRNG_ConnectedFactory.MVP_TAB_SCORED_Exog_QM_Parta
    UNION ALL
    SELECT *
        FROM TRNG_ConnectedFactory.MVP_TAB_SCORED_Exog_QM_Partb1
    UNION ALL
    SELECT *
        FROM TRNG_ConnectedFactory.MVP_TAB_SCORED_Exog_QM_Partb2
    UNION ALL
    SELECT *
        FROM TRNG_ConnectedFactory.MVP_TAB_SCORED_Exog_QM_Partc1;

REPLACE VIEW TRNG_ConnectedFactory.MVP_TAB_QM_SCORED_VIEW AS LOCKING ROW FOR ACCESS
select * from TRNG_ConnectedFactory.MVP_TAB_SCORED_QM_Parta
UNION ALL
select * from TRNG_ConnectedFactory.MVP_TAB_SCORED_QM_Partb1
UNION ALL
select * from TRNG_ConnectedFactory.MVP_TAB_SCORED_QM_Partb2
UNION ALL
select * from TRNG_ConnectedFactory.MVP_TAB_SCORED_QM_Partc1;

REPLACE VIEW TRNG_ConnectedFactory.MVP_TAB_RAW_QM_Partc1 AS LOCKING ROW FOR ACCESS
    (
    SELECT *
        FROM
        (
        SELECT tmp_id,
            CREATE_DTTM
            FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM1_SM) a
        JOIN
        (
        SELECT ROW_NUMBER() OVER (
            ORDER BY NULL) AS ID,
                t1.*
            FROM TRNG_ConnectedFactory.MVP_ML_QM1_Part_C1_Raw_Data t1)b
        ON (a.tmp_id=b.ID))
    UNION ALL      
    (
    SELECT *
        FROM
        (
        SELECT tmp_id,
            CREATE_DTTM
            FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM2_SM) a
        JOIN
        (
        SELECT ROW_NUMBER() OVER (
            ORDER BY NULL) AS ID,
                t1.*
            FROM TRNG_ConnectedFactory.MVP_ML_QM2_Part_C1_Raw_Data t1)b
        ON (a.tmp_id=b.ID))
    UNION ALL      
    (
    SELECT *
        FROM
        (
        SELECT tmp_id,
            CREATE_DTTM
            FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM3_SM) a
        JOIN
        (
        SELECT ROW_NUMBER() OVER (
            ORDER BY NULL) AS ID,
                t1.*
            FROM TRNG_ConnectedFactory.MVP_ML_QM3_Part_C1_Raw_Data t1)b
        ON (a.tmp_id=b.ID));

REPLACE VIEW TRNG_ConnectedFactory.MVP_TAB_RAW_VIEW AS LOCKING ROW FOR ACCESS
    SELECT *
        FROM TRNG_ConnectedFactory.MVP_TAB_QM_RAW;

CREATE VIEW TRNG_ConnectedFactory.MVP_TAB_SCORED_Exog_QM_Parta AS LOCKING ROW FOR ACCESS
    (
    SELECT *
        FROM
        (
        SELECT tmp_id,
            CREATE_DTTM
            FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM1_SM) a
        JOIN
        (
        SELECT ROW_NUMBER() OVER (
            ORDER BY NULL) AS ID,
                t1.*
            FROM TRNG_ConnectedFactory.MVP_ML_QM1_Part_A_Scored_Data t1)b
        ON (a.tmp_id=b.ID))
    UNION ALL      
    (
    SELECT *
        FROM
        (
        SELECT tmp_id,
            CREATE_DTTM
            FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM2_SM) a
        JOIN
        (
        SELECT ROW_NUMBER() OVER (
            ORDER BY NULL) AS ID,
                t1.*
            FROM TRNG_ConnectedFactory.MVP_ML_QM2_Part_A_Scored_Data_e t1)b
        ON (a.tmp_id=b.ID))
    UNION ALL      
    (
    SELECT *
        FROM
        (
        SELECT tmp_id,
            CREATE_DTTM
            FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM3_SM) a
        JOIN
        (
        SELECT ROW_NUMBER() OVER (
            ORDER BY NULL) AS ID,
                t1.*
            FROM TRNG_ConnectedFactory.MVP_ML_QM3_Part_A_Scored_Data t1)b
        ON (a.tmp_id=b.ID));

REPLACE VIEW TRNG_ConnectedFactory.MVP_TAB_SCORED_Exog_QM_Partb1 AS LOCKING ROW FOR ACCESS
        (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM1_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM1_Part_B1_Scored_Data t1)b
  on (a.tmp_id=b.ID))
  UNION ALL      
  (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM2_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM2_Part_B1_Scored_Data_e t1)b
  on (a.tmp_id=b.ID))
  UNION ALL      
  (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM3_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM3_Part_B1_Scored_Data t1)b
  on (a.tmp_id=b.ID));

REPLACE VIEW TRNG_ConnectedFactory.MVP_TAB_SCORED_Exog_QM_Partb2 AS LOCKING ROW FOR ACCESS
        (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM1_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM1_Part_B2_Scored_Data t1)b
  on (a.tmp_id=b.ID))
  UNION ALL      
  (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM2_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM2_Part_B2_Scored_Data_e t1)b
  on (a.tmp_id=b.ID))
  UNION ALL      
  (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM3_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM3_Part_B2_Scored_Data t1)b
  on (a.tmp_id=b.ID));

REPLACE VIEW TRNG_ConnectedFactory.MVP_TAB_SCORED_Exog_QM_Partc1 AS LOCKING ROW FOR ACCESS
        (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM1_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM1_Part_C1_Scored_Data t1)b
  on (a.tmp_id=b.ID))
  UNION ALL      
  (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM2_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM2_Part_C1_Scored_Data_e t1)b
  on (a.tmp_id=b.ID))
  UNION ALL      
  (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM3_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM3_Part_C1_Scored_Data t1)b
  on (a.tmp_id=b.ID));

REPLACE VIEW TRNG_ConnectedFactory.MVP_TAB_SCORED_QM_Parta AS LOCKING ROW FOR ACCESS
        (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM1_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM1_Part_A_Scored_Data t1)b
  on (a.tmp_id=b.ID))
  UNION ALL      
  (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM2_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM2_Part_A_Scored_Data t1)b
  on (a.tmp_id=b.ID))
  UNION ALL      
  (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM3_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM3_Part_A_Scored_Data t1)b
  on (a.tmp_id=b.ID));

REPLACE VIEW TRNG_ConnectedFactory.MVP_TAB_SCORED_QM_Partb1 AS LOCKING ROW FOR ACCESS
        (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM1_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM1_Part_B1_Scored_Data t1)b
  on (a.tmp_id=b.ID))
  UNION ALL      
  (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM2_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM2_Part_B1_Scored_Data t1)b
  on (a.tmp_id=b.ID))
  UNION ALL      
  (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM3_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM3_Part_B1_Scored_Data t1)b
  on (a.tmp_id=b.ID));

REPLACE VIEW TRNG_ConnectedFactory.MVP_TAB_SCORED_QM_Partb2 AS LOCKING ROW FOR ACCESS
        (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM1_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM1_Part_B2_Scored_Data t1)b
  on (a.tmp_id=b.ID))
  UNION ALL      
  (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM2_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM2_Part_B2_Scored_Data t1)b
  on (a.tmp_id=b.ID))
  UNION ALL      
  (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM3_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM3_Part_B2_Scored_Data t1)b
  on (a.tmp_id=b.ID));

REPLACE VIEW TRNG_ConnectedFactory.MVP_TAB_SCORED_QM_Partc1 AS LOCKING ROW FOR ACCESS
        (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM1_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM1_Part_C1_Scored_Data t1)b
  on (a.tmp_id=b.ID))
  UNION ALL      
  (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM2_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM2_Part_C1_Scored_Data t1)b
  on (a.tmp_id=b.ID))
  UNION ALL      
  (select * from
  (SELECT tmp_id,CREATE_DTTM FROM TRNG_ConnectedFactory.MVP_TAB_TIME_INFO_QM3_SM)a
  join
  (select ROW_NUMBER() OVER (ORDER BY NULL) AS ID,t1.* from TRNG_ConnectedFactory.MVP_ML_QM3_Part_C1_Scored_Data t1)b
  on (a.tmp_id=b.ID));

REPLACE VIEW TRNG_ConnectedFactory.MVP_TAB_SCORED_VIEW AS LOCKING ROW FOR ACCESS
    SELECT *
        FROM TRNG_ConnectedFactory.MVP_TAB_QM_SCORED;

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data AS
(
SEL A."PLANNED_DATA.ASSET_ID" AS ASSET_ID
,CAST (A."PLANNED_DATA.EVENT_DATE" AS DATE  FORMAT 'YYYY-MM-DD') AS EVENT_DATE
,A."PLANNED_DATA.EVENT_ID" AS EVENT_ID
,A."PLANNED_DATA.PLANNED" AS PLANNED
,B."ASSET_DATA.PREVIOUS_UNPLANNED" AS PREVIOUS_UNPLANNED
,B."ASSET_DATA.PREVIOUS_REPAIRS" AS PREVIOUS_REPAIRS
,B."ASSET_DATA.LATITUDE" AS LATITUDE
,B."ASSET_DATA.LONGITUDE" AS LONGITUDE
,CAST (B."ASSET_DATA.START_DATE" AS DATE FORMAT 'YYYY-MM-DD') AS START_DATE
,CAST (B."ASSET_DATA.END_DATE" AS DATE  FORMAT 'YYYY-MM-DD') AS END_DATE
--,(EVENT_DATE - START_DATE)  AS TIME_INTERVAL
,C."ASSET_ATTRIBUTE_DATA_TRAILER_TYPE.TRAILER_TYPE" AS TRAILER_TYPE
,D."ASSET_ATTRIBUTE_DATA_GENERAL.TRUCK_OPERATING_MODE" AS TRUCK_OPERATING_MODE
,D."ASSET_ATTRIBUTE_DATA_GENERAL.TRUCK_OPERATING_REGION" AS TRUCK_OPERATING_REGION
,D."ASSET_ATTRIBUTE_DATA_GENERAL.TRUCK_SIZE" AS TRUCK_SIZE
,E."ASSET_ATTRIBUTE_DATA_USAGE.TRUCK_AVG_DAILY_OPERATING_HOURS" AS TRUCK_AVG_DAILY_OPERATING_HOURS
FROM TRNG_CONNECTEDFACTORY.PAM_PLANNED_DATA A
INNER JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_DATA B
ON A."PLANNED_DATA.ASSET_ID" =  B."ASSET_DATA.ASSET_ID"
INNER  JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_ATTRIBUTE_DATA_USAGE C
ON A."PLANNED_DATA.ASSET_ID" = C."ASSET_ATTRIBUTE_DATA_TRAILER_TYPE.ASSET_ID"
INNER  JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_ATTRIBUTE_DATA_GENERAL D
ON A."PLANNED_DATA.ASSET_ID" = D."ASSET_ATTRIBUTE_DATA_GENERAL.ASSET_ID" 
INNER  JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_ATTRIBUTE_DATA_WEATHER E
ON A."PLANNED_DATA.ASSET_ID" = E."ASSET_ATTRIBUTE_DATA_USAGE.ASSET_ID"
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_365 AS
(
SEL A."PLANNED_DATA.ASSET_ID" AS ASSET_ID
,CAST (A."PLANNED_DATA.EVENT_DATE" AS DATE  FORMAT 'YYYY-MM-DD') AS EVENT_DATE
,A."PLANNED_DATA.EVENT_ID" AS EVENT_ID
,A."PLANNED_DATA.PLANNED" AS PLANNED
,B."ASSET_DATA.PREVIOUS_UNPLANNED" AS PREVIOUS_UNPLANNED
,B."ASSET_DATA.PREVIOUS_REPAIRS" AS PREVIOUS_REPAIRS
,B."ASSET_DATA.LATITUDE" AS LATITUDE
,B."ASSET_DATA.LONGITUDE" AS LONGITUDE
,CAST (B."ASSET_DATA.START_DATE" AS DATE FORMAT 'YYYY-MM-DD') AS START_DATE
,CAST (B."ASSET_DATA.END_DATE" AS DATE  FORMAT 'YYYY-MM-DD') AS END_DATE
,(EVENT_DATE - START_DATE)  AS TIME_INTERVAL
,C."ASSET_ATTRIBUTE_DATA_TRAILER_TYPE.TRAILER_TYPE" AS TRAILER_TYPE
,D."ASSET_ATTRIBUTE_DATA_GENERAL.TRUCK_OPERATING_MODE" AS TRUCK_OPERATING_MODE
,D."ASSET_ATTRIBUTE_DATA_GENERAL.TRUCK_OPERATING_REGION" AS TRUCK_OPERATING_REGION
,D."ASSET_ATTRIBUTE_DATA_GENERAL.TRUCK_SIZE" AS TRUCK_SIZE
,E."ASSET_ATTRIBUTE_DATA_USAGE.TRUCK_AVG_DAILY_OPERATING_HOURS" AS TRUCK_AVG_DAILY_OPERATING_HOURS
FROM TRNG_CONNECTEDFACTORY.PAM_PLANNED_DATA A
INNER JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_DATA B
ON A."PLANNED_DATA.ASSET_ID" =  B."ASSET_DATA.ASSET_ID"
INNER  JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_ATTRIBUTE_DATA_USAGE C
ON A."PLANNED_DATA.ASSET_ID" = C."ASSET_ATTRIBUTE_DATA_TRAILER_TYPE.ASSET_ID"
INNER  JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_ATTRIBUTE_DATA_GENERAL D
ON A."PLANNED_DATA.ASSET_ID" = D."ASSET_ATTRIBUTE_DATA_GENERAL.ASSET_ID" 
INNER  JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_ATTRIBUTE_DATA_WEATHER E
ON A."PLANNED_DATA.ASSET_ID" = E."ASSET_ATTRIBUTE_DATA_USAGE.ASSET_ID"
WHERE TIME_INTERVAL <=365
);


REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_ext AS
(
SEL A."PLANNED_DATA.ASSET_ID" AS ASSET_ID
,CAST (A."PLANNED_DATA.EVENT_DATE" AS DATE  FORMAT 'YYYY-MM-DD') AS EVENT_DATE
,A."PLANNED_DATA.EVENT_ID" AS EVENT_ID
,A."PLANNED_DATA.PLANNED" AS PLANNED
,"FUEL PUMP" AS FUEL_PUMP
,"FUEL INJECTOR" AS FUEL_INJECTOR
,"ENGINE COOLANT" AS ENGINE_COOLANT
,"BATTERY FAILURE" AS BATTERY_FAILURE
,"BRAKEPAD ISSUE" AS BRAKEPAD_ISSUE
,"TIRE WEAROUT" AS TIRE_WEAROUT
,"FUEL PUMP TEMPARATURE" AS FUEL_PUMP_TEMPARATURE
,PRESSURE
,"ENGINE TEMPARATURE" AS ENGINE_TEMPARATURE
,"BATTERY VOLTAGE" AS BATTERY_VOLTAGE
,"BRAKEOIL PRESSURE" AS BRAKEOIL_PRESSURE
,"TIRE DEPTH" AS TIRE_DEPTH
,B."ASSET_DATA.PREVIOUS_UNPLANNED" AS PREVIOUS_UNPLANNED
,B."ASSET_DATA.PREVIOUS_REPAIRS" AS PREVIOUS_REPAIRS
,CAST (B."ASSET_DATA.LATITUDE" AS DECIMAL(12,8)) AS LATITUDE
,CAST (B."ASSET_DATA.LONGITUDE" AS DECIMAL(12,8))  AS LONGITUDE
,CAST (B."ASSET_DATA.START_DATE" AS DATE FORMAT 'YYYY-MM-DD') AS START_DATE
,CAST (B."ASSET_DATA.END_DATE" AS DATE  FORMAT 'YYYY-MM-DD') AS END_DATE
,C."ASSET_ATTRIBUTE_DATA_TRAILER_TYPE.TRAILER_TYPE" AS TRAILER_TYPE
,D."ASSET_ATTRIBUTE_DATA_GENERAL.TRUCK_OPERATING_MODE" AS TRUCK_OPERATING_MODE
,D."ASSET_ATTRIBUTE_DATA_GENERAL.TRUCK_OPERATING_REGION" AS TRUCK_OPERATING_REGION
,D."ASSET_ATTRIBUTE_DATA_GENERAL.TRUCK_SIZE" AS TRUCK_SIZE
,E."ASSET_ATTRIBUTE_DATA_USAGE.TRUCK_AVG_DAILY_OPERATING_HOURS" AS TRUCK_AVG_DAILY_OPERATING_HOURS
FROM TRNG_CONNECTEDFACTORY.PAM_PLANNED_DATA_EXT A
INNER JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_DATA B
ON A."PLANNED_DATA.ASSET_ID" =  B."ASSET_DATA.ASSET_ID"
INNER  JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_ATTRIBUTE_DATA_USAGE C
ON A."PLANNED_DATA.ASSET_ID" = C."ASSET_ATTRIBUTE_DATA_TRAILER_TYPE.ASSET_ID"
INNER  JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_ATTRIBUTE_DATA_GENERAL D
ON A."PLANNED_DATA.ASSET_ID" = D."ASSET_ATTRIBUTE_DATA_GENERAL.ASSET_ID" 
INNER  JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_ATTRIBUTE_DATA_WEATHER E
ON A."PLANNED_DATA.ASSET_ID" = E."ASSET_ATTRIBUTE_DATA_USAGE.ASSET_ID"
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_final AS
(
SEL A.*,B.TIME_INTERVAL   FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COMBINED_DATA_EXT A
INNER JOIN  TRNG_CONNECTEDFACTORY.PAM_ACS_TIME_INT B
ON A.ASSET_ID = B.ASSET_ID
AND A.EVENT_DATE = B.EVENT_DATE
WHERE TIME_INTERVAL <= '365'
);

replace view TRNG_CONNECTEDFACTORY.pam_acs_combined_data_final_pl_trn as
(
sel * from TRNG_CONNECTEDFACTORY.pam_acs_combined_data_final_trn
where Planned = '1'
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_final_test AS
(
SELECT * FROM TRNG_CONNECTEDFACTORY.pam_acs_combined_data_final 
where event_date > '2014-12-31'
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_final_trn AS
(
SELECT * FROM TRNG_CONNECTEDFACTORY.pam_acs_combined_data_final 
where event_date <= '2014-12-31'
);

replace view TRNG_CONNECTEDFACTORY.pam_acs_combined_data_final_unpl_trn as
(
sel * from TRNG_CONNECTEDFACTORY.pam_acs_combined_data_final_trn
where Planned = '0'
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_rf AS
(
SEL 
 A."PLANNED_DATA.PLANNED" AS PLANED
,B."ASSET_DATA.PREVIOUS_UNPLANNED" AS PREVIOUS_UNPLANNED
,B."ASSET_DATA.PREVIOUS_REPAIRS" AS PREVIOUS_REPAIRS
,B."ASSET_DATA.LATITUDE" AS LATITUDE
,B."ASSET_DATA.LONGITUDE" AS LONGITUDE
,C."ASSET_ATTRIBUTE_DATA_TRAILER_TYPE.TRAILER_TYPE" AS TRAILER_TYPE
,D."ASSET_ATTRIBUTE_DATA_GENERAL.TRUCK_OPERATING_MODE" AS TRUCK_OPERATING_MODE
,D."ASSET_ATTRIBUTE_DATA_GENERAL.TRUCK_OPERATING_REGION" AS TRUCK_OPERATING_REGION
,D."ASSET_ATTRIBUTE_DATA_GENERAL.TRUCK_SIZE" AS TRUCK_SIZE
,E."ASSET_ATTRIBUTE_DATA_USAGE.TRUCK_AVG_DAILY_OPERATING_HOURS" AS TRUCK_AVG_DAILY_OPERATING_HOURS
FROM TRNG_CONNECTEDFACTORY.PAM_PLANNED_DATA A
INNER JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_DATA B
ON A."PLANNED_DATA.ASSET_ID" =  B."ASSET_DATA.ASSET_ID"
INNER  JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_ATTRIBUTE_DATA_USAGE C
ON A."PLANNED_DATA.ASSET_ID" = C."ASSET_ATTRIBUTE_DATA_TRAILER_TYPE.ASSET_ID"
INNER  JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_ATTRIBUTE_DATA_GENERAL D
ON A."PLANNED_DATA.ASSET_ID" = D."ASSET_ATTRIBUTE_DATA_GENERAL.ASSET_ID" 
INNER  JOIN TRNG_CONNECTEDFACTORY.PAM_ASSET_ATTRIBUTE_DATA_WEATHER E
ON A."PLANNED_DATA.ASSET_ID" = E."ASSET_ATTRIBUTE_DATA_USAGE.ASSET_ID"
);


REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_test AS
(
SEL * FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COMBINED_DATA
MINUS
SEL * FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COMBINED_DATA_TRN
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_test_365 AS
(
SEL * FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COMBINED_DATA_365
MINUS
SEL * FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COMBINED_DATA_TRN_365
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_test_cox AS
(
SEL ASSET_ID
--,TIME_INTERVAL
,PLANNED,PREVIOUS_UNPLANNED AS previous_unplanned
,PREVIOUS_REPAIRS AS previous_repairs
,TRUCK_OPERATING_REGION AS truck_operating_region 
,TRUCK_OPERATING_MODE AS truck_operating_mode 
,TRAILER_TYPE AS trailer_type
,TRUCK_AVG_DAILY_OPERATING_HOURS AS truck_avg_daily_operating_hours
FROM TRNG_CONNECTEDFACTORY.pam_acs_combined_data_test
GROUP BY 1,2,3,4,5,6,7,8
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_test_cox_365 AS
(
SEL ASSET_ID,PLANNED,PREVIOUS_UNPLANNED AS previous_unplanned ,PREVIOUS_REPAIRS as previous_repairs,TRUCK_OPERATING_REGION AS truck_operating_region ,
TRUCK_OPERATING_MODE AS truck_operating_mode ,TRAILER_TYPE AS trailer_type,TRUCK_AVG_DAILY_OPERATING_HOURS as truck_avg_daily_operating_hours
FROM TRNG_CONNECTEDFACTORY.pam_acs_combined_data_test_365
group by 1,2,3,4,5,6,7,8
);


REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_test_ext AS
(
SEL * FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COMBINED_DATA_ext
MINUS
SEL * FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COMBINED_DATA_TRN_ext
);


REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_test_o AS
(
SEL EVENT_ID,PLANNED,PREVIOUS_UNPLANNED AS previous_unplanned ,PREVIOUS_REPAIRS as previous_repairs,TRUCK_OPERATING_REGION AS truck_operating_region ,
TRUCK_OPERATING_MODE AS truck_operating_mode ,TRAILER_TYPE AS trailer_type,TRUCK_AVG_DAILY_OPERATING_HOURS as truck_avg_daily_operating_hours
FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COMBINED_DATA_TEST
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_trn AS
(
SELECT TOP 80 PERCENT * FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COMBINED_DATA ORDER BY EVENT_ID
);


REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_trn_365 AS
(
SELECT TOP 80 PERCENT * FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COMBINED_DATA_365 ORDER BY EVENT_ID
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_trn_cox AS
(
SEL ASSET_ID,TIME_INTERVAL,PLANNED,PREVIOUS_UNPLANNED AS previous_unplanned ,PREVIOUS_REPAIRS as previous_repairs,TRUCK_OPERATING_REGION AS truck_operating_region ,
TRUCK_OPERATING_MODE AS truck_operating_mode ,TRAILER_TYPE AS trailer_type,TRUCK_AVG_DAILY_OPERATING_HOURS as truck_avg_daily_operating_hours
FROM TRNG_CONNECTEDFACTORY.pam_acs_combined_data_trn
group by 1,2,3,4,5,6,7,8,9
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_trn_ext AS
(
SELECT TOP 80 PERCENT * FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COMBINED_DATA_ext ORDER BY EVENT_ID
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_updated AS
(
SEL a.*,b.TIME_INTERVAL   FROM TRNG_CONNECTEDFACTORY.pam_acs_combined_data a
INNER JOIN  TRNG_CONNECTEDFACTORY.pam_acs_time_int b
on a.ASSET_ID = b.ASSET_ID
and a.EVENT_DATE = b.EVENT_DATE
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_updated_f AS
(
sel * from TRNG_CONNECTEDFACTORY.pam_acs_combined_data_updated
where TIME_INTERVAL <= '365'
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_updated_f_test AS
(
SEL * FROM TRNG_CONNECTEDFACTORY.pam_acs_combined_data_updated_f
MINUS
SEL * FROM TRNG_CONNECTEDFACTORY.pam_acs_combined_data_updated_f_trn
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_combined_data_updated_f_trn AS
(
SELECT * FROM TRNG_CONNECTEDFACTORY.pam_acs_combined_data_updated_f 
where event_date <= '2014-12-31'
);

REPLACE VIEW  TRNG_CONNECTEDFACTORY.PAM_ACS_COX_PREDICT_PLANNED_CNT_VW
AS
(
SEL TIME_INTERVAL,CAST(SURVIVAL_PROB AS DECIMAL(5,2)) AS SURVIVAL_PROB,COUNT(*) AS PLND_CNT FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COX_PREDICT_VW
WHERE PREDICTION = '1'
GROUP BY 1,2
);

REPLACE VIEW  TRNG_CONNECTEDFACTORY.PAM_ACS_COX_PREDICT_TI_VW
AS
(
SEL 
ASSET_ID, PLANNED,PREDICTION 
FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COX_PREDICT_VW
where TIME_INTERVAL = '1082'
);

REPLACE VIEW  TRNG_CONNECTEDFACTORY.PAM_ACS_COX_PREDICT_UNPLANNED_CNT_VW
AS
(
SEL TIME_INTERVAL,CAST(SURVIVAL_PROB AS DECIMAL(5,2)) AS SURVIVAL_PROB,COUNT(*) AS PLND_CNT FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COX_PREDICT_VW
WHERE PREDICTION = '0'
GROUP BY 1,2
);

REPLACE VIEW  TRNG_CONNECTEDFACTORY.PAM_ACS_COX_PREDICT_VW
AS
(
SEL 
ASSET_ID, PLANNED,TIME_INTERVAL,SURVIVAL_PROB, CASE WHEN SURVIVAL_PROB< 0.95 THEN 1 ELSE 0 END AS PREDICTION
FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COX_PREDICT
);

replace view TRNG_ConnectedFactory.pam_acs_feature_failure_vw AS
SELECT Asset_ID
, 'Battery Failure' as Failure_Reason
, Battery_Failure as Failure_Frequency
FROM
TRNG_ConnectedFactory.pam_acs_combined_data_final
UNION ALL
SELECT Asset_ID
, 'Brakepad Issue' as Failure_Reason
, Brakepad_Issue as Failure_Frequency
FROM
TRNG_ConnectedFactory.pam_acs_combined_data_final
UNION ALL
SELECT Asset_ID
,'Engine Coolant' as Failure_Reason
, Engine_Coolant as Failure_Frequency
FROM
TRNG_ConnectedFactory.pam_acs_combined_data_final
UNION ALL
SELECT Asset_ID,
'Fuel Injector' as Failure_Reason
, Fuel_Injector as Failure_Frequency
FROM
TRNG_ConnectedFactory.pam_acs_combined_data_final
UNION ALL
SELECT Asset_ID,
'Fuel Pump' as Failure_Reason
, Fuel_pump as Failure_Frequency
FROM
TRNG_ConnectedFactory.pam_acs_combined_data_final
UNION ALL
SELECT Asset_ID
, 'Tire Wearout' as Failure_Reason
, Tire_wearout as Failure_Frequency
FROM
TRNG_ConnectedFactory.pam_acs_combined_data_final;

REPLACE VIEW  TRNG_CONNECTEDFACTORY.pam_acs_lr_pred_ext_vw
AS
(
SEL 
EVENT_ID, PLANNED, CASE WHEN FITTED_VALUE< 0.15 THEN 0 ELSE 1 END AS prediction
FROM TRNG_CONNECTEDFACTORY.pam_acs_lr_pred_ext
);

REPLACE VIEW  TRNG_CONNECTEDFACTORY.pam_acs_lr_pred_vw
AS
(
SEL 
EVENT_ID, PLANNED, CASE WHEN FITTED_VALUE< 0.15 THEN 0 ELSE 1 END AS PREDICTION
FROM TRNG_CONNECTEDFACTORY.pam_acs_lr_pred
);

REPLACE VIEW TRNG_ConnectedFactory.pam_acs_maintenance_plan AS
 SELECT ASSET_ID, LATITUDE, LONGITUDE
 FROM TRNG_CONNECTEDFACTORY.PAM_ACS_COMBINED_DATA_FINAL_TEST
 UNION
 SELECT day1,day2, day3, day4, day6, day7, day9, day10, day12, day15, day16, day17, day18, day20, day21, day23, day24, day28, day29, day30, day31, day32, day34, day35,
 day42, day43, day45, day46, day47, day49, day50, day51, day53, day56, day57, day61, day62, day64, day65, day66, day68, day72, day74, day75, day76, day77, day78, day79, 
 day80, day81, day84, day85, day87, day88, day90, day94, day95, day96, day98, day106, day108, day109, day110, day111, day112, day114, day125, day130, day134, day137, 
 day139, day142, day143, day144, day147, day151, day152, day156, day160, day163, day164, day168, day173, day179, day180, day182, day183, day188, day192, day194, day195, 
 day204, day206, day207, day208, day215, day221, day223, day224, day228, day229, day236, day246, day247, day253, day260, day263, day265, day270, day274, day288, day289, 
 day291, day299, day301, day307, day313, day336, day347 
 FROM TRNG_CONNECTEDFACTORY.pam_survival_rf_pred;

replace view TRNG_CONNECTEDFACTORY.pam_acs_pred as
(
sel
a.*,'Logistic Regression' as model_type from
TRNG_CONNECTEDFACTORY.pam_acs_lr_pred a
UNION
sel
b.*,'Decission Tree' as model_type from
TRNG_CONNECTEDFACTORY.pam_acs_dt_pred b
UNION
sel
c.*,'Random Forest Survival' as model_type from
TRNG_CONNECTEDFACTORY.pam_acs_rf_pred c
);

replace view TRNG_CONNECTEDFACTORY.pam_acs_pred_imp as
(
sel
a.*,'Logistic Regression' as model_type from
TRNG_CONNECTEDFACTORY.pam_acs_lr_pred_imp a
UNION
sel
b.*,'Decission Tree' as model_type from
TRNG_CONNECTEDFACTORY.pam_acs_dt_pred_imp b
UNION
sel
c.*,'Random Forest Survival' as model_type from
TRNG_CONNECTEDFACTORY.pam_acs_rf_pred_imp c
);

replace view TRNG_CONNECTEDFACTORY.pam_acs_pred_sur_imp as
(
sel
a.*,'Linear Regression Survival' as model_type from
TRNG_CONNECTEDFACTORY.pam_acs_lrs_pred_imp a
UNION
sel
b.feature,b.weight as importance,'Tree Survival' as model_type from
TRNG_CONNECTEDFACTORY.pam_acs_sts_pred_imp b
UNION
sel
c.feature,c.weight as importance,'Random Forest Survival' as model_type from
TRNG_CONNECTEDFACTORY.pam_acs_rfs_pred_imp c
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_time_int AS
(
SELECT 
T1.ASSET_ID,
T1.EVENT_DATE,
MIN((T2.EVENT_DATE - T1.EVENT_DATE)) as TIME_INTERVAL 
FROM 
TRNG_CONNECTEDFACTORY.pam_acs_combined_data AS T1
JOIN
TRNG_CONNECTEDFACTORY.pam_acs_combined_data AS T2
ON
T1.ASSET_ID = T2.ASSET_ID
AND T2.EVENT_DATE > T1.EVENT_DATE
group by 1,2
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_acs_time_int_str AS
(
SELECT 
T1.ASSET_ID,
T1.EVENT_DATE,
MIN((T1.EVENT_DATE - T1.START_DATE)) as TIME_INTERVAL 
FROM 
TRNG_CONNECTEDFACTORY.pam_acs_combined_data AS T1
group by 1,2
);

REPLACE VIEW  TRNG_CONNECTEDFACTORY.pam_acs_xg_ext_pred
AS
(
SEL 
EVENT_ID, PLANNED as planned,cast(PREDICTION as int) as prediction
FROM TRNG_CONNECTEDFACTORY.pam_acs_xg_pred_ext
);

REPLACE VIEW  TRNG_CONNECTEDFACTORY.pam_acs_xg_pred_ext_vw
AS
(
SEL 
EVENT_ID, PLANNED as planned,cast(PREDICTION as int) as prediction
FROM TRNG_CONNECTEDFACTORY.pam_acs_xg_pred_ext
);

REPLACE VIEW  TRNG_CONNECTEDFACTORY.pam_acs_xg_pred_vw
AS
(
SEL 
EVENT_ID, PLANNED as planned,cast(PREDICTION as int) as prediction
FROM TRNG_CONNECTEDFACTORY.pam_acs_xg_pred
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_planned_data_output AS
(
SEL CASE WHEN TIME1 > 0.70 THEN 0 ELSE 1 END AS PLANNED1
,CASE WHEN TIME2 > 0.70 THEN 0 ELSE 1 END AS PLANNED2
,CASE WHEN TIME3 > 0.70 THEN 0 ELSE 1 END AS PLANNED3
,CASE WHEN TIME4 > 0.70 THEN 0 ELSE 1 END AS PLANNED4
FROM TRNG_CONNECTEDFACTORY.PAM_OUT
);


REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_planned_data_output_cnt AS
(
SELECT cast(DAY46 as decimal(4,2)) as SURV_PROB ,count(*) AS TOTAL_CNT--,CASE WHEN DAY46 > 0.90 THEN 'PLANNED' ELSE 'UNPLANNED' END AS MAINTENANCE 
FROM  TRNG_CONNECTEDFACTORY.PAM_SURVIVAL_RF_PRED GROUP BY 1
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_planned_data_output_pl AS
(
SELECT SURV_PROB ,TOTAL_CNT, CASE WHEN SURV_PROB >= 0.90 THEN 'UNPLANNED' ELSE 'PLANNED' END AS MAINTENANCE 
FROM  TRNG_CONNECTEDFACTORY.pam_planned_data_output_cnt --GROUP BY 1
WHERE MAINTENANCE = 'PLANNED'
);

REPLACE VIEW TRNG_CONNECTEDFACTORY.pam_planned_data_output_unpl AS
(
SELECT SURV_PROB ,TOTAL_CNT, CASE WHEN SURV_PROB >= 0.90 THEN 'UNPLANNED' ELSE 'PLANNED' END AS MAINTENANCE 
FROM  TRNG_CONNECTEDFACTORY.pam_planned_data_output_cnt --GROUP BY 1
WHERE MAINTENANCE = 'UNPLANNED'
);

REPLACE view TRNG_ConnectedFactory.qm1_Test_Data_part_a AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_A' sample
   when target_violation = 0 then 10000
   when target_violation = 1 then 2000 END;

REPLACE view TRNG_ConnectedFactory.qm1_Test_Data_part_a_ AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_A' sample
   when target_violation = 0 then 10000
   when target_violation = 1 then 2000 END;

REPLACE view TRNG_ConnectedFactory.qm1_Test_Data_part_b1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_B1' sample
   when target_violation = 0 then 10000
   when target_violation = 1 then 2000 END;

REPLACE view TRNG_ConnectedFactory.qm1_Test_Data_part_b2 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_B2' sample
   when target_violation = 0 then 10000
   when target_violation = 1 then 2000 END;

REPLACE view TRNG_ConnectedFactory.qm1_Test_Data_part_c1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_C1' sample
   when target_violation = 0 then 10000
   when target_violation = 1 then 2000 END;

REPLACE view TRNG_ConnectedFactory.qm1_Train_Data_part_a AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_A' sample
   when target_violation = 0 then 30000
   when target_violation = 1 then 6000 END;

REPLACE view TRNG_ConnectedFactory.qm1_Train_Data_part_b1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_B1' sample
   when target_violation = 0 then 30000
   when target_violation = 1 then 6000 END;

REPLACE view TRNG_ConnectedFactory.qm1_Train_Data_part_b2 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_B2' sample
   when target_violation = 0 then 30000
   when target_violation = 1 then 6000 END;

REPLACE view TRNG_ConnectedFactory.qm1_Train_Data_part_c1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where (CAST(PROCESS_TS AS Date) <= Date '2017-04-30') and
   part_nbr = 'Product_Type_C1' sample
   when target_violation = 0 then 30000
   when target_violation = 1 then 6000 END;

REPLACE view TRNG_ConnectedFactory.qm2_Test_Data_part_a AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_A' sample
   when target_violation = 0 then 10000
   when target_violation = 1 and temp >= 32 then 1600
   when target_violation = 1 and temp < 32 then 400 END;

REPLACE view TRNG_ConnectedFactory.qm2_Test_Data_part_b1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_B1' sample
   when target_violation = 0 then 10000
   when target_violation = 1 and temp >= 32 then 1600
   when target_violation = 1 and temp < 32 then 400 END;

REPLACE view TRNG_ConnectedFactory.qm2_Test_Data_part_b2 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_B2' sample
   when target_violation = 0 then 10000
   when target_violation = 1 and temp >= 32 then 1600
   when target_violation = 1 and temp < 32 then 400 END;

REPLACE view TRNG_ConnectedFactory.qm2_Test_Data_part_c1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_C1' sample
   when target_violation = 0 then 10000
   when target_violation = 1 and temp >= 32 then 1600
   when target_violation = 1 and temp < 32 then 400 END;

REPLACE view TRNG_ConnectedFactory.qm2_Train_Data_part_a AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_A' sample
   when target_violation = 0 then 30000
   when target_violation = 1 and temp >= 32 then 4800
   when target_violation = 1 and temp < 32 then 1200 END;

REPLACE view TRNG_ConnectedFactory.qm2_Train_Data_part_b1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_B1' sample
   when target_violation = 0 then 30000
   when target_violation = 1 and temp >= 32 then 4800
   when target_violation = 1 and temp < 32 then 1200 END;

REPLACE view TRNG_ConnectedFactory.qm2_Train_Data_part_b2 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_B2' sample
   when target_violation = 0 then 30000
   when target_violation = 1 and temp >= 32 then 4800
   when target_violation = 1 and temp < 32 then 1200 END;

REPLACE view TRNG_ConnectedFactory.qm2_Train_Data_part_c1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-05-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-08-31') and
   part_nbr = 'Product_Type_C1' sample
   when target_violation = 0 then 30000
   when target_violation = 1 and temp >= 32 then 4800
   when target_violation = 1 and temp < 32 then 1200 END;

REPLACE view TRNG_ConnectedFactory.qm3_Test_Data_part_a AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-09-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-12-31') and
   part_nbr = 'Product_Type_A' sample
   when target_violation = 0 then 10000
   when target_violation = 1 and temp >= 32 then 1600
   when target_violation = 1 and temp < 32 then 400 END;

REPLACE view TRNG_ConnectedFactory.qm3_Test_Data_part_b1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-09-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-12-31') and
   part_nbr = 'Product_Type_B1' sample
   when target_violation = 0 then 10000
   when target_violation = 1 and temp >= 32 then 1600
   when target_violation = 1 and temp < 32 then 400 END;

REPLACE view TRNG_ConnectedFactory.qm3_Test_Data_part_c1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-09-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-12-31') and
   part_nbr = 'Product_Type_C1' sample
   when target_violation = 0 then 10000
   when target_violation = 1 and temp >= 32 then 1600
   when target_violation = 1 and temp < 32 then 400 END;

REPLACE view TRNG_ConnectedFactory.qm3_Train_Data_part_a AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-09-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-12-31') and
   part_nbr = 'Product_Type_A' sample
   when target_violation = 0 then 30000
   when target_violation = 1 and temp >= 32 then 4800
   when target_violation = 1 and temp < 32 then 1200 END;

REPLACE view TRNG_ConnectedFactory.qm3_Train_Data_part_b1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-09-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-12-31') and
   part_nbr = 'Product_Type_B1' sample
   when target_violation = 0 then 30000
   when target_violation = 1 and temp >= 32 then 4800
   when target_violation = 1 and temp < 32 then 1200 END;

REPLACE view TRNG_ConnectedFactory.qm3_Train_Data_part_b2 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-09-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-12-31') and
   part_nbr = 'Product_Type_B2' sample
   when target_violation = 0 then 30000
   when target_violation = 1 and temp >= 32 then 4800
   when target_violation = 1 and temp < 32 then 1200 END;

REPLACE view TRNG_ConnectedFactory.qm3_Train_Data_part_c1 AS
 select uniq_id, part_nbr, operator_name, PROCESS_TS, target_violation,
   ACTUAL_ID, ACTUAL_OD, ACTUAL_W_THICKNESS, D_H_TEMP, E_TEMP, H_PRESSURE,
   L_SPEED, S_SPEED, S_TEMP, S_TORQUE, ZONE1_TEMP, ZONE2_TEMP, ZONE3_TEMP,
   temp from TRNG_ConnectedFactory.T_SIM_AdS where 
   (CAST(PROCESS_TS AS Date) >= Date '2017-09-01') and
   (CAST(PROCESS_TS AS Date) <= Date '2017-12-31') and
   part_nbr = 'Product_Type_C1' sample
   when target_violation = 0 then 30000
   when target_violation = 1 and temp >= 32 then 4800
   when target_violation = 1 and temp < 32 then 1200 END;

REPLACE VIEW TRNG_ConnectedFactory.RAW_COL_VW1
AS 
(
select 
Coalesce (startup_loss,0    ) as startup_loss
,Coalesce (bdown_machine_failure,0       ) as bdown_machine_failure
,Coalesce (operator_missing,0            ) as operator_missing
,Coalesce (speed_losses,0                ) as speed_losses
,Coalesce (other_misc,0                  ) as other_misc
,Coalesce (material_missing,0            ) as material_missing
,Coalesce (tool_change,0                 ) as tool_change
,Coalesce (scrap_feet,0                  ) as scrap_feet
,Coalesce (planned_output_poles,0        ) as planned_output_poles
,Coalesce (actual_output_poles,0         ) as actual_output_poles
,Coalesce (norm_cyc_time,0         ) as norm_cyc_time
,Coalesce (sched_pms,0         ) as sched_pms
,Coalesce (no_prod_sched,0         ) as no_prod_sched
from 
TRNG_ConnectedFactory.RAW_COL_NEW1
);

REPLACE VIEW TRNG_ConnectedFactory.vAll_Data AS LOCKING ROW FOR ACCESS
 SELECT Cast('Part_A' AS VARCHAR(30)) AS part_id, a.* FROM TRNG_ConnectedFactory.MFG_PART_A a UNION ALL 
 SELECT Cast('Part_B1' AS VARCHAR(30)) AS part_id, a.* FROM TRNG_ConnectedFactory.MFG_PART_B1 a UNION ALL 
 SELECT Cast('Part_C1' AS VARCHAR(30)) AS part_id, a.* FROM TRNG_ConnectedFactory.MFG_PART_C1 a UNION ALL 
  SELECT Cast('Part_B2' AS VARCHAR(30)) AS part_id, a.* FROM TRNG_ConnectedFactory.MFG_PART_B2 a UNION ALL 
 SELECT Cast('Part_C2' AS VARCHAR(30)) AS part_id, a.* FROM TRNG_ConnectedFactory.MFG_PART_C2 a;

REPLACE VIEW TRNG_ConnectedFactory.vGRP001_INIT_CALCS AS LOCKING ROW FOR ACCESS
SELECT 
GRP_ID
,LEVEL_ID
,COLS
, DATA_VAL
FROM 
(
 SELECT * FROM(
   SELECT 
   v1.grp_id,
   v1.level_id,
   v1.ID,
            V1.speed_1,      
            V1.temp_1,       
            V1.speed_2,      
            V1.pressure_1,   
            V1.temp_2,       
            V1.temp_3,        
            V1.temp_4,        
            V1.temp_5,       
            V1.act_out_dim,   
            V1.trg_out_dim,   
            V1.act_in_dim,    
            V1.trg_in_dim,    
            V1.act_thickness, 
            V1.trg_thickness 
   FROM TRNG_ConnectedFactory.vGRP001_init_DATA v1
   JOIN TRNG_ConnectedFactory.TAF_GRP_INSTANCE gi 
   ON gi.grp_id = v1.grp_id 
   AND v1.level_id = gi.level_id
   AND gi.grp_id = 1
 ) t 
UNPIVOT(data_val 
        for COLS in (speed_1, temp_1, speed_2, pressure_1, temp_2, temp_3, temp_4, temp_5, act_out_dim, trg_out_dim, act_in_dim, trg_in_dim, act_thickness, trg_thickness)
       )dt1
)dt2;

REPLACE VIEW TRNG_ConnectedFactory.vGRP001_init_DATA AS LOCKING ROW FOR ACCESS 
SEL gi.grp_id, gi.level_id, ID
,speed_1
,temp_1                                                                                    
,speed_2                                                                                   
,pressure_1                                                                                
,temp_2                                                                                    
,temp_3                                                                                    
,temp_4                                                                                    
,temp_5                                                                                    
,act_out_dim                                                                               
,trg_out_dim                                                                               
,act_in_dim                                                                                
,trg_in_dim                                                                                
,act_thickness                                                                             
,trg_thickness     
, CURRENT_TIMESTAMP(0) AS test_DT
FROM TRNG_ConnectedFactory.MFG_PART_ALL d JOIN
TRNG_ConnectedFactory.TAF_GRP_INSTANCE gi
ON 
--CAST(gi.level_1_instance AS INTEGER) = d.ID -- for integer ID Column 
TRIM(gi.level_1_instance) = d.ID -- for character ID Column 
AND gi.grp_id = 1;

REPLACE VIEW TRNG_ConnectedFactory.VGRP001_INIT_DIMS AS LOCKING ROW FOR ACCESS
SELECT g.grp_id
, a.ID AS level_1_instance , NULL AS model_grp_id 
, '' AS level_2_instance 
, '' AS level_3_instance 
, '' AS level_4_instance 
, '' AS level_5_instance
, '' AS level_6_instance 
, '' AS level_7_instance 
, '' AS level_8_instance 
, '' AS level_9_instance 
, '' AS level_10_instance
, g.ts_id
, Min(START_TS_VALID) AS data_start_ts_valid
, Max(END_TS_VALID) AS data_end_ts_valid
, Count(DISTINCT a.ID) AS grp_data_point_cnt1
, NULL AS grp_data_point_cnt2
FROM TRNG_ConnectedFactory.MFG_PART_ALL a JOIN taf_grp_defn g
ON g.active_ind = 0 
AND g.grp_id = 1
GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,g.active_ind;

REPLACE VIEW TRNG_ConnectedFactory.vGRP001_RSLT_DATA AS LOCKING ROW FOR ACCESS 
SEL * FROM (
SEL
rslt.REC_ID,
rslt.SIM_ID,
rslt.COLS,
rslt.DATA_VAL
FROM TRNG_ConnectedFactory.TAF_RESULT_MC_SIM rslt
--WHERE rslt.RUN_ID = 0
) t
PIVOT (MAX(DATA_VAL) FOR COLS                                                                                    
                                       IN ( 'speed_1'           as   speed_1,   
                                            'temp_1'            as   temp_1,
                                            'speed_2'           as   speed_2,
                                            'pressure_1'        as   pressure_1, 
                                            'temp_2'            as   temp_2,
                                            'temp_3'            as   temp_3,
                                            'temp_4'            as   temp_4,
                                            'temp_5'            as   temp_5,
                                            'act_out_dim'       as   act_out_dim,
                                            'trg_out_dim'       as   trg_out_dim,
                                            'act_in_dim'        as   act_in_dim,
                                            'trg_in_dim'        as   trg_in_dim,
                                            'act_thickness'     as   act_thickness,
                                            'trg_thickness'     as   trg_thickness)
                                          )Tmp;

REPLACE VIEW trng_connectedFactory.vgrp100_init_calcs AS LOCKING ROW FOR ACCESS 
SELECT grp_id, level_id, nbr_children AS yval
, income AS xval1, age AS xval2, years_with_bank AS xval3
FROM vgrp100_init_data;


CREATE VIEW vgrp100_init_data AS LOCKING ROW FOR ACCESS 
SEL gi.grp_id, gi.level_id, nbr_children
, income , age , years_with_bank 
FROM trng_connectedFactory.twm_customer t1
, trng_connectedFactory.taf_grp_instance gi
WHERE gi.grp_calc_reqd = 1
AND gi.grp_id = 100
AND gi.level_1_instance = 'All_data';

REPLACE VIEW TRNG_ConnectedFactory.VGRP100_INIT_DIMS AS LOCKING ROW FOR ACCESS
SELECT g.grp_id
, 'All_data' AS level_1_instance  
, '' AS level_2_instance 
, '' AS level_3_instance 
, '' AS level_4_instance 
, '' AS level_5_instance
, '' AS level_6_instance 
, '' AS level_7_instance 
, '' AS level_8_instance 
, '' AS level_9_instance 
, '' AS level_10_instance
, Current_Timestamp(6) AS data_start_ts_valid
, Current_Timestamp(6) AS data_end_ts_valid
, Count(*) AS grp_data_point_cnt1
, NULL AS grp_data_point_cnt2
FROM TRNG_ConnectedFactory.TWM_CUSTOMER a JOIN taf_grp_defn g
ON g.active_ind = 1
AND g.grp_id = 100
GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13;

REPLACE VIEW vgrp101_init_dims AS LOCKING ROW FOR ACCESS
SELECT gd.grp_id, a.truck_id AS level_1_instance
, b.columnname AS level_2_instance
, '' AS level_3_instance
, '' AS level_4_instance, '' AS level_5_instance
, '' AS level_6_instance, '' AS level_7_instance
, '' AS level_8_instance, '' AS level_9_instance
, '' AS level_10_instance 
, gd.START_TS_VALID AS data_start_ts_valid
, Current_Timestamp(0) AS data_end_ts_valid
, Count(*) AS grp_data_pt_cnt1
, NULL AS grp_data_pt_cnt2
FROM bea_problem_trucks_data a, bea_tmpColumns b , taf_grp_defn gd
WHERE b.columnname NOT IN ('truck_id','sensor_sec' )
AND tablename = 'bea_problem_trucks_data '
AND databasename = 'trng_connectedfactory'
AND gd.active_ind = 1
AND gd.grp_id = 101
GROUP BY 1,2,3,4, gd.start_ts_valid;

REPLACE VIEW vgrp102_init_calcs AS LOCKING ROW FOR ACCESS 
SELECT grp_id, level_id, Cast(sensor_sec / 1000 AS INTEGER) AS sub_grp_id
, sensor_measure AS data_val
, Count(*) AS data_cnt
FROM trng_connectedfactory.vgrp102_init_data
GROUP BY 1,2,3,4;

REPLACE VIEW vgrp102_init_data AS LOCKING ROW FOR ACCESS 
SELECT gi.grp_id, gi.level_id, d.sensor_sec, d.truck_id, d.sensor_name, d.sensor_measure 
FROM trng_connectedfactory.bea_vProblem_trucks_data_deep  d JOIN trng_connectedFactory.taf_grp_instance gi
ON Trim(gi.level_1_instance) = d.truck_id
AND Trim(gi.level_2_instance) = d.sensor_name
WHERE gi.grp_calc_reqd = 1
AND gi.grp_id = 102;

REPLACE VIEW vgrp102_init_dims AS LOCKING ROW FOR ACCESS
SELECT gd.grp_id, d.truck_id AS level_1_instance
, d.sensor_name AS level_2_instance
, '' AS level_3_instance
, '' AS level_4_instance, '' AS level_5_instance
, '' AS level_6_instance, '' AS level_7_instance
, '' AS level_8_instance, '' AS level_9_instance
, '' AS level_10_instance 
, gd.START_TS_VALID AS data_start_ts_valid
, Current_Timestamp(0) AS data_end_ts_valid
, Count(*) AS grp_data_pt_cnt1
, NULL AS grp_data_pt_cnt2
FROM trng_connectedfactory.bea_vProblem_trucks_data_deep  d, taf_grp_defn gd
WHERE gd.active_ind = 1
AND gd.grp_id = 102
GROUP BY 1,2,3,4, gd.start_ts_valid;

REPLACE VIEW vgrp102_rslt AS LOCKING ROW FOR ACCESS 
SELECT gi.grp_id, gi.level_id, gi.level_1_instance AS truck_id
, gi.level_2_instance AS sensor_name
, r.ks_score 
FROM trng_connectedFactory.taf_grp_instance gi JOIN trng_connectedFactory.taf_result_ks_test r
ON r.grp_id = gi.grp_id
AND r.level_id = gi.level_id;

REPLACE VIEW vgrp103_init_dims AS LOCKING ROW FOR ACCESS
SELECT gd.grp_id
,Trim(fuel_pump+2*fuel_injector+4*engine_coolant+8*battery_failure+16*brakepad_issue + 32 * tire_wearout) AS level_1_instance
, '' AS level_2_instance, '' AS level_3_instance
, '' AS level_4_instance, '' AS level_5_instance
, '' AS level_6_instance, '' AS level_7_instance
, '' AS level_8_instance, '' AS level_9_instance
, '' AS level_10_instance 
, Min(event_date) AS data_start_ts_valid
, Max(event_date) AS data_end_ts_valid
, Count(*) AS grp_data_pt_cnt1
, NULL AS grp_data_pt_cnt2
FROM trng_connectedfactory.pam_acs_combined_data_final d JOIN taf_grp_defn gd
ON d.event_date BETWEEN gd.start_ts_valid AND gd.end_ts_valid
WHERE Extract(YEAR From event_date) < 2014
AND gd.active_ind = 1
AND gd.grp_id = 103
AND fuel_pump + 2*fuel_injector + 4 * engine_coolant + 8 * battery_failure + 16 * brakepad_issue + 32 * tire_wearout> 0
GROUP BY 1,2;

REPLACE VIEW TRNG_ConnectedFactory.vGRP500_init_data AS LOCKING ROW FOR ACCESS 
SELECT gi.grp_id, gi.level_id , gi.level_3_instance AS min_val, gi.level_4_instance AS max_val
, dt.data_val FROM TRNG_ConnectedFactory.taf_grp_instance gi
JOIN (
SELECT * FROM td_unpivot(
ON  TRNG_ConnectedFactory.vAll_Data
USING 
value_columns('data_val')
unpivot_column('sensor')
column_list('speed_1','temp_1','speed_2','pressure_1','temp_2','temp_3','temp_4','temp_5','act_out_dim','trg_out_dim','act_in_dim','trg_in_dim','act_thickness','trg_thickness')
) x
) dt ON gi.level_2_instance = dt.sensor 
AND gi.level_1_instance = dt.part_id
WHERE gi.grp_calc_reqd = 1
AND gi.grp_id = 500;

REPLACE VIEW TRNG_ConnectedFactory.vGRP600_init_data AS LOCKING ROW FOR ACCESS 
SELECT gi.grp_id, gi.level_id , gi.level_3_instance AS min_val, gi.level_4_instance AS max_val
, dt.data_val FROM TRNG_ConnectedFactory.taf_grp_instance gi
JOIN (
 SELECT var_map.GRP_ID AS GRP_ID, t.part_nbr AS part_id, var_map.GEN_VAR_NAME AS sensor, t.data_val AS data_val FROM td_unpivot(
 ON  TRNG_ConnectedFactory.L7_LE_TRAINING_CLEAN
 USING 
 value_columns('data_val')
 unpivot_column('sensor')
 column_list(
'screw_speed',
'screw_temp',
'line_speed',
'head_pressure',
'die_head_temp',
'barrel_zone3_temp',
'barrel_zone2_temp',
'barrel_zone1_temp',
'screw_torque',
'extrudate_temp',
'actual_od',
'actual_id',
'target_od',
'target_id',
'actual_wall_thickness',
'target_wall_thickness'
 )
) t
INNER JOIN TRNG_ConnectedFactory.VARIABLE_MAP var_map
ON var_map.ORI_VAR_NAME = t.sensor
) dt ON gi.level_2_instance = dt.sensor 
AND gi.level_1_instance = dt.part_id
WHERE gi.grp_calc_reqd = 1
AND gi.grp_id = 600;

REPLACE VIEW TRNG_ConnectedFactory.vgrp600_init_dims AS LOCKING ROW FOR ACCESS
SELECT gi.grp_id AS grp_id
, NULL AS model_grp_id
, x.part_id AS level_1_instance
, sensor AS level_2_instance,  Min(data_val) AS level_3_instance
, Max(data_val) AS level_4_instance, '' AS level_5_instance
, '' AS level_6_instance
, '' AS level_7_instance, '' AS level_8_instance
, '' AS level_9_instance, '' AS level_10_instance
, NULL AS ts_id, Current_Timestamp(0) AS data_start_ts_valid
, data_start_ts_valid AS data_end_ts_valid, Count(*) AS grp_data_point_cnt1, 1 AS grp_data_point_cnt2
--, gi.parameter_id
FROM (
 SELECT var_map.GRP_ID AS GRP_ID, dt.part_nbr as part_id, var_map.GEN_VAR_NAME AS sensor, dt.data_val AS data_val FROM td_unpivot(
 ON  TRNG_ConnectedFactory.L7_LE_TRAINING_CLEAN
 USING 
 value_columns('data_val')
 unpivot_column('sensor')
 column_list(
'screw_speed',
'screw_temp',
'line_speed',
'head_pressure',
'die_head_temp',
'barrel_zone3_temp',
'barrel_zone2_temp',
'barrel_zone1_temp',
'screw_torque',
'extrudate_temp',
'actual_od',
'actual_id',
'target_od',
'target_id',
'actual_wall_thickness',
'target_wall_thickness'
 )
) dt 
INNER JOIN TRNG_ConnectedFactory.VARIABLE_MAP var_map
ON var_map.ORI_VAR_NAME = dt.sensor
) x JOIN TRNG_ConnectedFactory.taf_grp_defn gi ON 1=1
AND gi.grp_id = x.grp_id
WHERE gi.grp_id = 600
AND gi.active_ind = 1
GROUP BY 1,2,3,4;

REPLACE VIEW TRNG_ConnectedFactory.vGRP601_init_data AS LOCKING ROW FOR ACCESS 
SELECT gi.grp_id, gi.level_id , CAST(gi.level_4_instance AS DECIMAL(12,4)) AS min_val, CAST(gi.level_5_instance AS DECIMAL(12,4)) AS max_val
, dt.data_val FROM TRNG_ConnectedFactory.taf_grp_instance gi
JOIN (
 SELECT var_map.GRP_ID AS GRP_ID, t.part_nbr AS part_id, var_map.GEN_VAR_NAME AS sensor, t."target" as target_violation, t.data_val AS data_val FROM td_unpivot(
 ON  TRNG_ConnectedFactory.L7_SAMPLE
 USING 
 value_columns('data_val')
 unpivot_column('sensor')
 column_list(
'screw_speed',
'screw_temp',
'line_speed',
'head_pressure',
'die_head_temp',
'barrel_zone3_temp',
'barrel_zone2_temp',
'barrel_zone1_temp',
'screw_torque',
'extrudate_temp',
'actual_od',
'actual_id',
'actual_wall_thickness'
 )
) t
INNER JOIN TRNG_ConnectedFactory.VARIABLE_MAP var_map
ON var_map.ORI_VAR_NAME = t.sensor
) dt 
ON gi.level_2_instance = dt.sensor 
AND gi.level_1_instance = dt.part_id
AND CAST(gi.level_3_instance AS INTEGER) = CAST(dt.target_violation AS INTEGER) 
WHERE gi.grp_calc_reqd = 1
AND gi.grp_id = 601;

REPLACE VIEW TRNG_ConnectedFactory.vgrp601_init_dims AS LOCKING ROW FOR ACCESS
SELECT gi.grp_id AS grp_id
, NULL AS model_grp_id
, x.part_id AS level_1_instance
, sensor AS level_2_instance
, CAST(TARGET_VIOLATION AS INTEGER) AS level_3_instance
,  Min(data_val) AS level_4_instance
, Max(data_val) AS level_5_instance, '' AS level_6_instance
, '' AS level_7_instance
, '' AS level_8_instance, '' AS level_9_instance
, '' AS level_10_instance
, NULL AS ts_id, Current_Timestamp(0) AS data_start_ts_valid
, data_start_ts_valid AS data_end_ts_valid, Count(*) AS grp_data_point_cnt1, 1 AS grp_data_point_cnt2
--, gi.parameter_id
FROM (
 SELECT var_map.GRP_ID AS GRP_ID, dt.part_nbr as part_id, var_map.GEN_VAR_NAME AS sensor, dt."target" as target_violation, CAST(dt.data_val AS DECIMAL(12,4)) AS data_val FROM td_unpivot(
 ON  TRNG_ConnectedFactory.L7_SAMPLE
 USING 
 value_columns('data_val')
 unpivot_column('sensor')
 column_list(
'screw_speed',
'screw_temp',
'line_speed',
'head_pressure',
'die_head_temp',
'barrel_zone3_temp',
'barrel_zone2_temp',
'barrel_zone1_temp',
'screw_torque',
'extrudate_temp',
'actual_od',
'actual_id',
'actual_wall_thickness'
)
) dt 
INNER JOIN TRNG_ConnectedFactory.VARIABLE_MAP var_map
ON var_map.ORI_VAR_NAME = dt.sensor
) x JOIN TRNG_ConnectedFactory.taf_grp_defn gi ON 1=1
AND gi.grp_id = x.grp_id
WHERE gi.grp_id = 601
AND gi.active_ind = 1
GROUP BY 1,2,3,4,5;

REPLACE VIEW TRNG_ConnectedFactory.vGRP602_init_data AS LOCKING ROW FOR ACCESS 
SELECT gi.grp_id
, gi.level_id 
, CAST(gi.level_2_instance AS DECIMAL(12,4)) AS min_val
, CAST(gi.level_3_instance AS DECIMAL(12,4)) AS max_val
, dt.data_val 
FROM TRNG_ConnectedFactory.taf_grp_instance gi
JOIN (
 SELECT t.sensor AS sensor, CAST(t.data_val AS DECIMAL(12,4)) AS data_val FROM td_unpivot(
 ON  TRNG_ConnectedFactory.RAW_COL_VW1
 USING 
 value_columns('data_val')
 unpivot_column('sensor')
 column_list(
'startup_loss',
'bdown_machine_failure',
'operator_missing',
'speed_losses',
'other_misc',
'material_missing',
'tool_change',
'scrap_feet',
'planned_output_poles',
'actual_output_poles',
'norm_cyc_time',
'no_prod_sched',
'sched_pms'
)
) t
) dt 
ON gi.level_1_instance = dt.sensor 
WHERE gi.grp_calc_reqd = 1
AND gi.grp_id = 602;

REPLACE VIEW TRNG_ConnectedFactory.vgrp602_init_dims AS LOCKING ROW FOR ACCESS
SELECT gi.grp_id AS grp_id
, NULL AS model_grp_id
, sensor AS level_1_instance
,  Min(data_val) AS level_2_instance
, Max(data_val) AS level_3_instance
, '' AS level_4_instance
, '' AS level_5_instance
, '' AS level_6_instance
, '' AS level_7_instance
, '' AS level_8_instance
, '' AS level_9_instance
, '' AS level_10_instance
, NULL AS ts_id, Current_Timestamp(0) AS data_start_ts_valid
, data_start_ts_valid AS data_end_ts_valid, Count(*) AS grp_data_point_cnt1, 1 AS grp_data_point_cnt2
--, gi.parameter_id
FROM (
 SELECT row_number() over (order by null) as ID, dt.sensor AS sensor, CAST(dt.data_val AS DECIMAL(12,4)) AS data_val FROM td_unpivot(
 ON  TRNG_ConnectedFactory.RAW_COL_VW1
 USING 
 value_columns('data_val')
 unpivot_column('sensor')
 column_list(
'startup_loss',
'bdown_machine_failure',
'operator_missing',
'speed_losses',
'other_misc',
'material_missing',
'tool_change',
'scrap_feet',
'planned_output_poles',
'actual_output_poles',
'norm_cyc_time',
'no_prod_sched',
'sched_pms'
)
) dt 
) x JOIN TRNG_ConnectedFactory.taf_grp_defn gi ON 1=1
--AND gi.grp_id = x.grp_id
WHERE gi.grp_id = 602
AND gi.active_ind = 1
GROUP BY 1,2,3;

REPLACE VIEW TRNG_ConnectedFactory.vPartno AS LOCKING ROW FOR ACCESS
SEL
ROW_NUMBER () OVER (ORDER BY t0.UNIQ_ID) AS ID
, t0.UNIQ_ID AS part_id
, t0.PART_NO 
FROM 
(
SEL 
ROW_NUMBER() OVER (ORDER BY NULL) AS UNIQ_ID,
CASE WHEN s0.PART_NO(INTEGER) = 1 THEN '0n1454'
WHEN s0.PART_NO(INTEGER) = 2 THEN '0n1311'
WHEN s0.PART_NO(INTEGER) = 3 THEN '0n1455'
WHEN s0.PART_NO(INTEGER) = 4 THEN '0n5217'
WHEN s0.PART_NO(INTEGER) = 5 THEN '0n5218'
END AS PART_NO
FROM
(
SEL RANDOM(1,5) AS PART_NO
FROM TRNG_ConnectedFactory.SEQ_INTEGERS t1
WHERE t1.SEQ_INT <= 500
) s0
) t0
INNER JOIN (
SEL ROW_NUMBER() OVER (ORDER BY NULL) AS uniq_id, RANDOM(1,7) AS REPS FROM TRNG_ConnectedFactory.SEQ_INTEGERS t1
WHERE t1.SEQ_INT <= 500
) t1
ON t0.uniq_id = t1.uniq_id
CROSS JOIN TRNG_ConnectedFactory.SEQ_INTEGERS t2
WHERE t2.SEQ_INT <= t1.REPS;


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
replace PROCEDURE TRNG_ConnectedFactory.PART_NO_GEN ()
    BEGIN
	    DECLARE V_PART_NO VARCHAR(6);
	    DECLARE V_INST INT;
      SELECT INST,PART_NO
      INTO V_INST, V_PART_NO
      FROM TRNG_ConnectedFactory.PART_NO
      WHERE PART_NO=
      (    SELECT PART_NO FROM
    (
    SELECT *
   FROM TRNG_ConnectedFactory.PART_NO
   WHERE ROW_ID = RANDOM(1,1)
   ) DRV);
	WHILE V_INST > 0
    DO
       INSERT INTO TRNG_ConnectedFactory.SHIFT_PART_NO (PART_NO) VALUES (V_PART_NO);

    END WHILE;
    END;

REPLACE PROCEDURE trng_connectedFactory.sp_TAF_Bnml_multiZ_INIT()
--/************************************************************/
--/*  Z Score - multiple data sets     */
--/*  Analytic ID = 10 (group definition table)                */
--/*
--/*   Created 2018-11-23 By B.Aldridge/A.Saeed Teradata      */
--/*   Input data view / table must have the following columns*/
--/*   GRP_ID(Integer) identifier of analytic / metadata      */
--/*             level_id (BIGINT)  Identifies each data set for regression */
--/*             n_cnt Bigint- 								*/
--/*             x_cnt Bigint - 								*/
--/*      OutTable TAF_RESULT_BNML_MULTIZ has the following columns    */
--/*                GRP_ID(Integer) - analytic / metadata identifier */
--/*                level_id1 (Bigint)  - Data set identifier    */
--/*                level_id1 (Bigint)  - Data set identifier    */
--/*                p_avg (float)   -   proportion average     */
--/*                zVal  (float)   - z value                  */
--/*                pVal  (float                               */
--/*  Updated 2018_12_05 B.Aldridge                                    */
--/*     - Modified to compute z  for all pairs of       */
--/*     ilevel_id n same grp_id.  and sub_grp_id                                                        */
--/*      - added status writes                                                         */
--/*      - removed reference to dbc                                            */
/* 2019-01-31:  A.Saeed - removed delete of all   */ 
/* rows of TAF_RESULT_Bnml_multiZ                 */
/* and set to run_id column to <0 to "keep" rows. */
/* Also made relevant changes e.g. put in where   */ 
/* clauses to fetch only latest records           */
/*           2019-02-01:  A.Saeed - implementing Audit Trail functionality            */
/*					in Table trng_connectedFactory.ESL_CONTROL_TABLE	    				  */
/*                last_batch_sk ID is picked, incremented and updated                 */
/*               both last_batch_sk and current_batch_sk with the new ID              */
/*               Also, change_ts is updated with the new timestamp                    */
/*Following columns have also been added in Results table:
 *  ETL_Create_Batch_Sk INTEGER,
    ETL_Change_Batch_Sk INTEGER,
 	ETL_Create_Ts Timestamp(0),
	ETL_Change_Ts Timestamp(0),
	ETL_Action_Cd char(1) CHARACTER SET LATIN NOT CASESPECIFIC;*/
--/******************************************************************/

SQL SECURITY INVOKER 
	BEGIN


DECLARE CNTr,  tstFlg, status_cnt  INTEGER;
DECLARE string_sql VARCHAR(10000);
DECLARE ETLLOADTs, lastLdDt TIMESTAMP(6);
DECLARE vDummy VARCHAR(1); -- handler for error


-- create handler for nonexistant volatile tables 
  DECLARE CONTINUE HANDLER FOR SqlState '42000'
  SET vDummy = 'd';
/********************************************************************/
/* check if calculation necessary                                  */
/*******************************************************************/
SEL Count(*) 
INTO status_cnt
FROM trng_connectedFactory.taf_grp_instance gi
JOIN trng_connectedFactory.taf_grp_defn gd
ON gd.grp_id = gi.grp_id
WHERE gd.analytic_id = 10
AND gd.active_ind = 1
AND gi.grp_calc_reqd = 1
AND gi.RUN_ID = 0;

IF status_cnt > 0 THEN 



/********************************************************************/
/*  set up status                                                  */
/*******************************************************************/
SELECT 1+Max(Status_Id), Max(ETL_LOAD_Ts)  
INTO status_cnt, ETLLOADTs
FROM trng_connectedFactory.TAF_RUN_STATUS
WHERE run_id = 0;

 INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(Status_Id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_Ts )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'spTAF_Bnml_multiZ_ZINIT' ,'Start of spTAF_Bnml_multiZ_ZINIT', 0, :ETLLOADTs);
	  
SET status_cnt=status_cnt + 1;

-- for initialization delete all rows 
--DEL FROM trng_connectedFactory.TAF_RESULT_Bnml_multiZ;
/***************************************************************************/
/*  instead of delete, "keep" groups and change the ID to differentiate from new records(run_id = 0) with analytic_id = 10*/
/***************************************************************************/ 
UPDATE trng_connectedFactory.TAF_RESULT_Bnml_multiZ
SET RUN_ID = RUN_ID - 1; 

/*****************************************************************************/
/*  Get data from calculation view                                                         */
/* Table compatible with Fuzzy Logix  MLR                                         */
/*****************************************************************************/
DROP TABLE virtual_taf_z;
CREATE MULTISET VOLATILE TABLE virtual_taf_z, NO Log (
grp_id INTEGER,
level_id BIGINT,
sub_grp_id INTEGER,
x_cnt FLOAT,
n_cnt FLOAT)
PRIMARY INDEX (grp_id, level_id) 
ON COMMIT PRESERVE ROWS;

FOR viewCursor AS Load_Cursor CURSOR FOR 
	    SELECT Trim(VIEW_DB) || '.' || Trim(gd.INIT_CALCS_TXT) AS view_name
		    FROM trng_connectedFactory.TAF_GRP_DEFN gd
			WHERE ACTIVE_IND = 1
			AND analytic_id = 10
			AND Char_Length(INIT_CALCS_TXT) > 0 
			GROUP BY 1 -- require an entry
	DO
	    SET string_sql = 'INSERT INTO virtual_taf_z
		     SELECT * FROM ' || Trim(VIEWCURSOR.view_name) || ';';
		CALL dbc.SYSEXECSQL(string_sql);
	END FOR;
	
COLLECT STATISTICS ON virtual_taf_z INDEX(grp_id, level_id);   
SEL Count(*) INTO cntr FROM virtual_taf_z;

/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
 INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(Status_Id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_Ts )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'spTAF_Bnml_multiZ_ZINIT' ,'Data collected into virtual_taf_z', :cntr, :ETLLOADTs);
	  
SET status_cnt=status_cnt + 1;
/***********************************************************/
/*  delete existing results  for delta loads              */
/***********************************************************/
--DELETE t FROM trng_connectedFactory.TAF_RSLT_ZSCR t, vtTAF_Z s 
--WHERE t.GRP_ID = s.GRP_ID 
--AND t.level_id1 = s.level_id; 

INSERT INTO trng_connectedFactory.TAF_RESULT_Bnml_multiZ (grp_id, level_id1, level_id2,  zVal, x1_cnt, n1_cnt, x2_cnt, n2_cnt, p1_hat, p2_hat, run_id,
ETL_Create_Batch_Sk, ETL_Change_Batch_Sk, ETL_Create_Ts, ETL_Change_Ts, ETL_Action_Cd)
SELECT grp_id,  level_id1, level_id2, zval,  x1_count AS x1_cnt, n1_count AS n1_cnt, x2_count AS x2_cnt, n2_count AS n2_cnt, p1_hat, p2_hat
, 0 AS RUN_ID
, Current_Timestamp(0)
, Current_Timestamp(0)
, 'I'
FROM (
 SELECT t1.grp_id, t1.sub_grp_id,  t1.level_id AS level_id1, t2.level_id AS level_id2
 , Cast((t1.x_cnt + t2.x_cnt) AS FLOAT)/NullIfZero(t1.n_cnt + t2.n_cnt) AS p_hat
, Cast(t1.x_cnt AS FLOAT)/NullIfZero(Cast(t1.n_cnt AS FLOAT)) AS p1_hat
, Cast(t2.x_cnt AS FLOAT)/NullIfZero(Cast(t2.n_cnt AS FLOAT)) AS p2_hat
, (p1_hat - p2_hat)/NullIfZero(Sqrt((p_hat * (1-p_hat) * ((1.0/(t1.n_cnt(FLOAT)))+ (1.0/(t2.n_cnt(FLOAT))))))) AS zVal
, t1.x_cnt(INTEGER) AS x1_count
, t2.x_cnt(INTEGER) AS x2_count
, t1.n_cnt(BIGINT) AS n1_count
, t2.n_cnt(BIGINT) AS n2_count
FROM virtual_taf_z t1, virtual_taf_z t2
WHERE t1.level_id < t2.level_id
AND t1.grp_id = t2.grp_id
AND t1.sub_grp_id = t2.sub_grp_id
AND (t1.x_cnt + t2.x_cnt) < t1.n_cnt + t2.n_cnt /*to avoid negative values in Sqrt expression. p_hat needs to be less than one. Conceptually speaking, there shouldn't be any values in which x is greater than n*/
) x;

SELECT Count(*) INTO cntr FROM trng_connectedFactory.TAF_RESULT_Bnml_multiZ WHERE RUN_ID = 0;

/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
 INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(Status_Id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_Ts )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'spTAF_Bnml_multiZ_ZINIT' ,'calculation completed', :cntr, :ETLLOADTs);
	  
DROP TABLE virtual_taf_z;

UPDATE t FROM trng_connectedFactory.TAF_GRP_INSTANCE t ,(
SELECT GRP_ID, level_id FROM (
SELECT GRP_ID, level_id1 AS level_id
FROM trng_connectedFactory.TAF_RESULT_Bnml_multiZ
WHERE RUN_ID = 0
GROUP BY 1,2
UNION ALL 
SELECT GRP_ID, level_id2 AS level_id
FROM trng_connectedFactory.TAF_RESULT_Bnml_multiZ
WHERE RUN_ID = 0
GROUP BY 1,2
) x GROUP BY 1,2 ) s
SET grp_calc_reqd = 0 
, last_calc_ts = Current_Timestamp(0)
WHERE s.grp_id = t.GRP_ID
AND s.level_id = t.level_id
AND t.GRP_CALC_REQD = 1;


END IF;
-- end of calculation required check 
END;

REPLACE PROCEDURE trng_connectedFactory.SP_TAF_BNML_ONEz_INIT()
--/************************************************************/
--/*  Z Score - one to rest test                               */
--/*  Analytic ID = 11 (group definition table)                */
--/*
--/*   Created 2018-11-23 By B.Aldridge/A.Saeed Teradata      */
--/*   Input data view / table must have the following columns*/
--/*   GRP_ID(Integer) identifier of analytic / metadata      */
--/*             level_id (BIGINT)  Identifies each data set for regression */
--/*             n_cnt Bigint- 								*/
--/*             x_cnt Bigint - 								*/
--/*      OutTable TAF_RESULT_Bnml_ONEz has the following columns    */
--/*                GRP_ID(Integer) - analytic / metadata identifier */
--/*                level_id1 (Bigint)  - Data set identifier    */
--/*                level_id1 (Bigint)  - Data set identifier    */
--/*                p_avg (float)   -   proportion average     */
--/*                zVal  (float)   - z value                  */
--/*                pVal  (float                               */
--/*  Updated 2018_12_05 B.Aldridge                                */
--/*     - Modified to compute z  for all pairs of                  */
--/*     ilevel_id n same grp_id.  and sub_grp_id                   */
--/*      - added status writes                                      */
--/*      - removed reference to dbc                                 */
/* 2019-01-31:  A.Saeed - removed delete of all   */ 
/* rows of TAF_RESULT_Bnml_ONEZ                   */
/* and set to run_id column to < 0 to "keep" rows. */
/* Also made relevant changes e.g. put in where   */ 
/* clauses to fetch only latest records           */
/*           2019-02-01:  A.Saeed - implementing Audit Trail functionality            */
/*					in Table trng_connectedFactory.ESL_CONTROL_TABLE	    				  */
/*                last_batch_sk ID is picked, incremented and updated                 */
/*               both last_batch_sk and current_batch_sk with the new ID              */
/*               Also, change_ts is updated with the new timestamp                    */
/*Following columns have also been added in Results table:
 *  ETL_Create_Batch_Sk INTEGER,
    ETL_Change_Batch_Sk INTEGER,
 	ETL_Create_Ts Timestamp(0),
	ETL_Change_Ts Timestamp(0),
	ETL_Action_Cd char(1) CHARACTER SET LATIN NOT CASESPECIFIC;*/
--/******************************************************************/

SQL SECURITY INVOKER 
	BEGIN


DECLARE CNTr,  tstFlg, status_cnt  INTEGER;
DECLARE string_sql VARCHAR(10000);
DECLARE ETLLOADTs, lastLdDt TIMESTAMP(6);
DECLARE vDummy VARCHAR(1); -- handler for error


-- create handler for nonexistant volatile tables 
  DECLARE CONTINUE HANDLER FOR SqlState '42000'
  SET vDummy = 'd';

/********************************************************************/
/*  set up status                                                   */
/*******************************************************************/
SEL Count(*) 
INTO status_cnt
FROM trng_connectedFactory.taf_grp_instance gi
JOIN trng_connectedFactory.taf_grp_defn gd
ON gd.grp_id = gi.grp_id
WHERE gd.analytic_id = 11
AND gd.active_ind = 1
AND gi.grp_calc_reqd = 1
AND gi.run_id = 0;

IF status_cnt > 0 THEN 

/********************************************************************/
/*  set up status                                                   */
/*******************************************************************/
SELECT 1+Max(Status_Id), Max(ETL_LOAD_Ts)  
INTO status_cnt, ETLLOADTs
FROM trng_connectedFactory.TAF_RUN_STATUS
WHERE run_id = 0;

 INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(Status_Id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_Ts )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'spTAF_Bnml_ONEz_INIT' ,'Start of spTAF_Bnml_ONEz_INIT', 0, :ETLLOADTs);
	  
SET status_cnt=status_cnt + 1;

-- for initialization delete any current records 
-- only need 

--DELETE trng_connectedFactory.taf_result_bnml_onez
--WHERE (grp_id, level_id1) IN (SELECT gd.grp_id, gi.level_id FROM trng_connectedFactory.taf_grp_defn gd
--JOIN trng_connectedFactory.taf_grp_instance gi
--ON gi.grp_id = gd.grp_id
--AND gd.active_ind = 1
--AND gd.analytic_id = 11
--AND gi.grp_calc_reqd = 1
-- GROUP BY 1,2
-- )
-- ;

/***************************************************************************/
/*  instead of delete, "keep" groups and change the ID to differentiate from new records(run_id = 0) with analytic_id = 1*/
/***************************************************************************/ 
UPDATE trng_connectedFactory.taf_result_bnml_onez
SET RUN_ID = RUN_ID - 1
WHERE (grp_id, level_id1) IN (SELECT gd.grp_id, gi.level_id FROM trng_connectedFactory.taf_grp_defn gd
JOIN trng_connectedFactory.taf_grp_instance gi
ON gi.grp_id = gd.grp_id
AND gd.active_ind = 1
AND gd.analytic_id = 11
--AND gi.grp_calc_reqd = 1
 GROUP BY 1,2
 )
 ;

/*****************************************************************************/
/*  Get data from calculation view                                                         */
/* Table compatible with Fuzzy Logix  MLR                                         */
/*****************************************************************************/
DROP TABLE virtual_taf_z;
CREATE MULTISET VOLATILE TABLE virtual_taf_z, NO Log (
grp_id INTEGER,
level_id BIGINT,
sub_grp_id INTEGER,
x_cnt FLOAT,
n_cnt FLOAT)
PRIMARY INDEX (grp_id, level_id) 
ON COMMIT PRESERVE ROWS;

FOR viewCursor AS Load_Cursor CURSOR FOR 
	    SELECT Trim(VIEW_DB) || '.' || Trim(gd.INIT_CALCS_TXT) AS view_name
		    FROM trng_connectedFactory.TAF_GRP_DEFN gd
			WHERE ACTIVE_IND = 1
			AND analytic_id = 11
			AND Char_Length(INIT_CALCS_TXT) > 0 
			GROUP BY 1 -- require an entry
	DO
	    SET string_sql = 'INSERT INTO virtual_taf_z
		     SELECT * FROM ' || Trim(VIEWCURSOR.view_name) || ';';
		CALL dbc.SYSEXECSQL(string_sql);
	END FOR;
	
COLLECT STATISTICS ON virtual_taf_z INDEX(grp_id, level_id);   
SEL Count(*) INTO cntr FROM virtual_taf_z;

/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
 INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(Status_Id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_Ts )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'spTAF_Bnml_ONEz_INIT' ,'Data collected into virtual_taf_z', :cntr, :ETLLOADTs);
	  
SET status_cnt=status_cnt + 1;
/***********************************************************/
/*  update results results  for delta loads              */
/***********************************************************/


INSERT INTO trng_connectedFactory.TAF_RESULT_Bnml_ONEz (grp_id, level_id1, level_id2,  zVal, x1_cnt, n1_cnt, x2_cnt, n2_cnt, p1_hat, p2_hat, run_id,
ETL_Create_Batch_Sk, ETL_Change_Batch_Sk, ETL_Create_Ts, ETL_Change_Ts, ETL_Action_Cd)
SELECT grp_id,  level_id1, NULL AS level_id2, zval, X1 AS x1_cnt, N1 AS n1_cnt, X2 AS x2_cnt, N2 AS n2_cnt, p1_hat, p2_hat
, 0 AS RUN_ID
, Current_Timestamp(0)
, Current_Timestamp(0)
, 'I'
FROM (
SEL a.grp_id, 
  a.level_id AS level_id1
, a.x_cnt  AS X1
, a.n_cnt  AS N1
, b.X- X1 AS X2
, B.N - N1 AS N2
, (X1(FLOAT))/NullIfZero(N1(FLOAT)) AS P1_hat
, (X2(FLOAT))/NullIfZero(N2(FLOAT)) AS P2_hat
, ((X1+X2)(FLOAT))/NullIfZero((N1+N2)(FLOAT)) AS P_AVG
, (P1_hat-P2_hat)/Sqrt(P_AVG*(1-P_AVG)*((1/NullIfZero(N1(FLOAT))) + (1.0/NullIfZero(N2(FLOAT))))) AS zVal
FROM virtual_taf_z a JOIN 
( SELECT grp_id, sub_grp_id, Sum(x_cnt) AS X
, Sum(n_cnt) AS N
FROM virtual_taf_z
GROUP BY 1,2
) B
ON a.grp_id = b.grp_id AND a.sub_grp_id = b.sub_grp_id
AND (a.x_cnt + B.X) < a.n_cnt + B.N
) x;


SELECT Count(*) INTO cntr FROM trng_connectedFactory.TAF_RESULT_Bnml_ONEz WHERE RUN_ID = 0;
/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
 INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(Status_Id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_Ts )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'spTAF_Bnml_ONEz_INIT' ,'calculation completed', :cntr, :ETLLOADTs);
SET status_cnt = status_cnt + 1;

/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
DROP TABLE virtual_taf_z;

UPDATE t FROM trng_connectedFactory.TAF_GRP_INSTANCE t ,(
SELECT GRP_ID, level_id FROM (
SELECT GRP_ID, level_id1 AS level_id
FROM trng_connectedFactory.TAF_RESULT_Bnml_ONEz 
WHERE RUN_ID = 0
GROUP BY 1,2
UNION ALL 
SELECT GRP_ID, level_id2 AS level_id
FROM trng_connectedFactory.TAF_RESULT_Bnml_ONEz 
WHERE RUN_ID = 0
GROUP BY 1,2
) x GROUP BY 1,2 ) s
SET grp_calc_reqd = 0 
, last_calc_ts = Current_Timestamp(6)
WHERE s.grp_id = t.GRP_ID
AND s.level_id = t.level_id
AND t.GRP_CALC_REQD = 1;

/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
 INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(Status_Id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_Ts )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'spTAF_Bnml_ONEz_INIT' ,'Procedure completed', :cntr, :ETLLOADTs);
	  

END IF; -- end of procedure calculation check
      
END;

REPLACE PROCEDURE trng_connectedFactory.sp_TAF_descriptive_statistics_init() 
--/************************************************/
--/* CREATED: 2011_06/28 by B.Aldridge            */
--/* FUNCTION:  Compute descriptive statistics    */
--/*           For MAP DESC_RSULT table           */
--/*     Analytic_id:  Binary sum of desired stats*/
--/*       1= min                                 */
--/*       2= max                                 */
--/*       4= Count                               */
--/*       8= Average                             */
--/*       16 = Sum                               */
--/*       32 = Stddev (pop)                      */
--/*       64 = skewness                          */
--/*       128 = kurtosis                         */
--/*       256 = median                           */
--/*       512 = Percentiles (group id required)  */
--/*             Pctiles use Pctile table for     */
--/*             desired percentiles and method   */
--/*  Modified 2011-11_14 to allow multiple groups*/
--/*           2015_01_20 for SUM and naming      */
--/*              conventions                     */
--/*            2019_01_18:  replaced median      */
--/*              calculation with TD function    */
/* 2019-01-31:  A.Saeed - removed delete of all   */ 
/* rows of taf_result_descriptive_statistics      */
/* and set to run_id column to -1 to "keep" rows. */
/* Also made relevant changes e.g. put in where   */ 
/* clauses to fetch only latest records           */
/*last_batch_sk ID is picked, incremented and updated          */
/*both last_batch_sk and current_batch_sk with the new ID      */
/*Also, change_ts is updated with the new timestamp            */
/*Following columns have also been added in Results table:
 *  ETL_Create_Batch_Sk INTEGER,
    ETL_Change_Batch_Sk INTEGER,
 	ETL_Create_Ts Timestamp(0),
	ETL_Change_Ts Timestamp(0),
	ETL_Action_Cd char(1) CHARACTER SET LATIN NOT CASESPECIFIC;*/
--/************************************************/
SQL SECURITY INVOKER 
BEGIN
DECLARE max_statistic , next_statistic, current_statistic ,current_exp INTEGER;
DECLARE string_sql VARCHAR(10000);
DECLARE analytic_type VARCHAR(35);
DECLARE analytic_id, rowcnt,ROWCNT2, status_cnt,  RunID INTEGER;
DECLARE ETLLOADTS, lastLoadDt TIMESTAMP(6);
DECLARE vDummy CHAR(1);


-- create handler for nonexistant volatile tables 
 DECLARE CONTINUE HANDLER FOR SqlState '42000'
 SET vDummy = 'd';


SET max_statistic = 1023;  -- typically one less than a power of 2 
SET RunID = 0 ; -- optional for tracking individual runs
/***************************************************************************/
/*  exit if no calculation                                                 */
/***************************************************************************/
SEL Count(*) 
INTO status_cnt
FROM trng_connectedFactory.taf_grp_instance gi
JOIN trng_connectedFactory.taf_grp_defn gd
ON gd.grp_id = gi.grp_id
WHERE gd.analytic_id = 1
AND gd.active_ind = 1
AND gi.grp_calc_reqd = 1
AND gi.run_id = 0;

IF status_cnt > 0 THEN 

/***************************************************************************/
/*  delete active groups with analytic_id = 1                             */
/***************************************************************************/
--DELETE trng_connectedFactory.taf_result_descriptive_statistics
--WHERE (grp_id, level_id) IN (SELECT gd.grp_id, gi.level_id FROM trng_connectedFactory.taf_grp_defn gd
--JOIN trng_connectedFactory.taf_grp_instance gi
--ON gi.grp_id = gd.grp_id
--AND gd.active_ind = 1
--AND gd.analytic_id = 1
--AND gi.grp_calc_reqd = 1
-- GROUP BY 1,2
-- )
-- ; 
/***************************************************************************/
/*  instead of delete, "keep" groups and change the ID to differentiate from new records with analytic_id = 1*/
/***************************************************************************/ 

UPDATE trng_connectedFactory.taf_result_descriptive_statistics
SET RUN_ID = RUN_ID - 1 
WHERE (grp_id, level_id) IN (SELECT gd.grp_id, gi.level_id FROM trng_connectedFactory.taf_grp_defn gd
JOIN trng_connectedFactory.taf_grp_instance gi
ON gi.grp_id = gd.grp_id
AND gd.active_ind = 1
AND gd.analytic_id = 1
--AND gi.grp_calc_reqd = 1
 GROUP BY 1,2); 

/***************************************************************************/
/*  create volatile work table for tracking analytics                            */
/***************************************************************************/

DROP TABLE virtual_statistic_work;
CREATE MULTISET VOLATILE TABLE virtual_statistic_work(grp_id,  analytic_sub_id, parameter_id) AS (
SELECT grp_id,  analytic_sub_id, parameter_id FROM trng_connectedFactory.TAF_grp_defn
WHERE analytic_id = 1
AND active_ind = 1 
) WITH DATA ON COMMIT PRESERVE ROWS;

     SET current_statistic = 0;
     SET current_exp = 7 ;  -- standard aggregate functions up to 128 (2E7)
/********************************************************************/
/*  set up status                                                                          */
/*******************************************************************/
SELECT 1+Max(status_id), Max(ETL_LOAD_TS)  
INTO status_cnt, ETLLOADTS
FROM trng_connectedFactory.TAF_RUN_STATUS
WHERE run_id = 0;

 INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(status_id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_TS )  
	  VALUES( :status_cnt, :RunID, Current_Timestamp(6), 'SP_TAF_DESCRIPTIVE_STATISTICS_INIT' ,'Start of Descriptive Stats', 0, :ETLLOADTS);
SET status_cnt=status_cnt + 1;

/******************************************************************/
/*  create temp table for multiple analytics                      */
/*  Fetch data into temp table                                    */
/******************************************************************/
DROP TABLE VIRTUAL_STATISTIC_DATA;

      CREATE MULTISET VOLATILE TABLE VIRTUAL_STATISTIC_DATA, NO Log (
	grp_id INTEGER,
	LEVEL_ID BIGINT,
	data_val FLOAT)
	PRIMARY INDEX(grp_id, LEVEL_ID)
	    ON COMMIT PRESERVE ROWS;

  /**************************************************************/
  /*  fetch Data                                                                      */
  /**************************************************************/
    FOR viewCursor AS Load_Cursor CURSOR FOR 
	        SELECT Trim(VIEW_DB) || '.' || Trim(gd.INIT_CALCS_TXT) AS view_name
		    FROM trng_connectedFactory.TAF_GRP_DEFN gd
			WHERE ACTIVE_IND = 1
			AND analytic_Id = 1
			AND Char_Length(INIT_CALCS_TXT) > 0 
			GROUP BY 1 -- REQDuire an entry
	DO
   SET string_sql = 'Insert into VIRTUAL_STATISTIC_DATA (grp_id, LEVEL_ID
	   , data_val ) 
		 select *  from '  || Trim(VIEWCURSOR.view_name) || ';';
		CALL dbc.SYSEXECSQL(string_sql);		
	END FOR;
	
SELECT Count(*) INTO ROWCNT
FROM VIRTUAL_STATISTIC_DATA;

 INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(status_id, Run_id, Run_Ts, Run_Loc, RUN_INFO_TXT,	Rows_Update
, ETL_LOAD_TS )  
    VALUES(:status_cnt, :RunID, Current_Timestamp(6), 'SP_TAF_DESCRIPTIVE_STATISTICS_INIT','Data extracted - ready for calculations', :ROWCNT, :ETLLOADTS);
SET status_cnt = status_cnt + 1; -- increment for next count

-- test to see if percentiles necessary
SELECT Max(analytic_sub_id) 
INTO next_statistic 
FROM virtual_statistic_work;

/************************************************************/
/*  Percentile test                                         */
/*      Use group id in percentile table for desired values */
/*      and method                                          */
/************************************************************/
    IF next_statistic >=  512 THEN -- indicates percentile calc
         
	   SET string_sql = 'insert into trng_connectedFactory.TAF_RESULT_DESCRIPTIVE_STATISTICS 
                 SEL t1.grp_id, t1.LEVEL_ID, 512 AS stat_id,  ''percentile''  AS stat_desc, t2.PARAMETER1 AS statistic_val
                    , AVERAGE(CASE WHEN(( t2.PARAMETER1 >= p_VALUE)  AND (t2.PARAMETER1 < (p_value + delta_p))) THEN
                     data_val + delta_data * (t2.PARAMETER1 - p_value)/delta_p
                      ELSE NULL END) AS pctile_value, 0 AS RUN_ID, current_timestamp(0)	, current_timestamp(0)
					, ''I'' 
                   FROM (
                   SEL d.grp_id, d.LEVEL_ID , d.data_val, g.analytic_sub_id, g.parameter_id
                     , ROW_NUMBER() OVER (PARTITION BY d.grp_id, d.LEVEL_ID ORDER BY d.data_val) AS num_value
                     , COUNT(*) OVER (PARTITION BY d.grp_id, d.LEVEL_ID) AS cnt_val
                     , (CAST(num_value AS FLOAT) -1.0) / nullifzero(CAST(cnt_val AS FLOAT) - 1.0) AS p_value
                     , 1.0 / nullifzero(CAST( cnt_val AS FLOAT)-1.0) AS delta_p
                     , d.data_val + (- 1 * SUM(d.data_val) OVER (PARTITION BY d.grp_id, d.LEVEL_ID 
                         ORDER BY d.data_val ROWS BETWEEN 1 FOLLOWING  AND 1  FOLLOWING) )AS delta_data
              FROM VIRTUAL_STATISTIC_DATA  d, virtual_statistic_work g
			  WHERE g.grp_id = d.grp_id 
			  AND g.analytic_sub_id >= 512
			  ) t1, trng_connectedFactory.TAF_PARAMETER t2
              ,  trng_connectedFactory.TAF_GRP_INSTANCE t3
			 WHERE t1.LEVEL_ID = t3.LEVEL_ID
			  AND t1.grp_id = t3.grp_id
			  AND t1.parameter_id = t2.parameter_id
              and t1.cnt_val > 1
              AND t1.grp_id = t2.grp_id
              AND t1.grp_id = t3.grp_id
			  AND t3.grp_CALC_REQD = 1
                GROUP BY 1,2,3,4,t2.PARAMETER1;  ';
        CALL dbc.sysExecSQL(string_sql);
		  /*********************************************************/
		  /*  Flag data that has completed percentile           */
		  /**********************************************************/
SELECT Count(*) INTO ROWCNT
FROM  trng_connectedFactory.TAF_RESULT_DESCRIPTIVE_STATISTICS 
WHERE RUN_ID = 0;

	INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(status_id, Run_ID, Run_Ts, Run_Loc, RUN_INFO_TXT,	Rows_Update
  , ETL_LOAD_TS )  
    VALUES(:status_cnt, :RunID, Current_Timestamp(6), 'SP_TAF_DESCRIPTIVE_STATISTICS_INIT' ,'finished percentile count', :ROWCNT, :ETLLOADTS);
SET status_cnt = status_cnt + 1; -- increment for next count	  
    END IF; -- completed percentiles 
 
  /*************************************************************/
  /*  Median test                                                                  */
  /*************************************************************/
        			
  /*      SET string_sql = 'INSERT INTO trng_connectedFactory.TAF_RESULT_DESCRIPTIVE_STATISTICS
                    SEL x.grp_id,  x.LEVEL_ID, 256 AS stat_cd, ''MEDIAN'' AS stat_desc, NULL AS statistic_val
                        , CASE WHEN COUNT(*) OVER (PARTITION BY x.grp_id, x.LEVEL_ID) MOD 2 = 0 
                          THEN AVG(data_val) OVER (PARTITION BY x.grp_id, x.LEVEL_ID  ORDER BY data_val 
                              ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING)
                        ELSE data_val END AS median_val
                    FROM VIRTUAL_STATISTIC_DATA x
                    , trng_connectedFactory.TAF_GRP_INSTANCE  y
					, virtual_statistic_work g
                    WHERE x.grp_id = y.grp_id
					AND g.grp_id = x.grp_id
					AND g.analytic_sub_id >= 256
                    AND x.LEVEL_ID = y.LEVEL_ID
	                AND y.grp_CALC_REQD = 1
					and (g.analytic_sub_id mod 512) > 256 
                    QUALIFY (COUNT(*) OVER (PARTITION BY x.grp_id, x.LEVEL_ID) +1)/2 = 
                    ROW_NUMBER() OVER (PARTITION BY x.grp_id, x.LEVEL_ID ORDER BY data_val);';
	CALL dbc.sysExecSQL(string_sql);
*/
/* SELECT COUNT(*) INTO ROWCNT
	FROM trng_connectedFactory.TAF_RESULT_DESCRIPTIVE_STATISTICS;
	
 INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(status_id, Run_ID, Run_Ts, Run_Loc, RUN_INFO_TXT,	Rows_Update
  ,  ETL_LOAD_TS )  
    VALUES(:status_cnt,  :RunID, Current_Timestamp(6), 'SP_TAF_DESCRIPTIVE_STATISTICS_INIT' ,'finished median calc', :ROWCNT,:ETLLOADTS);
SET status_cnt = status_cnt + 1; -- increment for next count	 
*/	  
	/************************************************************************/
	/*  Brute force rest of calculations                                    */
	/************************************************************************/
    
   INSERT INTO trng_connectedFactory.TAF_RESULT_DESCRIPTIVE_STATISTICS 
   
   SEL d.grp_id, d.LEVEL_ID
, 256 AS stat_cd
, 'Median' AS stat_desc
, NULL AS statistic_val
, Median(d.data_val) AS stat_rslt
, 0 AS RUN_ID
, Current_Timestamp(0)
, Current_Timestamp(0)
, 'I'
FROM virtual_statistic_work g
, VIRTUAL_STATISTIC_DATA d
WHERE d.grp_id = g.grp_id
AND (g.analytic_sub_id MOD 512) >= 256
GROUP BY 1,2,3  
UNION ALL 
   SEL d.grp_id, d.LEVEL_ID
, 128 AS stat_cd
, 'Kurtosis' AS stat_desc
, NULL AS statistic_val
, Kurtosis(d.data_val) AS stat_rslt
, 0 AS RUN_ID
, Current_Timestamp(0)
, Current_Timestamp(0)
, 'I'
FROM virtual_statistic_work g
, VIRTUAL_STATISTIC_DATA d
WHERE d.grp_id = g.grp_id
AND (g.analytic_sub_id MOD 256) >= 128
GROUP BY 1,2,3
UNION ALL
SEL d.grp_id, d.LEVEL_ID
, 64 AS stat_cd
, 'skewness' AS stat_desc
, NULL AS statistic_val
, Skew(d.data_val) AS stat_rslt
, 0 AS RUN_ID
, Current_Timestamp(0)
, Current_Timestamp(0)
, 'I'
FROM virtual_statistic_work g
, VIRTUAL_STATISTIC_DATA  d
WHERE d.grp_id = g.grp_id
AND (g.analytic_sub_id MOD 128) >= 64
GROUP BY 1,2,3
UNION ALL 
SEL d.grp_id, d.LEVEL_ID
, 32 AS stat_cd
, 'stddev_pop' AS stat_desc
, NULL AS statistic_val
, StdDev_Pop(d.data_val) AS stat_rslt
, 0 AS RUN_ID
, Current_Timestamp(0)
, Current_Timestamp(0)
, 'I'
FROM virtual_statistic_work g
, VIRTUAL_STATISTIC_DATA  d
WHERE d.grp_id = g.grp_id
AND (g.analytic_sub_id MOD 64) >= 32
GROUP BY 1,2,3
UNION ALL
SEL d.grp_id, d.LEVEL_ID
, 16 AS stat_cd
, 'Sum' AS stat_desc
, NULL AS statistic_val
, Sum(d.data_val) AS stat_rslt
, 0 AS RUN_ID
, Current_Timestamp(0)
, Current_Timestamp(0)
, 'I'
FROM virtual_statistic_work g
, VIRTUAL_STATISTIC_DATA  d
WHERE d.grp_id = g.grp_id
AND (g.analytic_sub_id MOD 32) >= 16
GROUP BY 1,2,3
UNION ALL
SEL d.grp_id, d.LEVEL_ID
, 8 AS stat_cd
, 'Average' AS stat_desc
, NULL AS statistic_val
, Average(d.data_val) AS stat_rslt
, 0 AS RUN_ID
, Current_Timestamp(0)
, Current_Timestamp(0)
, 'I'
FROM virtual_statistic_work g
, VIRTUAL_STATISTIC_DATA  d
WHERE d.grp_id = g.grp_id
AND (g.analytic_sub_id MOD 16) >= 8
GROUP BY 1,2,3
UNION ALL 
SEL d.grp_id, d.LEVEL_ID
, 4 AS stat_cd
, 'Count' AS stat_desc
, NULL AS statistic_val
, Count(d.data_val) AS stat_rslt
, 0 AS RUN_ID
, Current_Timestamp(0)
, Current_Timestamp(0)
, 'I'
FROM virtual_statistic_work g
, VIRTUAL_STATISTIC_DATA d
WHERE d.grp_id = g.grp_id
AND (g.analytic_sub_id MOD 8) >= 4
GROUP BY 1,2,3
UNION ALL 
SEL d.grp_id, d.LEVEL_ID
, 2 AS stat_cd
, 'Max' AS stat_desc
, NULL AS statistic_val
, Max(d.data_val) AS stat_rslt
, 0 AS RUN_ID
, Current_Timestamp(0)
, Current_Timestamp(0)
, 'I'
FROM virtual_statistic_work g
, VIRTUAL_STATISTIC_DATA  d
WHERE d.grp_id = g.grp_id
AND (g.analytic_sub_id MOD 4) >= 2
GROUP BY 1,2,3
UNION ALL
SEL d.grp_id, d.LEVEL_ID
, 1 AS stat_cd
, 'Min' AS stat_desc
, NULL AS statistic_val
, Min(d.data_val) AS stat_rslt
, 0 AS RUN_ID
, Current_Timestamp(0)
, Current_Timestamp(0)
, 'I'
FROM virtual_statistic_work g
, VIRTUAL_STATISTIC_DATA  d
WHERE d.grp_id = g.grp_id
AND (g.analytic_sub_id MOD 2) >=1
GROUP BY 1,2,3;

SELECT Count(*) INTO ROWCNT
FROM trng_connectedFactory.TAF_RESULT_DESCRIPTIVE_STATISTICS
WHERE RUN_ID = 0;

	INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(status_id, Run_ID, Run_Ts, Run_Loc, RUN_INFO_TXT,	Rows_Update
  ,  ETL_LOAD_TS )  
    VALUES(:status_cnt, :RunID, Current_Timestamp(6), 'SP_TAF_DESCRIPTIVE_STATISTICS_INIT','finished basic stats', :ROWCNT, :ETLLOADTS);

DROP TABLE virtual_statistic_work; 
DROP TABLE VIRTUAL_STATISTIC_DATA; 
/*******************************************************************/
/*  update group instance to mark completion                       */
/******************************************************************/
UPDATE t FROM trng_connectedFactory.TAF_GRP_INSTANCE t, (
SELECT grp_id, level_id FROM trng_connectedFactory.taf_result_descriptive_statistics
WHERE RUN_ID = 0
GROUP BY 1,2
) s
SET grp_calc_reqd = 0 ,
last_calc_ts = Current_Timestamp(0)
WHERE grp_calc_reqd = 1
AND t.level_id = s.level_id
AND t.grp_id = s.grp_id;

END IF ;
-- validation of calculation 
END;

REPLACE PROCEDURE TRNG_ConnectedFactory.SP_TAF_Histgr_data_INIT_V600()
--/************************************************************/
--/*  Generation of histogram from data unctionality                               */
--/*   Created 2020-7-30 By B.Aldridge Teradata      */
--/*  Analytic ID = 500 (group definition table)                */
--/*   analytic Sub_id :  1 = actual value histogram
--/*                      2 = histogram from quantiles (minimal smoothing )
--/*   Paramaeter (TAF_PAARAMETER TABLE):
--/*       for analytic sub id = 1, 
--/*               parameter 1 = number of bins
--/*               parameter 2 ignored
--/*           analytic sub_id = 2:  
-- /*              parameter 1 = Number of bins
--/*               parameter 2 = extended range 

--/*                                                          */
--/*   Input data view / table must have the following columns*/
--/*   GRP_ID(Integer) identifier of analytic / metadata      */
--/*             level_id (BIGINT)  Identifies each data set for regression */
--/*             min_val:  minimum value of data in grp/level
--/*             max_val:  maximum value of data in grp/level*/
--/*             data_val:  individual data values /*
--/*  Note Min_val < max val is required    
--/*   
--/*   Input calc view (actual calculations using histgrgendataquant here )
--/*    Table returns the following columns                     */
--/*   GRP_ID(Integer) identifier of analytic / metadata      */
--/*             level_id (BIGINT)  Identifies each data set for regression */
--/*             histgr_blob (varbyte(32000).  Histogram model generated */
--/*                                                                       /*
--/*      OutTable TAF_RESULT_histgrModels has the following columns    */
--/*                grp_ID(Integer) - analytic identifier */
--/*                level_ID(Integer) - analytic data set identifier */
--/*             histgr_blob (varbyte(32000).  Histogram model generated */
--/*                                                                 */
--/******************************************************************/

SQL SECURITY INVOKER 
	BEGIN
DECLARE status_cnt, Cntr INTEGER;
DECLARE string_sql VARCHAR(10000);
DECLARE ETLLOADTs, lastLdDt TIMESTAMP(6);
DECLARE vDummy VARCHAR(1); -- handler for error

-- create handler for nonexistant volatile tables 
  DECLARE CONTINUE HANDLER FOR SqlState '42000'
  SET vDummy = 'd';
 
/********************************************************************/
/*  Determine procedure is run                                      */
/*******************************************************************/
SEL Count(*) 
INTO status_cnt
FROM TRNG_ConnectedFactory.taf_grp_instance gi
JOIN TRNG_ConnectedFactory.taf_grp_defn gd
ON gd.grp_id = gi.grp_id
WHERE gd.analytic_id = 600
AND gd.active_ind = 1
AND gi.grp_calc_reqd = 1
AND gi.run_id = 0
;
IF status_cnt > 0 THEN 
/********************************************************************/
/*  set up status                                                   */
/*******************************************************************/
SELECT 1+ Max(Status_Id), Max(ETL_LOAD_Ts)  
INTO status_cnt, ETLLOADTs
FROM TRNG_ConnectedFactory.TAF_RUN_STATUS
WHERE run_id = 0;

 INSERT INTO TRNG_ConnectedFactory.TAF_RUN_STATUS(Status_Id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_Ts )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'SP_TAF_HistgrModela_INIT' ,'Start of spTAF_MC_SIM_INIT', 0, :ETLLOADTs);
	  
SET status_cnt=status_cnt + 1;

/*****************************************************************************/
/*  Get results from calculation view                                                         */
/*  (alternatively, create volatile table and compute in script?)            */
/*****************************************************************************/

FOR viewCursor AS Load_Cursor CURSOR FOR 
	    SELECT Trim(VIEW_DB) || '.' || Trim(gd.INIT_CALCS_TXT) AS view_name
		    FROM TRNG_ConnectedFactory.TAF_GRP_DEFN gd
			WHERE ACTIVE_IND = 1
			AND analytic_id = 600
			AND Char_Length(INIT_CALCS_TXT) > 0 
			GROUP BY 1 -- require an entry
	DO
	    SET string_sql = 'INSERT INTO TRNG_ConnectedFactory.TAF_RESULT_HISTGR_MODELS 
		     SELECT * FROM ' || Trim(VIEWCURSOR.view_name) || ';';
		CALL dbc.SYSEXECSQL(string_sql);
	END FOR;
	
SEL Count(*) INTO cntr FROM virtual_taf_z;

/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/

 INSERT INTO TRNG_ConnectedFactory.TAF_RUN_STATUS(Status_Id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_Ts )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'SP_TAF_HistgrModela_INIT' ,'Models written to taf_histgr_models', :cntr, :ETLLOADTs);

SET status_cnt=status_cnt + 1;
	/********************************************************************/
	/*  Update taf_grp_instance                                         */
	/********************************************************************/
	
UPDATE t FROM TRNG_ConnectedFactory.taf_grp_instance t, (
SELECT grp_id, level_id FROM TRNG_ConnectedFactory.taf_result_histgr_models 
WHERE grp_id = 600
GROUP BY 1,2
) s
SET grp_calc_reqd = 0-- , run_id = :run_id
WHERE t.grp_calc_reqd = 1
AND t.grp_id = s.grp_id
AND t.level_id = s.level_id;

 INSERT INTO TRNG_ConnectedFactory.TAF_RUN_STATUS(Status_Id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_Ts )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'SP_TAF_HistgrModela_INIT' ,'procedure complete', :cntr, :ETLLOADTs);

SET status_cnt=status_cnt + 1;

END IF; -- end of procedure calculation check
      
END;

REPLACE PROCEDURE trng_connectedfactory.sp_taf_inIT()

/*************************************************************************************/
/* Initiallization procdure                                                                                          */
/*             Procedure - spTAF_INIT                                                                             */
/*             Created   - 2014-07-01 B.Aldridge - Teradata                                          */
/*             Description - Initialize  MAP tables and execute analytis                        */
/*                           as enabled in group definition table                                            */
/*             Arguments - resetFlag - to perform delete, ignored if not 0                  */
/*             Results   - 1) Group instance, work and results tables are cleared     */
/*                         2) Enabled analytics are executed, resutls stored, alerts set   */
/*                         3)  simulated current date is Updateated to allow delta simulation  */
/*                                                                                               */
/*        Modifications:  combined data pull and group init 20140712 bea      */
/*                       Removed identity column requirement from group instance    */
/*                       and updated naming conventions per customer requirement      */
/*                         2019-01-07: ASaeed, BAldridge                              */
/*           2019-01-11:  B.Aldridge - removed delete of all rows of taf_grp_instance */
/*                and set to run_id column to -1 to "keep" rows.                  */
/*               Also updated taf_run_status to set run_id = run_id - 1               */
/*               Verified all grp_calc_reqd = 0 or null                               */
/*                last_batch_sk ID is picked, incremented and updated                 */
/*               both last_batch_sk and current_batch_sk with the new ID              */
/*************************************************************************************/
SQL SECURITY INVOKER 
BEGIN
DECLARE string_sql VARCHAR(10000);  -- dynamic SQL
DECLARE virtual_dummy VARCHAR(1); -- handler for error 
DECLARE ETLLoadTs TIMESTAMP(6);
DECLARE lastLoadDt TIMESTAMP(6);
DECLARE RunID INTEGER;  -- optional for multiple runs
DECLARE Lv_n_Semantic_Batch_Sk INTEGER; -- Audit Trail Functionality
DECLARE cntr1 INTEGER;  -- general purpose counter
DECLARE RowCnt INTEGER; -- Row count Updateate

-- create handler for nonexistant volatile tables 
  DECLARE CONTINUE HANDLER FOR SqlState '42000'
  SET virtual_dummy = 'd';

SET runID = 0;
 SET lastLoadDt = ('1900-01-01 00:00:00.000000'(TIMESTAMP(6)));  -- last load time does not exist for intiialization 
 SET etlLoadTs = Current_Timestamp(6);  -- modify as necessary for data load time  
SET cntr1 = 1; -- status counter
SET Lv_n_Semantic_Batch_Sk = 0; -- Audit Trail


/*************************************************************************************/
/*    SET simulation dates                                                                                   */
/*************************************************************************************/

--DEL FROM trng_connectedfactory.TAF_last_valid_run;
UPDATE trng_connectedfactory.TAF_LAST_VALID_RUN
SET RUN_ID = RUN_ID - 1;

INS trng_connectedfactory.TAF_last_valid_run (:RUNID, :lastLoadDt, :etlLoadTs, 0);
-- INS trng_connectedfactory.TAF_last_vld_run(0,'1900-01-01 00:00:00', '1900-01-01 00:00:00', '2014-09-01 00:00:00',0);

/**********************************************************************************/
/*  Updateate status table for initialization                                                          */
/***********************************************************************************/
UPDATE trng_connectedfactory.TAF_RUN_STATUS SET run_id = run_id - 1;
/* REMOVED DELETE AND REPLACED WITH UPDATE RUN ID TO RUN_ID - 1 */
--DEL FROM trng_connectedfactory.TAF_RUN_STATUS;

 INSERT INTO trng_connectedfactory.TAF_RUN_STATUS(status_id,  Run_id, Run_Ts, Run_Loc, Run_Info_TXT,Rows_Update, ETL_LOAD_TS )  
  VALUES( :cntr1,  :runID, Current_Timestamp(6), 'SP_TAF_INIT' ,'initial delete', 0, :etlLoadTs);
  
--	  INSERT INTO trng_connectedfactory.TAF_RUN_STATUS(status_id, Run_Id, Run_Ts, Run_Loc, Run_Info_TXT,Rows_Update, ETL_LOAD_TS )  
--	  VALUES(1,0, CURRENT_TIMESTAMP(6), 'SP_TAF_INIT' ,'initial delete', 0, '2014-08-01 00:00:00');

/**************************************************************************************/
/*    Reset data base for initialization                                              */
/**************************************************************************************/
/* REMOVED ALL ROW DELETE OF GRP INSTANCE TABLE   */
/*    SET GRP_UPDATE = -1 */
  /*    ANY GRP_CALC_REQD > 0 SET TO 0 */
  /*  2019-01-11 B.ALDRIDGE / TERADATA */
UPDATE trng_connectedfactory.TAF_GRP_INSTANCE
SET RUN_ID = RUN_ID-1,
    GRP_CALC_REQD = CASE WHEN GRP_CALC_REQD = 1 THEN 0 ELSE GRP_CALC_REQD END   ;
   
-- DEL FROM trng_connectedfactory.TAF_GRP_instance;
--  DEL FROM trng_connectedfactory.TAF_DATA_STG;
/*************************************************************************************/
/*  Loop through active analytics and extract new data values                      */
/*  This extract puts data into stage table.                                                        */
/*  Stage table will be used if view_for_extract_init_text is not 0 length       */
/*************************************************************************************/

FOR viewCursor AS Load_Cursor CURSOR FOR 
    SELECT Trim(VIEW_DB) || '.' || Trim(INIT_EXTRACT_TXT) AS view_name
    FROM trng_connectedfactory.TAF_GRP_DEFN
WHERE ACTive_IND = 1
AND extract_ind = 1
AND Char_Length(init_extract_txt) > 0 
GROUP BY 1 -- require an entry
DO
    SET string_sql = 'INSERT INTO trng_connectedfactory.TAF_DATA_STG
    SELECT * FROM ' || Trim(VIEWCURSOR.view_name) || ';';
CALL dbc.SYSEXECSQL(string_sql);
END FOR;

/**************************************************************************************/
/*  Data extracted to holding table, compute levels from extract                       */
/***************************************************************************************/
--select count(*) into rowCnt from trng_connectedfactory.taf_data_stg;

     SET cntr1 = cntr1 + 1;  -- increment for next status
  INSERT INTO trng_connectedfactory.TAF_RUN_STATUS(status_id,  Run_id, Run_Ts, Run_Loc, Run_Info_TXT,	Rows_Update  , ETL_Load_Ts )  
  VALUES(:cntr1, :runID, Current_Timestamp(6), 'SP_TAF_INIT' ,'Data extracted to temp table ', 0, :etlLoadTs);

FOR viewCursor AS Load_Cursor  CURSOR FOR
  SEL Trim(view_db) ||'.' || Trim(INIT_DIMS_Txt) AS view_name 
              FROM trng_connectedfactory.TAF_GRP_DEFN
              WHERE Active_Ind = 1
      AND Char_Length(init_DIMS_txt) > 0 
      GROUP BY 1-- require view to be present
DO
    SET string_sql = 'INSERT INTO trng_connectedfactory.TAF_GRP_instance
                  (LEVEL_ID, GRP_ID, LEVEL_1_instance, LEVEL_2_instance, LEVEL_3_instance,
  LEVEL_4_instance, LEVEL_5_instance, LEVEL_6_instance, LEVEL_7_instance,
  LEVEL_8_instance, LEVEL_9_instance, LEVEL_10_instance, DATA_START_Ts_VALID,
  DATA_END_Ts_valid, GRP_DATA_point_CNT1, GRP_DATA_point_CNT2, RUN_ID) 
  select (SELECT ZEROIFNULL(MAX(LEVEL_ID)) FROM trng_connectedfactory.TAF_GRP_INSTANCE ) + 
    ROW_NUMBER() OVER (ORDER BY GRP_ID, LEVEL_1_instance, LEVEL_2_instance, LEVEL_3_instance,
  LEVEL_4_instance, LEVEL_5_instance, LEVEL_6_instance, LEVEL_7_instance,
  LEVEL_8_instance, LEVEL_9_instance, LEVEL_10_instance) AS LVL_ID, T1.* ,0 from ' || Trim(viewCursor.view_name) || ' T1 ;' ;
  
CALL dbc.sysExecSql(string_sql);

END FOR;

COLLECT STATISTICS ON trng_connectedfactory.TAF_grp_instance INDEX(GRP_ID, LEVEL_ID);
COLLECT STATISTICS ON trng_connectedfactory.taf_grp_instance COLUMN (LEVEL_1_instance, LEVEL_2_instance, LEVEL_3_instance,  LEVEL_4_instance, LEVEL_5_instance, LEVEL_6_instance, LEVEL_7_instance,  LEVEL_8_instance, LEVEL_9_instance, LEVEL_10_instance ) ;  
COLLECT STATISTICS ON trng_connectedfactory.taf_grp_instance COLUMN(run_id) ;
/**************************************************************************************/
/*  initial group instances Updateated - now perform calculation                          */
/***************************************************************************************/

     SET cntr1 = cntr1 + 1;  -- increment for next status
  INSERT INTO trng_connectedfactory.TAF_RUN_STATUS(status_id, Run_id, Run_Ts, Run_Loc, Run_Info_TXT,Rows_Update , ETL_LOAD_TS )  
  VALUES(:cntr1, :runID, Current_Timestamp(6), 'SP_TAF_INIT' ,'group instances created ', 0, :etlLoadTs); 
  
/****************************************************************************************/
/*  Update levels for data sets requiring calculations                                  */
/****************************************************************************************/

UPDATE gi FROM trng_connectedfactory.TAF_GRP_instance  gi, 
trng_connectedfactory.TAF_GRP_DEFN gd
SET grp_calc_reqd = 1
--,run_id = 0
WHERE gi.grp_data_point_cnt1 >= gd.size_rule1_Val
AND (gi.grp_data_point_cnt2 >= gd.size_rule2_val OR gd.size_rule2_val IS NULL)
AND gd.active_ind = 1
AND gi.grp_id = gd.grp_id;
COLLECT STATISTICS ON trng_connectedfactory.taf_grp_instance COLUMN (grp_calc_reqd) ;

SELECT Count(*) 
INTO rowCnt 
FROM trng_connectedfactory.TAF_GRP_instance WHERE grp_calc_reqd = 1 AND run_id = 0;

     SET cntr1 = cntr1 + 1;  -- increment for next status
  INSERT INTO trng_connectedfactory.TAF_RUN_STATUS(status_id, run_id, Run_Ts, Run_Loc, Run_Info_TXT,	Rows_Update  , ETL_LOAD_Ts )  
  VALUES(:cntr1, :runID, Current_Timestamp(6), 'SP_TAF_INIT' ,'group instance for calculation Update', :rowCnt, :etlLoadTs);

/****************************************************************************************/
/*  Update batch SK and timestamp columns to keep updated Audit Trail                   */
/****************************************************************************************/
UPDATE trng_connectedfactory.ESL_Control_Table 
SET Last_Batch_Sk = :Lv_n_Semantic_Batch_Sk
, CURRENT_BATCH_SK = :Lv_n_Semantic_Batch_Sk
, Change_Ts = Current_Timestamp(0)  
WHERE Table_Name = 'TAF_GRP_INSTANCE';  
  

END;

REPLACE PROCEDURE trng_connectedFactory.sp_TAF_KSTest_2groups_init()
/************************************************************/
/*  Kolmogorov-Smirnov Test between 2 groups                 */
/*  Analytic Id = 30 (group definition table)                */
/*                                                          */
/*   Created 2018-12-19 By B.Aldridge/A.Saeed Teradata      */
/*   Input data view / table must have the following columns*/
/*   GRP_Id(Integer) Identifier of analytic / metadata      */
/*             LEVEL_Id (BIGINT)  Identifies each data set    */
/*             sub_grp_id (integer)  data groups within level_id for comparison */
/*             data_val FLOAT- 								*/
/*                               							*/
/*      OutTable TAF_RESULT_KScompare: with  columns          */
/*                GRP_Id(Integer) - analytic  Identifier    */
/*                LEVEL_Id1 (Bigint)  - Data set Identifier    */
/*                sub_grp_id1 (integer)  - Data set Identifier    */
/*                sub_grp_id2  -   KS Test Difference             */
/*                                                           */
/*      Mofified for total histogram                              */
/*          B.Aldridge 2019-01-15                                 */
/* 2019-01-31:  A.Saeed - removed delete of all              */ 
/* rows of TAF_RESULT_KStest_2group                          */
/* and set to run_id column to < 0 to "keep" rows.           */
/* Also made relevant changes e.g. put in where              */ 
/* clauses to fetch only latest records                      */
/******************************************************************/
SQL SECURITY INVOKER 
	BEGIN

DECLARE CNTr,  tstFlg, status_cnt  INTEGER;
DECLARE string_sql VARCHAR(10000);
DECLARE ETLLOADTS, lastLOADDt TIMESTAMP(6);
DECLARE volatile_dummy VARCHAR(1); -- handler for error

-- create handler for nonexistant volatile tables 
  DECLARE CONTINUE HANDLER FOR SqlState '42000'
  SET volatile_dummy = 'd';


  
  /********************************************************************/
/*  Test if procedure is required.                                 */
/*******************************************************************/
SEL Count(*) 
INTO status_cnt
FROM trng_connectedFactory.taf_grp_instance gi
JOIN trng_connectedFactory.taf_grp_defn gd
ON gd.grp_id = gi.grp_id
WHERE gd.analytic_id = 30
AND gd.active_ind = 1
AND gi.grp_calc_reqd = 1
AND gi.run_id = 0;

IF status_cnt > 0 THEN 


/********************************************************************/
/*  set up status                                                                          */
/*******************************************************************/
SELECT 1+Max(status_Id), Max(ETL_LOAD_TS)  
INTO status_cnt, ETLLOADTS
FROM trng_connectedFactory.TAF_run_status
WHERE run_id = 0;

 INSERT INTO trng_connectedFactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_KSTest_2group_init' ,'Start of KSTest_multi', 0, :ETLLOADTS);
	  
SET status_cnt=status_cnt + 1;

-- for initialization delete all rows 
--DEL FROM trng_connectedFactory.TAF_RESULT_KStest_2group
--WHERE (grp_id, level_id) IN (
--SELECT gd.grp_id, gi.level_id FROM trng_connectedFactory.taf_grp_defn gd
--JOIN trng_connectedFactory.taf_grp_instance gi
--ON gi.grp_id = gd.grp_id
--AND gd.active_ind = 1
--AND gd.analytic_id = 30
--AND gi.grp_calc_reqd = 1
--GROUP BY 1,2
-- )
--;

/***************************************************************************/
/*  instead of delete, "keep" groups and change the ID to differentiate from new records(run_id = 0) with analytic_id = 30*/
/***************************************************************************/ 
UPDATE trng_connectedFactory.TAF_RESULT_KStest_2group
SET RUN_ID = RUN_ID - 1
WHERE (grp_id, level_id) IN (
SELECT gd.grp_id, gi.level_id FROM trng_connectedFactory.taf_grp_defn gd
JOIN trng_connectedFactory.taf_grp_instance gi
ON gi.grp_id = gd.grp_id
AND gd.active_ind = 1
AND gd.analytic_id = 30
--AND gi.grp_calc_reqd = 1
GROUP BY 1,2
 )
;


/*****************************************************************************/
/*  Get data from calculation view                                           */
/*****************************************************************************/
DROP TABLE virtual_taf_ks;
CREATE MULTISET VOLATILE TABLE virtual_taf_ks, NO Log (
grp_Id INTEGER,
LEVEL_Id BIGINT,
sub_grp_id INTEGER,
data_val FLOAT,
data_cnt INTEGER)
PRIMARY INDEX (grp_Id, LEVEL_Id) 
ON COMMIT PRESERVE ROWS;

FOR viewCursor AS Load_Cursor CURSOR FOR 
	    SELECT Trim(VIEW_DB) || '.' || Trim(gd.INIT_CALCS_TXT) AS view_name
		    FROM trng_connectedFactory.TAF_GRP_DEFN gd
			WHERE ACTIVE_IND = 1
			AND analytic_Id = 30
			AND Char_Length(INIT_CALCS_TXT) > 0 
			GROUP BY 1 -- REQDuire an entry
	DO
	    SET string_sql = 'INSERT INTO virtual_taf_ks
		     SELECT * FROM ' || Trim(VIEWCURSOR.view_name) || ';';
		CALL dbc.SYSEXECSQL(string_sql);
	END FOR;

	COLLECT STATISTICS ON virtual_taf_ks INDEX(grp_Id, LEVEL_Id); 
	
SET status_cnt=status_cnt + 1;
SEL Count(*) 
INTO cntr 
FROM virtual_taf_ks;
/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
 INSERT INTO trng_connectedFactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_KSTest_2group_init' ,'Data collected into virtual_taf_ks', :cntr, :ETLLOADTS);

INSERT INTO trng_connectedFactory.taf_result_ks_Test 
WITH dt
AS (
SELECT grp_id, level_id, sub_grp_id , data_val
, Sum(data_cnt) Over (PARTITION BY grp_id, level_id, sub_grp_id) AS n
, Sum(data_cnt) Over (PARTITION BY grp_id, level_id, sub_grp_id ORDER BY data_val ROWS Unbounded Preceding) AS i
, Lead(data_val) Over (PARTITION BY grp_id, level_id, sub_grp_id ORDER BY data_val) - data_val AS d_data_val
, ((i(FLOAT)))/((n(FLOAT))+1) AS pct
, (1(FLOAT))/((n(FLOAT))+1) AS d_pct
FROM virtual_taf_ks 
) 
SELECT grp_id, level_id, ref_sub_grp, sub_grp_id
, Max(D) AS ks_score
FROM (
SELECT x.grp_id, x.level_id, x.sub_grp_id AS ref_sub_grp, y.sub_grp_id AS sub_grp_id
, x.pct AS x_pct, x.data_val 
, CASE WHEN x.data_val BETWEEN y.data_val AND y.data_val + y.d_data_val THEN y.pct ELSE NULL END AS y_pct 
, Abs(x_pct - y_pct) AS d
FROM dt AS x, dt AS y
WHERE x.grp_id = y.grp_id
AND x.level_id = y.level_id
AND x.sub_grp_id < y.sub_grp_id 
) z
GROUP BY 1,2,3,4
;
/* compare group 1 to group 2 */

SET status_cnt=status_cnt + 1;
SEL Count(*) 
INTO cntr 
FROM virtual_taf_cdf;
 INSERT INTO trng_connectedFactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_KSTest_2group_init' ,'Data collected into virtual_taf_cdf', :cntr, :ETLLOADTS);

/********************************************************************/
/*  Setup CDF  All-But-One table                                    */
/*******************************************************************/

DROP TABLE virtual_taf_ks;


UPDATE t FROM trng_connectedFactory.TAF_GRP_INSTANCE t ,(
SELECT GRP_Id, LEVEL_Id FROM trng_connectedFactory.TAF_RESULT_KStest_2group 
WHERE RUN_ID = 0
GROUP BY 1,2
 ) s
SET grp_calc_REQD = 0 
, last_calc_TS = Current_Timestamp(0)
WHERE s.grp_Id = t.GRP_Id
AND s.LEVEL_Id = t.LEVEL_Id
AND t.GRP_CALC_REQD = 1;

 INSERT INTO trng_connectedFactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_KSTest_2group_init' ,'procedure completed', :cntr, :ETLLOADTS);
	  
      
END IF;  -- end of procedure calc required test
END;

REPLACE PROCEDURE trng_connectedFactory.sp_TAF_KSTest_oneout_init()
/************************************************************/
/*  Kolmogorov-Smirnov Test one to rest                     */
/*  Analytic Id = 30 (group definition table)                */
/*                                                          */
/*   Created 2018-12-19 By B.Aldridge/A.Saeed Teradata      */
/*   Input data view / table must have the following columns*/
/*   GRP_Id(Integer) Identifier of analytic / metadata      */
/*             LEVEL_Id (BIGINT)  Identifies each data set    */
/*             sub_grp_id (integer)  data groups for comparison */
/*             data_val FLOAT- 								*/
/*                               							*/
/*      OutTable TAF_RESULT_KScompare: with  columns          */
/*                GRP_Id(Integer) - analytic  Identifier    */
/*                LEVEL_Id1 (Bigint)  - Data set Identifier    */
/*                sub_grp_id (integer)  - Data set Identifier    */
/*                Max_D   -   KS Test Difference             */
/*                                                           */
/*      Mofified for total histogram                              */
/*          B.Aldridge 2019-01-15                                 */
/* 2019-01-31:  A.Saeed - removed delete of all              */ 
/* rows of TAF_RESULT_KStest_oneout                          */
/* and set to run_id column to < 0 to "keep" rows.           */
/* Also made relevant changes e.g. put in where              */ 
/* clauses to fetch only latest records                      */
/*2019-02-01:  A.Saeed - implementing Audit Trail functionality*/
/*in Table trng_connectedFactory.ESL_CONTROL_TABLE                    */
/*last_batch_sk ID is picked, incremented and updated          */
/*both last_batch_sk and current_batch_sk with the new ID      */
/*Also, change_ts is updated with the new timestamp            */
/*Following columns have also been added in Results table:
 *  ETL_Create_Batch_Sk INTEGER,
    ETL_Change_Batch_Sk INTEGER,
 	ETL_Create_Ts Timestamp(0),
	ETL_Change_Ts Timestamp(0),
	ETL_Action_Cd char(1) CHARACTER SET LATIN NOT CASESPECIFIC;*/
/******************************************************************/
SQL SECURITY INVOKER 
	BEGIN

DECLARE CNTr,  tstFlg, status_cnt  INTEGER;
DECLARE string_sql VARCHAR(10000);
DECLARE ETLLOADTS, lastLOADDt TIMESTAMP(6);
DECLARE volatile_dummy VARCHAR(1); -- handler for error

-- create handler for nonexistant volatile tables 
  DECLARE CONTINUE HANDLER FOR SqlState '42000'
  SET volatile_dummy = 'd';


  
  /********************************************************************/
/*  Test if procedure is required.                                 */
/*******************************************************************/
SEL Count(*) 
INTO status_cnt
FROM trng_connectedFactory.taf_grp_instance gi
JOIN trng_connectedFactory.taf_grp_defn gd
ON gd.grp_id = gi.grp_id
WHERE gd.analytic_id = 30
AND gd.active_ind = 1
AND gi.grp_calc_reqd = 1
AND gi.run_id = 0;

IF status_cnt > 0 THEN 


/********************************************************************/
/*  set up status                                                                          */
/*******************************************************************/
SELECT 1+Max(status_Id), Max(ETL_LOAD_TS)  
INTO status_cnt, ETLLOADTS
FROM trng_connectedFactory.TAF_run_status
WHERE run_id = 0;

 INSERT INTO trng_connectedFactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_KSTest_oneout_init' ,'Start of KSTest_multi', 0, :ETLLOADTS);
	  
SET status_cnt=status_cnt + 1;

-- for initialization delete all rows 
--DEL FROM trng_connectedFactory.TAF_RESULT_KStest_oneout
--WHERE (grp_id, level_id) IN (
--SELECT gd.grp_id, gi.level_id FROM trng_connectedFactory.taf_grp_defn gd
--JOIN trng_connectedFactory.taf_grp_instance gi
--ON gi.grp_id = gd.grp_id
--AND gd.active_ind = 1
--AND gd.analytic_id = 30
--AND gi.grp_calc_reqd = 1
--GROUP BY 1,2
-- )
--;

/***************************************************************************/
/*  instead of delete, "keep" groups and change the ID to differentiate from new records(run_id = 0) with analytic_id = 30*/
/***************************************************************************/ 
UPDATE trng_connectedFactory.TAF_RESULT_KStest_oneout
SET RUN_ID = RUN_ID - 1
WHERE (grp_id, level_id) IN (
SELECT gd.grp_id, gi.level_id FROM trng_connectedFactory.taf_grp_defn gd
JOIN trng_connectedFactory.taf_grp_instance gi
ON gi.grp_id = gd.grp_id
AND gd.active_ind = 1
AND gd.analytic_id = 30
--AND gi.grp_calc_reqd = 1
GROUP BY 1,2
 )
;


/*****************************************************************************/
/*  Get data from calculation view                                           */
/*****************************************************************************/
DROP TABLE virtual_taf_ks;
CREATE MULTISET VOLATILE TABLE virtual_taf_ks, NO Log (
grp_Id INTEGER,
LEVEL_Id BIGINT,
sub_grp_id INTEGER,
data_val FLOAT,
data_cnt INTEGER)
PRIMARY INDEX (grp_Id, LEVEL_Id) 
ON COMMIT PRESERVE ROWS;

FOR viewCursor AS Load_Cursor CURSOR FOR 
	    SELECT Trim(VIEW_DB) || '.' || Trim(gd.INIT_CALCS_TXT) AS view_name
		    FROM trng_connectedFactory.TAF_GRP_DEFN gd
			WHERE ACTIVE_IND = 1
			AND analytic_Id = 30
			AND Char_Length(INIT_CALCS_TXT) > 0 
			GROUP BY 1 -- REQDuire an entry
	DO
	    SET string_sql = 'INSERT INTO virtual_taf_ks
		     SELECT * FROM ' || Trim(VIEWCURSOR.view_name) || ';';
		CALL dbc.SYSEXECSQL(string_sql);
	END FOR;

	COLLECT STATISTICS ON virtual_taf_ks INDEX(grp_Id, LEVEL_Id); 
	
SET status_cnt=status_cnt + 1;
SEL Count(*) 
INTO cntr 
FROM virtual_taf_ks;
/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
 INSERT INTO trng_connectedFactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_KSTest_oneout_init' ,'Data collected into virtual_taf_ks', :cntr, :ETLLOADTS);

/********************************************************************/
/*  Setup CDF table                                                */
/*******************************************************************/
DROP TABLE virtual_taf_cdf;
CREATE MULTISET VOLATILE TABLE virtual_taf_cdf, NO Log AS (
SEL grp_Id, LEVEL_Id, data_val, sub_grp_id
, Sum(data_cnt) Over (PARTITION BY grp_Id, LEVEL_Id) AS n
, Sum(data_cnt) Over (PARTITION BY grp_Id, LEVEL_Id ORDER BY data_val ROWS Unbounded Preceding) AS i
, Min(data_val) Over (PARTITION BY grp_Id, LEVEL_Id) AS min_val
, Max(data_val) Over (PARTITION BY grp_Id, LEVEL_Id) AS max_val
, data_val -Max(data_val) Over (PARTITION BY grp_Id, LEVEL_Id ORDER BY data_val ROWS BETWEEN 1 Preceding AND 1 Preceding) AS d_data
, ((i(FLOAT))-1)/NullIfZero((n(FLOAT))-1) AS pct
, (data_cnt(FLOAT))/NullIfZero((n(FLOAT))-1) AS d_pct
FROM  virtual_taf_ks
) WITH DATA PRIMARY INDEX(grp_id, level_id) ON COMMIT PRESERVE ROWS;

COLLECT STATISTICS ON virtual_taf_ks INDEX(grp_Id, LEVEL_Id);

SET status_cnt=status_cnt + 1;
SEL Count(*) 
INTO cntr 
FROM virtual_taf_cdf;
 INSERT INTO trng_connectedFactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_KSTest_oneout_init' ,'Data collected into virtual_taf_cdf', :cntr, :ETLLOADTS);

/********************************************************************/
/*  Setup CDF  All-But-One table                                    */
/*******************************************************************/
DROP TABLE virtual_taf_all_but_one_cdf;

CREATE MULTISET VOLATILE TABLE virtual_taf_all_but_one_cdf , NO Log AS (
SEL x.grp_Id, x.LEVEL_Id AS missing_level_id, x.data_val
, Sum(Cast(x.ttl_cnt - ZeroIfNull(y.data_cnt) AS BIGINT)) Over (PARTITION BY x.grp_Id, x.LEVEL_Id) AS n
, Sum(Cast(x.ttl_cnt - ZeroIfNull(y.data_cnt ) AS BIGINT)) Over (PARTITION BY x.grp_Id, x.LEVEL_Id ORDER BY x.data_val ROWS Unbounded Preceding) AS i
, Min(Cast(x.data_val AS BIGINT)) Over (PARTITION BY x.grp_Id, x.LEVEL_Id) AS min_val
, Max(Cast(x.data_val AS BIGINT)) Over (PARTITION BY x.grp_Id, x.LEVEL_Id) AS max_val
, x.data_val -Max(x.data_val) Over (PARTITION BY x.grp_Id, x.LEVEL_Id ORDER BY x.data_val ROWS BETWEEN 1 Preceding AND 1 Preceding) AS d_data
, ((i(FLOAT))-1)/NullIfZero((n(FLOAT))-1) AS pct
, ((x.ttl_cnt - ZeroIfNull(y.data_cnt))(FLOAT))/NullIfZero((n(FLOAT))-1) AS d_pct
FROM ( 
SELECT x2.grp_id, x2.level_id, x1.sub_grp_id, x1.data_val, x1.ttl_cnt FROM (
SEL sub_grp_id, data_val, Sum(data_cnt) AS ttl_cnt
FROM virtual_taf_ks
GROUP BY 1,2 ) x1 JOIN (
SELECT grp_id, level_id, sub_grp_id FROM virtual_taf_ks GROUP BY 1,2,3
) x2 ON x1.sub_grp_id = x2.sub_grp_id
) x LEFT JOIN virtual_taf_ks y
ON y.grp_id = x.grp_id
AND y.level_id = x.level_id
AND y.data_val = x.data_val 
) WITH DATA PRIMARY INDEX(grp_id, missing_level_id) ON COMMIT PRESERVE ROWS;

SET status_cnt=status_cnt + 1;
SEL Count(*) 
INTO cntr 
FROM virtual_taf_all_but_one_cdf;
 INSERT INTO trng_connectedFactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_KSTest_oneout_init' ,'Data collected into virtual_taf_all_but_one_cdf', :cntr, :ETLLOADTS);

/********************************************************************/
/*  Setup for different cases                                      */
/*******************************************************************/
DROP TABLE virtual_taf_ks2;
CREATE MULTISET VOLATILE TABLE virtual_taf_ks2, NO Log (
grp_Id INTEGER,
LEVEL_Id1 BIGINT,
LEVEL_Id2 BIGINT,
D_val FLOAT 
) PRIMARY INDEX (grp_Id, LEVEL_Id1, LEVEL_Id2) ON COMMIT PRESERVE ROWS;

INSERT INTO virtual_taf_ks2
SEL a.grp_Id, a.LEVEL_Id, 0, 1 AS max_d
FROM virtual_taf_cdf a JOIN virtual_taf_all_but_one_cdf b
ON a.grp_Id = b.grp_Id
WHERE a.LEVEL_Id = b.MISSING_LEVEL_ID 
AND ( a.max_val < b.min_val OR a.min_val > b.max_val );

/* case 2 distributions overlap */
/* extract max percentage where no overlap exists  */

INSERT INTO virtual_taf_ks2 
SEL a.grp_Id, a.LEVEL_Id, 0
, Max(a.pct) AS tmp_d
FROM virtual_taf_cdf a JOIN virtual_taf_all_but_one_cdf b
ON a.grp_Id = b.grp_Id
AND a.LEVEL_Id = b.MISSING_LEVEL_ID 
AND a.data_val < b.min_val 
WHERE NOT EXISTS (
SELECT 1 FROM virtual_taf_ks2 x1
WHERE x1.d_val = 1
AND x1.grp_Id = a.grp_Id
AND x1.LEVEL_Id1 = a.LEVEL_Id
--and x1.LEVEL_Id2 = b.MISSING_LEVEL_ID
) 
GROUP BY 1,2,3
UNION ALL
SEL a.grp_Id, a.LEVEL_Id, 0
, Max(b.pct) AS tmp_d
FROM virtual_taf_cdf a JOIN virtual_taf_all_but_one_cdf b
ON a.grp_Id = b.grp_Id
AND a.LEVEL_Id = b.MISSING_LEVEL_ID 
AND b.data_val < a.min_val 
WHERE NOT EXISTS (
SELECT 1 FROM virtual_taf_ks2 x1
WHERE x1.d_val = 1
AND x1.grp_Id = a.grp_Id
AND x1.LEVEL_Id1 = a.LEVEL_Id
--and x1.LEVEL_Id2 = b.MISSING_LEVEL_ID
) 
GROUP BY 1,2,3;


/********************************************************************/
/*  update status                                                   */
/*******************************************************************/
SET status_cnt = status_cnt + 1;
SELECT Count(*) INTO cntr FROM virtual_taf_ks2;
 INSERT INTO trng_connectedFactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_KSTest_oneout_init' ,'non-overlap calcs completed', :cntr, :ETLLOADTS);

/********************************************************************/
/*  compute overlap case                                            */
/*******************************************************************/
INSERT INTO virtual_taf_ks2
/* case 3 - look at overlap for equivalent values */
SELECT a.grp_Id, a.LEVEL_Id, 0
, Max(Abs(a.pct - ( (b.pct - b.d_pct) + (a.data_val - (b.data_val - b.d_data))*b.d_pct/NullIfZero(b.d_data)))) tmp_d
FROM  virtual_taf_cdf a JOIN virtual_taf_all_but_one_cdf b
ON a.grp_Id = b.grp_Id
AND a.LEVEL_Id = b.MISSING_LEVEL_ID 
AND a.data_val >= b.data_val - b.d_data AND a.data_val < b.data_val
WHERE NOT EXISTS (
SELECT 1 FROM virtual_taf_ks2 x1
WHERE x1.d_val = 1
AND x1.grp_Id = a.grp_Id
AND x1.LEVEL_Id1 = a.LEVEL_Id
--and x1.LEVEL_Id2 = b.MISSING_LEVEL_ID
) 
GROUP BY 1,2,3
UNION ALL 
SELECT a.grp_Id, a.LEVEL_Id, 0
, Max(Abs(a.pct - ( (b.pct - b.d_pct) + (a.data_val - (b.data_val - b.d_data))*b.d_pct/NullIfZero(b.d_data)))) tmp_d
FROM  virtual_taf_cdf a JOIN virtual_taf_all_but_one_cdf b
ON a.grp_Id = b.grp_Id
AND b.MISSING_LEVEL_ID = a.LEVEL_Id 
AND a.data_val >= b.data_val - b.d_data AND a.data_val < b.data_val
WHERE NOT EXISTS (
SELECT 1 FROM virtual_taf_ks2 x1
WHERE x1.d_val = 1
AND x1.grp_Id = a.grp_Id
AND x1.LEVEL_Id1 = b.MISSING_LEVEL_ID
--and x1.LEVEL_Id2 = a.LEVEL_Id
) 
GROUP BY 1,2,3;

/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
SET status_cnt = status_cnt + 1;
SELECT Count(*) INTO cntr FROM virtual_taf_ks2;
 INSERT INTO trng_connectedFactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_KSTest_oneout_init' ,'all calcs completed', :cntr, :ETLLOADTS);

INSERT INTO trng_connectedFactory.TAF_RESULT_KStest_oneout
SELECT grp_Id, LEVEL_Id1,  Max(d_val)
, 0 AS RUN_ID
, Current_Timestamp(0)
, Current_Timestamp(0)
, 'I'
FROM virtual_taf_ks2
GROUP BY 1,2;


SELECT Count(*) INTO cntr FROM virtual_taf_ks2;  
-- update row counts;

DROP TABLE virtual_taf_ks;
DROP TABLE virtual_taf_cdf;
DROP TABLE virtual_taf_ks2;
DROP TABLE virtual_taf_all_but_one_cdf;

UPDATE t FROM trng_connectedFactory.TAF_GRP_INSTANCE t ,(
SELECT GRP_Id, LEVEL_Id FROM trng_connectedFactory.TAF_RESULT_KStest_oneout 
WHERE RUN_ID = 0
GROUP BY 1,2
 ) s
SET grp_calc_REQD = 0 
, last_calc_TS = Current_Timestamp(0)
WHERE s.grp_Id = t.GRP_Id
AND s.LEVEL_Id = t.LEVEL_Id
AND t.GRP_CALC_REQD = 1;

 INSERT INTO trng_connectedFactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_KSTest_oneout_init' ,'procedure completed', :cntr, :ETLLOADTS);
	  
      
END IF;  -- end of procedure calc required test
END;

REPLACE PROCEDURE trng_connectedFactory.sp_TAF_logistic_WIDEVAL(
OUT sstr VARCHAR(1000))
/************************************************************/
/*  Logistic Regression ON WIDE TABLE using VAL       */
/*    because of varying width and inability of VAL to handle */
/*      constant / NULL columns, this procedure builds models  */
/*      iteratively (iterating on group ID) 
/*  Analytic Id = 107 (group definition table)                */
/*                                                          */
/*   Created 2021-07-21 By B.Aldridge Teradata      */
/*   Input data view / table must have the following columns*/
/*   GRP_Id(Integer) Identifier of analytic / metadata      */
/*             LEVEL_Id (BIGINT)  Identifies each data set    */
/*             yval float                                    */
/*             xval1 FLOAT        							*/
/*             XVAL2 FLOAT                                 */
/*            (REPEAT XVALS ) 
/*                               							*/
/*      OutTable TAF_RESULT_logit: with  columns          */
/*                   grp_id INTEGER,       */
/*                   level_id BIGINT,       */
 /*                  Column Name VARCHAR(128) ,       */
 /*                  B_Coefficient FLOAT,       */
 /*                  Standard_Error" FLOAT,       */
 /*                  WaldStatistic FLOAT           */
 /*                  T_Statistic" FLOAT,       */
 /*                  P_Value FLOAT,       */
 /*                  Lower_val FLOAT,       */
 /*                  Upper_val FLOAT,       */
 /*                  PartialR FLOAT,       */
  /*                 standarizedCoefficient FLOAT       */
/*                                                           */
/******************************************************************/
SQL SECURITY INVOKER 
	BEGIN

DECLARE CNTr,  tstFlg, status_cnt  INTEGER;
DECLARE string_sql , val_string VARCHAR(10000);
DECLARE ETLLOADTS, lastLOADDt TIMESTAMP(6);
DECLARE volatile_dummy VARCHAR(1); -- handler for error

-- create handler for nonexistant volatile tables 
  DECLARE CONTINUE HANDLER FOR SqlState '42000'
  SET volatile_dummy = 'd';

  /********************************************************************/
/*  Test if procedure is required.                                 */
/*******************************************************************/
SEL Count(*) 
INTO status_cnt
FROM trng_connectedFactory.taf_grp_instance gi
JOIN trng_connectedFactory.taf_grp_defn gd
ON gd.grp_id = gi.grp_id
WHERE gd.analytic_id = 107
AND gd.active_ind = 1
AND gi.grp_calc_reqd = 1
AND gi.run_id = 0;

IF status_cnt > 0 THEN 

/********************************************************************/
/*  set up status                                                                          */
/*******************************************************************/
SELECT 1+Max(status_Id), Max(ETL_LOAD_TS)  
INTO status_cnt, ETLLOADTS
FROM trng_connectedFactory.TAF_run_status
WHERE run_id = 0;

 INSERT INTO trng_connectedFactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_MLRVAL_WIDE' ,'Start of MLR_WIDE', 0, :ETLLOADTS);
	  
SET status_cnt=status_cnt + 1;

/*****************************************************************************/
/*  Get data from calculation view                                           */
/*****************************************************************************/
DELETE FROM trng_connectedFactory.taf_work_logValSTR;

FOR viewCursor AS Load_Cursor CURSOR FOR 
	    SELECT Trim(grp_id) AS grpid, Trim(VIEW_DB) AS viewDB,Trim(gd.INIT_CALCS_TXT) AS viewname
		    FROM trng_connectedFactory.TAF_GRP_DEFN gd
			WHERE ACTIVE_IND = 1
			AND analytic_Id = 107
			AND Char_Length(INIT_CALCS_TXT) > 0 
			GROUP BY 1,2,3 -- REQDuire an entry
	DO
	    SET val_string = 'DATABASE='||Trim(viewcursor.viewdb) || ';tablename='|| Trim(viewcursor.viewname) || ';columns=allnumeric;dependent=yval;groupby=grp_id,level_id;outputdatabase=trng_connectedFactory;outputtablename=taf_result_logitval;response=0;';
--		string_sql = 'INSERT INTO trng_connectedFactory.taf_work_logValSTR
--		     SELECT ' || Trim(viewcursor.grpid) || ',''DATABASE='||Trim(viewcursor.viewdb) || ';tablename='|| Trim(viewcursor.viewname) || ';columns=allnumeric;dependent=yval;groupby=grp_id,level_id;outputdatabase=trng_connectedFactory;outputtablename=taf_result_logitval;response=0;''';
--		CALL dbc.SYSEXECSQL(string_sql);
        CALL trng_xsp.td_analyze('logistic',val_string);
		
	END FOR;
SET sstr = val_string;
END IF;
END;

REPLACE PROCEDURE    trng_connectedFactory.sp_TAF_PARETO_INIT()
/************************************************************/
/*  Generate Pareto  - multiple data sets                    */
/*  Analytic ID = 2 (group definition table)                 */
/*   Analytic Sub ID:                                        */
/*        0 or Null - use 10 bins, 80% cumulative            */
/*        1 to 255 - number of bins (parm_id = cumulative    */
/*   Created 2011-07-15 B.Aldridge Teradata                 */
/*    Modified 2015-07_28 B.Aldridge to conform with        */
/*          Fuzzy Logix type of data tables                 */
/*             Input data view / table must have the following columns        */
/*             GRP_ID(Integer) identifier of analytic / metadata */ 
/*             LEVEL_ID (BIGINT)  Identifies each data set for regression */
/*              DATA_VAL(integer, VARCHAR or float) = data value   */
/*              OutTable TAF_MLR_RESULT has the following columns    */
/*                GRP_ID(Integer) - analytic / metadata identifier */
/*                LEVEL_ID (Bigint)  - Data set identifier                  */
/*                VAR_ID (integer) - independent variables   */
/*                RESULT_Desc (varchar(30)) - result name     */
/*                RESULT_Value float - result value           */
/* 2019-01-31:  A.Saeed - removed delete of all   */ 
/* rows of taf_result_pareto      */
/* and set to run_id column to -1 to "keep" rows. */
/* Also made relevant changes e.g. put in where   */ 
/* clauses to fetch only latest records           */
/*                                                          */  
/*last_batch_sk ID is picked, incremented and updated          */
/*both last_batch_sk and current_batch_sk with the new ID      */
/*Also, change_ts is updated with the new timestamp            */
/*Following columns have also been added in Results table:
 *  ETL_Create_Batch_Sk INTEGER,
    ETL_Change_Batch_Sk INTEGER,
 	ETL_Create_Ts Timestamp(0),
	ETL_Change_Ts Timestamp(0),
	ETL_Action_Cd char(1) CHARACTER SET LATIN NOT CASESPECIFIC;*/
/******************************************************************/ 
SQL SECURITY INVOKER
BEGIN

DECLARE CNTr, ROWCnt, tstFlg ,RUNID, STATUS_CNT  INTEGER;
DECLARE sSQL VARCHAR(10000);
DECLARE dtaTbl, RESULTTbl VARCHAR(65);
DECLARE vDummy VARCHAR(1); -- handler for error
DECLARE ETLLOADTS, lastLoadDt TIMESTAMP(6);


-- create handler for nonexistant volatile tables 
  DECLARE CONTINUE HANDLER FOR SqlState '42000'
  SET vDummy = 'd';
  SET RUNID = 0;

/********************************************************************/
/*  Test if procedure necessary                                     */
/*******************************************************************/
SEL Count(*) 
INTO status_cnt
FROM trng_connectedFactory.taf_grp_instance gi
JOIN trng_connectedFactory.taf_grp_defn gd
ON gd.grp_id = gi.grp_id
WHERE gd.analytic_id = 2
AND gd.active_ind = 1
AND gi.grp_calc_reqd = 1
AND gi.run_id = 0;
/********************************************************************/
/*  set up status                                                   */
/*******************************************************************/
IF status_cnt > 0 THEN 

SELECT 1+Max(status_id), Max(ETL_LOAD_TS)  
INTO status_cnt, ETLLOADTS
FROM trng_connectedFactory.TAF_RUN_STATUS
WHERE run_id = 0;

 INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(status_id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_TS )  
	  VALUES( :status_cnt, :RunID, Current_Timestamp(6), 'sp_TAF_PARETO_INIT' ,'Start of PARETO', 0, :ETLLOADTS);
SET status_cnt=status_cnt + 1;
/*****************************************************************************/
/*  Get data from calculation view                                           */
/* Data calcs should force cast to string                                    */
/*****************************************************************************/
DROP TABLE VIRTUAL_pareto_WRK;
CREATE MULTISET VOLATILE TABLE VIRTUAL_Pareto_WRK, NO Log (
grp_id INTEGER,
LEVEL_ID BIGINT,
categ_cd VARCHAR(50),
categ_cnt VARCHAR(500))
PRIMARY INDEX (grp_id, LEVEL_ID) 
ON COMMIT PRESERVE ROWS;

FOR viewCursor AS Load_Cursor CURSOR FOR 
	    SELECT Trim(VIEW_DB) || '.' || Trim(gd.INIT_CALCS_TXT) AS vNAME
		    FROM trng_connectedFactory.TAF_GRP_DEFN gd
			WHERE ACTIVE_IND = 1
			AND analytic_id = 2
			AND Char_Length(init_calcs_txt) > 0 
			GROUP BY 1 -- require an entry
	DO
	    SET Ssql = 'INSERT INTO VIRTUAL_Pareto_WRK
		     SELECT * FROM ' || Trim(VIEWCURSOR.vNAME) || ';';
		CALL dbc.SYSEXECSQL(sSQL);
	END FOR;
/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
SELECT Count(*) INTO ROWCNT
FROM VIRTUAL_PARETO_WRK ;

 INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(status_id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_TS )  
	  VALUES( :status_cnt, :RunID, Current_Timestamp(6), 'sp_TAF_PARETO_INIT' ,'loaded data into work table', :ROWCNT, :ETLLOADTS);
SET status_cnt=status_cnt + 1;
/***************************************************************************/
/*  set up data tables for Pareto                                                  */
/***************************************************************************/
--DELETE FROM trng_connectedFactory.taf_RESULT_PARETO
--WHERE (grp_id, LEVEL_ID) IN (SELECT grp_id, LEVEL_ID FROM VIRTUAL_Pareto_Wrk);

/***************************************************************************/
/*  instead of delete, "keep" groups and change the ID to differentiate from new records(run_id = 0) with analytic_id = 1*/
/***************************************************************************/ 
UPDATE trng_connectedFactory.taf_RESULT_PARETO
SET RUN_ID = RUN_ID - 1 
WHERE (grp_id, level_id) NOT IN (SELECT grp_id, LEVEL_ID FROM VIRTUAL_Pareto_Wrk); 

INSERT INTO trng_connectedFactory.TAF_RESULT_PARETO
SEL grp_id, LEVEL_ID, BIN_NR
, CASE WHEN BIN_NR = 11 THEN 'Other' ELSE data_val
   END AS bin_desc
   , CASE WHEN BIN_NR = 11 THEN up_cnt - bin_cnt ELSE bin_cnt END AS bincnt
      ,  Cast(bincnt AS FLOAT)  / NullIfZero(ttl_cnt(FLOAT))  AS bin_pct
   , CASE WHEN BIN_NR = 11 THEN 1.0 ELSE Cast(Sum(bincnt) Over (PARTITION BY grp_id, LEVEL_ID ORDER BY BIN_NR ROWS Unbounded Preceding ) AS FLOAT) 
      / NullIfZero(ttl_cnt(FLOAT)) 
	 END AS cum_pct
	 , 0 AS RUN_ID
	 , Current_Timestamp(0)
	 , Current_Timestamp(0)
	 , 'I'	 
	 FROM (
 SEL grp_id, LEVEL_ID, data_val
, Row_Number() Over (PARTITION BY grp_id, LEVEL_ID ORDER BY bin_cnt DESC, data_val DESC) AS BIN_NR
, bin_cnt
, Sum(bin_cnt) Over (PARTITION BY grp_id, LEVEL_ID ORDER BY bin_cnt, data_val DESC ROWS  Unbounded Preceding  ) AS up_cnt
, Sum(bin_cnt) Over (PARTITION BY grp_id, LEVEL_ID ) AS ttl_cnt
FROM (
SEL grp_id, LEVEL_ID, CATEG_CD AS DATA_VAL, Sum(CATEG_CNT) AS bin_cnt
FROM VIRTUAL_Pareto_wrk
GROUP BY 1,2,3
) x 
QUALIFY BIN_NR <= 11
) z;
/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
SELECT Count(*) INTO ROWCNT
FROM trng_connectedFactory.TAF_RESULT_PARETO 
WHERE RUN_ID = 0;

 INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(status_id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_TS )  
	  VALUES( :status_cnt, :RunID, Current_Timestamp(6), 'sp_TAF_PARETO_INIT' ,'Pareto calculated', :ROWCNT, :ETLLOADTS);
SET status_cnt=status_cnt + 1;


DROP TABLE VIRTUAL_Pareto_Wrk;
/**************************************************************************/
/*  update group instance table with completion  flags                   */
/**************************************************************************/
UPDATE T FROM trng_connectedFactory.TAF_GRP_INSTANCE T, (
SELECT GRP_ID, LEVEL_ID FROM trng_connectedFactory.TAF_RESULT_PARETO WHERE RUN_ID = 0 GROUP BY 1,2) S
SET GRP_CALC_REQD = 0
, last_calc_ts = Current_Timestamp(0)
WHERE T.GRP_CALC_REQD = 1 
AND T.GRP_ID = S.GRP_ID
AND T.LEVEL_ID = S.LEVEL_ID;

/****************************************************************************/
/*   Score and alert flags here                                                               */
/****************************************************************************/

/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/

 INSERT INTO trng_connectedFactory.TAF_RUN_STATUS(status_id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_TS )  
	  VALUES( :status_cnt, :RunID, Current_Timestamp(6), 'sp_TAF_PARETO_INIT' ,'Pareto completed', 0, :ETLLOADTS);
	  
	  
END IF; -- procedure run test 

end;

REPLACE PROCEDURE trng_connectedFactory.sp_taf_reset(
 IN flg BYTEINT 
 )
 /*********************************************/
 /*  Procedure to delete TAF tables & results */
 /*     sp_taf_delete(flag)                   */
 /*         input:  flag = -1 then erase all  */
 /*              tables including result sets */
 /*                 all other flag values     */
 /*              erase TAF control talbes only*/
 /*                                           */
 /*  Created 2019-01-14:  B.Aldridge, Teradata*/
 /*********************************************/
 SQL SECURITY INVOKER
 BEGIN
	 DELETE FROM trng_connectedFactory.taf_grp_instance;
	 DELETE FROM trng_connectedFactory.taf_run_status;
	 DELETE FROM trng_connectedFactory.taf_last_valid_run;
	 
	 /* if flag = -1, delete all known result sets */
	 
	 IF flg = -1  THEN 
	 
	 DELETE FROM trng_connectedFactory.taf_result_bnml_multiz;
	  DELETE FROM trng_connectedFactory.taf_result_bnml_onez;
	   DELETE FROM trng_connectedFactory.taf_result_kstest_oneout;
	    DELETE FROM trng_connectedFactory.taf_result_pareto;
	     DELETE FROM trng_connectedFactory.TAF_RESULT_SPC_XmR;
	      DELETE FROM trng_connectedFactory.TAF_RESULT_DESCRIPTIVE_STATISTICS;
          DELETE FROM trng_connectedFactory.TAF_RESULT_Weibull;
		  DELETE FROM trng_connectedFactory.taf_result_ks_test;
	 
	 end if;
	 
 end;

REPLACE PROCEDURE trng_connectedfactory.sp_TAF_SPC_XmR_Chart_init(
IN initFlag BYTEINT
)
/************************************************************/
/*  SPC XmR (x moving range 2 point )  chart -              */
/*  Analytic Id = 20 (group definition table)                */
/*                                                          */
/*   Created 2018-01-07 By B.ALOADrIdge/A.Saeed Teradata      */
/*   Input data view / table must have the following columns*/
/*   GRP_Id(Integer) Identifier of analytic / metadata      */
/*             LEVEL_Id (BIGINT)  Identifies each data set    */
/*             sequence_id INTEGER :  the order of the data */
/*             data_val FLOAT- 								*/
/*                               							*/
/*    In:  InitFlag:  integer on whether training should    */
/*         occur.                                            */
/*         1 = train with # of readings in param table        */
/*         0 = no training, evaluate data                     */
/*      Out                                                   */
/*       If initFlag = 1 then TAF_Model_SPC_Pchart        */
/*          is populated with training parameters             */
/*                                                            */
/*      TABLE TAF_SPC_XmR_Limits                              */
/*           Table to hold SPC values for reference          */
/*           updated when initFlag = 1                       */
/*                                                           */
/*             grp_id integer,                               */
/*             level_id bigint,                              */
/*             x_bar float,                                  */
/*             x_ucl float,                                  */
/*             mr_bar float,                                 */
/*             mr_ucl float,                                 */
/*             updated_ts timestamp(0)                       */
/*                                                           */
/*       Results stored in TAF_RESULT_SPC_XmR                */
/*          columns                                          */
/*                GRP_Id(Integer)                            */
/*                LEVEL_Id (Bigint)                          */
/*                sequence_id (integer)                      */
/*                Rule ID encoded integer                    */
/*                 binary encoding for rule violations       */
/*                  1 = X > 3 sigma                          */
/*                  2 = 2 of 3 outside of 2 sigma            */
/*                  4 = 3 or 4 outside of 1 sigma            */
/*                  8 = 8 of 8 on one side of line           */ 
/*                Rule mrng - outside of mov range UCL       */
/* 2019-01-31:  A.Saeed - removed delete of all              */ 
/* rows of TAF_RESULT_SPC_XmR                                */
/* and set to run_id column to < 0 to "keep" rows.           */
/* Also made relevant changes e.g. put in where              */ 
/* clauses to fetch only latest records                      */
/*Also, change_ts is updated with the new timestamp            */
/*Following columns have also been added in Results table:
 *  ETL_Create_Batch_Sk INTEGER,
    ETL_Change_Batch_Sk INTEGER,
 	ETL_Create_Ts Timestamp(0),
	ETL_Change_Ts Timestamp(0),
	ETL_Action_Cd char(1) CHARACTER SET LATIN NOT CASESPECIFIC;*/
/******************************************************************/
SQL SECURITY INVOKER 
	BEGIN

DECLARE CNTr, rowinit, status_cnt  INTEGER;
DECLARE string_sql VARCHAR(10000);
DECLARE ETLLOADTS, lastLOADDt TIMESTAMP(6);
DECLARE volatile_dummy VARCHAR(1); -- handler for error

-- create handler for nonexistant volatile tables 
  DECLARE CONTINUE HANDLER FOR SqlState '42000'
  SET volatile_dummy = 'd';
  
/********************************************************************/
/*  Test if procedure is required.                                 */
/*******************************************************************/
SEL Count(*) 
INTO status_cnt
FROM trng_connectedfactory.taf_grp_instance gi
JOIN trng_connectedfactory.taf_grp_defn gd
ON gd.grp_id = gi.grp_id
WHERE gd.analytic_id = 20
AND gd.active_ind = 1
AND gi.grp_calc_reqd = 1
AND gi.run_id = 0;

IF status_cnt > 0 THEN 


/********************************************************************/
/*  set up status                                                                          */
/*******************************************************************/
SELECT 1+Max(status_Id), Max(ETL_LOAD_TS)  
INTO status_cnt, ETLLOADTS
FROM trng_connectedfactory.TAF_run_status
WHERE run_id = 0;

 INSERT INTO trng_connectedfactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_SPC_XmR_init' ,'Start of SPC XmR Chart', 0, :ETLLOADTS);
	  
SET status_cnt=status_cnt + 1;

-- for initialization delete same group and level 
--DELETE trng_connectedfactory.TAF_RESULT_SPC_XmR WHERE (grp_id, level_id) IN (
--SELECT gd.grp_id, gi.level_id FROM trng_connectedfactory.taf_grp_defn gd 
--JOIN trng_connectedfactory.taf_grp_instance gi 
--ON gi.grp_id = gd.grp_id
--AND gd.active_ind = 1
--AND gd.analytic_id = 20
--AND gi.grp_calc_reqd = 1
-- GROUP BY 1,2
-- );
/***************************************************************************/
/*  instead of delete, "keep" groups and change the ID to differentiate from new records(run_id = 0) with analytic_id = 20*/
/***************************************************************************/ 
UPDATE trng_connectedfactory.TAF_RESULT_SPC_XmR 
SET RUN_ID = RUN_ID - 1
WHERE (grp_id, level_id) IN (
SELECT gd.grp_id, gi.level_id FROM trng_connectedfactory.taf_grp_defn gd 
JOIN trng_connectedfactory.taf_grp_instance gi 
ON gi.grp_id = gd.grp_id
AND gd.active_ind = 1
AND gd.analytic_id = 20
--AND gi.grp_calc_reqd = 1
 GROUP BY 1,2
 );
 
/*****************************************************************************/
/*  Get data from calculation view                                                         */
/*****************************************************************************/
DROP TABLE virtual_taf_spc_xmr;
CREATE MULTISET VOLATILE TABLE virtual_taf_spc_xmr, NO Log (
grp_Id INTEGER,
LEVEL_Id BIGINT,
sequence_id INTEGER,
data_val FLOAT)
PRIMARY INDEX (grp_Id, LEVEL_Id) 
ON COMMIT PRESERVE ROWS;

FOR viewCursor AS Load_Cursor CURSOR FOR 
	    SELECT Trim(VIEW_DB) || '.' || Trim(gd.INIT_CALCS_TXT) AS view_name
		    FROM trng_connectedfactory.TAF_GRP_DEFN gd
			WHERE ACTIVE_IND = 1
			AND analytic_Id = 20
			AND Char_Length(INIT_CALCS_TXT) > 0 
			GROUP BY 1 -- REQDuire an entry
	DO
	    SET string_sql = 'INSERT INTO virtual_taf_spc_xmr
		     SELECT * FROM ' || Trim(VIEWCURSOR.view_name) || ';';
		CALL dbc.SYSEXECSQL(string_sql);
	END FOR;

COLLECT STATISTICS ON virtual_taf_spc_xmr INDEX(grp_Id, LEVEL_Id);   
SEL Count(*) INTO cntr FROM virtual_taf_spc_xmr;

/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
SEL Count(*) INTO cntr
FROM virtual_taf_spc_xmr;

 INSERT INTO trng_connectedfactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_SPC_XmR_init' ,'data collected into virtual_TAF_SPC_XMR', :cntr, :ETLLOADTS);
	  
SET status_cnt=status_cnt + 1;
/********************************************************************/
/* initialize control chart?                                       */
/*******************************************************************/
IF initflag = 1 THEN 
/*  set up new control chart limits */
/* delete old ones where data is present */

DELETE FROM trng_connectedfactory.taf_spc_XmR_Limits 
WHERE (grp_id, level_id) IN (SELECT grp_id, level_id FROM virtual_taf_spc_xmr );

/* get number of data points */
INSERT INTO trng_connectedfactory.TAF_SPC_XmR_LIMITS
SEL grp_id, level_id 
, Average(data_val) AS x_bar
, CASE WHEN x_bar < 2.66*mr_bar THEN 0 ELSE x_bar - 2.66*mr_bar end AS x_lcl
, x_bar + 2.66*mr_bar AS x_ucl 
, Average(Abs(mrng)) AS mr_bar
, 3.267*mr_bar AS mr_ucl -- 2 point moving range?
, Current_Timestamp(0) 
FROM (
SEL t1.grp_id, t1.level_id, t1.sequence_id, t1.data_val, t2.parameter1 AS row_limit
, Row_Number() Over (PARTITION BY t1.grp_id, t1.level_id ORDER BY sequence_id) AS rnmbr
, -t1.data_val + Sum(t1.data_val) Over (PARTITION BY t1.grp_id, t1.level_id ORDER BY t1.sequence_id ROWS BETWEEN 1 Following AND 1 Following) AS mrng
FROM virtual_taf_spc_xmr t1
JOIN trng_connectedfactory.taf_parameter t2
ON t1.grp_id = t2.grp_id
AND t2.parameter_id = 1
) t0 WHERE rnmbr <= t0.row_limit
GROUP BY 1,2,8;

/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
SELECT Count(*) INTO cntr
FROM trng_connectedfactory.taf_spc_xmr_limits;

 INSERT INTO trng_connectedfactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_SPC_XmR_init' ,'TAF SPC Limits table updated', :cntr, :ETLLOADTS);
	  
SET status_cnt=status_cnt + 1;
end if; 
/********************************************************************/
/*  compute XmR chart                                              */
/*******************************************************************/
INSERT INTO trng_connectedfactory.TAF_RESULT_SPC_XmR
SELECT grp_id, level_id, sequence_id, data_val, mrng
--, x_bar, x_lcl, x_ucl, mr_bar
, Abs(rule_1_x) + 
 CASE WHEN Abs(Sum(rule_2_x) Over (PARTITION BY grp_id, level_id 
             ORDER BY sequence_id ROWS BETWEEN 2 Preceding AND CURRENT ROW)) >=2
             THEN 2 ELSE 0 end -- rule 2:  2 of 3 outside of 2 sigma
+ CASE WHEN Abs(Sum(rule_3_x) Over (PARTITION BY grp_id, level_id
             ORDER BY sequence_id ROWS BETWEEN 4 Preceding AND CURRENT ROW)) >= 4
             THEN 4 ELSE 0 end -- rule 3:  4 of 5 outside of 1 sigma
+ CASE WHEN Abs(Sum(rule_4_x) Over (PARTITION BY grp_id, level_id
             ORDER BY sequence_id ROWS BETWEEN 7 Preceding AND CURRENT ROW)) >= 8
             THEN 8 ELSE 0 end -- rule 4, 8 in a row on one side of line
AS alert_x
, rule_1_r AS alert_mr
, 0 AS RUN_ID
, Current_Timestamp(0)
, Current_Timestamp(0)
, 'I'
 FROM (
SELECT a.grp_id, a.level_id, b.sequence_id
, a.x_bar, a.x_lcl, a.x_ucl, b.data_val
, a.mr_bar, mr_ucl
,  Abs(b.data_val - Sum(b.data_val) Over (PARTITION BY a.grp_id, a.level_id ORDER BY b.sequence_id ROWS BETWEEN 1 Preceding AND 1 Preceding)) AS mrng
, (a.x_ucl - a.x_bar)/3.0 AS sigma_x
, (a.mr_ucl - a.mr_bar ) / 3.0 AS sigma_r
, CASE WHEN b.data_val > a.x_ucl THEN 1 
       WHEN b.data_val < x_lcl THEN - 1 ELSE 0 end AS rule_1_x -- outside of 3 sigma limit
, CASE WHEN mrng > a.mr_ucl THEN 1 ELSE 0 end AS rule_1_r
, CASE WHEN b.data_val > (a.x_bar + 2.0 * sigma_x) THEN 1
        WHEN b.data_val < (a.x_bar - 2.0 * sigma_x) THEN -1 
        ELSE 0 end AS rule_2_x
, CASE WHEN b.data_val > (a.x_bar + sigma_x) THEN 1 
       WHEN b.data_val <(a.x_bar - sigma_x) THEN - 1
       ELSE 0 end AS rule_3_x
, CASE WHEN b.data_val > a.x_bar THEN 1 
       WHEN b.data_val < a.x_bar THEN -1
       ELSE 0 end AS rule_4_x
FROM trng_connectedfactory.taf_spc_xmr_Limits a JOIN virtual_taf_spc_xmr  b
ON a.grp_id = b.grp_id 
AND a.level_id = b.level_id 
) x
QUALIFY alert_x > 0 OR alert_mr > 0
;

/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
SEL Count(*) INTO cntr
FROM trng_connectedfactory.taf_result_spc_xmr
WHERE RUN_ID = 0;

 INSERT INTO trng_connectedfactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_SPC_XmR_init' ,'XMR Chart calculated ', :cntr, :ETLLOADTS);
	  
DROP TABLE virtul_taf_spc_xmr;

UPDATE t FROM trng_connectedfactory.taf_grp_instance t, (
SELECT grp_id, level_id FROM trng_connectedfactory.taf_result_spc_xmr
WHERE RUN_ID = 0
GROUP BY 1,2
) s
SET grp_calc_reqd = 0
, last_calc_ts = Current_Timestamp(0)
WHERE t.grp_id = s.grp_id AND t.level_id = s.level_id;

END IF; -- end of procedfure required validation 
end;

REPLACE PROCEDURE trng_connectedfactory.sp_TAF_Weibull_INIT(
)
/********************************************************************************************/
/*  Procedure to estimate Weibull parameters from using cumulative Fail rate estimation     */
/*  Created 2019_01_31:  B.Aldridge : Teradata                                               */
/*      Analytic_ID = 40                                                                     */
/*  INPUT Table:  Wbl_INData                                                                 */
/*                 grp_id:  analysis group                                                   */
/*                 Level_id:  analytic Data set                                              */
/*                 nmbr_in_grp:  Number of units in this time/ fail row                      */
/*                 Fail_Status:  'F' = failure                                               */
/*                               'S' = suspend                                               */
/*                 Tm_in_Srvce:  Time in service (arbitrary units - all results will be      */
/*                               in same units  )                                            */
/*  Returns: Output table WBL_Mdl                                                              */
/*                Grp_id:  Analysis group                                                    */
/*                Level_id :  Analytic Data Set Id                                            */
/*                Beta:  Estimate of the shape parameter                                      */
/*                eta:  Estimate of the scale parameter                                      */
/*                R2: R squared value of fit.                                                */
/* 2019-01-31:  A.Saeed - removed delete of all              */ 
/* rows of TAF_RESULT_WEIBULL                                */
/* and set to run_id column to < 0 to "keep" rows.           */
/* Also made relevant changes e.g. put in where              */ 
/* clauses to fetch only latest records                      */
/*2019-02-01:  A.Saeed - implementing Audit Trail functionality*/
/*in Table trng_connectedfactory.ESL_CONTROL_TABLE                    */
/*last_batch_sk ID is picked, incremented and updated          */
/*both last_batch_sk and current_batch_sk with the new ID      */
/*Also, change_ts is updated with the new timestamp            */
/*Following columns have also been added in Results table:
 *  ETL_Create_Batch_Sk INTEGER,
    ETL_Change_Batch_Sk INTEGER,
 	ETL_Create_Ts Timestamp(0),
	ETL_Change_Ts Timestamp(0),
	ETL_Action_Cd char(1) CHARACTER SET LATIN NOT CASESPECIFIC;*/
/********************************************************************************************/
SQL SECURITY INVOKER
BEGIN
	
DECLARE CNTr, ROWCnt, tstFlg ,RUNID, STATUS_CNT  INTEGER;
DECLARE sSQL VARCHAR(10000);
DECLARE dtaTbl, RESULTTbl VARCHAR(65);
DECLARE volatile_dummy VARCHAR(1); -- handler for error
DECLARE ETLLOADTS, lastLoadDt TIMESTAMP(6);
DECLARE Lv_n_Semantic_Batch_Sk INTEGER; -- Audit Trail Functionality	
DECLARE minFail , minRows INTEGER;

DECLARE CONTINUE HANDLER FOR SqlState '42000'
SET volatile_dummy = 'd';
SET Lv_n_Semantic_Batch_Sk = 0; -- Audit Trail

SET minFail = 2;  -- Require at least 2 failurss
SET minRows = 3;   -- require at least 3 data rows. 
-- Could be moved to a parameter entry 
/********************************************************************/
/*  Test if procedure is required.                                 */
/*******************************************************************/
SEL Count(*) 
INTO status_cnt
FROM trng_connectedfactory.taf_grp_instance gi
JOIN trng_connectedfactory.taf_grp_defn gd
ON gd.grp_id = gi.grp_id
WHERE gd.analytic_id = 40 
AND gd.active_ind = 1
AND gi.grp_calc_reqd = 1
AND gi.run_id = 0;

IF status_cnt > 0 THEN

/*************************************************************************************/
/*    Pick the last batch ID from Control table for Audit Trail                      */
/*************************************************************************************/
SELECT Last_Batch_Sk + 1 INTO :Lv_n_Semantic_Batch_Sk 
FROM trng_connectedfactory.ESL_CONTROL_TABLE 
WHERE Table_Name = 'TAF_RESULT_WEIBULL'; 

/********************************************************************/
/*  set up status                                                                          */
/*******************************************************************/
SELECT 1+Max(status_Id), Max(ETL_LOAD_TS)  
INTO status_cnt, ETLLOADTS
FROM trng_connectedfactory.TAF_run_status
WHERE run_id = 0;

 INSERT INTO trng_connectedfactory.TAF_RUN_status(status_Id, Run_Id, Run_TS, Run_Loc, Run_Info_TXT, Rows_UPDATE, ETL_LOAD_TS )  
	  VALUES( :status_cnt, 0, Current_Timestamp(6), 'sp_TAF_WEIBULL_INIT' ,'Start of Weibull', 0, :ETLLOADTS);	  
SET status_cnt=status_cnt + 1;

/***************************************************************************/
/*  instead of delete, "keep" groups and change the ID to differentiate from new records(run_id = 0) with analytic_id = 30*/
/***************************************************************************/ 
UPDATE trng_connectedfactory.TAF_RESULT_WEIBULL
SET RUN_ID = RUN_ID - 1
-- level_id on new values will be unique
-- set any existing grp_id results to older run_id 
WHERE grp_id IN (
SELECT gd.grp_id FROM trng_connectedfactory.taf_grp_defn gd
WHERE gd.active_ind = 1
AND gd.analytic_id = 40 
GROUP BY 1);

/*****************************************************************************/
/*  Get data from calculation view                                           */
/* Data calcs should force cast to string                                    */
/*****************************************************************************/
DROP TABLE VIRTUAL_WEIBULL_WRK; /*AS: of course this would depends on the kind of views. I couldn't think about it.*/
CREATE MULTISET VOLATILE TABLE VIRTUAL_WEIBULL_WRK, NO Log (
grp_id INTEGER,
LEVEL_ID BIGINT,
nmbr_in_grp INTEGER,
status CHAR(1),
stress_val FLOAT) 
PRIMARY INDEX (grp_id, LEVEL_ID) 
ON COMMIT PRESERVE ROWS;

FOR viewCursor AS Load_Cursor CURSOR FOR 
	    SELECT Trim(VIEW_DB) || '.' || Trim(gd.INIT_CALCS_TXT) AS vNAME
		    FROM trng_connectedfactory.TAF_GRP_DEFN gd
			WHERE ACTIVE_IND = 1
			AND analytic_id = 40 
			AND Char_Length(init_calcs_txt) > 0 
			GROUP BY 1 -- require an entry
	DO
	    SET Ssql = 'INSERT INTO VIRTUAL_WEIBULL_WRK
		     SELECT * FROM ' || Trim(VIEWCURSOR.vNAME) || ';';
		CALL dbc.SYSEXECSQL(sSQL);
	END FOR;
/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
SELECT Count(*) INTO ROWCNT
FROM VIRTUAL_WEIBULL_WRK ;

 INSERT INTO trng_connectedfactory.TAF_RUN_STATUS(status_id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_TS )  
	  VALUES( :status_cnt, :RunID, Current_Timestamp(6), 'sp_TAF_WEIBULL_INIT' ,'loaded data into work table', :ROWCNT, :ETLLOADTS);
SET status_cnt=status_cnt + 1;

INSERT INTO trng_connectedfactory.TAF_RESULT_WEIBULL  
	SEL t2.grp_id, t2.level_id
	 , Regr_Slope(ln_ht, ln_t) AS beta
	 , Exp(-Regr_Intercept(ln_ht, ln_t)/beta) AS eta
	 , Regr_R2(ln_ht, ln_t) AS r2
	 , 0 AS RUN_ID
 	 , :Lv_n_Semantic_Batch_Sk
 	 , :Lv_n_Semantic_Batch_Sk
	 , Current_Timestamp(0)
	 , Current_Timestamp(0)
	 , 'I'	
FROM (
	SELECT grp_id, level_id, Ln(stress_val) AS ln_t
	, Ln(Sum(inst_ht) Over (PARTITION BY grp_id, level_id ORDER BY stress_val 
	ROWS BETWEEN Unbounded Preceding AND CURRENT ROW)) AS   ln_Ht
	FROM (
		SELECT dt.grp_id, dt.level_id
		, dt.stress_val
		, dt.status 
		, CASE WHEN dt.status = 'F' THEN dt.status
		                WHEN dt.stress_val = last_time THEN 'F'
		                ELSE dt.status END AS Fail_trunc -- Force keep of last read
		, Sum(dt.nmbr_in_grp) Over (PARTITION BY dt.grp_id, dt.level_id
		                                                   ORDER BY dt.stress_val DESC,dt.status DESC 
                             ROWS BETWEEN Unbounded Preceding AND  CURRENT ROW ) 
                             AS nmbr_working
		/* build h(t) for all data values (fails and truncation) */
		, CASE WHEN status = 'F' 
                                        THEN (nmbr_in_grp(FLOAT) ) / (nmbr_working(FLOAT))  
                               ELSE 0 END AS inst_ht -- instantaneous fail rate estimate 
		, Max(dt.stress_val) Over (PARTITION BY dt.grp_id, dt.level_id) AS last_time 
		FROM VIRTUAL_WEIBULL_WRK  dt
		, (
        SEL grp_id, level_id
			, Count(*) AS rowCnt
			, Sum(CASE WHEN status = 'F' THEN nmbr_in_grp ELSE 0 end) AS nmbr_fails
			, Sum(CASE WHEN status = 'F' THEN 1 ELSE 0 END ) AS row_fails 
			FROM VIRTUAL_WEIBULL_WRK
			GROUP BY 1,2
            ) qt
             WHERE stress_val > 0.0
			 AND dt.grp_id = qt.grp_id
             AND dt.level_id = qt.level_id
			 AND qt.nmbr_fails >= :minFail -- user defined number of fails to exceed
			 AND qt.row_fails >= :MinRows -- user deffined number of distinct rows to exceed
            --AND qt.nmbr_fails >= 3 
			-- AND qt.row_fails >=4 
	) t1
	WHERE fail_trunc = 'F'  -- keep increasing values of Ht  (passes do not result in increase
	QUALIFY Count(*) Over (PARTITION BY grp_id, level_id) > 1
) t2
GROUP BY 1,2,6,7,8,9,10,11
HAVING  beta >0 AND eta > 0;

/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
SELECT Count(*) INTO ROWCNT
FROM trng_connectedfactory.TAF_RESULT_WEIBULL 
WHERE RUN_ID = 0;

 INSERT INTO trng_connectedfactory.TAF_RUN_STATUS(status_id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_TS )  
	  VALUES( :status_cnt, :RunID, Current_Timestamp(6), 'sp_TAF_WEIBULL_INIT' ,'Weibull parameters calculated', :ROWCNT, :ETLLOADTS);
SET status_cnt=status_cnt + 1;


DROP TABLE VIRTUAL_WEIBULL_Wrk;
/**************************************************************************/
/*  update group instance table with completion  flags                   */
/**************************************************************************/
UPDATE T FROM trng_connectedfactory.TAF_GRP_INSTANCE T, (
SELECT GRP_ID, LEVEL_ID FROM trng_connectedfactory.TAF_RESULT_WEIBULL 
WHERE RUN_ID = 0 GROUP BY 1,2
) S
SET GRP_CALC_REQD = 0
, last_calc_ts = Current_Timestamp(0)
WHERE T.GRP_CALC_REQD = 1 
AND T.GRP_ID = S.GRP_ID
AND T.LEVEL_ID = S.LEVEL_ID;

/********************************************************************/
/*  update status                                                                          */
/*******************************************************************/
 INSERT INTO trng_connectedfactory.TAF_RUN_STATUS(status_id, Run_ID, Run_Ts, Run_Loc, Run_Info_TXT, Rows_Update, ETL_LOAD_TS )  
	  VALUES( :status_cnt, :RunID, Current_Timestamp(6), 'sp_TAF_WEIBULL_INIT' ,'Weibull completed', 0, :ETLLOADTS);

/****************************************************************************************/
/*  Update batch SK and timestamp columns to keep updated Audit Trail                   */
/****************************************************************************************/
UPDATE trng_connectedfactory.ESL_Control_Table 
SET Last_Batch_Sk = :Lv_n_Semantic_Batch_Sk
, CURRENT_BATCH_SK = :Lv_n_Semantic_Batch_Sk
, Change_Ts = Current_Timestamp(0)  
WHERE Table_Name = 'TAF_RESULT_WEIBULL'; 

END IF;  -- end of procedure calc required test
END;



------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE PROCEDURE sp_testmacro( 
IN dbase1 VARCHAR(50),
IN inTbl1 VARCHAR(50),
IN  ouTtbl1 VARCHAR(50),
IN idxCol1 INTEGER,
OUT sqlstrout VARCHAR(1000)
)
BEGIN
DECLARE sqlstr VARCHAR(5000);

SET sqlstr = 'exec TRNG_ConnectedFactory.mUnpivot(''' || Trim(dbase1) || ''',''' || Trim(inTbl1) || ''',''' || Trim(outTbl1) || ''',' || Trim(idxCol1) || ');' ;
SET sqlstrout = sqlstr;
CALL dbc.SYSEXECSQL(sqlstr);
END;

