create database TRNG_COVID19 from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_COVID19_STG_Hospitalization_Estimates_05_29_2020", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Hospitalization-Estimates-05-29-2020/'));
create foreign table gs_tables_db."TRNG_COVID19_zzz_tweettext", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/zzz-tweettext/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_INDICATOR_DASHBOARD_T_to_delete", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-INDICATOR-DASHBOARD-T-to-delete/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Consumer_Sentiment_Index", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Consumer-Sentiment-Index/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_ConsumerPriceIndex", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-ConsumerPriceIndex/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Estimated_Icu", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Estimated-Icu/'));
create foreign table gs_tables_db."TRNG_COVID19_arima_county_death", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/arima-county-death/'));
create foreign table gs_tables_db."TRNG_COVID19_ben_test_t2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/ben-test-t2/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_BEA_PersonalConsumption_2_4_5", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-BEA-PersonalConsumption-2-4-5/'));
create foreign table gs_tables_db."TRNG_COVID19_weathereventshourly", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/weathereventshourly/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_BEA_Gov", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-BEA-Gov/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_BEA_PersonalConsumption_2_3_5_20200609", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-BEA-PersonalConsumption-2-3-5-20200609/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_US_indicator_housing_starts_06_06_2020", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-US-indicator-housing-starts-06-06-2020/'));
create foreign table gs_tables_db."TRNG_COVID19_varmax_death_vac", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/varmax-death-vac/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Google_Search", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Google-Search/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Hospitalization_all_locs_2020_04_08", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Hospitalization-all-locs-2020-04-08/'));
create foreign table gs_tables_db."TRNG_COVID19_ADLDEMO_COVID19.STG_RES_SUMMARY_DETAIL_ORIG", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/ADLDEMO-COVID19.STG-RES-SUMMARY-DETAIL-ORIG/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Summary_stats_all_locs", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Summary-stats-all-locs/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_COVID19_DataHUB_statev2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-COVID19-DataHUB-statev2/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_US_indicator_Stock_Market_06_06_2020", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-US-indicator-Stock-Market-06-06-2020/'));
create foreign table gs_tables_db."TRNG_COVID19_TEMP_STG_BEA_PersonalConsumption_2_3_5", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TEMP-STG-BEA-PersonalConsumption-2-3-5/'));
create foreign table gs_tables_db."TRNG_COVID19_applemobilitytrends-2020-06-18", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/applemobilitytrends-2020-06-18/'));
create foreign table gs_tables_db."TRNG_COVID19_TEMP_DIM_DASH_VIZ_METRIC_XREF", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TEMP-DIM-DASH-VIZ-METRIC-XREF/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_apple_mobility_20200612", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-apple-mobility-20200612/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Summary_stats_all_locs_BKP_21_05_2021", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Summary-stats-all-locs-BKP-21-05-2021/'));
create foreign table gs_tables_db."TRNG_COVID19_google_mobility_20200612", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/google-mobility-20200612/'));
create foreign table gs_tables_db."TRNG_COVID19_weatherevents", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/weatherevents/'));
create foreign table gs_tables_db."TRNG_COVID19_stg_applemobilitytrends-2020-06-18_usonly", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/stg-applemobilitytrends-2020-06-18-usonly/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_Covid_Model_Score_M", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-Covid-Model-Score-M/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_covid19_stats", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-covid19-stats/'));
create foreign table gs_tables_db."TRNG_COVID19_county_dma", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/county-dma/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_US_CENSUS_SURVEY", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-US-CENSUS-SURVEY/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_COVID19_Datahub_LVL1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-COVID19-Datahub-LVL1/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Labor_Stats_old", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Labor-Stats-old/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Hosipitalization_Estimates_05_04_2020", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Hosipitalization-Estimates-05-04-2020/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Hospitalization_all_locs_2020_04_07_06", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Hospitalization-all-locs-2020-04-07-06/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_US_indicator_initial_jobless_claims_06_06_2020", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-US-indicator-initial-jobless-claims-06-06-2020/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_us_counties2020-06-11", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-us-counties2020-06-11/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_RETVSN_DEVICE_SITE_EVENT_XREF", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-RETVSN-DEVICE-SITE-EVENT-XREF/'));
create foreign table gs_tables_db."TRNG_COVID19_word_cloud_tweet", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/word-cloud-tweet/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_applemobilitytrends-2020-06-18v4", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-applemobilitytrends-2020-06-18v4/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_GEO_LOCATION_T", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-GEO-LOCATION-T/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_Word_Cloud_Tweet", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-Word-Cloud-Tweet/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_ZIP_COUNTY_MSA_MAP_RAW_Z", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-ZIP-COUNTY-MSA-MAP-RAW-Z/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_COVID19_DATAHUB", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-COVID19-DATAHUB/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_CUST_SALES_MNTHLY", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-CUST-SALES-MNTHLY/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_Covid19Counties", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-Covid19Counties/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_WestAppleMobility", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-WestAppleMobility/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_COVID_Model_data_bkup2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-COVID-Model-data-bkup2/'));
create foreign table gs_tables_db."TRNG_COVID19_text_parser_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/text-parser-output/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_INDICATOR_DASHBOARD_TEST", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-INDICATOR-DASHBOARD-TEST/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Tweeter_Excludes", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Tweeter-Excludes/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Google_Mobility", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Google-Mobility/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Covid19_datahub_states", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Covid19-datahub-states/'));
create foreign table gs_tables_db."TRNG_COVID19_BL186018_test_copy", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/BL186018-test-copy/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Airport_Location", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Airport-Location/'));
create foreign table gs_tables_db."TRNG_COVID19_GEO_LOOKUP", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/GEO-LOOKUP/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Global_Mobility_Report_v231234", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Global-Mobility-Report-v231234/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_DASH_VIZ_METRIC_XREF", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-DASH-VIZ-METRIC-XREF/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_COVID_DATAHUB_STATES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-COVID-DATAHUB-STATES/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_COVID19_Datahub_LVL2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-COVID19-Datahub-LVL2/'));
create foreign table gs_tables_db."TRNG_COVID19_BL_STG_Global_Mobility_Report", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/BL-STG-Global-Mobility-Report/'));
create foreign table gs_tables_db."TRNG_COVID19_2020_06_13/Hospitalization_all_locs.csv", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/2020-06-13/Hospitalization-all-locs.csv/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Teradata_Company_info_Employee", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Teradata-Company-info-Employee/'));
create foreign table gs_tables_db."TRNG_COVID19_PopulationEstimates", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/PopulationEstimates/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_INDICATOR_DASHBOARD_T2_P_backup", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-INDICATOR-DASHBOARD-T2-P-backup/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_COVID_STABLITY", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-COVID-STABLITY/'));
create foreign table gs_tables_db."TRNG_COVID19_t1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/t1/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_RETVSN_SITE_POLICY", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-RETVSN-SITE-POLICY/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Google_Search_top", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Google-Search-top/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_google_mobility_20200604", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-google-mobility-20200604/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Covid_us_counties_06_19_2020", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Covid-us-counties-06-19-2020/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_BEAPersonalConsumption_2_4_5", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-BEAPersonalConsumption-2-4-5/'));
create foreign table gs_tables_db."TRNG_COVID19_TEMP_STG_COVID19_NATIONAL_ESTIMATES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TEMP-STG-COVID19-NATIONAL-ESTIMATES/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_COVID19_DATAHUB_STATE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-COVID19-DATAHUB-STATE/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_NIPA_AS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-NIPA-AS/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_applemobilitytrends-2020-06-18_us", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-applemobilitytrends-2020-06-18-us/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_Airport_Location", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-Airport-Location/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_covid19datahub", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-covid19datahub/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Estimated_Inpatient_All", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Estimated-Inpatient-All/'));
create foreign table gs_tables_db."TRNG_COVID19_states_lookup", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/states-lookup/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Google_Search_rising", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Google-Search-rising/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Labor_Stats_JSON", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Labor-Stats-JSON/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Google_Search_IOT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Google-Search-IOT/'));
create foreign table gs_tables_db."TRNG_COVID19_Dim_Client_Metrics_ref", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/Dim-Client-Metrics-ref/'));
create foreign table gs_tables_db."TRNG_COVID19_pb250043_natUnemploy", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/pb250043-natUnemploy/'));
create foreign table gs_tables_db."TRNG_COVID19_Ref_covid_Constants", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/Ref-covid-Constants/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_CountyDemographic", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-CountyDemographic/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Teradata_Company_info_Office", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Teradata-Company-info-Office/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_COVID19_Datahub_LVL3", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-COVID19-Datahub-LVL3/'));
create foreign table gs_tables_db."TRNG_COVID19_TABLE_DUMMY", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TABLE-DUMMY/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_geocodes_v2019_ES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-geocodes-v2019-ES/'));
create foreign table gs_tables_db."TRNG_COVID19_Fuel-Consumption", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/Fuel-Consumption/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_apple_mobility_20200616", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-apple-mobility-20200616/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_INDICATOR_DASHBOARD_T2_P", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-INDICATOR-DASHBOARD-T2-P/'));
create foreign table gs_tables_db."TRNG_COVID19_US_HOPITALS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/US-HOPITALS/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_BEA_PersonalConsumption_2_4_5_20200609", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-BEA-PersonalConsumption-2-4-5-20200609/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Hospitalization_all_locs_BKP_21_05_2021", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Hospitalization-all-locs-BKP-21-05-2021/'));
create foreign table gs_tables_db."TRNG_COVID19_pb250043subseta", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/pb250043subseta/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_COVID19_Datahub_orig_0702", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-COVID19-Datahub-orig-0702/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Hospitalization_all_locs", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Hospitalization-all-locs/'));
create foreign table gs_tables_db."TRNG_COVID19_TEMP_STG_Consumer_Sentiment_Index", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TEMP-STG-Consumer-Sentiment-Index/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_LaborStats", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-LaborStats/'));
create foreign table gs_tables_db."TRNG_COVID19_stg_Global_Mobility_Report_mac", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/stg-Global-Mobility-Report-mac/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Global_Mobility_Report", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Global-Mobility-Report/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_RETVSN_SITE_HIER_OCCUPANCY", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-RETVSN-SITE-HIER-OCCUPANCY/'));
create foreign table gs_tables_db."TRNG_COVID19_step1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/step1/'));
create foreign table gs_tables_db."TRNG_COVID19_Nursing_Homes", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/Nursing-Homes/'));
create foreign table gs_tables_db."TRNG_COVID19_TEMP_STG_BEA_PersonalConsumption_2_4_5", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TEMP-STG-BEA-PersonalConsumption-2-4-5/'));
create foreign table gs_tables_db."TRNG_COVID19_pb250043_SeriesRegister", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/pb250043-SeriesRegister/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_Covid_Model_Data_bkup3", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-Covid-Model-Data-bkup3/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_covid19_county_policy_20200608", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-covid19-county-policy-20200608/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_CO_EST2019", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-CO-EST2019/'));
create foreign table gs_tables_db."TRNG_COVID19_data-3", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/data-3/'));
create foreign table gs_tables_db."TRNG_COVID19_applemobilitytrends-2020-06-01_noaltpart2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/applemobilitytrends-2020-06-01-noaltpart2/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Global_Mobility_Report_V2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Global-Mobility-Report-V2/'));
create foreign table gs_tables_db."TRNG_COVID19_2020_06_13/Summary_stats_all_locs.csv", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/2020-06-13/Summary-stats-all-locs.csv/'));
create foreign table gs_tables_db."TRNG_COVID19_DATA_SIMUL", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DATA-SIMUL/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_Covid_Model_Data_Sum_BKP_21_05_2021", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-Covid-Model-Data-Sum-BKP-21-05-2021/'));
create foreign table gs_tables_db."TRNG_COVID19_TEMP_Transaltion_Table", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TEMP-Transaltion-Table/'));
create foreign table gs_tables_db."TRNG_COVID19_Hospital_select", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/Hospital-select/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_ZIP_COUNTY_MSA_MAP_RAW", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-ZIP-COUNTY-MSA-MAP-RAW/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_Site_addresses", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-Site-addresses/'));
create foreign table gs_tables_db."TRNG_COVID19_MG_Google_TEST", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/MG-Google-TEST/'));
create foreign table gs_tables_db."TRNG_COVID19_TEMP_DIM_People_location", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TEMP-DIM-People-location/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_apple_mobility_20200605", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-apple-mobility-20200605/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_CensusSeasonalFactors", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-CensusSeasonalFactors/'));
create foreign table gs_tables_db."TRNG_COVID19_google_mobility_20200616", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/google-mobility-20200616/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_TSATravel", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-TSATravel/'));
create foreign table gs_tables_db."TRNG_COVID19_US_HOPITALS_cluster", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/US-HOPITALS-cluster/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_IND_DASH_GOOGLE_TRENDS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-IND-DASH-GOOGLE-TRENDS/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_StatesLKUP", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-StatesLKUP/'));
create foreign table gs_tables_db."TRNG_COVID19_US_STATE_VAC", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/US-STATE-VAC/'));
create foreign table gs_tables_db."TRNG_COVID19_EF_ARIMA_PRED", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/EF-ARIMA-PRED/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_People_location", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-People-location/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Google_Search_IOT_bl", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Google-Search-IOT-bl/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_ZIP_COUNTY_032020_ES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-ZIP-COUNTY-032020-ES/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Hospitalization_all_locs_2020-04-05", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Hospitalization-all-locs-2020-04-05/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Fuel_Production", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Fuel-Production/'));
create foreign table gs_tables_db."TRNG_COVID19_varmax_case_vac", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/varmax-case-vac/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_readiness_tableau_sample", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-readiness-tableau-sample/'));
create foreign table gs_tables_db."TRNG_COVID19_EF_ARIMA_PRED_NH_trial", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/EF-ARIMA-PRED-NH-trial/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_BEA_Gov_20405", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-BEA-Gov-20405/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_TSA_TRAVEL", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-TSA-TRAVEL/'));
create foreign table gs_tables_db."TRNG_COVID19_arima_county_case", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/arima-county-case/'));
create foreign table gs_tables_db."TRNG_COVID19_EF_ARIMA_PRED_trial", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/EF-ARIMA-PRED-trial/'));
create foreign table gs_tables_db."TRNG_COVID19_F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/F-IND-DASH-NYT-COVID19-GEO-7MAVG-WEEKLY-SNPSHT/'));
create foreign table gs_tables_db."TRNG_COVID19_stg_tweet_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/stg-tweet-output/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_resilience_res", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-resilience-res/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_INDICATOR_DASHBOARD_T2_P2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-INDICATOR-DASHBOARD-T2-P2/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_NYT_COVID_CASES_2020_06_10", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-NYT-COVID-CASES-2020-06-10/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_ZIP_COUNTY_ES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-ZIP-COUNTY-ES/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_CPI_U", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-CPI-U/'));
create foreign table gs_tables_db."TRNG_COVID19_TwitterCount", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TwitterCount/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Labor_Stats_LNS13000000", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Labor-Stats-LNS13000000/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Site_addresses", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Site-addresses/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_GEO_LOCATION_T2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-GEO-LOCATION-T2/'));
create foreign table gs_tables_db."TRNG_COVID19_ETL_Proc_Error_Logs", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/ETL-Proc-Error-Logs/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Teradata_Company_info_Project", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Teradata-Company-info-Project/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Teradata_zipcode_office_virtual", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Teradata-zipcode-office-virtual/'));
create foreign table gs_tables_db."TRNG_COVID19_TEMP_FACT_Covid_Model_Data_BKP_31_05_2021", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TEMP-FACT-Covid-Model-Data-BKP-31-05-2021/'));
create foreign table gs_tables_db."TRNG_COVID19_stg_applemobilitytrends-2020-06-25", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/stg-applemobilitytrends-2020-06-25/'));
create foreign table gs_tables_db."TRNG_COVID19_f_ind_dash_timeline_to_safety", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/f-ind-dash-timeline-to-safety/'));
create foreign table gs_tables_db."TRNG_COVID19_stg_applemobilitytrends-2020-06-18_usonlyfix2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/stg-applemobilitytrends-2020-06-18-usonlyfix2/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_Covid_Model_Data_BKP_21_05_2021", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-Covid-Model-Data-BKP-21-05-2021/'));
create foreign table gs_tables_db."TRNG_COVID19_TEMP_DIM_Site_addresses", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TEMP-DIM-Site-addresses/'));
create foreign table gs_tables_db."TRNG_COVID19_US_CITIES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/US-CITIES/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_applemobilitytrends-2020-06-01_noalt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-applemobilitytrends-2020-06-01-noalt/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Apple_Mobility", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Apple-Mobility/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_METRICS_REF", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-METRICS-REF/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_US_indicator_initial_jobless_claims", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-US-indicator-initial-jobless-claims/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Global_Mobility_Reportv2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Global-Mobility-Reportv2/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Labor_Stats_LNS14000000", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Labor-Stats-LNS14000000/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Labor_Stats_JSON_ZZZ", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Labor-Stats-JSON-ZZZ/'));
create foreign table gs_tables_db."TRNG_COVID19_TEST_TSA_TRAVEL", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TEST-TSA-TRAVEL/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_DemographicsUSCensus", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-DemographicsUSCensus/'));
create foreign table gs_tables_db."TRNG_COVID19_CHINA_POP", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/CHINA-POP/'));
create foreign table gs_tables_db."TRNG_COVID19_pb250043subset", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/pb250043subset/'));
create foreign table gs_tables_db."TRNG_COVID19_ETL_Indicator_Proj_Audit", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/ETL-Indicator-Proj-Audit/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_Covid_Model_Data_BKUP", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-Covid-Model-Data-BKUP/'));
create foreign table gs_tables_db."TRNG_COVID19_F_RETVSN_SITE_DEVICE_EVENT_DETAIL", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/F-RETVSN-SITE-DEVICE-EVENT-DETAIL/'));
create foreign table gs_tables_db."TRNG_COVID19_EF_ARIMA_PRED_NH1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/EF-ARIMA-PRED-NH1/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_INDICATOR_DASHBOARD_T2_delete_this_one_2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-INDICATOR-DASHBOARD-T2-delete-this-one-2/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Hosipitalization_Estimates_06_06_2020", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Hosipitalization-Estimates-06-06-2020/'));
create foreign table gs_tables_db."TRNG_COVID19_zzz_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/zzz-output/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_google_mobility_20200612", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-google-mobility-20200612/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_GoogleMobility_20200601", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-GoogleMobility-20200601/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Labor_Stats_tmp", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Labor-Stats-tmp/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Labor_Stats_CUSR0000SA0", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Labor-Stats-CUSR0000SA0/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_NY_COVID_CASES_06_07_2020", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-NY-COVID-CASES-06-07-2020/'));
create foreign table gs_tables_db."TRNG_COVID19_F_IND_DASH_GOOGLE_TRENDS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/F-IND-DASH-GOOGLE-TRENDS/'));
create foreign table gs_tables_db."TRNG_COVID19_applemobilitytrends-2020-06-01_noalt", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/applemobilitytrends-2020-06-01-noalt/'));
create foreign table gs_tables_db."TRNG_COVID19_stg_US_indicator_unemployment_rate", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/stg-US-indicator-unemployment-rate/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_COVID19_NATIONAL_ESTIMATES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-COVID19-NATIONAL-ESTIMATES/'));
create foreign table gs_tables_db."TRNG_COVID19_gm_step1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/gm-step1/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_BEA_Gov_20305", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-BEA-Gov-20305/'));
create foreign table gs_tables_db."TRNG_COVID19_stg_dashboard_metrics", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/stg-dashboard-metrics/'));
create foreign table gs_tables_db."TRNG_COVID19_stg_tweet_input", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/stg-tweet-input/'));
create foreign table gs_tables_db."TRNG_COVID19_US_POP", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/US-POP/'));
create foreign table gs_tables_db."TRNG_COVID19_FACT_Covid_Model_Data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/FACT-Covid-Model-Data/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_BEA_PersonalConsumption_2_3_5", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-BEA-PersonalConsumption-2-3-5/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Labor_Stats_BL", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Labor-Stats-BL/'));
create foreign table gs_tables_db."TRNG_COVID19_TEMP_STG_CO_EST2019", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TEMP-STG-CO-EST2019/'));
create foreign table gs_tables_db."TRNG_COVID19_Tweeter_Results", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/Tweeter-Results/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_GoogleMobility", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-GoogleMobility/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_hospitalization_all_locs_corrected_2020_03_27", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-hospitalization-all-locs-corrected-2020-03-27/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_Theatres", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-Theatres/'));
create foreign table gs_tables_db."TRNG_COVID19_zzzz", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/zzzz/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_IUS_indicator_job_vacancies", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-IUS-indicator-job-vacancies/'));
create foreign table gs_tables_db."TRNG_COVID19_pb250043_nipadata", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/pb250043-nipadata/'));
create foreign table gs_tables_db."TRNG_COVID19_US_HOPITALS_model", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/US-HOPITALS-model/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Personal_Consumption_Expend_Monthly_2_3_52000-20", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Personal-Consumption-Expend-Monthly-2-3-52000-20/'));
create foreign table gs_tables_db."TRNG_COVID19_SRTG_Global_Mobility_Report", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/SRTG-Global-Mobility-Report/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_RETVSN_SITE_LOCATION", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-RETVSN-SITE-LOCATION/'));
create foreign table gs_tables_db."TRNG_COVID19_stg_applemobilitytrends-2020-06-18_usv3", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/stg-applemobilitytrends-2020-06-18-usv3/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Hospitalization_all_locs_2020_03_31", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Hospitalization-all-locs-2020-03-31/'));
create foreign table gs_tables_db."TRNG_COVID19_Transaltion_Table", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/Transaltion-Table/'));
create foreign table gs_tables_db."TRNG_COVID19_BL186018_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/BL186018-test/'));
create foreign table gs_tables_db."TRNG_COVID19_STATE_POP", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STATE-POP/'));
create foreign table gs_tables_db."TRNG_COVID19_gm_step2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/gm-step2/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_BureauEconomicAnalysis", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-BureauEconomicAnalysis/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_CensusDataStats", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-CensusDataStats/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_USZIP_BEN", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-USZIP-BEN/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_ConsumerSentimentIndex", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-ConsumerSentimentIndex/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_applemobilitytrends-2020-06-18_usonlyfix", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-applemobilitytrends-2020-06-18-usonlyfix/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_ZIPCODE_COUNTY_MSA_LKUP", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-ZIPCODE-COUNTY-MSA-LKUP/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_RETVSN_SITE_LOCATION_HIER", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-RETVSN-SITE-LOCATION-HIER/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_COVID19_DATAHUB", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-COVID19-DATAHUB/'));
create foreign table gs_tables_db."TRNG_COVID19_test_tweet_input", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/test-tweet-input/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Estimated_Inpatient_Covid", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Estimated-Inpatient-Covid/'));
create foreign table gs_tables_db."TRNG_COVID19_TEMP_FACT_Covid_Model_Data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TEMP-FACT-Covid-Model-Data/'));
create foreign table gs_tables_db."TRNG_COVID19_EF_ARIMA_PRED_NH", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/EF-ARIMA-PRED-NH/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_res_summary_detail", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-res-summary-detail/'));
create foreign table gs_tables_db."TRNG_COVID19_HousingLatLong", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/HousingLatLong/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Google_Search_Region", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Google-Search-Region/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_RES_SUMMARY_DETAIL_ORIG", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-RES-SUMMARY-DETAIL-ORIG/'));
create foreign table gs_tables_db."TRNG_COVID19_TEMP_DIM_ZIP_COUNTY_MSA_MAP_RAW", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TEMP-DIM-ZIP-COUNTY-MSA-MAP-RAW/'));
create foreign table gs_tables_db."TRNG_COVID19_readiness_tableau_sample", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/readiness-tableau-sample/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Hospitalization_all_locs_2020_06_13", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Hospitalization-all-locs-2020-06-13/'));
create foreign table gs_tables_db."TRNG_COVID19_STG_Labor_Stats", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/STG-Labor-Stats/'));
create foreign table gs_tables_db."TRNG_COVID19_TEMP_DIM_GEO_LOCATION_T", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/TEMP-DIM-GEO-LOCATION-T/'));
create foreign table gs_tables_db."TRNG_COVID19_stg_covid_datahub_state", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/stg-covid-datahub-state/'));
create foreign table gs_tables_db."TRNG_COVID19_DIM_RETVSN_DEVICE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-COVID19/DIM-RETVSN-DEVICE/'));
replace view TRNG_COVID19.2020_06_13/Hospitalization_all_locs.csv as locking row for access select
"V1"
,"location_name"
,"date"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"InvVen_mean"
,"InvVen_lower"
,"InvVen_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"bedover_mean"
,"bedover_lower"
,"bedover_upper"
,"icuover_mean"
,"icuover_lower"
,"icuover_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"deaths_mean_smoothed"
,"deaths_lower_smoothed"
,"deaths_upper_smoothed"
,"totdea_mean_smoothed"
,"totdea_lower_smoothed"
,"totdea_upper_smoothed"
,"mobility_data_type"
,"mobility_composite"
,"total_tests_data_type"
,"total_tests"
,"confirmed_infections"
,"est_infections_mean"
,"est_infections_lower"
,"est_infections_upper"
from gs_tables_db.TRNG_COVID19_2020_06_13/Hospitalization_all_locs.csv;
replace view TRNG_COVID19.2020_06_13/Summary_stats_all_locs.csv as locking row for access select
"location_name"
,"peak_bed_day_mean"
,"peak_bed_day_lower"
,"peak_bed_day_upper"
,"peak_icu_bed_day_mean"
,"peak_icu_bed_day_lower"
,"peak_icu_bed_day_upper"
,"peak_vent_day_mean"
,"peak_vent_day_lower"
,"peak_vent_day_upper"
,"all_bed_capacity"
,"icu_bed_capacity"
,"all_bed_usage"
,"icu_bed_usage"
,"available_all_nbr"
,"available_icu_nbr"
,"travel_limit_start_date"
,"travel_limit_end_date"
,"stay_home_start_date"
,"stay_home_end_date"
,"educational_fac_start_date"
,"educational_fac_end_date"
,"any_gathering_restrict_start_date"
,"any_gathering_restrict_end_date"
,"any_business_start_date"
,"any_business_end_date"
,"all_non-ess_business_start_date"
,"all_non-ess_business_end_date"
from gs_tables_db.TRNG_COVID19_2020_06_13/Summary_stats_all_locs.csv;
replace view TRNG_COVID19.ADLDEMO_COVID19.STG_RES_SUMMARY_DETAIL_ORIG as locking row for access select
"RESV_NUM"
,"ORIG_BOOK_DT"
,"PU_DT"
,"PU_AREA_NUM"
,"PU_LOC_NUM"
,"LOC_NM"
,"DSPY_CITY_NM"
,"CITY_CD"
,"PSTL_CD"
,"PU_ST_PROV_CD"
,"MAJ_CUST_DESC"
,"MKTG_CHNL_PARNT_DESC"
,"MAJ_PROD_DESC"
,"SUB_TOT_2_AMT"
from gs_tables_db.TRNG_COVID19_ADLDEMO_COVID19.STG_RES_SUMMARY_DETAIL_ORIG;
replace view TRNG_COVID19.applemobilitytrends-2020-06-01_noalt as locking row for access select
"column1"
from gs_tables_db.TRNG_COVID19_applemobilitytrends-2020-06-01_noalt;
replace view TRNG_COVID19.applemobilitytrends-2020-06-01_noaltpart2 as locking row for access select
"column1"
from gs_tables_db.TRNG_COVID19_applemobilitytrends-2020-06-01_noaltpart2;
replace view TRNG_COVID19.applemobilitytrends-2020-06-18 as locking row for access select
"column1"
from gs_tables_db.TRNG_COVID19_applemobilitytrends-2020-06-18;
replace view TRNG_COVID19.arima_county_case as locking row for access select
"county"
,"stepahead"
,"predict"
from gs_tables_db.TRNG_COVID19_arima_county_case;
replace view TRNG_COVID19.arima_county_death as locking row for access select
"county"
,"stepahead"
,"predict"
from gs_tables_db.TRNG_COVID19_arima_county_death;
replace view TRNG_COVID19.ben_test_t2 as locking row for access select
"id"
,"tokennum"
,"token"
from gs_tables_db.TRNG_COVID19_ben_test_t2;
replace view TRNG_COVID19.BL186018_test as locking row for access select
"FIPS"
,"State"
,"Area_Name"
,"CENSUS_2010_POP"
,"POP_ESTIMATE_2018"
from gs_tables_db.TRNG_COVID19_BL186018_test;
replace view TRNG_COVID19.BL186018_test_copy as locking row for access select
"FIPS"
,"State"
,"Area_Name"
,"CENSUS_2010_POP"
,"POP_ESTIMATE_2018"
from gs_tables_db.TRNG_COVID19_BL186018_test_copy;
replace view TRNG_COVID19.BL_STG_Global_Mobility_Report as locking row for access select
"country_region_code"
,"country_region"
,"sub_region_1"
,"sub_region_2"
,"iso_3166_2_code"
,"census_fips_code"
,"date"
,"retail_and_recreation_percent_change_from_baseline"
,"grocery_and_pharmacy_percent_change_from_baseline"
,"parks_percent_change_from_baseline"
,"transit_stations_percent_change_from_baseline"
,"workplaces_percent_change_from_baseline"
,"residential_percent_change_from_baseline"
,"label1"
from gs_tables_db.TRNG_COVID19_BL_STG_Global_Mobility_Report;
replace view TRNG_COVID19.CHINA_POP as locking row for access select
"GEO_NAME"
,"POPULATION"
,"DENSITY_KM2"
from gs_tables_db.TRNG_COVID19_CHINA_POP;
replace view TRNG_COVID19.county_dma as locking row for access select
"STATE"
,"COUNTY"
,"STATEFP"
,"CNTYFP"
,"CNTYTVHH"
,"DMAINDEX"
,"DMA"
from gs_tables_db.TRNG_COVID19_county_dma;
replace view TRNG_COVID19.data-3 as locking row for access select
"id"
,"date"
,"tests"
,"confirmed"
,"recovered"
,"deaths"
,"hosp"
,"vent"
,"icu"
,"population"
,"school_closing"
,"workplace_closing"
,"cancel_events"
,"gatherings_restrictions"
,"transport_closing"
,"stay_home_restrictions"
,"internal_movement_restrictions"
,"international_movement_restrictions"
,"information_campaigns"
,"testing_policy"
,"contact_tracing"
,"stringency_index"
,"iso_alpha_3"
,"iso_alpha_2"
,"iso_numeric"
,"currency"
,"administrative_area_level"
,"administrative_area_level_1"
,"administrative_area_level_2"
,"administrative_area_level_3"
,"latitude"
,"longitude"
,"key"
,"key_numeric"
,"key_google_mobility"
,"key_apple_mobility"
,"key_alpha_2"
from gs_tables_db.TRNG_COVID19_data-3;
replace view TRNG_COVID19.DATA_SIMUL as locking row for access select
"REPORT_DT"
,"COUNTRY"
,"NEW_CONFIRMED"
,"CONFIRMED"
from gs_tables_db.TRNG_COVID19_DATA_SIMUL;
replace view TRNG_COVID19.DIM_Airport_Location as locking row for access select
"Airport_Id"
,"Airport_Type"
,"Airport_Name"
,"elevation_ft"
,"continent"
,"iso_country"
,"iso_region"
,"municipality"
,"gps_code"
,"iata_code"
,"local_code"
,"coordinates"
from gs_tables_db.TRNG_COVID19_DIM_Airport_Location;
replace view TRNG_COVID19.Dim_Client_Metrics_ref as locking row for access select
"CLIENT_NBR"
,"CLIENT_NAME"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"DATA_SOURCE_NAME"
,"METRIC_NAME"
,"metric_val_ind_sel"
,"METRIC_NAME_disp"
,"METRIC_NAME_disp_short"
from gs_tables_db.TRNG_COVID19_Dim_Client_Metrics_ref;
replace view TRNG_COVID19.DIM_CountyDemographic as locking row for access select
"SHIPTO_ZIP_CODE"
,"COUNTY_NAME"
,"STATE_CODE"
,"POPULATION90"
,"POPULATIONCY"
,"POPCY0_4"
,"POPCY5_9"
,"POPCY10_14"
,"POPCY15_17"
,"POPCY18_20"
,"POPCY_21"
,"POPCY22_24"
,"POPCY25_29"
,"POPCY30_34"
,"POPCY35_39"
,"POPCY40_44"
,"HOUSEHOLD90"
,"HOUSE_HOLD_CURRENT_YEAR"
,"HSEHLD90_CHILDREN_MARRIED"
,"HOUSEHOLD_WITH_CHILD_MALE"
,"HOUSE_HOLD_WITH_CHILD_FEMALE"
,"POPULATION_WHITE"
,"POPULATION_BLACK"
,"POPULATION_ASIAN_PACIFIC"
,"POPULATION_AMERICAN_INDIAN"
,"POPULATION_HISPANIC"
,"CURRENT_YEAR_INCOME_AVERAGE_ES"
,"CURRENT_YEAR_INCOME_MEDIAN_EST"
,"CURRENT_YEAR_INCOME_PER_CAPITA"
,"CURRENT_YEAR_ENTERTAINMENT_EXP"
from gs_tables_db.TRNG_COVID19_DIM_CountyDemographic;
replace view TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF as locking row for access select
"CORP_ID"
,"CORP_NAME"
,"CORP_FUNCTION"
,"DASHBOARD_VERSION"
,"SEMANTIC_VIEW_NAME"
,"GEO_GRANULARITY"
,"DATE_GRANULARITY"
,"METRIC_NAME"
,"METRIC_DISPLAY_NAME"
,"METRIC_DISPLAY_SHORT_NAME"
,"METRIC_UOM"
,"DASH_VIZ_DISPLAY_NAME"
,"METRIC_VAL_IND_SEL"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"DATA_SOURCE_NAME"
from gs_tables_db.TRNG_COVID19_DIM_DASH_VIZ_METRIC_XREF;
replace view TRNG_COVID19.DIM_GEO_LOCATION_T as locking row for access select
"UID"
,"GEO_GRANULARITY"
,"Country_code"
,"iso3"
,"code3"
,"FIPS"
,"County"
,"County_long"
,"STATE_NAME"
,"STATE_CODE"
,"COUNTRY_NAME"
,"Lat"
,"Lon"
,"Combined_Key"
,"Population"
from gs_tables_db.TRNG_COVID19_DIM_GEO_LOCATION_T;
replace view TRNG_COVID19.DIM_GEO_LOCATION_T2 as locking row for access select
"UID"
,"GEO_GRANULARITY"
,"COUNTRY_CODE"
,"ISO3"
,"CODE3"
,"FIPS"
,"COUNTY"
,"COUNTY_LONG"
,"STATE_NAME"
,"STATE_CODE"
,"COUNTRY_NAME"
,"LAT"
,"LON"
,"COMBINED_KEY"
,"POPULATION"
from gs_tables_db.TRNG_COVID19_DIM_GEO_LOCATION_T2;
replace view TRNG_COVID19.DIM_METRICS_REF as locking row for access select
"DASHBOARD_VERSION"
,"DASHBOARD_DATA_SOURCE_NAME"
,"GEO_GRANULARITY"
,"DASH_METRIC_NAME_DISP"
,"DASH_METRIC_NAME_DISP_SHORT"
,"DASH_METRIC_NAME_DISP_SHORT2"
,"METRIC_TYPE"
,"METRIC_VAL_IND_SEL"
,"METRIC_NAME"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"DATA_SOURCE_NAME"
from gs_tables_db.TRNG_COVID19_DIM_METRICS_REF;
replace view TRNG_COVID19.DIM_People_location as locking row for access select
"CLient_nbr"
,"Client_name"
,"Site_Id"
,"Site_Type"
,"Address"
,"City"
,"State"
,"Zipcode"
,"Region"
,"Country_cd"
,"Nbr_at_location"
,"People_type"
from gs_tables_db.TRNG_COVID19_DIM_People_location;
replace view TRNG_COVID19.DIM_RETVSN_DEVICE as locking row for access select
"DEVICE_KEY"
,"DEVICE_TYPE"
,"DEVICE_ID"
,"DEVICE_NAME"
,"DEVICE_SITE_LOC_HIER_KEY"
,"DEVICE_SITE_LOC_KEY"
,"DEVICE_SITE_LOC_HIER_TYPE"
,"DEVICE_SITE_MAP_KEY"
,"DEVICE_MAKE_MODEL"
,"DEVICE_COVERAGE"
,"DEVICE_LOC_X"
,"DEVICE_LOC_Y"
,"DATA_SOURCE_NAME"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_DIM_RETVSN_DEVICE;
replace view TRNG_COVID19.DIM_RETVSN_DEVICE_SITE_EVENT_XREF as locking row for access select
"DEVICE_KEY"
,"DEVICE_TYPE"
,"SITE_LOC_KEY"
,"SITE_LOC_TYPE"
,"SITE_LOC_HIER_KEY"
,"SITE_LOC_HIER_TYPE"
,"EVENT_CATEGORY"
,"EVENT_NAME"
,"DATA_SOURCE_NAME"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_DIM_RETVSN_DEVICE_SITE_EVENT_XREF;
replace view TRNG_COVID19.DIM_RETVSN_SITE_HIER_OCCUPANCY as locking row for access select
"SITE_LOC_HIER_KEY"
,"SITE_LOC_KEY"
,"SITE_LOC_HIER_TYPE"
,"OCCUPANCY_TYPE"
,"OCCUPANCY_COUNT"
,"EFF_START_DATE"
,"EFF_END_DATE"
,"DATA_SOURCE_NAME"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_DIM_RETVSN_SITE_HIER_OCCUPANCY;
replace view TRNG_COVID19.DIM_RETVSN_SITE_LOCATION as locking row for access select
"SITE_LOC_KEY"
,"SITE_LOC_ID"
,"SITE_LOC_TYPE"
,"SITE_GEO_KEY"
,"SITE_POSTAL_CODE"
,"SITE_STREET_NAME"
,"SITE_CITY_NAME"
,"SITE_COUNTY"
,"SITE_STATE_NAME"
,"SITE_COUNRTY_NAME"
,"SITE_STATUS"
,"DATA_SOURCE_NAME"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_DIM_RETVSN_SITE_LOCATION;
replace view TRNG_COVID19.DIM_RETVSN_SITE_LOCATION_HIER as locking row for access select
"SITE_LOC_HIER_KEY"
,"SITE_LOC_KEY"
,"SITE_LOC_HIER_TYPE"
,"SITE_MAP_KEY"
,"STATION_ID"
,"STATION_NAME"
,"ZONE_ID"
,"ZONE_NAME"
,"FLOOR_ID"
,"FLOOR_NAME"
,"BUILDING_ID"
,"BUILDING_NAME"
,"DATA_SOURCE_NAME"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_DIM_RETVSN_SITE_LOCATION_HIER;
replace view TRNG_COVID19.DIM_RETVSN_SITE_POLICY as locking row for access select
"SITE_LOC_KEY"
,"SITE_LOC_TYPE"
,"SITE_LOC_HIER_KEY"
,"SITE_LOC_HIER_TYPE"
,"POLICY_TYPE"
,"POLICY_DESC"
,"POLICY_ENFORCED_FLAG"
,"EFF_START_DT"
,"EFF_START_END"
,"DATA_SOURCE_NAME"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_DIM_RETVSN_SITE_POLICY;
replace view TRNG_COVID19.DIM_Site_addresses as locking row for access select
"CLient_nbr"
,"Client_name"
,"Site_Id"
,"Site_Type"
,"Address"
,"City"
,"State"
,"Zipcode"
,"Region"
,"Country_cd"
,"FTE_HC_at_Location"
,"Contingent_HC_at_Location"
,"Number_of_Desks"
,"Average_Attendance"
,"Security_Type"
from gs_tables_db.TRNG_COVID19_DIM_Site_addresses;
replace view TRNG_COVID19.DIM_StatesLKUP as locking row for access select
"STATE_NUM"
,"STATE_NAME"
,"STATE_CD"
from gs_tables_db.TRNG_COVID19_DIM_StatesLKUP;
replace view TRNG_COVID19.DIM_Theatres as locking row for access select
"theatre_id"
,"short_name_theatre"
,"theatre_description"
,"address_1"
,"address_2"
,"city"
,"state_id"
,"state"
,"zip_code"
,"country_id"
,"country"
,"latitude"
,"longitude"
,"active"
,"theatre_type_id"
,"theatre_type"
,"circuit_id"
,"booker_circuit"
,"circuit_description"
,"division_id"
,"division_name"
,"subdivision_id"
,"subdivision_name"
,"dmagroup_id"
,"dmagroup_name"
,"dma_id"
,"dma"
,"area_id"
,"area_name"
,"zone_id"
,"zone_name"
,"area_zone"
,"competitive_zone_flag"
,"theatre_rank"
from gs_tables_db.TRNG_COVID19_DIM_Theatres;
replace view TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP as locking row for access select
"ZIPCODE"
,"STATE_NAME"
,"COUNTY_FIPS"
,"COUNTY_NAME"
,"MSA_NAME"
from gs_tables_db.TRNG_COVID19_DIM_ZIPCODE_COUNTY_MSA_LKUP;
replace view TRNG_COVID19.DIM_ZIP_COUNTY_MSA_MAP_RAW as locking row for access select
"ZIPCODE"
,"COUNTY_FIPS"
,"COUNTY_RES_RATIO"
,"COUNTY_BUS_RATIO"
,"COUNTY_OTH_RATIO"
,"COUNTY_TOT_RATIO"
,"TOP_ZIP_FLAG"
,"SPLIT_COUNTY_CNT"
,"TOP_COUNTY_FLAG"
,"COUNTY_NAME"
,"CBSA_CODE"
,"CBSA_NAME"
,"MSA_NAME"
,"STATE_NAME"
from gs_tables_db.TRNG_COVID19_DIM_ZIP_COUNTY_MSA_MAP_RAW;
replace view TRNG_COVID19.DIM_ZIP_COUNTY_MSA_MAP_RAW_Z as locking row for access select
"ZIPCODE"
,"COUNTY_FIPS"
,"COUNTY_RES_RATIO"
,"COUNTY_BUS_RATIO"
,"COUNTY_OTH_RATIO"
,"COUNTY_TOT_RATIO"
,"TOP_ZIP_FLAG"
,"SPLIT_COUNTY_CNT"
,"TOP_COUNTY_FLAG"
,"COUNTY_NAME"
,"CBSA_CODE"
,"CBSA_NAME"
,"MSA_NAME"
,"STATE_NAME"
from gs_tables_db.TRNG_COVID19_DIM_ZIP_COUNTY_MSA_MAP_RAW_Z;
replace view TRNG_COVID19.EF_ARIMA_PRED as locking row for access select
"subdomain_1_name"
,"stepahead"
,"predict"
from gs_tables_db.TRNG_COVID19_EF_ARIMA_PRED;
replace view TRNG_COVID19.EF_ARIMA_PRED_NH as locking row for access select
"subdomain_1_name"
,"stepahead"
,"predict"
from gs_tables_db.TRNG_COVID19_EF_ARIMA_PRED_NH;
replace view TRNG_COVID19.EF_ARIMA_PRED_NH1 as locking row for access select
"subdomain_1_name"
,"stepahead"
,"predict"
from gs_tables_db.TRNG_COVID19_EF_ARIMA_PRED_NH1;
replace view TRNG_COVID19.EF_ARIMA_PRED_NH_trial as locking row for access select
"subdomain_1_name"
,"stepahead"
,"predict"
from gs_tables_db.TRNG_COVID19_EF_ARIMA_PRED_NH_trial;
replace view TRNG_COVID19.EF_ARIMA_PRED_trial as locking row for access select
"subdomain_1_name"
,"stepahead"
,"predict"
from gs_tables_db.TRNG_COVID19_EF_ARIMA_PRED_trial;
replace view TRNG_COVID19.ETL_Indicator_Proj_Audit as locking row for access select
"Process_Name"
,"Table_Type"
,"TableName"
,"Records_Processed"
,"Process_Dttm"
from gs_tables_db.TRNG_COVID19_ETL_Indicator_Proj_Audit;
replace view TRNG_COVID19.ETL_Proc_Error_Logs as locking row for access select
"Error_log_id"
,"Sql_Code"
,"Logged_Time"
,"Sql_State"
,"Error_Text"
,"Procedure_Name"
from gs_tables_db.TRNG_COVID19_ETL_Proc_Error_Logs;
replace view TRNG_COVID19.FACT_Covid19Counties as locking row for access select
"date"
,"county"
,"state"
,"fips"
,"cases"
,"deaths"
from gs_tables_db.TRNG_COVID19_FACT_Covid19Counties;
replace view TRNG_COVID19.FACT_COVID19_DATAHUB as locking row for access select
"DATE_KEY"
,"GEO_KEY"
,"TESTCNT"
,"CONFIRMED_CNT"
,"RECOVERED_CNT"
,"DEATHS_CNT"
,"HOSPITALIZED_CNT"
,"ON_VENTILATOR_CNT"
,"IN_ICU_CNT"
,"SEVERE_CASE_CNT"
,"POPULATION"
,"SCHOOL_CLOSING"
,"WORKPLACE_CLOSING"
,"CANCEL_EVENTS"
,"GATHERINGS_RESTRICTIONS"
,"TRANSPORT_CLOSING"
,"STAY_HOME_RESTRICTIONS"
,"INTERNAL_MOVEMENT_RESTRICTIONS"
,"INTERNATIONAL_MOVEMENT_RESTRICTIONS"
,"INFORMATION_CAMPAIGNS"
,"TESTING_POLICY"
,"CONTACT_TRACING"
,"STRINGENCY_INDEX"
,"KEY_STR"
,"KEY_NUMERIC"
,"KEY_GOOGLE_MOBILITY"
,"KEY_APPLE_MOBILITY"
,"KEY_ALPHA_2"
,"REC_INS_TS"
from gs_tables_db.TRNG_COVID19_FACT_COVID19_DATAHUB;
replace view TRNG_COVID19.FACT_COVID19_DATAHUB_STATE as locking row for access select
"DATE_KEY"
,"GEO_KEY"
,"TESTED_CNT"
,"CONFIRMED_CNT"
,"RECOVERED_CNT"
,"DEATH_CNT"
,"HOSPITALIZED_CNT"
,"ON_VENTILATOR_CNT"
,"IN_ICU_CNT"
,"SEVERE_CASE_CNT"
,"POPULATION"
,"SCHOOL_CLOSING"
,"WORKPLACE_CLOSING"
,"CANCEL_EVENTS"
,"GATHERINGS_RESTRICTIONS"
,"TRANSPORT_CLOSING"
,"STAY_HOME_RESTRICTIONS"
,"INTERNAL_MOVEMENT_RESTRICTIONS"
,"INTERNATIONAL_MOVEMENT_RESTRICTIONS"
,"INFORMATION_CAMPAIGNS"
,"TESTING_POLICY"
,"CONTACT_TRACING"
,"STRINGENCY_INDEX"
,"KEY_STR"
,"KEY_NUMERIC"
,"KEY_GOOGLE_MOBILITY"
,"KEY_APPLE_MOBILITY"
,"KEY_ALPHA_2"
,"REC_INS_TS"
from gs_tables_db.TRNG_COVID19_FACT_COVID19_DATAHUB_STATE;
replace view TRNG_COVID19.FACT_Covid_Model_Data as locking row for access select
"MODEL_KEY"
,"DATE_KEY"
,"DATE_GRANULARITY"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"MODELED_DATE"
,"MODEL_VERSION"
,"location_name"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"deaths_mean_smoothed"
,"deaths_lower_smoothed"
,"deaths_upper_smoothed"
,"totdea_mean_smoothed"
,"totdea_lower_smoothed"
,"totdea_upper_smoothed"
,"mobility_data_type"
,"mobility_composite"
,"total_tests_data_type"
,"total_tests"
,"confirmed_infections"
,"est_infections_mean"
,"est_infections_lower"
,"est_infections_upper"
,"REC_INS_TS"
,"REC_UPD_TS"
,"Path_Update_Val"
from gs_tables_db.TRNG_COVID19_FACT_Covid_Model_Data;
replace view TRNG_COVID19.FACT_Covid_Model_Data_BKP_21_05_2021 as locking row for access select
"MODEL_KEY"
,"DATE_KEY"
,"DATE_GRANULARITY"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"MODELED_DATE"
,"MODEL_VERSION"
,"location_name"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"InvVen_mean"
,"InvVen_lower"
,"InvVen_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"bedover_mean"
,"bedover_lower"
,"bedover_upper"
,"icuover_mean"
,"icuover_lower"
,"icuover_upper"
,"deaths_mean_smoothed"
,"deaths_lower_smoothed"
,"deaths_upper_smoothed"
,"totdea_mean_smoothed"
,"totdea_lower_smoothed"
,"totdea_upper_smoothed"
,"mobility_data_type"
,"mobility_composite"
,"total_tests_data_type"
,"total_tests"
,"confirmed_infections"
,"est_infections_mean"
,"est_infections_lower"
,"est_infections_upper"
,"REC_INS_TS"
,"REC_UPD_TS"
,"Path_Update_Val"
from gs_tables_db.TRNG_COVID19_FACT_Covid_Model_Data_BKP_21_05_2021;
replace view TRNG_COVID19.FACT_Covid_Model_Data_BKUP as locking row for access select
"MODEL_KEY"
,"DATE_KEY"
,"DATE_GRANULARITY"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"MODELED_DATE"
,"MODEL_VERSION"
,"location_name"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"InvVen_mean"
,"InvVen_lower"
,"InvVen_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"bedover_mean"
,"bedover_lower"
,"bedover_upper"
,"icuover_mean"
,"icuover_lower"
,"icuover_upper"
,"deaths_mean_smoothed"
,"deaths_lower_smoothed"
,"deaths_upper_smoothed"
,"totdea_mean_smoothed"
,"totdea_lower_smoothed"
,"totdea_upper_smoothed"
,"mobility_data_type"
,"mobility_composite"
,"total_tests_data_type"
,"total_tests"
,"confirmed_infections"
,"est_infections_mean"
,"est_infections_lower"
,"est_infections_upper"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_FACT_Covid_Model_Data_BKUP;
replace view TRNG_COVID19.FACT_COVID_Model_data_bkup2 as locking row for access select
"MODEL_KEY"
,"DATE_KEY"
,"DATE_GRANULARITY"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"MODELED_DATE"
,"MODEL_VERSION"
,"location_name"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"InvVen_mean"
,"InvVen_lower"
,"InvVen_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"bedover_mean"
,"bedover_lower"
,"bedover_upper"
,"icuover_mean"
,"icuover_lower"
,"icuover_upper"
,"deaths_mean_smoothed"
,"deaths_lower_smoothed"
,"deaths_upper_smoothed"
,"totdea_mean_smoothed"
,"totdea_lower_smoothed"
,"totdea_upper_smoothed"
,"mobility_data_type"
,"mobility_composite"
,"total_tests_data_type"
,"total_tests"
,"confirmed_infections"
,"est_infections_mean"
,"est_infections_lower"
,"est_infections_upper"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_FACT_COVID_Model_data_bkup2;
replace view TRNG_COVID19.FACT_Covid_Model_Data_bkup3 as locking row for access select
"MODEL_KEY"
,"DATE_KEY"
,"DATE_GRANULARITY"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"MODELED_DATE"
,"MODEL_VERSION"
,"location_name"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"InvVen_mean"
,"InvVen_lower"
,"InvVen_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"bedover_mean"
,"bedover_lower"
,"bedover_upper"
,"icuover_mean"
,"icuover_lower"
,"icuover_upper"
,"deaths_mean_smoothed"
,"deaths_lower_smoothed"
,"deaths_upper_smoothed"
,"totdea_mean_smoothed"
,"totdea_lower_smoothed"
,"totdea_upper_smoothed"
,"mobility_data_type"
,"mobility_composite"
,"total_tests_data_type"
,"total_tests"
,"confirmed_infections"
,"est_infections_mean"
,"est_infections_lower"
,"est_infections_upper"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_FACT_Covid_Model_Data_bkup3;
replace view TRNG_COVID19.FACT_Covid_Model_Data_Sum_BKP_21_05_2021 as locking row for access select
"DATE_KEY"
,"DATE_GRANULARITY"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"PEAK_BED_DAY_MEAN"
,"PEAK_BED_DAY_LOWER"
,"PEAK_BED_DAY_UPPER"
,"PEAK_ICU_BED_DAY_MEAN"
,"PEAK_ICU_BED_DAY_LOWER"
,"PEAK_ICU_BED_DAY_UPPER"
,"PEAK_VENT_DAY_MEAN"
,"PEAK_VENT_DAY_LOWER"
,"PEAK_VENT_DAY_UPPER"
,"ALL_BED_CAPACITY"
,"ICU_BED_CAPACITY"
,"ALL_BED_USAGE"
,"ICU_BED_USAGE"
,"AVAILABLE_ALL_NBR"
,"AVAILABLE_ICU_NBR"
,"TRAVEL_LIMIT_START_DATE"
,"TRAVEL_LIMIT_END_DATE"
,"STAY_HOME_START_DATE"
,"STAY_HOME_END_DATE"
,"EDUCATIONAL_FAC_START_DATE"
,"EDUCATIONAL_FAC_END_DATE"
,"ANY_GATHERING_RESTRICT_START_DATE"
,"ANY_GATHERING_RESTRICT_END_DATE"
,"ANY_BUSINESS_START_DATE"
,"ANY_BUSINESS_END_DATE"
,"ALL_NON_ESS_BUSINESS_START_DATE"
,"ALL_NON_ESS_BUSINESS_END_DATE"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_FACT_Covid_Model_Data_Sum_BKP_21_05_2021;
replace view TRNG_COVID19.FACT_Covid_Model_Score_M as locking row for access select
"calendar_date"
,"GEO_KEY"
,"day_of_year"
,"GEO_GRANULARITY"
,"location_name"
,"metric_name"
,"CorrelationFactor"
from gs_tables_db.TRNG_COVID19_FACT_Covid_Model_Score_M;
replace view TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_delete_this_one_2 as locking row for access select
"INDICATOR_KEY"
,"DATE_KEY"
,"DATE_GRANULARITY"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"METRIC_NAME"
,"METRIC_VALUE"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_FACT_INDICATOR_DASHBOARD_T2_delete_this_one_2;
replace view TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P as locking row for access select
"INDICATOR_KEY"
,"DATE_KEY"
,"DATE_GRANULARITY"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"METRIC_NAME"
,"METRIC_VALUE"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_FACT_INDICATOR_DASHBOARD_T2_P;
replace view TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P2 as locking row for access select
"INDICATOR_KEY"
,"DATE_KEY"
,"DATE_GRANULARITY"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"METRIC_NAME"
,"METRIC_VALUE"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_FACT_INDICATOR_DASHBOARD_T2_P2;
replace view TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P_backup as locking row for access select
"INDICATOR_KEY"
,"DATE_KEY"
,"DATE_GRANULARITY"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"METRIC_NAME"
,"METRIC_VALUE"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_FACT_INDICATOR_DASHBOARD_T2_P_backup;
replace view TRNG_COVID19.FACT_INDICATOR_DASHBOARD_TEST as locking row for access select
"INDICATOR_KEY"
,"DATE_KEY"
,"DATE_GRANULARITY"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"METRIC_NAME"
,"METRIC_VALUE"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_FACT_INDICATOR_DASHBOARD_TEST;
replace view TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T_to_delete as locking row for access select
"INDICATOR_KEY"
,"DATE_KEY"
,"DATE_GRANULARITY"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"METRIC_NAME"
,"METRIC_VALUE"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_FACT_INDICATOR_DASHBOARD_T_to_delete;
replace view TRNG_COVID19.FACT_TSATravel as locking row for access select
"Travel_Date"
,"TravelThroughPut"
,"TravelThroughPutLastYear"
from gs_tables_db.TRNG_COVID19_FACT_TSATravel;
replace view TRNG_COVID19.FACT_Word_Cloud_Tweet as locking row for access select
"DATE_KEY"
,"TERM"
,"OCCURANCES"
from gs_tables_db.TRNG_COVID19_FACT_Word_Cloud_Tweet;
replace view TRNG_COVID19.Fuel-Consumption as locking row for access select
"Date"
,"WRPUPUS2"
,"WGFUPUS2"
,"WKJUPUS2"
,"WDIUPUS2"
,"WREUPUS2"
,"WPRUP_NUS_2"
,"WWOUP_NUS_2"
,"label1"
from gs_tables_db.TRNG_COVID19_Fuel-Consumption;
replace view TRNG_COVID19.F_IND_DASH_GOOGLE_TRENDS as locking row for access select
"DATE_KEY"
,"TREND_NAME"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
,"SNAPSHOT_DATE"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_F_IND_DASH_GOOGLE_TRENDS;
replace view TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT as locking row for access select
"SNAPSHOT_DATE"
,"SNAPSHOT_WEEK"
,"CURR_PREV_FLAG"
,"CAL_DAY_OF_WEEK"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"COUNTY"
,"STATE_CODE"
,"STATE_NAME"
,"COUNTRY_NAME"
,"COUNTY_POPULATION"
,"DATE_KEY"
,"CASES_TODATE"
,"NEW_CASES"
,"DEATHS_TODATE"
,"NEW_DEATHS"
,"COUNTY_POP_RNK"
,"CASES_TODATE_7MAVG"
,"NEW_CASES_7MAVG"
,"DEATHS_TODATE_7MAVG"
,"NEW_DEATHS_7MAVG"
from gs_tables_db.TRNG_COVID19_F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT;
replace view TRNG_COVID19.f_ind_dash_timeline_to_safety as locking row for access select
"prev_bucket"
,"prev_est_start"
,"prev_est_date_end"
,"prev_snapshot_date"
,"mobility_composite_prev"
,"NEW_ENTRY"
,"geo_key"
,"STATE_NAME"
,"STATE_CODE"
,"Population"
,"mobility_composite"
,"date_delta"
,"Est_Date_start"
,"Est_Date_end"
,"Bucket"
,"seq_week_nbr"
,"SNAPSHOT_DATE"
,"SNAPSHOT_WEEK"
,"CAL_WEEK_YEAR"
,"WEEK_START_DATE"
,"WEEK_END_DATE"
,"cal_day_sat"
,"day_of_year"
,"day_of_cal_1900"
from gs_tables_db.TRNG_COVID19_f_ind_dash_timeline_to_safety;
replace view TRNG_COVID19.F_RETVSN_SITE_DEVICE_EVENT_DETAIL as locking row for access select
"SITE_LOC_KEY"
,"SITE_LOC_TYPE"
,"SITE_LOC_HIER_KEY"
,"SITE_LOC_HIER_TYPE"
,"SITE_MAP_KEY"
,"SITE_STATUS"
,"DEVICE_KEY"
,"DEVICE_TYPE"
,"DEVICE_LOC_X"
,"DEVICE_LOC_Y"
,"EVENT_CATEGORY"
,"EVENT_NAME"
,"EVENT_DATE"
,"EVENT_TIMESTAMP"
,"METRIC_NAME"
,"METRIC_VAUE"
,"EVENT_LOC_X"
,"EVENT_LOC_Y"
,"EVENT_START_TS"
,"EVENT_END_TS"
,"EVENT_VIDEO_ID"
,"DATA_SOURCE_NAME"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_F_RETVSN_SITE_DEVICE_EVENT_DETAIL;
replace view TRNG_COVID19.GEO_LOOKUP as locking row for access select
"UID"
,"iso2"
,"iso3"
,"code3"
,"FIPS"
,"Admin2"
,"Province_State"
,"Country_Region"
,"Lat"
,"Lon"
,"Combined_Key"
,"Population"
from gs_tables_db.TRNG_COVID19_GEO_LOOKUP;
replace view TRNG_COVID19.gm_step1 as locking row for access select
"date_key"
,"country_region_code"
,"country_region"
,"sub_region_1"
,"sub_region_2"
,"METRIC_INDEX"
,"METRIC_NAME"
,"geo_granularity"
from gs_tables_db.TRNG_COVID19_gm_step1;
replace view TRNG_COVID19.gm_step2 as locking row for access select
"date_key"
,"date_granularity"
,"geo_granularity"
,"geo_key"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"METRIC_NAME"
,"METRIC_VALUE"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_gm_step2;
replace view TRNG_COVID19.google_mobility_20200612 as locking row for access select
"logdate"
,""geo_granularity""
,""COUNTRY_NAME""
,""STATE_NAME""
,""COUNTY_NAME""
,""LOCATION_TYPE""
,""METRIC_NAME""
,"METRIC_VALUE"
,"METRIC_INDEX"
,""DATA_SOURCE_NAME""
,""DATA_SOURCE_DESC""
from gs_tables_db.TRNG_COVID19_google_mobility_20200612;
replace view TRNG_COVID19.google_mobility_20200616 as locking row for access select
"date_key"
,"geo_granularity"
,"COUNTRY_NAME"
,"STATE_NAME"
,"COUNTY_NAME"
,"LOCATION_TYPE"
,"METRIC_NAME"
,"METRIC_VALUE"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
from gs_tables_db.TRNG_COVID19_google_mobility_20200616;
replace view TRNG_COVID19.Hospital_select as locking row for access select
"X"
,"Y"
,"OBJECTID"
,"ID"
,"NAME"
,"ADDRESS"
,"CITY"
,"STATE"
,"ZIP"
,"ZIP4"
,"TELEPHONE"
,"STATUS"
,"POPULATION"
,"COUNTY"
,"COUNTYFIPS"
,"COUNTRY"
,"LATITUDE"
,"LONGITUDE"
,"SOURCEDATE"
,"VAL_METHOD"
,"VAL_DATE"
,"TTL_STAFF"
,"BEDS"
,"TRAUMA"
,"HELIPAD"
from gs_tables_db.TRNG_COVID19_Hospital_select;
replace view TRNG_COVID19.HousingLatLong as locking row for access select
"longitude"
,"latitude"
,"housing_median_age"
,"total_rooms"
,"total_bedrooms"
,"population"
,"households"
,"median_income"
,"median_house_value"
,"ocean_proximity"
from gs_tables_db.TRNG_COVID19_HousingLatLong;
replace view TRNG_COVID19.MG_Google_TEST as locking row for access select
"Metric_value"
,"isPartial"
,"Trend_Name"
,"Metric_Name"
,"current_dttm"
,"Keyword_List"
,"Cat_CD"
,"Type"
,"date"
from gs_tables_db.TRNG_COVID19_MG_Google_TEST;
replace view TRNG_COVID19.Nursing_Homes as locking row for access select
"X"
,"Y"
,"OBJECTID"
,"ID"
,"NAME"
,"ADDRESS"
,"CITY"
,"STATE"
,"ZIP"
,"ZIP4"
,"TELEPHONE"
,"TYPE"
,"STATUS"
,"POPULATION"
,"COUNTY"
,"COUNTYFIPS"
,"COUNTRY"
,"LATITUDE"
,"LONGITUDE"
,"NAICS_CODE"
,"NAICS_DESC"
,"SOURCE"
,"SOURCEDATE"
,"VAL_METHOD"
,"VAL_DATE"
,"WEBSITE"
,"TOT_RES"
,"TOT_STAFF"
,"BEDS"
,"EXCESS_BED"
,"OWNERSHIP"
,"MEDICAIDID"
,"MEDICAREID"
,"STATE_LIC"
,"SOURCETYPE"
from gs_tables_db.TRNG_COVID19_Nursing_Homes;
replace view TRNG_COVID19.pb250043subset as locking row for access select
"SeriesCode"
,"SeriesLabel"
,"TimePeriod"
,"MeasureValue"
from gs_tables_db.TRNG_COVID19_pb250043subset;
replace view TRNG_COVID19.pb250043subseta as locking row for access select
"SeriesCode"
,"SeriesLabel"
,"TimePeriod"
,"MeasureValue"
from gs_tables_db.TRNG_COVID19_pb250043subseta;
replace view TRNG_COVID19.pb250043_natUnemploy as locking row for access select
"SeriesCode"
,"Description"
,"Period"
,"Value"
from gs_tables_db.TRNG_COVID19_pb250043_natUnemploy;
replace view TRNG_COVID19.pb250043_nipadata as locking row for access select
"SeriesCode"
,"Period"
,"Value"
from gs_tables_db.TRNG_COVID19_pb250043_nipadata;
replace view TRNG_COVID19.pb250043_SeriesRegister as locking row for access select
"SeriesCode"
,"SeriesLabel"
,"MetricName"
,"CalculationType"
,"DefaultScale"
,"TableIdLineNo"
,"SeriesCodeParents"
from gs_tables_db.TRNG_COVID19_pb250043_SeriesRegister;
replace view TRNG_COVID19.PopulationEstimates as locking row for access select
"FIPS"
,"State"
,"Area_Name"
,"CENSUS_2010_POP"
,"POP_ESTIMATE_2018"
from gs_tables_db.TRNG_COVID19_PopulationEstimates;
replace view TRNG_COVID19.readiness_tableau_sample as locking row for access select
"ï»¿Measure Names"
,"MetropolitanÂ€statisticalÂ€area"
,"Overall Score Sort"
,"Measure Values"
from gs_tables_db.TRNG_COVID19_readiness_tableau_sample;
replace view TRNG_COVID19.Ref_covid_Constants as locking row for access select
"Constant_name"
,"Constant_Char"
,"Constant_number"
,"Constant_DESC"
from gs_tables_db.TRNG_COVID19_Ref_covid_Constants;
replace view TRNG_COVID19.SRTG_Global_Mobility_Report as locking row for access select
"country_region_code"
,"country_region"
,"sub_region_1"
,"sub_region_2"
,"iso_3166_2_code"
,"census_fips_code"
,"date_key"
,"retail_and_recreation_percent_change_from_baseline"
,"grocery_and_pharmacy_percent_change_from_baseline"
,"parks_percent_change_from_baseline"
,"transit_stations_percent_change_from_baseline"
,"workplaces_percent_change_from_baseline"
,"residential_percent_change_from_baseline"
from gs_tables_db.TRNG_COVID19_SRTG_Global_Mobility_Report;
replace view TRNG_COVID19.states_lookup as locking row for access select
"State"
,"Abbreviation"
from gs_tables_db.TRNG_COVID19_states_lookup;
replace view TRNG_COVID19.STATE_POP as locking row for access select
"State"
,"Population"
from gs_tables_db.TRNG_COVID19_STATE_POP;
replace view TRNG_COVID19.step1 as locking row for access select
"date_key"
,"country_region_code"
,"country_region"
,"sub_region_1"
,"sub_region_2"
,"METRIC_INDEX"
,"METRIC_NAME"
,"geo_granularity"
from gs_tables_db.TRNG_COVID19_step1;
replace view TRNG_COVID19.STG_Airport_Location as locking row for access select
"ident"
,"type"
,"name"
,"elevation_ft"
,"continent"
,"iso_country"
,"iso_region"
,"municipality"
,"gps_code"
,"iata_code"
,"local_code"
,"coordinates"
from gs_tables_db.TRNG_COVID19_STG_Airport_Location;
replace view TRNG_COVID19.STG_applemobilitytrends-2020-06-01_noalt as locking row for access select
"geo_type"
,"region"
,"transportation_type"
,"Alternative_name"
,"sub-region"
,"country"
,"1/13/2020"
,"1/14/2020"
,"1/15/2020"
,"1/16/2020"
,"1/17/2020"
,"1/18/2020"
,"1/19/2020"
,"1/20/2020"
,"1/21/2020"
,"1/22/2020"
,"1/23/2020"
,"1/24/2020"
,"1/25/2020"
,"1/26/2020"
,"1/27/2020"
,"1/28/2020"
,"1/29/2020"
,"1/30/2020"
,"1/31/2020"
,"2/1/2020"
,"2/2/2020"
,"2/3/2020"
,"2/4/2020"
,"2/5/2020"
,"2/6/2020"
,"2/7/2020"
,"2/8/2020"
,"2/9/2020"
,"2/10/2020"
,"2/11/2020"
,"2/12/2020"
,"2/13/2020"
,"2/14/2020"
,"2/15/2020"
,"2/16/2020"
,"2/17/2020"
,"2/18/2020"
,"2/19/2020"
,"2/20/2020"
,"2/21/2020"
,"2/22/2020"
,"2/23/2020"
,"2/24/2020"
,"2/25/2020"
,"2/26/2020"
,"2/27/2020"
,"2/28/2020"
,"2/29/2020"
,"3/1/2020"
,"3/2/2020"
,"3/3/2020"
,"3/4/2020"
,"3/5/2020"
,"3/6/2020"
,"3/7/2020"
,"3/8/2020"
,"3/9/2020"
,"3/10/2020"
,"3/11/2020"
,"3/12/2020"
,"3/13/2020"
,"3/14/2020"
,"3/15/2020"
,"3/16/2020"
,"3/17/2020"
,"3/18/2020"
,"3/19/2020"
,"3/20/2020"
,"3/21/2020"
,"3/22/2020"
,"3/23/2020"
,"3/24/2020"
,"3/25/2020"
,"3/26/2020"
,"3/27/2020"
,"3/28/2020"
,"3/29/2020"
,"3/30/2020"
,"3/31/2020"
,"4/1/2020"
,"4/2/2020"
,"4/3/2020"
,"4/4/2020"
,"4/5/2020"
,"4/6/2020"
,"4/7/2020"
,"4/8/2020"
,"4/9/2020"
,"4/10/2020"
,"4/11/2020"
,"4/12/2020"
,"4/13/2020"
,"4/14/2020"
,"4/15/2020"
,"4/16/2020"
,"4/17/2020"
,"4/18/2020"
,"4/19/2020"
,"4/20/2020"
,"4/21/2020"
,"4/22/2020"
,"4/23/2020"
,"4/24/2020"
,"4/25/2020"
,"4/26/2020"
,"4/27/2020"
,"4/28/2020"
,"4/29/2020"
,"4/30/2020"
,"5/1/2020"
,"5/2/2020"
,"5/3/2020"
,"5/4/2020"
,"5/5/2020"
,"5/6/2020"
,"5/7/2020"
,"5/8/2020"
,"5/9/2020"
,"5/10/2020"
,"5/11/2020"
,"5/12/2020"
,"5/13/2020"
,"5/14/2020"
,"5/15/2020"
,"5/16/2020"
,"5/17/2020"
,"5/18/2020"
,"5/19/2020"
,"5/20/2020"
,"5/21/2020"
,"5/22/2020"
,"5/23/2020"
,"5/24/2020"
,"5/25/2020"
,"5/26/2020"
,"5/27/2020"
,"5/28/2020"
,"5/29/2020"
,"5/30/2020"
,"5/31/2020"
,"6/1/2020"
from gs_tables_db.TRNG_COVID19_STG_applemobilitytrends-2020-06-01_noalt;
replace view TRNG_COVID19.STG_applemobilitytrends-2020-06-18v4 as locking row for access select
"column1"
from gs_tables_db.TRNG_COVID19_STG_applemobilitytrends-2020-06-18v4;
replace view TRNG_COVID19.STG_applemobilitytrends-2020-06-18_us as locking row for access select
"geo_type"
,"region"
,"transportation_type"
,"alternative_name"
,"sub-region"
,"country"
,"1/13/2020"
,"1/14/2020"
,"1/15/2020"
,"1/16/2020"
,"1/17/2020"
,"1/18/2020"
,"1/19/2020"
,"1/20/2020"
,"1/21/2020"
,"1/22/2020"
,"1/23/2020"
,"1/24/2020"
,"1/25/2020"
,"1/26/2020"
,"1/27/2020"
,"1/28/2020"
,"1/29/2020"
,"1/30/2020"
,"1/31/2020"
,"2/1/2020"
,"2/2/2020"
,"2/3/2020"
,"2/4/2020"
,"2/5/2020"
,"2/6/2020"
,"2/7/2020"
,"2/8/2020"
,"2/9/2020"
,"2/10/2020"
,"2/11/2020"
,"2/12/2020"
,"2/13/2020"
,"2/14/2020"
,"2/15/2020"
,"2/16/2020"
,"2/17/2020"
,"2/18/2020"
,"2/19/2020"
,"2/20/2020"
,"2/21/2020"
,"2/22/2020"
,"2/23/2020"
,"2/24/2020"
,"2/25/2020"
,"2/26/2020"
,"2/27/2020"
,"2/28/2020"
,"2/29/2020"
,"3/1/2020"
,"3/2/2020"
,"3/3/2020"
,"3/4/2020"
,"3/5/2020"
,"3/6/2020"
,"3/7/2020"
,"3/8/2020"
,"3/9/2020"
,"3/10/2020"
,"3/11/2020"
,"3/12/2020"
,"3/13/2020"
,"3/14/2020"
,"3/15/2020"
,"3/16/2020"
,"3/17/2020"
,"3/18/2020"
,"3/19/2020"
,"3/20/2020"
,"3/21/2020"
,"3/22/2020"
,"3/23/2020"
,"3/24/2020"
,"3/25/2020"
,"3/26/2020"
,"3/27/2020"
,"3/28/2020"
,"3/29/2020"
,"3/30/2020"
,"3/31/2020"
,"4/1/2020"
,"4/2/2020"
,"4/3/2020"
,"4/4/2020"
,"4/5/2020"
,"4/6/2020"
,"4/7/2020"
,"4/8/2020"
,"4/9/2020"
,"4/10/2020"
,"4/11/2020"
,"4/12/2020"
,"4/13/2020"
,"4/14/2020"
,"4/15/2020"
,"4/16/2020"
,"4/17/2020"
,"4/18/2020"
,"4/19/2020"
,"4/20/2020"
,"4/21/2020"
,"4/22/2020"
,"4/23/2020"
,"4/24/2020"
,"4/25/2020"
,"4/26/2020"
,"4/27/2020"
,"4/28/2020"
,"4/29/2020"
,"4/30/2020"
,"5/1/2020"
,"5/2/2020"
,"5/3/2020"
,"5/4/2020"
,"5/5/2020"
,"5/6/2020"
,"5/7/2020"
,"5/8/2020"
,"5/9/2020"
,"5/10/2020"
,"5/11/2020"
,"5/12/2020"
,"5/13/2020"
,"5/14/2020"
,"5/15/2020"
,"5/16/2020"
,"5/17/2020"
,"5/18/2020"
,"5/19/2020"
,"5/20/2020"
,"5/21/2020"
,"5/22/2020"
,"5/23/2020"
,"5/24/2020"
,"5/25/2020"
,"5/26/2020"
,"5/27/2020"
,"5/28/2020"
,"5/29/2020"
,"5/30/2020"
,"5/31/2020"
,"6/1/2020"
,"6/2/2020"
,"6/3/2020"
,"6/4/2020"
,"6/5/2020"
,"6/6/2020"
,"6/7/2020"
,"6/8/2020"
,"6/9/2020"
,"6/10/2020"
,"6/11/2020"
,"6/12/2020"
,"6/13/2020"
,"6/14/2020"
,"6/15/2020"
,"6/16/2020"
,"6/17/2020"
,"6/18/2020"
from gs_tables_db.TRNG_COVID19_STG_applemobilitytrends-2020-06-18_us;
replace view TRNG_COVID19.stg_applemobilitytrends-2020-06-18_usonly as locking row for access select
"cc1"
from gs_tables_db.TRNG_COVID19_stg_applemobilitytrends-2020-06-18_usonly;
replace view TRNG_COVID19.STG_applemobilitytrends-2020-06-18_usonlyfix as locking row for access select
"column1"
from gs_tables_db.TRNG_COVID19_STG_applemobilitytrends-2020-06-18_usonlyfix;
replace view TRNG_COVID19.stg_applemobilitytrends-2020-06-18_usonlyfix2 as locking row for access select
"column1"
from gs_tables_db.TRNG_COVID19_stg_applemobilitytrends-2020-06-18_usonlyfix2;
replace view TRNG_COVID19.stg_applemobilitytrends-2020-06-18_usv3 as locking row for access select
"geo_type"
,"region"
,"transportation_type"
,"alternative_name"
,"sub-region"
,"country"
,"1/13/20"
,"1/14/20"
,"1/15/20"
,"1/16/20"
,"1/17/20"
,"1/18/20"
,"1/19/20"
,"1/20/20"
,"1/21/20"
,"1/22/20"
,"1/23/20"
,"1/24/20"
,"1/25/20"
,"1/26/20"
,"1/27/20"
,"1/28/20"
,"1/29/20"
,"1/30/20"
,"1/31/20"
,"2/1/20"
,"2/2/20"
,"2/3/20"
,"2/4/20"
,"2/5/20"
,"2/6/20"
,"2/7/20"
,"2/8/20"
,"2/9/20"
,"2/10/20"
,"2/11/20"
,"2/12/20"
,"2/13/20"
,"2/14/20"
,"2/15/20"
,"2/16/20"
,"2/17/20"
,"2/18/20"
,"2/19/20"
,"2/20/20"
,"2/21/20"
,"2/22/20"
,"2/23/20"
,"2/24/20"
,"2/25/20"
,"2/26/20"
,"2/27/20"
,"2/28/20"
,"2/29/20"
,"3/1/20"
,"3/2/20"
,"3/3/20"
,"3/4/20"
,"3/5/20"
,"3/6/20"
,"3/7/20"
,"3/8/20"
,"3/9/20"
,"3/10/20"
,"3/11/20"
,"3/12/20"
,"3/13/20"
,"3/14/20"
,"3/15/20"
,"3/16/20"
,"3/17/20"
,"3/18/20"
,"3/19/20"
,"3/20/20"
,"3/21/20"
,"3/22/20"
,"3/23/20"
,"3/24/20"
,"3/25/20"
,"3/26/20"
,"3/27/20"
,"3/28/20"
,"3/29/20"
,"3/30/20"
,"3/31/20"
,"4/1/20"
,"4/2/20"
,"4/3/20"
,"4/4/20"
,"4/5/20"
,"4/6/20"
,"4/7/20"
,"4/8/20"
,"4/9/20"
,"4/10/20"
,"4/11/20"
,"4/12/20"
,"4/13/20"
,"4/14/20"
,"4/15/20"
,"4/16/20"
,"4/17/20"
,"4/18/20"
,"4/19/20"
,"4/20/20"
,"4/21/20"
,"4/22/20"
,"4/23/20"
,"4/24/20"
,"4/25/20"
,"4/26/20"
,"4/27/20"
,"4/28/20"
,"4/29/20"
,"4/30/20"
,"5/1/20"
,"5/2/20"
,"5/3/20"
,"5/4/20"
,"5/5/20"
,"5/6/20"
,"5/7/20"
,"5/8/20"
,"5/9/20"
,"5/10/20"
,"5/11/20"
,"5/12/20"
,"5/13/20"
,"5/14/20"
,"5/15/20"
,"5/16/20"
,"5/17/20"
,"5/18/20"
,"5/19/20"
,"5/20/20"
,"5/21/20"
,"5/22/20"
,"5/23/20"
,"5/24/20"
,"5/25/20"
,"5/26/20"
,"5/27/20"
,"5/28/20"
,"5/29/20"
,"5/30/20"
,"5/31/20"
,"6/1/20"
,"6/2/20"
,"6/3/20"
,"6/4/20"
,"6/5/20"
,"6/6/20"
,"6/7/20"
,"6/8/20"
,"6/9/20"
,"6/10/20"
,"6/11/20"
,"6/12/20"
,"6/13/20"
,"6/14/20"
,"6/15/20"
,"6/16/20"
,"6/17/20"
,"6/18/20"
from gs_tables_db.TRNG_COVID19_stg_applemobilitytrends-2020-06-18_usv3;
replace view TRNG_COVID19.stg_applemobilitytrends-2020-06-25 as locking row for access select
"geo_type"
,"region"
,"transportation_type"
,"alternative_name"
,"sub-region"
,"country"
,"2020-01-13"
,"2020-01-14"
,"2020-01-15"
,"2020-01-16"
,"2020-01-17"
,"2020-01-18"
,"2020-01-19"
,"2020-01-20"
,"2020-01-21"
,"2020-01-22"
,"2020-01-23"
,"2020-01-24"
,"2020-01-25"
,"2020-01-26"
,"2020-01-27"
,"2020-01-28"
,"2020-01-29"
,"2020-01-30"
,"2020-01-31"
,"2020-02-01"
,"2020-02-02"
,"2020-02-03"
,"2020-02-04"
,"2020-02-05"
,"2020-02-06"
,"2020-02-07"
,"2020-02-08"
,"2020-02-09"
,"2020-02-10"
,"2020-02-11"
,"2020-02-12"
,"2020-02-13"
,"2020-02-14"
,"2020-02-15"
,"2020-02-16"
,"2020-02-17"
,"2020-02-18"
,"2020-02-19"
,"2020-02-20"
,"2020-02-21"
,"2020-02-22"
,"2020-02-23"
,"2020-02-24"
,"2020-02-25"
,"2020-02-26"
,"2020-02-27"
,"2020-02-28"
,"2020-02-29"
,"2020-03-01"
,"2020-03-02"
,"2020-03-03"
,"2020-03-04"
,"2020-03-05"
,"2020-03-06"
,"2020-03-07"
,"2020-03-08"
,"2020-03-09"
,"2020-03-10"
,"2020-03-11"
,"2020-03-12"
,"2020-03-13"
,"2020-03-14"
,"2020-03-15"
,"2020-03-16"
,"2020-03-17"
,"2020-03-18"
,"2020-03-19"
,"2020-03-20"
,"2020-03-21"
,"2020-03-22"
,"2020-03-23"
,"2020-03-24"
,"2020-03-25"
,"2020-03-26"
,"2020-03-27"
,"2020-03-28"
,"2020-03-29"
,"2020-03-30"
,"2020-03-31"
,"2020-04-01"
,"2020-04-02"
,"2020-04-03"
,"2020-04-04"
,"2020-04-05"
,"2020-04-06"
,"2020-04-07"
,"2020-04-08"
,"2020-04-09"
,"2020-04-10"
,"2020-04-11"
,"2020-04-12"
,"2020-04-13"
,"2020-04-14"
,"2020-04-15"
,"2020-04-16"
,"2020-04-17"
,"2020-04-18"
,"2020-04-19"
,"2020-04-20"
,"2020-04-21"
,"2020-04-22"
,"2020-04-23"
,"2020-04-24"
,"2020-04-25"
,"2020-04-26"
,"2020-04-27"
,"2020-04-28"
,"2020-04-29"
,"2020-04-30"
,"2020-05-01"
,"2020-05-02"
,"2020-05-03"
,"2020-05-04"
,"2020-05-05"
,"2020-05-06"
,"2020-05-07"
,"2020-05-08"
,"2020-05-09"
,"2020-05-10"
,"2020-05-11"
,"2020-05-12"
,"2020-05-13"
,"2020-05-14"
,"2020-05-15"
,"2020-05-16"
,"2020-05-17"
,"2020-05-18"
,"2020-05-19"
,"2020-05-20"
,"2020-05-21"
,"2020-05-22"
,"2020-05-23"
,"2020-05-24"
,"2020-05-25"
,"2020-05-26"
,"2020-05-27"
,"2020-05-28"
,"2020-05-29"
,"2020-05-30"
,"2020-05-31"
,"2020-06-01"
,"2020-06-02"
,"2020-06-03"
,"2020-06-04"
,"2020-06-05"
,"2020-06-06"
,"2020-06-07"
,"2020-06-08"
,"2020-06-09"
,"2020-06-10"
,"2020-06-11"
,"2020-06-12"
,"2020-06-13"
,"2020-06-14"
,"2020-06-15"
,"2020-06-16"
,"2020-06-17"
,"2020-06-18"
,"2020-06-19"
,"2020-06-20"
,"2020-06-21"
,"2020-06-22"
,"2020-06-23"
,"2020-06-24"
,"2020-06-25"
from gs_tables_db.TRNG_COVID19_stg_applemobilitytrends-2020-06-25;
replace view TRNG_COVID19.STG_Apple_Mobility as locking row for access select
"MergedColumn"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Apple_Mobility;
replace view TRNG_COVID19.STG_apple_mobility_20200605 as locking row for access select
"DATE_KEY"
,"GEO_GRANULARITY"
,"COUNTRY_NAME"
,"STATE_NAME"
,"COUNTY_NAME"
,"CITY_NAME"
,"MOBILITY_TYPE"
,"METRIC_NAME"
,"METRIC_VALUE"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
from gs_tables_db.TRNG_COVID19_STG_apple_mobility_20200605;
replace view TRNG_COVID19.STG_apple_mobility_20200612 as locking row for access select
"DATE_KEY"
,"GEO_GRANULARITY"
,"COUNTRY_NAME"
,"STATE_NAME"
,"COUNTY_NAME"
,"CITY_NAME"
,"MOBILITY_TYPE"
,"METRIC_NAME"
,"METRIC_VALUE"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
from gs_tables_db.TRNG_COVID19_STG_apple_mobility_20200612;
replace view TRNG_COVID19.STG_apple_mobility_20200616 as locking row for access select
"DATE_KEY"
,"GEO_GRANULARITY"
,"COUNTRY_NAME"
,"STATE_NAME"
,"COUNTY_NAME"
,"CITY_NAME"
,"MOBILITY_TYPE"
,"METRIC_NAME"
,"METRIC_VALUE"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
from gs_tables_db.TRNG_COVID19_STG_apple_mobility_20200616;
replace view TRNG_COVID19.STG_BEAPersonalConsumption_2_4_5 as locking row for access select
"ROW_KEY"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"SUBDOMAIN_4_NAME"
,"PERIOD_MMM-YYYY"
,"METRIC_NAME"
,"METRIC_INDEX"
,"METRIC_VALUE"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
from gs_tables_db.TRNG_COVID19_STG_BEAPersonalConsumption_2_4_5;
replace view TRNG_COVID19.STG_BEA_Gov as locking row for access select
"Quarter"
,"Clothing_Footwear"
,"Durable_Goods"
,"Furnishings_Household"
,"Food_Services"
,"Food_Beverages"
,"Goods"
,"Gasoline_Energy"
,"Household_Expenditure"
,"Healthcare"
,"Housing_Utilities"
,"Financial_Services_Insurance"
,"Motor_Vehicles_Parts"
,"Nondurable_Goods"
,"Gross_Output_Nonprofit_Institutions"
,"Final_Consumption_Expenditures"
,"Receipts_Sales_Goods_Services"
,"Energy_Goods_Services"
,"Other_Durable_Goods"
,"Other_Services"
,"PCE"
,"Personal_Consumption"
,"Market_Based_PCE"
,"Market_Based_PCE_Ex_Food"
,"Recreation_Services"
,"Recreational_Goods_Vehicles"
,"Services"
,"Transportation_Services"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_BEA_Gov;
replace view TRNG_COVID19.STG_BEA_Gov_20305 as locking row for access select
"Quarter"
,"Clothing_Footwear"
,"Durable_Goods"
,"Furnishings_Household"
,"Food_Services"
,"Food_Beverages"
,"Goods"
,"Gasoline_Energy"
,"Household_Expenditure"
,"Healthcare"
,"Housing_Utilities"
,"Financial_Services_Insurance"
,"Motor_Vehicles_Parts"
,"Nondurable_Goods"
,"Gross_Output_Nonprofit_Institutions"
,"Final_Consumption_Expenditures"
,"Receipts_Sales_Goods_Services"
,"Energy_Goods_Services"
,"Other_Durable_Goods"
,"Other_Services"
,"PCE"
,"Personal_Consumption"
,"Market_Based_PCE"
,"Market_Based_PCE_Ex_Food"
,"Recreation_Services"
,"Recreational_Goods_Vehicles"
,"Services"
,"Transportation_Services"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_BEA_Gov_20305;
replace view TRNG_COVID19.STG_BEA_Gov_20405 as locking row for access select
"PeriodOf"
,"Accommodations"
,"Air transportation"
,"Alcoholic beverages purchased for off-premises consumption"
,"Household appliances"
,"Audio-video, photographic, and information processing equipment services"
,"Children_clothing"
,"Clothing and footwear"
,"Communication"
,"Dental services"
,"Durable goods"
,"Educational books"
,"Electricity"
,"Electricity and gas"
,"Less: Expenditures in the United States by nonresidents"
,"Rental value of farm dwellings"
,"Furnishings and durable household equipment"
,"Food produced and consumed on farms"
,"Furniture and furnishings"
,"Net household insurance"
,"Financial services"
,"Food furnished to employees"
,"Net foreign travel"
,"Food services and accommodations"
,"Food services"
,"Foreign travel by U.S. residents"
,"Fuel oil and other fuels"
,"Food and beverages purchased for off-premises consumption"
,"Gambling"
,"Garments"
,"Goods"
,"Natural gas"
,"Gasoline and other energy goods"
,"Ground transportation"
,"Group housing"
,"Household consumption expenditures"
,"Higher education"
,"Household maintenance"
,"Net health insurance"
,"Health care"
,"Household supplies"
,"Hospital and nursing home services"
,"Housing"
,"Hospitals"
,"Housing and utilities"
,"Financial services and insurance"
,"Financial services furnished without payment"
,"Insurance"
,"Internet access"
,"Jewelry and watches"
,"Life insurance"
,"Luggage and similar personal items"
,"Men_boys_clothing"
,"Motor vehicle fuels, lubricants, and fluids"
,"Motor vehicles and parts"
,"Musical instruments"
,"Motor vehicle parts and accessories"
,"Motor vehicle services"
,"Nondurable goods"
,"Nursery, elementary, and secondary schools"
,"Magazines, newspapers, and stationery"
,"Net expenditures abroad by U.S. residents"
,"New motor vehicles"
,"Gross output of nonprofit institutions"
,"Final consumption expenditures of nonprofit institutions serving households"
,"Less: Receipts from sales of goods and services by nonprofit institutions"
,"Net purchases of used motor vehicles"
,"Nursing homes"
,"Other clothing materials and footwear"
,"Other durable goods"
,"Financial service charges, fees, and commissions"
,"Other nondurable goods"
,"Personal care products"
,"Other recreational services"
,"Other services"
,"Outpatient services"
,"Other motor vehicle services"
,"Imputed rental of owner-occupied nonfarm housing"
,"Personal consumption expenditures"
,"Personal care and clothing services"
,"Pharmaceutical and other medical products"
,"Physician services"
,"Purchased meals and beverages"
,"Paramedical services"
,"Professional and other services"
,"Postal and delivery services"
,"Public transportation"
,"Recreational books"
,"Recreation services"
,"Recreational items"
,"Recreational goods and vehicles"
,"Membership clubs, sports centers, parks, theaters, and museums"
,"Services"
,"Social services and religious activities"
,"Sporting equipment, supplies, guns, and ammunition"
,"Therapeutic appliances and equipment"
,"Telephone and related communication equipment"
,"Telecommunication services"
,"Education services"
,"Rental of tenant-occupied nonfarm housing"
,"Food and nonalcoholic beverages purchased for off-premises consumption"
,"Net motor vehicle and other transportation insurance"
,"Tobacco"
,"Tools and equipment for house and garden"
,"Transportation services"
,"Glassware, tableware, and household utensils"
,"Household utilities"
,"Video, audio, photographic, and information processing equipment and media"
,"Commercial and vocational schools"
,"Motor vehicle maintenance and repair"
,"Water transportation"
,"Women_girls_clothing"
,"Sports and recreational vehicles"
,"Water supply and sanitation"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_BEA_Gov_20405;
replace view TRNG_COVID19.STG_BEA_PersonalConsumption_2_3_5 as locking row for access select
"ROW_KEY"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"PERIOD_MMM-YYYY"
,"METRIC_NAME"
,"METRIC_INDEX"
,"METRIC_VALUE"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
from gs_tables_db.TRNG_COVID19_STG_BEA_PersonalConsumption_2_3_5;
replace view TRNG_COVID19.STG_BEA_PersonalConsumption_2_3_5_20200609 as locking row for access select
"ROW_KEY"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"PERIOD_MMM-YYYY"
,"METRIC_NAME"
,"METRIC_INDEX"
,"METRIC_VALUE"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
from gs_tables_db.TRNG_COVID19_STG_BEA_PersonalConsumption_2_3_5_20200609;
replace view TRNG_COVID19.STG_BEA_PersonalConsumption_2_4_5 as locking row for access select
"ROW_KEY"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"SUBDOMAIN_4_NAME"
,"PERIOD_MMM-YYYY"
,"METRIC_NAME"
,"METRIC_INDEX"
,"METRIC_VALUE"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
from gs_tables_db.TRNG_COVID19_STG_BEA_PersonalConsumption_2_4_5;
replace view TRNG_COVID19.STG_BEA_PersonalConsumption_2_4_5_20200609 as locking row for access select
"ROW_KEY"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"SUBDOMAIN_4_NAME"
,"PERIOD_MMM-YYYY"
,"METRIC_NAME"
,"METRIC_INDEX"
,"METRIC_VALUE"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
from gs_tables_db.TRNG_COVID19_STG_BEA_PersonalConsumption_2_4_5_20200609;
replace view TRNG_COVID19.STG_BureauEconomicAnalysis as locking row for access select
"Category"
,"SubGategory"
,"2018Q1"
,"2018Q2"
,"2018Q3"
,"2018Q4"
,"2019Q1"
,"2019Q2"
,"2019Q3"
,"2019Q4"
,"2020Q1"
from gs_tables_db.TRNG_COVID19_STG_BureauEconomicAnalysis;
replace view TRNG_COVID19.STG_CensusDataStats as locking row for access select
"BUSINESS_TYPE"
,"YEAR"
,"JAN"
,"FEB"
,"MAR"
,"APR"
,"MAY"
,"JUN"
,"JUL"
,"AUG"
,"SEP"
,"OCT"
,"NOV"
,"DEC"
from gs_tables_db.TRNG_COVID19_STG_CensusDataStats;
replace view TRNG_COVID19.STG_CensusSeasonalFactors as locking row for access select
"BUSINESS_TYPE"
,"YEAR"
,"JAN"
,"FEB"
,"MAR"
,"APR"
,"MAY"
,"JUN"
,"JUL"
,"AUG"
,"SEP"
,"OCT"
,"NOV"
,"DEC"
from gs_tables_db.TRNG_COVID19_STG_CensusSeasonalFactors;
replace view TRNG_COVID19.STG_ConsumerPriceIndex as locking row for access select
"Year"
,"Jan"
,"Feb"
,"Mar"
,"Apr"
,"May"
,"Jun"
,"Jul"
,"Aug"
,"Sep"
,"Oct"
,"Nov"
,"Dec"
from gs_tables_db.TRNG_COVID19_STG_ConsumerPriceIndex;
replace view TRNG_COVID19.STG_ConsumerSentimentIndex as locking row for access select
"Month"
,"Year"
,"Consumer_Sentiment_Index"
from gs_tables_db.TRNG_COVID19_STG_ConsumerSentimentIndex;
replace view TRNG_COVID19.STG_Consumer_Sentiment_Index as locking row for access select
"Month"
,"Year"
,"Consumer_Sentiment_Index"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Consumer_Sentiment_Index;
replace view TRNG_COVID19.STG_covid19datahub as locking row for access select
"id"
,"date_key"
,"tests"
,"confirmed"
,"recovered"
,"deaths"
,"hosp"
,"vent"
,"icu"
,"population"
,"school_closing"
,"workplace_closing"
,"cancel_events"
,"gatherings_restrictions"
,"transport_closing"
,"stay_home_restrictions"
,"internal_movement_restrictions"
,"international_movement_restrictions"
,"information_campaigns"
,"testing_policy"
,"contact_tracing"
,"stringency_index"
,"iso_alpha_3"
,"iso_alpha_2"
,"iso_numeric"
,"currency"
,"administrative_area_level"
,"administrative_area_level_1"
,"administrative_area_level_2"
,"administrative_area_level_3"
,"latitude"
,"longitude"
,"key"
,"key_numeric"
,"key_google_mobility"
,"key_apple_mobility"
,"key_alpha_2"
from gs_tables_db.TRNG_COVID19_STG_covid19datahub;
replace view TRNG_COVID19.STG_covid19_county_policy_20200608 as locking row for access select
"FIPS"
,"County"
,"State"
,"GEO_GRANULARITY"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"METRIC_NAME"
,"METRIC_VALUE"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
from gs_tables_db.TRNG_COVID19_STG_covid19_county_policy_20200608;
replace view TRNG_COVID19.STG_COVID19_DATAHUB as locking row for access select
"ID"
,"DATE_KEY"
,"TESTS"
,"CONFIRMED"
,"RECOVERED"
,"DEATHS"
,"HOSP"
,"VENT"
,"ICU"
,"SEVERE"
,"POPULATION"
,"SCHOOL_CLOSING"
,"WORKPLACE_CLOSING"
,"CANCEL_EVENTS"
,"GATHERINGS_RESTRICTIONS"
,"TRANSPORT_CLOSING"
,"STAY_HOME_RESTRICTIONS"
,"INTERNAL_MOVEMENT_RESTRICTIONS"
,"INTERNATIONAL_MOVEMENT_RESTRICTIONS"
,"INFORMATION_CAMPAIGNS"
,"TESTING_POLICY"
,"CONTACT_TRACING"
,"STRINGENCY_INDEX"
,"ISO_ALPHA_3"
,"ISO_ALPHA_2"
,"ISO_NUMERIC"
,"CURRENCY"
,"ADMINISTRATIVE_AREA_LEVEL"
,"ADMINISTRATIVE_AREA_LEVEL_1"
,"ADMINISTRATIVE_AREA_LEVEL_2"
,"ADMINISTRATIVE_AREA_LEVEL_3"
,"LATITUDE"
,"LONGITUDE"
,"KEY"
,"KEY_NUMERIC"
,"KEY_GOOGLE_MOBILITY"
,"KEY_APPLE_MOBILITY"
,"KEY_ALPHA_2"
,"CURRENT_DTTM"
from gs_tables_db.TRNG_COVID19_STG_COVID19_DATAHUB;
replace view TRNG_COVID19.STG_COVID19_Datahub_LVL1 as locking row for access select
"id"
,"date_key"
,"tests"
,"confirmed"
,"recovered"
,"deaths"
,"hosp"
,"vent"
,"icu"
,"severe"
,"population"
,"school_closing"
,"workplace_closing"
,"cancel_events"
,"gatherings_restrictions"
,"transport_closing"
,"stay_home_restrictions"
,"internal_movement_restrictions"
,"international_movement_restrictions"
,"information_campaigns"
,"testing_policy"
,"contact_tracing"
,"stringency_index"
,"iso_alpha_3"
,"iso_alpha_2"
,"iso_numeric"
,"currency"
,"administrative_area_level"
,"administrative_area_level_1"
,"administrative_area_level_2"
,"administrative_area_level_3"
,"latitude"
,"longitude"
,"key"
,"key_apple_mobility"
,"key_google_mobility"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_COVID19_Datahub_LVL1;
replace view TRNG_COVID19.STG_COVID19_Datahub_LVL2 as locking row for access select
"id"
,"date_key"
,"confirmed"
,"deaths"
,"recovered"
,"tests"
,"vaccines"
,"people_vaccinated"
,"people_fully_vaccinated"
,"hosp"
,"icu"
,"vent"
,"school_closing"
,"workplace_closing"
,"cancel_events"
,"gatherings_restrictions"
,"transport_closing"
,"stay_home_restrictions"
,"internal_movement_restrictions"
,"international_movement_restrictions"
,"information_campaigns"
,"testing_policy"
,"contact_tracing"
,"facial_coverings"
,"vaccination_policy"
,"elderly_people_protection"
,"government_response_index"
,"stringency_index"
,"containment_health_index"
,"economic_support_index"
,"administrative_area_level"
,"administrative_area_level_1"
,"administrative_area_level_2"
,"administrative_area_level_3"
,"latitude"
,"longitude"
,"population"
,"iso_alpha_3"
,"iso_alpha_2"
,"iso_numeric"
,"iso_currency"
,"key_local"
,"key_google_mobility"
,"key_apple_mobility"
,"key_jhu_csse"
,"key_nuts"
,"key_gadm"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_COVID19_Datahub_LVL2;
replace view TRNG_COVID19.STG_COVID19_Datahub_LVL3 as locking row for access select
"id"
,"date_key"
,"confirmed"
,"deaths"
,"recovered"
,"tests"
,"vaccines"
,"people_vaccinated"
,"people_fully_vaccinated"
,"hosp"
,"icu"
,"vent"
,"school_closing"
,"workplace_closing"
,"cancel_events"
,"gatherings_restrictions"
,"transport_closing"
,"stay_home_restrictions"
,"internal_movement_restrictions"
,"international_movement_restrictions"
,"information_campaigns"
,"testing_policy"
,"contact_tracing"
,"facial_coverings"
,"vaccination_policy"
,"elderly_people_protection"
,"government_response_index"
,"stringency_index"
,"containment_health_index"
,"economic_support_index"
,"administrative_area_level"
,"administrative_area_level_1"
,"administrative_area_level_2"
,"administrative_area_level_3"
,"latitude"
,"longitude"
,"population"
,"iso_alpha_3"
,"iso_alpha_2"
,"iso_numeric"
,"iso_currency"
,"key_local"
,"key_google_mobility"
,"key_apple_mobility"
,"key_jhu_csse"
,"key_nuts"
,"key_gadm"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_COVID19_Datahub_LVL3;
replace view TRNG_COVID19.STG_COVID19_Datahub_orig_0702 as locking row for access select
"id"
,"date_key"
,"tests"
,"confirmed"
,"recovered"
,"deaths"
,"hosp"
,"vent"
,"icu"
,"severe"
,"population"
,"school_closing"
,"workplace_closing"
,"cancel_events"
,"gatherings_restrictions"
,"transport_closing"
,"stay_home_restrictions"
,"internal_movement_restrictions"
,"international_movement_restrictions"
,"information_campaigns"
,"testing_policy"
,"contact_tracing"
,"stringency_index"
,"iso_alpha_3"
,"iso_alpha_2"
,"iso_numeric"
,"currency"
,"administrative_area_level"
,"administrative_area_level_1"
,"administrative_area_level_2"
,"administrative_area_level_3"
,"latitude"
,"longitude"
,"key"
,"key_numeric"
,"key_google_mobility"
,"key_apple_mobility"
,"key_alpha_2"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_COVID19_Datahub_orig_0702;
replace view TRNG_COVID19.STG_Covid19_datahub_states as locking row for access select
"id"
,"date_key"
,"tests"
,"confirmed"
,"recovered"
,"deaths"
,"hosp"
,"vent"
,"icu"
,"severe"
,"population"
,"school_closing"
,"workplace_closing"
,"cancel_events"
,"gatherings_restrictions"
,"transport_closing"
,"stay_home_restrictions"
,"internal_movement_restrictions"
,"international_movement_restrictions"
,"information_campaigns"
,"testing_policy"
,"contact_tracing"
,"stringency_index"
,"iso_alpha_3"
,"iso_alpha_2"
,"iso_numeric"
,"currency"
,"administrative_area_level"
,"administrative_area_level_1"
,"administrative_area_level_2"
,"administrative_area_level_3"
,"latitude"
,"longitude"
,"key"
,"key_google_mobility"
,"key_apple_mobility"
,"key_alpha_2"
,"key_numeric"
from gs_tables_db.TRNG_COVID19_STG_Covid19_datahub_states;
replace view TRNG_COVID19.STG_COVID19_DataHUB_statev2 as locking row for access select
"id"
,"date_key"
,"tests"
,"confirmed"
,"recovered"
,"deaths"
,"hosp"
,"vent"
,"icu"
,"severe"
,"population"
,"school_closing"
,"workplace_closing"
,"cancel_events"
,"gatherings_restrictions"
,"transport_closing"
,"stay_home_restrictions"
,"internal_movement_restrictions"
,"international_movement_restrictions"
,"information_campaigns"
,"testing_policy"
,"contact_tracing"
,"stringency_index"
,"iso_alpha_3"
,"iso_alpha_2"
,"iso_numeric"
,"currency"
,"administrative_area_level"
,"administrative_area_level_1"
,"administrative_area_level_2"
,"administrative_area_level_3"
,"latitude"
,"longitude"
,"key"
,"key_google_mobility"
,"key_apple_mobility"
,"key_alpha_2"
,"key_numeric"
from gs_tables_db.TRNG_COVID19_STG_COVID19_DataHUB_statev2;
replace view TRNG_COVID19.STG_COVID19_NATIONAL_ESTIMATES as locking row for access select
"state"
,"statename"
,"collectionDate"
,"InpatBeds_Occ_AnyPat_Est"
,"InpatBeds_Occ_AnyPat_LoCI"
,"InpatBeds_Occ_AnyPat_UpCI"
,"InpatBeds_Occ_AnyPat_Est_Avail"
,"InBedsOccAnyPat__Numbeds_Est"
,"InBedsOccAnyPat__Numbeds_LoCI"
,"InBedsOccAnyPat__Numbeds_UpCI"
,"InpatBeds_Occ_COVID_Est"
,"InpatBeds_Occ_COVID_LoCI"
,"InpatBeds_Occ_COVID_UpCI"
,"InBedsOccCOVID__Numbeds_Est"
,"InBedsOccCOVID__Numbeds_LoCI"
,"InBedsOccCOVID__Numbeds_UpCI"
,"ICUBeds_Occ_AnyPat_Est"
,"ICUBeds_Occ_AnyPat_LoCI"
,"ICUBeds_Occ_AnyPat_UpCI"
,"ICUBeds_Occ_AnyPat_Est_Avail"
,"ICUBedsOccAnyPat__N_ICUBeds_Est"
,"ICUBedsOccAnyPat__N_ICUBeds_LoCI"
,"ICUBedsOccAnyPat__N_ICUBeds_UpCI"
from gs_tables_db.TRNG_COVID19_STG_COVID19_NATIONAL_ESTIMATES;
replace view TRNG_COVID19.STG_covid19_stats as locking row for access select
"date_key"
,"county"
,"state"
,"fips"
,"cases"
,"deaths"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_covid19_stats;
replace view TRNG_COVID19.stg_covid_datahub_state as locking row for access select
"id"
,"date_key"
,"tests"
,"confirmed"
,"recovered"
,"deaths"
,"hosp"
,"vent"
,"icu"
,"severe"
,"population"
,"school_closing"
,"workplace_closing"
,"cancel_events"
,"gatherings_restrictions"
,"transport_closing"
,"stay_home_restrictions"
,"internal_movement_restrictions"
,"international_movement_restrictions"
,"information_campaigns"
,"testing_policy"
,"contact_tracing"
,"stringency_index"
,"iso_alpha_3"
,"iso_alpha_2"
,"iso_numeric"
,"currency"
,"administrative_area_level"
,"administrative_area_level_1"
,"administrative_area_level_2"
,"administrative_area_level_3"
,"latitude"
,"longitude"
,"key"
,"key_google_mobility"
,"key_apple_mobility"
,"key_alpha_2"
,"key_numeric"
from gs_tables_db.TRNG_COVID19_stg_covid_datahub_state;
replace view TRNG_COVID19.STG_COVID_DATAHUB_STATES as locking row for access select
"id"
,"date_Key"
,"tests"
,"confirmed"
,"recovered"
,"deaths"
,"hosp"
,"vent"
,"icu"
,"severe"
,"population"
,"school_closing"
,"workplace_closing"
,"cancel_events"
,"gatherings_restrictions"
,"transport_closing"
,"stay_home_restrictions"
,"internal_movement_restrictions"
,"international_movement_restrictions"
,"information_campaigns"
,"testing_policy"
,"contact_tracing"
,"stringency_index"
,"iso_alpha_3"
,"iso_alpha_2"
,"iso_numeric"
,"currency"
,"administrative_area_level"
,"administrative_area_level_1"
,"administrative_area_level_2"
,"administrative_area_level_3"
,"latitude"
,"longitude"
,"key"
,"key_google_mobility"
,"key_apple_mobility"
,"key_alpha_2"
,"key_numeric"
from gs_tables_db.TRNG_COVID19_STG_COVID_DATAHUB_STATES;
replace view TRNG_COVID19.STG_COVID_STABLITY as locking row for access select
"SNAPSHOT_DATE"
,"SNAPSHOT_WEEK"
,"CURR_PREV_FLAG"
,"DATE_KEY"
,"CAL_WEEK_YEAR"
,"WEEK_START_DATE"
,"WEEK_END_DATE"
,"geo_key"
,"County"
,"STATE_CODE"
,"STATE_NAME"
,"COUNTRY_NAME"
,"Stability_score"
,"readiness_score"
,"mobility_Score"
from gs_tables_db.TRNG_COVID19_STG_COVID_STABLITY;
replace view TRNG_COVID19.STG_Covid_us_counties_06_19_2020 as locking row for access select
"date_key"
,"county"
,"state"
,"fips"
,"cases"
,"deaths"
from gs_tables_db.TRNG_COVID19_STG_Covid_us_counties_06_19_2020;
replace view TRNG_COVID19.STG_CO_EST2019 as locking row for access select
"SUMLEV"
,"REGION"
,"DIVISION"
,"STATE"
,"COUNTY"
,"STNAME"
,"CTYNAME"
,"CENSUS2010POP"
,"ESTIMATESBASE2010"
,"POPESTIMATE2010"
,"POPESTIMATE2011"
,"POPESTIMATE2012"
,"POPESTIMATE2013"
,"POPESTIMATE2014"
,"POPESTIMATE2015"
,"POPESTIMATE2016"
,"POPESTIMATE2017"
,"POPESTIMATE2018"
,"POPESTIMATE2019"
,"NPOPCHG_2010"
,"NPOPCHG_2011"
,"NPOPCHG_2012"
,"NPOPCHG_2013"
,"NPOPCHG_2014"
,"NPOPCHG_2015"
,"NPOPCHG_2016"
,"NPOPCHG_2017"
,"NPOPCHG_2018"
,"NPOPCHG_2019"
,"BIRTHS2010"
,"BIRTHS2011"
,"BIRTHS2012"
,"BIRTHS2013"
,"BIRTHS2014"
,"BIRTHS2015"
,"BIRTHS2016"
,"BIRTHS2017"
,"BIRTHS2018"
,"BIRTHS2019"
,"DEATHS2010"
,"DEATHS2011"
,"DEATHS2012"
,"DEATHS2013"
,"DEATHS2014"
,"DEATHS2015"
,"DEATHS2016"
,"DEATHS2017"
,"DEATHS2018"
,"DEATHS2019"
,"NATURALINC2010"
,"NATURALINC2011"
,"NATURALINC2012"
,"NATURALINC2013"
,"NATURALINC2014"
,"NATURALINC2015"
,"NATURALINC2016"
,"NATURALINC2017"
,"NATURALINC2018"
,"NATURALINC2019"
,"INTERNATIONALMIG2010"
,"INTERNATIONALMIG2011"
,"INTERNATIONALMIG2012"
,"INTERNATIONALMIG2013"
,"INTERNATIONALMIG2014"
,"INTERNATIONALMIG2015"
,"INTERNATIONALMIG2016"
,"INTERNATIONALMIG2017"
,"INTERNATIONALMIG2018"
,"INTERNATIONALMIG2019"
,"DOMESTICMIG2010"
,"DOMESTICMIG2011"
,"DOMESTICMIG2012"
,"DOMESTICMIG2013"
,"DOMESTICMIG2014"
,"DOMESTICMIG2015"
,"DOMESTICMIG2016"
,"DOMESTICMIG2017"
,"DOMESTICMIG2018"
,"DOMESTICMIG2019"
,"NETMIG2010"
,"NETMIG2011"
,"NETMIG2012"
,"NETMIG2013"
,"NETMIG2014"
,"NETMIG2015"
,"NETMIG2016"
,"NETMIG2017"
,"NETMIG2018"
,"NETMIG2019"
,"RESIDUAL2010"
,"RESIDUAL2011"
,"RESIDUAL2012"
,"RESIDUAL2013"
,"RESIDUAL2014"
,"RESIDUAL2015"
,"RESIDUAL2016"
,"RESIDUAL2017"
,"RESIDUAL2018"
,"RESIDUAL2019"
,"GQESTIMATESBASE2010"
,"GQESTIMATES2010"
,"GQESTIMATES2011"
,"GQESTIMATES2012"
,"GQESTIMATES2013"
,"GQESTIMATES2014"
,"GQESTIMATES2015"
,"GQESTIMATES2016"
,"GQESTIMATES2017"
,"GQESTIMATES2018"
,"GQESTIMATES2019"
,"RBIRTH2011"
,"RBIRTH2012"
,"RBIRTH2013"
,"RBIRTH2014"
,"RBIRTH2015"
,"RBIRTH2016"
,"RBIRTH2017"
,"RBIRTH2018"
,"RBIRTH2019"
,"RDEATH2011"
,"RDEATH2012"
,"RDEATH2013"
,"RDEATH2014"
,"RDEATH2015"
,"RDEATH2016"
,"RDEATH2017"
,"RDEATH2018"
,"RDEATH2019"
,"RNATURALINC2011"
,"RNATURALINC2012"
,"RNATURALINC2013"
,"RNATURALINC2014"
,"RNATURALINC2015"
,"RNATURALINC2016"
,"RNATURALINC2017"
,"RNATURALINC2018"
,"RNATURALINC2019"
,"RINTERNATIONALMIG2011"
,"RINTERNATIONALMIG2012"
,"RINTERNATIONALMIG2013"
,"RINTERNATIONALMIG2014"
,"RINTERNATIONALMIG2015"
,"RINTERNATIONALMIG2016"
,"RINTERNATIONALMIG2017"
,"RINTERNATIONALMIG2018"
,"RINTERNATIONALMIG2019"
,"RDOMESTICMIG2011"
,"RDOMESTICMIG2012"
,"RDOMESTICMIG2013"
,"RDOMESTICMIG2014"
,"RDOMESTICMIG2015"
,"RDOMESTICMIG2016"
,"RDOMESTICMIG2017"
,"RDOMESTICMIG2018"
,"RDOMESTICMIG2019"
,"RNETMIG2011"
,"RNETMIG2012"
,"RNETMIG2013"
,"RNETMIG2014"
,"RNETMIG2015"
,"RNETMIG2016"
,"RNETMIG2017"
,"RNETMIG2018"
,"RNETMIG2019"
from gs_tables_db.TRNG_COVID19_STG_CO_EST2019;
replace view TRNG_COVID19.STG_CPI_U as locking row for access select
"Unnamed: 0"
,"Unnamed: 1"
,"Unnamed: 2"
,"Unnamed: 3"
,"Unnamed: 4"
,"Unnamed: 5"
from gs_tables_db.TRNG_COVID19_STG_CPI_U;
replace view TRNG_COVID19.STG_CUST_SALES_MNTHLY as locking row for access select
"DATE_KEY"
,"SALES_AMOUNT"
,"COUNTRY_CODE"
from gs_tables_db.TRNG_COVID19_STG_CUST_SALES_MNTHLY;
replace view TRNG_COVID19.stg_dashboard_metrics as locking row for access select
"DASHBOARD_VERSION"
,"DASHBOARD_DATA_SOURCE_NAME"
,"GEO_GRANULARITY"
,"DASH_METRIC_NAME_DISP"
,"DASH_METRIC_NAME_DISP_SHORT"
,"DASH_METRIC_NAME_DISP_SHORT2"
,"METRIC_TYPE"
,"METRIC_VAL_IND_SEL"
,"METRIC_NAME"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"DATA_SOURCE_NAME"
from gs_tables_db.TRNG_COVID19_stg_dashboard_metrics;
replace view TRNG_COVID19.STG_DemographicsUSCensus as locking row for access select
"SUMLEV"
,"STATE"
,"COUNTY"
,"STNAME"
,"CTYNAME"
,"YEAR"
,"AGEGRP"
,"TOT_POP"
,"TOT_MALE"
,"TOT_FEMALE"
,"WA_MALE"
,"WA_FEMALE"
,"BA_MALE"
,"BA_FEMALE"
,"IA_MALE"
,"IA_FEMALE"
,"AA_MALE"
,"AA_FEMALE"
,"NA_MALE"
,"NA_FEMALE"
,"TOM_MALE"
,"TOM_FEMALE"
,"WAC_MALE"
,"WAC_FEMALE"
,"BAC_MALE"
,"BAC_FEMALE"
,"IAC_MALE"
,"IAC_FEMALE"
,"AAC_MALE"
,"AAC_FEMALE"
,"NAC_MALE"
,"NAC_FEMALE"
,"NH_MALE"
,"NH_FEMALE"
,"NHWA_MALE"
,"NHWA_FEMALE"
,"NHBA_MALE"
,"NHBA_FEMALE"
,"NHIA_MALE"
,"NHIA_FEMALE"
,"NHAA_MALE"
,"NHAA_FEMALE"
,"NHNA_MALE"
,"NHNA_FEMALE"
,"NHTOM_MALE"
,"NHTOM_FEMALE"
,"NHWAC_MALE"
,"NHWAC_FEMALE"
,"NHBAC_MALE"
,"NHBAC_FEMALE"
,"NHIAC_MALE"
,"NHIAC_FEMALE"
,"NHAAC_MALE"
,"NHAAC_FEMALE"
,"NHNAC_MALE"
,"NHNAC_FEMALE"
,"H_MALE"
,"H_FEMALE"
,"HWA_MALE"
,"HWA_FEMALE"
,"HBA_MALE"
,"HBA_FEMALE"
,"HIA_MALE"
,"HIA_FEMALE"
,"HAA_MALE"
,"HAA_FEMALE"
,"HNA_MALE"
,"HNA_FEMALE"
,"HTOM_MALE"
,"HTOM_FEMALE"
,"HWAC_MALE"
,"HWAC_FEMALE"
,"HBAC_MALE"
,"HBAC_FEMALE"
,"HIAC_MALE"
,"HIAC_FEMALE"
,"HAAC_MALE"
,"HAAC_FEMALE"
,"HNAC_MALE"
,"HNAC_FEMALE"
from gs_tables_db.TRNG_COVID19_STG_DemographicsUSCensus;
replace view TRNG_COVID19.STG_Estimated_Icu as locking row for access select
"state"
,"collection_date"
,"Staffed Adult ICU Beds Occupied Estimated"
,"Count LL"
,"Count UL"
,"Percentage of Staffed Adult ICU Beds Occupied Estimated"
,"Percentage LL"
,"Percentage UL"
,"Total Staffed Adult ICU Beds"
,"Total LL"
,"Total UL"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Estimated_Icu;
replace view TRNG_COVID19.STG_Estimated_Inpatient_All as locking row for access select
"state"
,"collection_date"
,"Inpatient Beds Occupied Estimated"
,"Count LL"
,"Count UL"
,"Percentage of Inpatient Beds Occupied Estimated"
,"Percentage LL"
,"Percentage UL"
,"Total Inpatient Beds"
,"Total LL"
,"Total UL"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Estimated_Inpatient_All;
replace view TRNG_COVID19.STG_Estimated_Inpatient_Covid as locking row for access select
"state"
,"collection_date"
,"Inpatient Beds Occupied by COVID-19 Patients Estimated"
,"Count LL"
,"Count UL"
,"Percentage of Inpatient Beds Occupied by COVID-19 Patients Estimated"
,"Percentage LL"
,"Percentage UL"
,"Total Inpatient Beds"
,"Total LL"
,"Total UL"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Estimated_Inpatient_Covid;
replace view TRNG_COVID19.STG_Fuel_Production as locking row for access select
"date_key"
,"4-Week Avg U.S. Product Supplied of Petroleum Products  (Thousand Barrels per Day)"
,"4-Week Avg U.S. Product Supplied of Finished Motor Gasoline  (Thousand Barrels per Day)"
,"4-Week Avg U.S. Product Supplied of Kerosene-Type Jet Fuel  (Thousand Barrels per Day)"
,"4-Week Avg U.S. Product Supplied of Distillate Fuel Oil  (Thousand Barrels per Day)"
,"4-Week Avg U.S. Product Supplied of Residual Fuel Oil  (Thousand Barrels per Day)"
,"4-Week Avg U.S. Product Supplied of Propane and Propylene  (Thousand Barrels per Day)"
,"4-Week Avg U.S. Product Supplied of Other Oils  (Thousand Barrels per Day)"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Fuel_Production;
replace view TRNG_COVID19.STG_geocodes_v2019_ES as locking row for access select
"Summary Level"
,"State Code (FIPS)"
,"County Code (FIPS)"
,"County Subdivision Code (FIPS)"
,"Place Code (FIPS)"
,"Consolidtated City Code (FIPS)"
,"Area Name (including legal/statistical area description)"
,"FIPS Comb"
from gs_tables_db.TRNG_COVID19_STG_geocodes_v2019_ES;
replace view TRNG_COVID19.STG_Global_Mobility_Report as locking row for access select
"country_region_code"
,"country_region"
,"sub_region_1"
,"sub_region_2"
,"iso_3166_2_code"
,"census_fips_code"
,"date_key"
,"retail_and_recreation_percent_change_from_baseline"
,"grocery_and_pharmacy_percent_change_from_baseline"
,"parks_percent_change_from_baseline"
,"transit_stations_percent_change_from_baseline"
,"workplaces_percent_change_from_baseline"
,"residential_percent_change_from_baseline"
,"label1"
from gs_tables_db.TRNG_COVID19_STG_Global_Mobility_Report;
replace view TRNG_COVID19.STG_Global_Mobility_Reportv2 as locking row for access select
"country_region_code"
,"country_region"
,"sub_region_1"
,"sub_region_2"
,"iso_3166_2_code"
,"census_fips_code"
,"date_key"
,"retail_and_recreation_percent_change_from_baseline"
,"grocery_and_pharmacy_percent_change_from_baseline"
,"parks_percent_change_from_baseline"
,"transit_stations_percent_change_from_baseline"
,"workplaces_percent_change_from_baseline"
,"residential_percent_change_from_baseline"
from gs_tables_db.TRNG_COVID19_STG_Global_Mobility_Reportv2;
replace view TRNG_COVID19.stg_Global_Mobility_Report_mac as locking row for access select
"country_region_code"
,"country_region"
,"sub_region_1"
,"sub_region_2"
,"iso_3166_2_code"
,"census_fips_code"
,"date_key"
,"retail_and_recreation_percent_change_from_baseline"
,"grocery_and_pharmacy_percent_change_from_baseline"
,"parks_percent_change_from_baseline"
,"transit_stations_percent_change_from_baseline"
,"workplaces_percent_change_from_baseline"
,"residential_percent_change_from_baseline"
from gs_tables_db.TRNG_COVID19_stg_Global_Mobility_Report_mac;
replace view TRNG_COVID19.STG_Global_Mobility_Report_V2 as locking row for access select
"country_region_code"
,"country_region"
,"sub_region_1"
,"sub_region_2"
,"iso_3166_2_code"
,"census_fips_code"
,"date_key"
,"retail_and_recreation_percent_change_from_baseline"
,"grocery_and_pharmacy_percent_change_from_baseline"
,"parks_percent_change_from_baseline"
,"transit_stations_percent_change_from_baseline"
,"workplaces_percent_change_from_baseline"
,"residential_percent_change_from_baseline"
from gs_tables_db.TRNG_COVID19_STG_Global_Mobility_Report_V2;
replace view TRNG_COVID19.STG_Global_Mobility_Report_v231234 as locking row for access select
"country_region_code"
,"country_region"
,"sub_region_1"
,"sub_region_2"
,"iso_3166_2_code"
,"census_fips_code"
,"date_key"
,"retail_and_recreation_percent_change_from_baseline"
,"grocery_and_pharmacy_percent_change_from_baseline"
,"parks_percent_change_from_baseline"
,"transit_stations_percent_change_from_baseline"
,"workplaces_percent_change_from_baseline"
,"residential_percent_change_from_baseline"
,"label1"
from gs_tables_db.TRNG_COVID19_STG_Global_Mobility_Report_v231234;
replace view TRNG_COVID19.STG_GoogleMobility as locking row for access select
"country_region_code"
,"country_region"
,"sub_region_1"
,"sub_region_2"
,"date"
,"retail_and_recreation_percent_change_from_baseline"
,"grocery_and_pharmacy_percent_change_from_baseline"
,"parks_percent_change_from_baseline"
,"transit_stations_percent_change_from_baseline"
,"workplaces_percent_change_from_baseline"
,"residential_percent_change_from_baseline"
from gs_tables_db.TRNG_COVID19_STG_GoogleMobility;
replace view TRNG_COVID19.STG_GoogleMobility_20200601 as locking row for access select
"country_region_code"
,"country_region"
,"sub_region_1"
,"sub_region_2"
,"Mobility_Date"
,"retail_and_recreation_percent_change_from_baseline"
,"grocery_and_pharmacy_percent_change_from_baseline"
,"parks_percent_change_from_baseline"
,"transit_stations_percent_change_from_baseline"
,"workplaces_percent_change_from_baseline"
,"residential_percent_change_from_baseline"
,"label1"
from gs_tables_db.TRNG_COVID19_STG_GoogleMobility_20200601;
replace view TRNG_COVID19.STG_Google_Mobility as locking row for access select
"country_region_code"
,"country_region"
,"sub_region_1"
,"sub_region_2"
,"metro_area"
,"iso_3166_2_code"
,"census_fips_code"
,"place_id"
,"date_key"
,"retail_and_recreation_percent_change_from_baseline"
,"grocery_and_pharmacy_percent_change_from_baseline"
,"parks_percent_change_from_baseline"
,"transit_stations_percent_change_from_baseline"
,"workplaces_percent_change_from_baseline"
,"residential_percent_change_from_baseline"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Google_Mobility;
replace view TRNG_COVID19.STG_google_mobility_20200604 as locking row for access select
"date_key"
,"geo_granularity"
,"COUNTRY_NAME"
,"STATE_NAME"
,"COUNTY_NAME"
,"LOCATION_TYPE"
,"METRIC_NAME"
,"METRIC_VALUE"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
from gs_tables_db.TRNG_COVID19_STG_google_mobility_20200604;
replace view TRNG_COVID19.STG_google_mobility_20200612 as locking row for access select
"date_key"
,"geo_granularity"
,"COUNTRY_NAME"
,"STATE_NAME"
,"COUNTY_NAME"
,"LOCATION_TYPE"
,"METRIC_NAME"
,"METRIC_VALUE"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
from gs_tables_db.TRNG_COVID19_STG_google_mobility_20200612;
replace view TRNG_COVID19.STG_Google_Search as locking row for access select
"movie"
,"theater"
,"covid"
,"listings"
,"showtimes"
,"isPartial"
,"current_dttm"
,"date"
from gs_tables_db.TRNG_COVID19_STG_Google_Search;
replace view TRNG_COVID19.STG_Google_Search_IOT as locking row for access select
"date"
,"Metric_value"
,"isPartial"
,"Trend_Name"
,"Metric_Name"
,"current_dttm"
,"Keyword_List"
,"Cat_CD"
,"Type"
from gs_tables_db.TRNG_COVID19_STG_Google_Search_IOT;
replace view TRNG_COVID19.STG_Google_Search_IOT_bl as locking row for access select
"Metric_value"
,"isPartial"
,"Trend_Name"
,"Metric_Name"
,"current_dttm"
,"Keyword_List"
,"Cat_CD"
,"Type"
,"date"
from gs_tables_db.TRNG_COVID19_STG_Google_Search_IOT_bl;
replace view TRNG_COVID19.STG_Google_Search_Region as locking row for access select
"geoCode"
,"Disney"
,"current_dttm"
,"Type"
,"Keyword_List"
,"Cat_CD"
,"geoName"
from gs_tables_db.TRNG_COVID19_STG_Google_Search_Region;
replace view TRNG_COVID19.STG_Google_Search_rising as locking row for access select
"query"
,"value"
,"Metric"
,"current_dttm"
,"Keyword_List"
,"Cat_CD"
,"Type"
,"index_label"
from gs_tables_db.TRNG_COVID19_STG_Google_Search_rising;
replace view TRNG_COVID19.STG_Google_Search_top as locking row for access select
"query"
,"value"
,"current_dttm"
,"Keyword_List"
,"Cat_CD"
,"Type"
,"Metric"
,"index_label"
from gs_tables_db.TRNG_COVID19_STG_Google_Search_top;
replace view TRNG_COVID19.STG_Hosipitalization_Estimates_05_04_2020 as locking row for access select
"V1"
,"location_name"
,"logdate"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"InvVen_mean"
,"InvVen_lower"
,"InvVen_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"bedover_mean"
,"bedover_lower"
,"bedover_upper"
,"icuover_mean"
,"icuover_lower"
,"icuover_upper"
,"mobility_data_type"
,"mobility_composite"
,"total_tests_data_type"
,"total_tests"
,"confirmed_infections"
,"est_infections_mean"
,"est_infections_lower"
,"est_infections_upper"
from gs_tables_db.TRNG_COVID19_STG_Hosipitalization_Estimates_05_04_2020;
replace view TRNG_COVID19.STG_Hosipitalization_Estimates_06_06_2020 as locking row for access select
"V1"
,"location_name"
,"Logdate"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"InvVen_mean"
,"InvVen_lower"
,"InvVen_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"bedover_mean"
,"bedover_lower"
,"bedover_upper"
,"icuover_mean"
,"icuover_lower"
,"icuover_upper"
,"deaths_mean_smoothed"
,"deaths_lower_smoothed"
,"deaths_upper_smoothed"
,"totdea_mean_smoothed"
,"totdea_lower_smoothed"
,"totdea_upper_smoothed"
,"mobility_data_type"
,"mobility_composite"
,"total_tests_data_type"
,"total_tests"
,"confirmed_infections"
,"est_infections_mean"
,"est_infections_lower"
,"est_infections_upper"
from gs_tables_db.TRNG_COVID19_STG_Hosipitalization_Estimates_06_06_2020;
replace view TRNG_COVID19.STG_Hospitalization_all_locs as locking row for access select
"V1"
,"location_id"
,"date"
,"version_name"
,"location_name"
,"est_infections_mean"
,"est_infections_upper"
,"est_infections_lower"
,"totdea_mean_smoothed"
,"totdea_lower_smoothed"
,"totdea_upper_smoothed"
,"inf_cuml_mean"
,"inf_cuml_lower"
,"inf_cuml_upper"
,"deaths_mean_smoothed"
,"deaths_lower_smoothed"
,"deaths_upper_smoothed"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"cases_mean"
,"cases_lower"
,"cases_upper"
,"reff_mean"
,"reff_lower"
,"reff_upper"
,"inf_cuml_mean_vax"
,"inf_cuml_lower_vax"
,"inf_cuml_upper_vax"
,"inf_cuml_mean_unvax"
,"inf_cuml_lower_unvax"
,"inf_cuml_upper_unvax"
,"inf_mean_vax"
,"inf_lower_vax"
,"inf_upper_vax"
,"inf_mean_unvax"
,"inf_lower_unvax"
,"inf_upper_unvax"
,"cumulative_deaths"
,"daily_deaths"
,"cumulative_cases"
,"cumulative_hospitalizations"
,"cumulative_deaths_unscaled"
,"daily_deaths_unscaled"
,"daily_cases"
,"total_pop"
,"mobility_composite"
,"mobility_data_type"
,"total_tests"
,"testing_lower"
,"testing_upper"
,"total_tests_data_type"
,"pneumonia_mean"
,"pneumonia_obs"
,"mask_use_mean"
,"mask_use_obs"
,"cumulative_all_vaccinated"
,"cumulative_all_fully_vaccinated"
,"cumulative_all_effectively_vaccinated"
,"allbed_mean"
,"allbed_upper"
,"allbed_lower"
,"ICUbed_mean"
,"ICUbed_upper"
,"ICUbed_lower"
,"admis_mean"
,"admis_upper"
,"admis_lower"
,"admis_mean_vax"
,"admis_upper_vax"
,"admis_lower_vax"
,"admis_mean_unvax"
,"admis_upper_unvax"
,"admis_lower_unvax"
,"infection_fatality"
,"infection_detection"
,"infection_hospitalization"
,"Path_Update_Dt"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Hospitalization_all_locs;
replace view TRNG_COVID19.STG_Hospitalization_all_locs_2020-04-05 as locking row for access select
"V1"
,"location_name"
,"logdate"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"InvVen_mean"
,"InvVen_lower"
,"InvVen_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"bedover_mean"
,"bedover_lower"
,"bedover_upper"
,"icuover_mean"
,"icuover_lower"
,"icuover_upper"
from gs_tables_db.TRNG_COVID19_STG_Hospitalization_all_locs_2020-04-05;
replace view TRNG_COVID19.STG_Hospitalization_all_locs_2020_03_31 as locking row for access select
"V1"
,"location"
,"logdate"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"InvVen_mean"
,"InvVen_lower"
,"InvVen_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"bedover_mean"
,"bedover_lower"
,"bedover_upper"
,"icuover_mean"
,"icuover_lower"
,"icuover_upper"
,"location_name"
from gs_tables_db.TRNG_COVID19_STG_Hospitalization_all_locs_2020_03_31;
replace view TRNG_COVID19.STG_Hospitalization_all_locs_2020_04_07_06 as locking row for access select
"Rownumb"
,"location_name"
,"logdate"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"InvVen_mean"
,"InvVen_lower"
,"InvVen_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"bedover_mean"
,"bedover_lower"
,"bedover_upper"
,"icuover_mean"
,"icuover_lower"
,"icuover_upper"
from gs_tables_db.TRNG_COVID19_STG_Hospitalization_all_locs_2020_04_07_06;
replace view TRNG_COVID19.STG_Hospitalization_all_locs_2020_04_08 as locking row for access select
"V1"
,"location_name"
,"logdate"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"InvVen_mean"
,"InvVen_lower"
,"InvVen_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"bedover_mean"
,"bedover_lower"
,"bedover_upper"
,"icuover_mean"
,"icuover_lower"
,"icuover_upper"
from gs_tables_db.TRNG_COVID19_STG_Hospitalization_all_locs_2020_04_08;
replace view TRNG_COVID19.STG_Hospitalization_all_locs_2020_06_13 as locking row for access select
"V1"
,"location_name"
,"date_key"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"InvVen_mean"
,"InvVen_lower"
,"InvVen_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"bedover_mean"
,"bedover_lower"
,"bedover_upper"
,"icuover_mean"
,"icuover_lower"
,"icuover_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"deaths_mean_smoothed"
,"deaths_lower_smoothed"
,"deaths_upper_smoothed"
,"totdea_mean_smoothed"
,"totdea_lower_smoothed"
,"totdea_upper_smoothed"
,"mobility_data_type"
,"mobility_composite"
,"total_tests_data_type"
,"total_tests"
,"confirmed_infections"
,"est_infections_mean"
,"est_infections_lower"
,"est_infections_upper"
from gs_tables_db.TRNG_COVID19_STG_Hospitalization_all_locs_2020_06_13;
replace view TRNG_COVID19.STG_Hospitalization_all_locs_BKP_21_05_2021 as locking row for access select
"location_id"
,"date"
,"V1"
,"location_name"
,"allbed_mean"
,"allbed_upper"
,"allbed_lower"
,"ICUbed_mean"
,"ICUbed_upper"
,"ICUbed_lower"
,"InvVen_mean"
,"InvVen_upper"
,"InvVen_lower"
,"admis_mean"
,"admis_upper"
,"admis_lower"
,"newICU_mean"
,"newICU_upper"
,"newICU_lower"
,"bedover_mean"
,"bedover_upper"
,"bedover_lower"
,"icuover_mean"
,"icuover_upper"
,"icuover_lower"
,"hosp_data_type"
,"deaths_data_type"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"deaths_mean_smoothed"
,"deaths_lower_smoothed"
,"deaths_upper_smoothed"
,"totdea_mean_smoothed"
,"totdea_lower_smoothed"
,"totdea_upper_smoothed"
,"mobility_data_type"
,"mobility_composite"
,"total_tests_data_type"
,"total_tests"
,"confirmed_infections_data_type"
,"confirmed_infections"
,"est_infections_data_type"
,"est_infections_mean"
,"est_infections_lower"
,"est_infections_upper"
,"total_pop"
,"deaths_mean_p100k_rate"
,"deaths_lower_p100k_rate"
,"deaths_upper_p100k_rate"
,"totdea_mean_p100k_rate"
,"totdea_lower_p100k_rate"
,"totdea_upper_p100k_rate"
,"deaths_mean_smoothed_p100k_rate"
,"deaths_lower_smoothed_p100k_rate"
,"deaths_upper_smoothed_p100k_rate"
,"totdea_mean_smoothed_p100k_rate"
,"totdea_lower_smoothed_p100k_rate"
,"totdea_upper_smoothed_p100k_rate"
,"confirmed_infections_p100k_rate"
,"est_infections_mean_p100k_rate"
,"est_infections_lower_p100k_rate"
,"est_infections_upper_p100k_rate"
,"inf_cuml_mean"
,"inf_cuml_upper"
,"inf_cuml_lower"
,"seroprev_mean"
,"seroprev_upper"
,"seroprev_lower"
,"seroprev_data_type"
,"Path_Update_Dt"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Hospitalization_all_locs_BKP_21_05_2021;
replace view TRNG_COVID19.STG_hospitalization_all_locs_corrected_2020_03_27 as locking row for access select
"location_name"
,"logdate"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"InvVen_mean"
,"InvVen_lower"
,"InvVen_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"bedover_mean"
,"bedover_lower"
,"bedover_upper"
,"icuover_mean"
,"icuover_lower"
,"icuover_upper"
from gs_tables_db.TRNG_COVID19_STG_hospitalization_all_locs_corrected_2020_03_27;
replace view TRNG_COVID19.STG_Hospitalization_Estimates_05_29_2020 as locking row for access select
"V1"
,"location_name"
,"logdate"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"InvVen_mean"
,"InvVen_lower"
,"InvVen_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"bedover_mean"
,"bedover_lower"
,"bedover_upper"
,"icuover_mean"
,"icuover_lower"
,"icuover_upper"
,"deaths_mean_smoothed"
,"deaths_lower_smoothed"
,"deaths_upper_smoothed"
,"totdea_mean_smoothed"
,"totdea_lower_smoothed"
,"totdea_upper_smoothed"
,"mobility_data_type"
,"mobility_composite"
,"total_tests_data_type"
,"total_tests"
,"confirmed_infections"
,"est_infections_mean"
,"est_infections_lower"
,"est_infections_upper"
from gs_tables_db.TRNG_COVID19_STG_Hospitalization_Estimates_05_29_2020;
replace view TRNG_COVID19.STG_IND_DASH_GOOGLE_TRENDS as locking row for access select
"DATE_KEY"
,"TREND_NAME"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"METRIC_INDEX"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
,"SNAPSHOT_DATE"
,"REC_INS_TS"
,"REC_UPD_TS"
from gs_tables_db.TRNG_COVID19_STG_IND_DASH_GOOGLE_TRENDS;
replace view TRNG_COVID19.STG_IUS_indicator_job_vacancies as locking row for access select
"Country"
,"Category"
,"DateTime"
,"Metric_value"
,"Frequency"
,"HistoricalDataSymbol"
,"LastUpdate"
from gs_tables_db.TRNG_COVID19_STG_IUS_indicator_job_vacancies;
replace view TRNG_COVID19.STG_LaborStats as locking row for access select
"LAUSCode"
,"StateFIPSCode"
,"AreaFIPSCode"
,"Area"
,"YearOf"
,"MonthOf"
,"CivilianLaborForce"
,"Employment"
,"Unemployment"
,"UnemploymentRate"
from gs_tables_db.TRNG_COVID19_STG_LaborStats;
replace view TRNG_COVID19.STG_Labor_Stats as locking row for access select
"Year_Key"
,"Period_Key"
,"Period_Month"
,"latest"
,"Metric_Val"
,"footnotes"
,"series_id"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Labor_Stats;
replace view TRNG_COVID19.STG_Labor_Stats_BL as locking row for access select
"Year_Key"
,"Period_Key"
,"Period_Month"
,"latest"
,"Metric_Val"
,"footnotes"
,"series_id"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Labor_Stats_BL;
replace view TRNG_COVID19.STG_Labor_Stats_CUSR0000SA0 as locking row for access select
"Year_Key"
,"Period_Key"
,"Period_Month"
,"Metric_Val"
,"footnotes"
,"series_id"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Labor_Stats_CUSR0000SA0;
replace view TRNG_COVID19.STG_Labor_Stats_JSON as locking row for access select
"year"
,"period"
,"periodName"
,"latest"
,"value"
,"footnotes"
,"series_id"
from gs_tables_db.TRNG_COVID19_STG_Labor_Stats_JSON;
replace view TRNG_COVID19.STG_Labor_Stats_JSON_ZZZ as locking row for access select
"MetricVal"
from gs_tables_db.TRNG_COVID19_STG_Labor_Stats_JSON_ZZZ;
replace view TRNG_COVID19.STG_Labor_Stats_LNS13000000 as locking row for access select
"Year_Key"
,"Period_Key"
,"Period_Month"
,"Metric_Val"
,"footnotes"
,"series_id"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Labor_Stats_LNS13000000;
replace view TRNG_COVID19.STG_Labor_Stats_LNS14000000 as locking row for access select
"Year_Key"
,"Period_Key"
,"Period_Month"
,"Metric_Val"
,"footnotes"
,"series_id"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Labor_Stats_LNS14000000;
replace view TRNG_COVID19.STG_Labor_Stats_old as locking row for access select
"series_id"
,"year"
,"period"
,"value"
,"footnote_codes"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Labor_Stats_old;
replace view TRNG_COVID19.STG_Labor_Stats_tmp as locking row for access select
"MetricVal"
from gs_tables_db.TRNG_COVID19_STG_Labor_Stats_tmp;
replace view TRNG_COVID19.STG_NIPA_AS as locking row for access select
"ROW_KEY"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"SUBDOMAIN_4_NAME"
,"PERIOD_MMM-YYYY"
,"EXPENDITURE_MIL_USD"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
from gs_tables_db.TRNG_COVID19_STG_NIPA_AS;
replace view TRNG_COVID19.STG_NYT_COVID_CASES_2020_06_10 as locking row for access select
"date_key"
,"county"
,"state"
,"fips"
,"cases"
,"deaths"
from gs_tables_db.TRNG_COVID19_STG_NYT_COVID_CASES_2020_06_10;
replace view TRNG_COVID19.STG_NY_COVID_CASES_06_07_2020 as locking row for access select
"Log_date"
,"county"
,"state"
,"fips"
,"cases"
,"deaths"
from gs_tables_db.TRNG_COVID19_STG_NY_COVID_CASES_06_07_2020;
replace view TRNG_COVID19.STG_Personal_Consumption_Expend_Monthly_2_3_52000-20 as locking row for access select
"label1"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"METRIC_NAME"
,"01-2000"
,"02-2000"
,"03-2000"
,"04-2000"
,"05-2000"
,"06-2000"
,"07-2000"
,"08-2000"
,"09-2000"
,"10-2000"
,"11-2000"
,"12-2000"
,"01-2001"
,"02-2001"
,"03-2001"
,"04-2001"
,"05-2001"
,"06-2001"
,"07-2001"
,"08-2001"
,"09-2001"
,"10-2001"
,"11-2001"
,"12-2001"
,"01-2002"
,"02-2002"
,"03-2002"
,"04-2002"
,"05-2002"
,"06-2002"
,"07-2002"
,"08-2002"
,"09-2002"
,"10-2002"
,"11-2002"
,"12-2002"
,"01-2003"
,"02-2003"
,"03-2003"
,"04-2003"
,"05-2003"
,"06-2003"
,"07-2003"
,"08-2003"
,"09-2003"
,"10-2003"
,"11-2003"
,"12-2003"
,"01-2004"
,"02-2004"
,"03-2004"
,"04-2004"
,"05-2004"
,"06-2004"
,"07-2004"
,"08-2004"
,"09-2004"
,"10-2004"
,"11-2004"
,"12-2004"
,"01-2005"
,"02-2005"
,"03-2005"
,"04-2005"
,"05-2005"
,"06-2005"
,"07-2005"
,"08-2005"
,"09-2005"
,"10-2005"
,"11-2005"
,"12-2005"
,"01-2006"
,"02-2006"
,"03-2006"
,"04-2006"
,"05-2006"
,"06-2006"
,"07-2006"
,"08-2006"
,"09-2006"
,"10-2006"
,"11-2006"
,"12-2006"
,"01-2007"
,"02-2007"
,"03-2007"
,"04-2007"
,"05-2007"
,"06-2007"
,"07-2007"
,"08-2007"
,"09-2007"
,"10-2007"
,"11-2007"
,"12-2007"
,"01-2008"
,"02-2008"
,"03-2008"
,"04-2008"
,"05-2008"
,"06-2008"
,"07-2008"
,"08-2008"
,"09-2008"
,"10-2008"
,"11-2008"
,"12-2008"
,"01-2009"
,"02-2009"
,"03-2009"
,"04-2009"
,"05-2009"
,"06-2009"
,"07-2009"
,"08-2009"
,"09-2009"
,"10-2009"
,"11-2009"
,"12-2009"
,"01-2010"
,"02-2010"
,"03-2010"
,"04-2010"
,"05-2010"
,"06-2010"
,"07-2010"
,"08-2010"
,"09-2010"
,"10-2010"
,"11-2010"
,"12-2010"
,"01-2011"
,"02-2011"
,"03-2011"
,"04-2011"
,"05-2011"
,"06-2011"
,"07-2011"
,"08-2011"
,"09-2011"
,"10-2011"
,"11-2011"
,"12-2011"
,"01-2012"
,"02-2012"
,"03-2012"
,"04-2012"
,"05-2012"
,"06-2012"
,"07-2012"
,"08-2012"
,"09-2012"
,"10-2012"
,"11-2012"
,"12-2012"
,"01-2013"
,"02-2013"
,"03-2013"
,"04-2013"
,"05-2013"
,"06-2013"
,"07-2013"
,"08-2013"
,"09-2013"
,"10-2013"
,"11-2013"
,"12-2013"
,"01-2014"
,"02-2014"
,"03-2014"
,"04-2014"
,"05-2014"
,"06-2014"
,"07-2014"
,"08-2014"
,"09-2014"
,"10-2014"
,"11-2014"
,"12-2014"
,"01-2015"
,"02-2015"
,"03-2015"
,"04-2015"
,"05-2015"
,"06-2015"
,"07-2015"
,"08-2015"
,"09-2015"
,"10-2015"
,"11-2015"
,"12-2015"
,"01-2016"
,"02-2016"
,"03-2016"
,"04-2016"
,"05-2016"
,"06-2016"
,"07-2016"
,"08-2016"
,"09-2016"
,"10-2016"
,"11-2016"
,"12-2016"
,"01-2017"
,"02-2017"
,"03-2017"
,"04-2017"
,"05-2017"
,"06-2017"
,"07-2017"
,"08-2017"
,"09-2017"
,"10-2017"
,"11-2017"
,"12-2017"
,"01-2018"
,"02-2018"
,"03-2018"
,"04-2018"
,"05-2018"
,"06-2018"
,"07-2018"
,"08-2018"
,"09-2018"
,"10-2018"
,"11-2018"
,"12-2018"
,"01-2019"
,"02-2019"
,"03-2019"
,"04-2019"
,"05-2019"
,"06-2019"
,"07-2019"
,"08-2019"
,"09-2019"
,"10-2019"
,"11-2019"
,"12-2019"
,"01-2020"
,"02-2020"
,"03-2020"
,"04-2020"
from gs_tables_db.TRNG_COVID19_STG_Personal_Consumption_Expend_Monthly_2_3_52000-20;
replace view TRNG_COVID19.STG_readiness_tableau_sample as locking row for access select
"Measure Names"
,"Metropolitan€statistical€area"
,"Overall Score Sort"
,"Measure Values"
from gs_tables_db.TRNG_COVID19_STG_readiness_tableau_sample;
replace view TRNG_COVID19.STG_resilience_res as locking row for access select
"RESV_NUM"
,"ORIG_BOOK_DT"
,"PU_DT"
,"PU_AREA_NUM"
,"PU_LOC_NUM"
,"LOC_NM"
,"DSPY_CITY_NM"
,"CITY_CD"
,"PSTL_CD"
,"PU_ST_PROV_CD"
,"MAJ_CUST_DESC"
,"MKTG_CHNL_PARNT_DESC"
,"MAJ_PROD_DESC"
,"SUB_TOT_2_AMT"
from gs_tables_db.TRNG_COVID19_STG_resilience_res;
replace view TRNG_COVID19.STG_res_summary_detail as locking row for access select
"RESV_NUM"
,"ORIG_BOOK_DT"
,"PU_DT"
,"PU_AREA_NUM"
,"PU_LOC_NUM"
,"LOC_NM"
,"DSPY_CITY_NM"
,"CITY_CD"
,"PSTL_CD"
,"PU_ST_PROV_CD"
,"MAJ_CUST_DESC"
,"MKTG_CHNL_PARNT_DESC"
,"MAJ_PROD_DESC"
,"SUB_TOT_2_AMT"
from gs_tables_db.TRNG_COVID19_STG_res_summary_detail;
replace view TRNG_COVID19.STG_RES_SUMMARY_DETAIL_ORIG as locking row for access select
"RESV_NUM"
,"ORIG_BOOK_DT"
,"PU_DT"
,"PU_AREA_NUM"
,"PU_LOC_NUM"
,"LOC_NM"
,"DSPY_CITY_NM"
,"CITY_CD"
,"PSTL_CD"
,"PU_ST_PROV_CD"
,"MAJ_CUST_DESC"
,"MKTG_CHNL_PARNT_DESC"
,"MAJ_PROD_DESC"
,"SUB_TOT_2_AMT"
from gs_tables_db.TRNG_COVID19_STG_RES_SUMMARY_DETAIL_ORIG;
replace view TRNG_COVID19.STG_Site_addresses as locking row for access select
"File_Client_Id"
,"Building_Address 1"
,"Building_City"
,"Building_State"
,"Region"
,"Building_Country"
,"FTE_HC_at_Location"
,"Contingent_HC_at_Location"
,"Number_of_Desks"
,"Average_Attendance"
from gs_tables_db.TRNG_COVID19_STG_Site_addresses;
replace view TRNG_COVID19.STG_Summary_stats_all_locs as locking row for access select
"location_id"
,"location_name"
,"all_bed_capacity"
,"icu_bed_capacity"
,"Path_Update_Dt"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Summary_stats_all_locs;
replace view TRNG_COVID19.STG_Summary_stats_all_locs_BKP_21_05_2021 as locking row for access select
"location_name"
,"location_id"
,"all_bed_capacity"
,"icu_bed_capacity"
,"all_bed_usage"
,"icu_bed_usage"
,"available_all_nbr"
,"available_icu_nbr"
,"travel_limit_start_date"
,"travel_limit_end_date"
,"stay_home_start_date"
,"stay_home_end_date"
,"educational_fac_start_date"
,"educational_fac_end_date"
,"any_gathering_restrict_start_date"
,"any_gathering_restrict_end_date"
,"any_business_start_date"
,"any_business_end_date"
,"all_non-ess_business_start_date"
,"all_non-ess_business_end_date"
,"Path_Update_Dt"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_Summary_stats_all_locs_BKP_21_05_2021;
replace view TRNG_COVID19.STG_Teradata_Company_info_Employee as locking row for access select
"Employee_Number"
,"Virtual_Flag"
,"Employee_Address"
,"Emp_city"
,"Emp_State"
,"Emp_zip"
,"Manager_Employee_Number"
,"Manager_Geo"
,"Employee_Geo"
,"Employee_Designation"
,"Office_name"
from gs_tables_db.TRNG_COVID19_STG_Teradata_Company_info_Employee;
replace view TRNG_COVID19.STG_Teradata_Company_info_Office as locking row for access select
"OffIce_name"
,"Office_Address"
,"city"
,"State"
,"zip"
,"Nbr_emplyees"
,"Security_Type"
from gs_tables_db.TRNG_COVID19_STG_Teradata_Company_info_Office;
replace view TRNG_COVID19.STG_Teradata_Company_info_Project as locking row for access select
"Employee_Number"
,"Project"
,"Account_Number"
,"Account_Name"
,"Billable_Flag"
from gs_tables_db.TRNG_COVID19_STG_Teradata_Company_info_Project;
replace view TRNG_COVID19.STG_Teradata_zipcode_office_virtual as locking row for access select
"zipcode"
,"Office_ind"
,"Virtual_ind"
,"city"
,"State"
,"County"
from gs_tables_db.TRNG_COVID19_STG_Teradata_zipcode_office_virtual;
replace view TRNG_COVID19.STG_TSA_TRAVEL as locking row for access select
"Travel_Date"
,"TravelThroughPut"
,"TravelThroughPutLastYear"
,"TravelThroughPut2020"
,"TravelThroughPut2019"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_TSA_TRAVEL;
replace view TRNG_COVID19.STG_Tweeter_Excludes as locking row for access select
"TwitterWord"
from gs_tables_db.TRNG_COVID19_STG_Tweeter_Excludes;
replace view TRNG_COVID19.stg_tweet_input as locking row for access select
"TweetDateTime"
,"TwitterUser"
,"TwitterLocation"
,"SearchCriteria"
,"TweetText"
from gs_tables_db.TRNG_COVID19_stg_tweet_input;
replace view TRNG_COVID19.stg_tweet_output as locking row for access select
"tweetdatetime"
,"twitteruser"
,"twitterlocation"
,"searchcriteria"
,"tweettext"
,"token"
,"frequency"
,"location"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_stg_tweet_output;
replace view TRNG_COVID19.STG_USZIP_BEN as locking row for access select
"zip"
,"lat"
,"lng"
,"city"
,"state_id"
,"state_name"
,"zcta"
,"parent_zcta"
,"population"
,"density"
,"county_fips"
,"county_name"
,"county_weights"
,"county_names_all"
,"county_fips_all"
,"imprecise"
,"military"
,"timezone"
from gs_tables_db.TRNG_COVID19_STG_USZIP_BEN;
replace view TRNG_COVID19.STG_US_CENSUS_SURVEY as locking row for access select
"Period"
,"Value"
,"Metric_name"
,"Data_source_desc"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_STG_US_CENSUS_SURVEY;
replace view TRNG_COVID19.STG_us_counties2020-06-11 as locking row for access select
"date_key"
,"county"
,"state"
,"fips"
,"cases"
,"deaths"
from gs_tables_db.TRNG_COVID19_STG_us_counties2020-06-11;
replace view TRNG_COVID19.STG_US_indicator_housing_starts_06_06_2020 as locking row for access select
"Country"
,"Category"
,"DateTime"
,"Metric_Value"
,"Frequency"
,"HistoricalDataSymbol"
,"LastUpdate"
from gs_tables_db.TRNG_COVID19_STG_US_indicator_housing_starts_06_06_2020;
replace view TRNG_COVID19.STG_US_indicator_initial_jobless_claims as locking row for access select
"Country"
,"Category"
,"DateTime"
,"METRIC_VALUE"
,"Frequency"
,"HistoricalDataSymbol"
,"LastUpdate"
from gs_tables_db.TRNG_COVID19_STG_US_indicator_initial_jobless_claims;
replace view TRNG_COVID19.STG_US_indicator_initial_jobless_claims_06_06_2020 as locking row for access select
"Country"
,"Category"
,"DateTime"
,"Value"
,"Frequency"
,"HistoricalDataSymbol"
,"LastUpdate"
from gs_tables_db.TRNG_COVID19_STG_US_indicator_initial_jobless_claims_06_06_2020;
replace view TRNG_COVID19.STG_US_indicator_Stock_Market_06_06_2020 as locking row for access select
"Country"
,"Category"
,"DateTime"
,"metric_value"
,"Frequency"
,"HistoricalDataSymbol"
,"LastUpdate"
from gs_tables_db.TRNG_COVID19_STG_US_indicator_Stock_Market_06_06_2020;
replace view TRNG_COVID19.stg_US_indicator_unemployment_rate as locking row for access select
"Country"
,"Category"
,"DateTime"
,"Value"
,"Frequency"
,"HistoricalDataSymbol"
,"LastUpdate"
from gs_tables_db.TRNG_COVID19_stg_US_indicator_unemployment_rate;
replace view TRNG_COVID19.STG_WestAppleMobility as locking row for access select
"c1"
,"c2"
,"c3"
,"c4"
,"c5"
,"c6"
,"c7"
,"c8"
,"c9"
,"c10"
,"c11"
,"c12"
,"c13"
,"c14"
,"c15"
,"c16"
,"c17"
,"c18"
,"c19"
,"c20"
,"c21"
,"c22"
,"c23"
,"c24"
,"c25"
,"c26"
,"c27"
,"c28"
,"c29"
,"c30"
,"c31"
,"c32"
,"c33"
,"c34"
,"c35"
,"c36"
,"c37"
,"c38"
,"c39"
,"c40"
,"c41"
,"c42"
,"c43"
,"c44"
,"c45"
,"c46"
,"c47"
,"c48"
,"c49"
,"c50"
,"c51"
,"c52"
,"c53"
,"c54"
,"c55"
,"c56"
,"c57"
,"c58"
,"c59"
,"c60"
,"c61"
,"c62"
,"c63"
,"c64"
,"c65"
,"c66"
,"c67"
,"c68"
,"c69"
,"c70"
,"c71"
,"c72"
,"c73"
,"c74"
,"c75"
,"c76"
,"c77"
,"c78"
,"c79"
,"c80"
,"c81"
,"c82"
,"c83"
,"c84"
,"c85"
,"c86"
,"c87"
,"c88"
,"c89"
,"c90"
,"c91"
,"c92"
,"c93"
,"c94"
,"c95"
,"c96"
,"c97"
,"c98"
,"c99"
,"c100"
,"c101"
,"c102"
,"c103"
,"c104"
,"c105"
,"c106"
,"c107"
,"c108"
,"c109"
,"c110"
,"c111"
,"c112"
,"c113"
,"c114"
,"c115"
,"c116"
,"c117"
,"c118"
,"c119"
,"c120"
,"c121"
,"c122"
,"c123"
,"c124"
,"c125"
,"c126"
,"c127"
,"c128"
,"c129"
,"c130"
,"c131"
,"c132"
,"c133"
,"c134"
,"c135"
from gs_tables_db.TRNG_COVID19_STG_WestAppleMobility;
replace view TRNG_COVID19.STG_ZIP_COUNTY_032020_ES as locking row for access select
"ZIP"
,"COUNTY"
,"RES_RATIO"
,"BUS_RATIO"
,"OTH_RATIO"
,"TOT_RATIO"
from gs_tables_db.TRNG_COVID19_STG_ZIP_COUNTY_032020_ES;
replace view TRNG_COVID19.STG_ZIP_COUNTY_ES as locking row for access select
"ZIP"
,"COUNTY"
,"RES_RATIO"
,"BUS_RATIO"
,"OTH_RATIO"
,"TOT_RATIO"
from gs_tables_db.TRNG_COVID19_STG_ZIP_COUNTY_ES;
replace view TRNG_COVID19.t1 as locking row for access select
"id"
,"cc2"
,"geo_type"
,"region"
,"transportation_type"
,"alternative_name"
,"sub_region"
,"country"
,"cc1"
from gs_tables_db.TRNG_COVID19_t1;
replace view TRNG_COVID19.TABLE_DUMMY as locking row for access select
"Val"
from gs_tables_db.TRNG_COVID19_TABLE_DUMMY;
replace view TRNG_COVID19.TEMP_DIM_DASH_VIZ_METRIC_XREF as locking row for access select
"CORP_ID"
,"CORP_NAME"
,"CORP_FUNCTION"
,"DASHBOARD_VERSION"
,"SEMANTIC_VIEW_NAME"
,"GEO_GRANULARITY"
,"DATE_GRANULARITY"
,"METRIC_NAME"
,"METRIC_DISPLAY_NAME"
,"METRIC_DISPLAY_SHORT_NAME"
,"METRIC_UOM"
,"DASH_VIZ_DISPLAY_NAME"
,"METRIC_VAL_IND_SEL"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"DATA_SOURCE_NAME"
from gs_tables_db.TRNG_COVID19_TEMP_DIM_DASH_VIZ_METRIC_XREF;
replace view TRNG_COVID19.TEMP_DIM_GEO_LOCATION_T as locking row for access select
"UID"
,"GEO_GRANULARITY"
,"Country_code"
,"iso3"
,"code3"
,"FIPS"
,"County"
,"County_long"
,"STATE_NAME"
,"STATE_CODE"
,"COUNTRY_NAME"
,"Lat"
,"Lon"
,"Combined_Key"
,"Population"
from gs_tables_db.TRNG_COVID19_TEMP_DIM_GEO_LOCATION_T;
replace view TRNG_COVID19.TEMP_DIM_People_location as locking row for access select
"CLient_nbr"
,"Client_name"
,"Site_Id"
,"Site_Type"
,"Address"
,"City"
,"State"
,"Zipcode"
,"Region"
,"Country_cd"
,"Nbr_at_location"
,"People_type"
from gs_tables_db.TRNG_COVID19_TEMP_DIM_People_location;
replace view TRNG_COVID19.TEMP_DIM_Site_addresses as locking row for access select
"CLient_nbr"
,"Client_name"
,"Site_Id"
,"Site_Type"
,"Address"
,"City"
,"State"
,"Zipcode"
,"Region"
,"Country_cd"
,"FTE_HC_at_Location"
,"Contingent_HC_at_Location"
,"Number_of_Desks"
,"Average_Attendance"
,"Security_Type"
from gs_tables_db.TRNG_COVID19_TEMP_DIM_Site_addresses;
replace view TRNG_COVID19.TEMP_DIM_ZIP_COUNTY_MSA_MAP_RAW as locking row for access select
"ZIPCODE"
,"COUNTY_FIPS"
,"COUNTY_RES_RATIO"
,"COUNTY_BUS_RATIO"
,"COUNTY_OTH_RATIO"
,"COUNTY_TOT_RATIO"
,"TOP_ZIP_FLAG"
,"SPLIT_COUNTY_CNT"
,"TOP_COUNTY_FLAG"
,"COUNTY_NAME"
,"CBSA_CODE"
,"CBSA_NAME"
,"MSA_NAME"
,"STATE_NAME"
from gs_tables_db.TRNG_COVID19_TEMP_DIM_ZIP_COUNTY_MSA_MAP_RAW;
replace view TRNG_COVID19.TEMP_FACT_Covid_Model_Data as locking row for access select
"MODEL_KEY"
,"DATE_KEY"
,"DATE_GRANULARITY"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"MODELED_DATE"
,"MODEL_VERSION"
,"location_name"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"deaths_mean_smoothed"
,"deaths_lower_smoothed"
,"deaths_upper_smoothed"
,"totdea_mean_smoothed"
,"totdea_lower_smoothed"
,"totdea_upper_smoothed"
,"mobility_data_type"
,"mobility_composite"
,"total_tests_data_type"
,"total_tests"
,"confirmed_infections"
,"est_infections_mean"
,"est_infections_lower"
,"est_infections_upper"
,"REC_INS_TS"
,"REC_UPD_TS"
,"Path_Update_Val"
from gs_tables_db.TRNG_COVID19_TEMP_FACT_Covid_Model_Data;
replace view TRNG_COVID19.TEMP_FACT_Covid_Model_Data_BKP_31_05_2021 as locking row for access select
"MODEL_KEY"
,"DATE_KEY"
,"DATE_GRANULARITY"
,"GEO_KEY"
,"GEO_GRANULARITY"
,"MODELED_DATE"
,"MODEL_VERSION"
,"location_name"
,"allbed_mean"
,"allbed_lower"
,"allbed_upper"
,"ICUbed_mean"
,"ICUbed_lower"
,"ICUbed_upper"
,"InvVen_mean"
,"InvVen_lower"
,"InvVen_upper"
,"deaths_mean"
,"deaths_lower"
,"deaths_upper"
,"admis_mean"
,"admis_lower"
,"admis_upper"
,"newICU_mean"
,"newICU_lower"
,"newICU_upper"
,"totdea_mean"
,"totdea_lower"
,"totdea_upper"
,"bedover_mean"
,"bedover_lower"
,"bedover_upper"
,"icuover_mean"
,"icuover_lower"
,"icuover_upper"
,"deaths_mean_smoothed"
,"deaths_lower_smoothed"
,"deaths_upper_smoothed"
,"totdea_mean_smoothed"
,"totdea_lower_smoothed"
,"totdea_upper_smoothed"
,"mobility_data_type"
,"mobility_composite"
,"total_tests_data_type"
,"total_tests"
,"confirmed_infections"
,"est_infections_mean"
,"est_infections_lower"
,"est_infections_upper"
,"REC_INS_TS"
,"REC_UPD_TS"
,"Path_Update_Val"
from gs_tables_db.TRNG_COVID19_TEMP_FACT_Covid_Model_Data_BKP_31_05_2021;
replace view TRNG_COVID19.TEMP_STG_BEA_PersonalConsumption_2_3_5 as locking row for access select
"ROW_KEY"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"PERIOD_MMM-YYYY"
,"METRIC_NAME"
,"METRIC_INDEX"
,"METRIC_VALUE"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
from gs_tables_db.TRNG_COVID19_TEMP_STG_BEA_PersonalConsumption_2_3_5;
replace view TRNG_COVID19.TEMP_STG_BEA_PersonalConsumption_2_4_5 as locking row for access select
"ROW_KEY"
,"DOMAIN_NAME"
,"SUBDOMAIN_1_NAME"
,"SUBDOMAIN_2_NAME"
,"SUBDOMAIN_3_NAME"
,"SUBDOMAIN_4_NAME"
,"PERIOD_MMM-YYYY"
,"METRIC_NAME"
,"METRIC_INDEX"
,"METRIC_VALUE"
,"DATA_SOURCE_NAME"
,"DATA_SOURCE_DESC"
from gs_tables_db.TRNG_COVID19_TEMP_STG_BEA_PersonalConsumption_2_4_5;
replace view TRNG_COVID19.TEMP_STG_Consumer_Sentiment_Index as locking row for access select
"Month"
,"Year"
,"CustomerSentimentIndex"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_TEMP_STG_Consumer_Sentiment_Index;
replace view TRNG_COVID19.TEMP_STG_COVID19_NATIONAL_ESTIMATES as locking row for access select
"state"
,"statename"
,"collectionDate"
,"InpatBeds_Occ_AnyPat_Est"
,"InpatBeds_Occ_AnyPat_LoCI"
,"InpatBeds_Occ_AnyPat_UpCI"
,"InpatBeds_Occ_AnyPat_Est_Avail"
,"InBedsOccAnyPat__Numbeds_Est"
,"InBedsOccAnyPat__Numbeds_LoCI"
,"InBedsOccAnyPat__Numbeds_UpCI"
,"InpatBeds_Occ_COVID_Est"
,"InpatBeds_Occ_COVID_LoCI"
,"InpatBeds_Occ_COVID_UpCI"
,"InBedsOccCOVID__Numbeds_Est"
,"InBedsOccCOVID__Numbeds_LoCI"
,"InBedsOccCOVID__Numbeds_UpCI"
,"ICUBeds_Occ_AnyPat_Est"
,"ICUBeds_Occ_AnyPat_LoCI"
,"ICUBeds_Occ_AnyPat_UpCI"
,"ICUBeds_Occ_AnyPat_Est_Avail"
,"ICUBedsOccAnyPat__N_ICUBeds_Est"
,"ICUBedsOccAnyPat__N_ICUBeds_LoCI"
,"ICUBedsOccAnyPat__N_ICUBeds_UpCI"
from gs_tables_db.TRNG_COVID19_TEMP_STG_COVID19_NATIONAL_ESTIMATES;
replace view TRNG_COVID19.TEMP_STG_CO_EST2019 as locking row for access select
"SUMLEV"
,"REGION"
,"DIVISION"
,"STATE"
,"COUNTY"
,"STNAME"
,"CTYNAME"
,"CENSUS2010POP"
,"ESTIMATESBASE2010"
,"POPESTIMATE2010"
,"POPESTIMATE2011"
,"POPESTIMATE2012"
,"POPESTIMATE2013"
,"POPESTIMATE2014"
,"POPESTIMATE2015"
,"POPESTIMATE2016"
,"POPESTIMATE2017"
,"POPESTIMATE2018"
,"POPESTIMATE2019"
,"NPOPCHG_2010"
,"NPOPCHG_2011"
,"NPOPCHG_2012"
,"NPOPCHG_2013"
,"NPOPCHG_2014"
,"NPOPCHG_2015"
,"NPOPCHG_2016"
,"NPOPCHG_2017"
,"NPOPCHG_2018"
,"NPOPCHG_2019"
,"BIRTHS2010"
,"BIRTHS2011"
,"BIRTHS2012"
,"BIRTHS2013"
,"BIRTHS2014"
,"BIRTHS2015"
,"BIRTHS2016"
,"BIRTHS2017"
,"BIRTHS2018"
,"BIRTHS2019"
,"DEATHS2010"
,"DEATHS2011"
,"DEATHS2012"
,"DEATHS2013"
,"DEATHS2014"
,"DEATHS2015"
,"DEATHS2016"
,"DEATHS2017"
,"DEATHS2018"
,"DEATHS2019"
,"NATURALINC2010"
,"NATURALINC2011"
,"NATURALINC2012"
,"NATURALINC2013"
,"NATURALINC2014"
,"NATURALINC2015"
,"NATURALINC2016"
,"NATURALINC2017"
,"NATURALINC2018"
,"NATURALINC2019"
,"INTERNATIONALMIG2010"
,"INTERNATIONALMIG2011"
,"INTERNATIONALMIG2012"
,"INTERNATIONALMIG2013"
,"INTERNATIONALMIG2014"
,"INTERNATIONALMIG2015"
,"INTERNATIONALMIG2016"
,"INTERNATIONALMIG2017"
,"INTERNATIONALMIG2018"
,"INTERNATIONALMIG2019"
,"DOMESTICMIG2010"
,"DOMESTICMIG2011"
,"DOMESTICMIG2012"
,"DOMESTICMIG2013"
,"DOMESTICMIG2014"
,"DOMESTICMIG2015"
,"DOMESTICMIG2016"
,"DOMESTICMIG2017"
,"DOMESTICMIG2018"
,"DOMESTICMIG2019"
,"NETMIG2010"
,"NETMIG2011"
,"NETMIG2012"
,"NETMIG2013"
,"NETMIG2014"
,"NETMIG2015"
,"NETMIG2016"
,"NETMIG2017"
,"NETMIG2018"
,"NETMIG2019"
,"RESIDUAL2010"
,"RESIDUAL2011"
,"RESIDUAL2012"
,"RESIDUAL2013"
,"RESIDUAL2014"
,"RESIDUAL2015"
,"RESIDUAL2016"
,"RESIDUAL2017"
,"RESIDUAL2018"
,"RESIDUAL2019"
,"GQESTIMATESBASE2010"
,"GQESTIMATES2010"
,"GQESTIMATES2011"
,"GQESTIMATES2012"
,"GQESTIMATES2013"
,"GQESTIMATES2014"
,"GQESTIMATES2015"
,"GQESTIMATES2016"
,"GQESTIMATES2017"
,"GQESTIMATES2018"
,"GQESTIMATES2019"
,"RBIRTH2011"
,"RBIRTH2012"
,"RBIRTH2013"
,"RBIRTH2014"
,"RBIRTH2015"
,"RBIRTH2016"
,"RBIRTH2017"
,"RBIRTH2018"
,"RBIRTH2019"
,"RDEATH2011"
,"RDEATH2012"
,"RDEATH2013"
,"RDEATH2014"
,"RDEATH2015"
,"RDEATH2016"
,"RDEATH2017"
,"RDEATH2018"
,"RDEATH2019"
,"RNATURALINC2011"
,"RNATURALINC2012"
,"RNATURALINC2013"
,"RNATURALINC2014"
,"RNATURALINC2015"
,"RNATURALINC2016"
,"RNATURALINC2017"
,"RNATURALINC2018"
,"RNATURALINC2019"
,"RINTERNATIONALMIG2011"
,"RINTERNATIONALMIG2012"
,"RINTERNATIONALMIG2013"
,"RINTERNATIONALMIG2014"
,"RINTERNATIONALMIG2015"
,"RINTERNATIONALMIG2016"
,"RINTERNATIONALMIG2017"
,"RINTERNATIONALMIG2018"
,"RINTERNATIONALMIG2019"
,"RDOMESTICMIG2011"
,"RDOMESTICMIG2012"
,"RDOMESTICMIG2013"
,"RDOMESTICMIG2014"
,"RDOMESTICMIG2015"
,"RDOMESTICMIG2016"
,"RDOMESTICMIG2017"
,"RDOMESTICMIG2018"
,"RDOMESTICMIG2019"
,"RNETMIG2011"
,"RNETMIG2012"
,"RNETMIG2013"
,"RNETMIG2014"
,"RNETMIG2015"
,"RNETMIG2016"
,"RNETMIG2017"
,"RNETMIG2018"
,"RNETMIG2019"
from gs_tables_db.TRNG_COVID19_TEMP_STG_CO_EST2019;
replace view TRNG_COVID19.TEMP_Transaltion_Table as locking row for access select
"CLNSNG_CD"
,"CLNSNG_SRC"
,"CLNSNG_TRGT"
,"CLNSNG_DESC"
from gs_tables_db.TRNG_COVID19_TEMP_Transaltion_Table;
replace view TRNG_COVID19.TEST_TSA_TRAVEL as locking row for access select
"Travel_Date"
,"TravelThroughPut"
,"TravelThroughPutLastYear"
from gs_tables_db.TRNG_COVID19_TEST_TSA_TRAVEL;
replace view TRNG_COVID19.test_tweet_input as locking row for access select
"TweetDateTime"
,"TwitterUser"
,"TwitterLocation"
,"SearchCriteria"
,"TweetText"
from gs_tables_db.TRNG_COVID19_test_tweet_input;
replace view TRNG_COVID19.text_parser_output as locking row for access select
"tweetdatetime"
,"twitteruser"
,"twitterlocation"
,"searchcriteria"
,"tweettext"
,"token"
,"frequency"
,"location"
,"current_dttm"
from gs_tables_db.TRNG_COVID19_text_parser_output;
replace view TRNG_COVID19.Transaltion_Table as locking row for access select
"CLNSNG_CD"
,"CLNSNG_SRC"
,"CLNSNG_TRGT"
,"CLNSNG_DESC"
from gs_tables_db.TRNG_COVID19_Transaltion_Table;
replace view TRNG_COVID19.Tweeter_Results as locking row for access select
"term"
,"occurrences"
from gs_tables_db.TRNG_COVID19_Tweeter_Results;
replace view TRNG_COVID19.TwitterCount as locking row for access select
"Term"
,"Counts"
from gs_tables_db.TRNG_COVID19_TwitterCount;
replace view TRNG_COVID19.US_CITIES as locking row for access select
"GEO_NAME"
,"POPULATION"
,"DENSITY_KM2"
from gs_tables_db.TRNG_COVID19_US_CITIES;
replace view TRNG_COVID19.US_HOPITALS as locking row for access select
"X"
,"Y"
,"OBJECTID"
,"ID"
,"NAME"
,"ADDRESS"
,"CITY"
,"STATE"
,"ZIP"
,"ZIP4"
,"TELEPHONE"
,"HOSPITAL_TYPE"
,"STATUS"
,"POPULATION"
,"COUNTY"
,"COUNTYFIPS"
,"COUNTRY"
,"LATITUDE"
,"LONGITUDE"
,"NAICS_CODE"
,"NAICS_DESC"
,"SOURCE"
,"SOURCEDATE"
,"VAL_METHOD"
,"VAL_DATE"
,"WEBSITE"
,"STATE_ID"
,"ALT_NAME"
,"ST_FIPS"
,"OWNER"
,"TTL_STAFF"
,"BEDS"
,"TRAUMA"
,"HELIPAD"
from gs_tables_db.TRNG_COVID19_US_HOPITALS;
replace view TRNG_COVID19.US_HOPITALS_cluster as locking row for access select
"beds"
,"clusterid"
from gs_tables_db.TRNG_COVID19_US_HOPITALS_cluster;
replace view TRNG_COVID19.US_HOPITALS_model as locking row for access select
"clusterid"
,"id"
,"latitude"
,"longitude"
,"size"
,"withinss"
from gs_tables_db.TRNG_COVID19_US_HOPITALS_model;
replace view TRNG_COVID19.US_POP as locking row for access select
"GEO_NAME"
,"POPULATION"
,"DENSITY_KM2"
from gs_tables_db.TRNG_COVID19_US_POP;
replace view TRNG_COVID19.US_STATE_VAC as locking row for access select
"date"
,"location"
,"total_vaccinations"
,"total_distributed"
,"people_vaccinated"
,"people_fully_vaccinated_per_hundred"
,"total_vaccinations_per_hundred"
,"people_fully_vaccinated"
,"people_vaccinated_per_hundred"
,"distributed_per_hundred"
,"daily_vaccinations_raw"
,"daily_vaccinations"
,"daily_vaccinations_per_million"
,"share_doses_used"
,"total_boosters"
,"total_boosters_per_hundred"
from gs_tables_db.TRNG_COVID19_US_STATE_VAC;
replace view TRNG_COVID19.varmax_case_vac as locking row for access select
"province_state"
,"coef"
,"coef_value"
,"stepahead"
,"predict_total_conf_smavg"
from gs_tables_db.TRNG_COVID19_varmax_case_vac;
replace view TRNG_COVID19.varmax_death_vac as locking row for access select
"province_state"
,"coef"
,"coef_value"
,"stepahead"
,"predict_total_deaths_smavg"
from gs_tables_db.TRNG_COVID19_varmax_death_vac;
replace view TRNG_COVID19.weatherevents as locking row for access select
"onset"
,"ends"
,"event"
,"severity"
,"certainty"
,"urgency"
,"response"
,"UGC"
,"current_dttm"
,"description"
from gs_tables_db.TRNG_COVID19_weatherevents;
replace view TRNG_COVID19.weathereventshourly as locking row for access select
"onset"
,"ends"
,"event"
,"severity"
,"certainty"
,"urgency"
,"response"
,"UGC"
,"current_dttm"
,"description"
from gs_tables_db.TRNG_COVID19_weathereventshourly;
replace view TRNG_COVID19.word_cloud_tweet as locking row for access select
"c1"
,"term"
,"occurrences"
,"Hashtag"
from gs_tables_db.TRNG_COVID19_word_cloud_tweet;
replace view TRNG_COVID19.zzzz as locking row for access select
"Travel_Date"
,"TravelThroughPut"
,"TravelThroughPutLastYear"
from gs_tables_db.TRNG_COVID19_zzzz;
replace view TRNG_COVID19.zzz_output as locking row for access select
"tweetdatetime"
,"twitteruser"
,"twitterlocation"
,"searchcriteria"
,"tweettext"
,"token"
,"frequency"
,"location"
from gs_tables_db.TRNG_COVID19_zzz_output;
replace view TRNG_COVID19.zzz_tweettext as locking row for access select
"TweetText"
from gs_tables_db.TRNG_COVID19_zzz_tweettext;
REPLACE VIEW TRNG_COVID19.ARIMA_COUNTY_CASE_PRED AS
(
SELECT (SEL MAX("DATE") FROM TRNG_COVID19.US_CONF_COUNTY_SMAVG)  + CAST(STEPAHEAD AS INT) AS "DATE", PREDICT AS TOTAL_CONF, A.COUNTY, B.PROVINCE_STATE
FROM TRNG_COVID19.ARIMA_COUNTY_CASE A
LEFT OUTER JOIN TRNG_COVID19.US_CONF_COUNTY_SMAVG B
ON A.COUNTY = B.COUNTY
WHERE TOTAL_CONF > 0
GROUP BY 1,2,3,4
);

REPLACE VIEW TRNG_COVID19.ARIMA_COUNTY_DEATH_PRED AS 
(
SELECT (SEL MAX("DATE") FROM TRNG_COVID19.US_CONF_COUNTY_SMAVG) + CAST(STEPAHEAD AS INT) AS "DATE", PREDICT AS TOTAL_DEATHS, A.COUNTY, B.PROVINCE_STATE
FROM TRNG_COVID19.ARIMA_COUNTY_DEATH A
LEFT OUTER JOIN TRNG_COVID19.US_DEATH_COUNTY_SMAVG B
ON A.COUNTY = B.COUNTY
WHERE TOTAL_DEATHS > 0
GROUP BY 1,2,3,4
);

REPLACE VIEW TRNG_COVID19.CountyToStateRatio AS 
LOCKING ROW FOR ACCESS
select  State_Cd as StateCd,
  State_Name as StateName,
  Area_Name as CountyName,
  CENSUS_2010_POP as CountyPop,
  State_Sum as StatePop,
  CENSUS_2010_POP/State_Sum(DECIMAL(6,5)) as CountyToStateRatio
from TRNG_COVID19.PopulationEstimates t1,
 (select State,State_Cd,Area_Name as State_Name,CENSUS_2010_POP AS State_Sum
 from TRNG_COVID19.PopulationEstimates t1,
   TRNG_COVID19.DIM_StatesLKUP t2
 where t1.Area_Name = t2.State_Name) t2
where t1.State = t2.State_Cd
and CountyToStateRatio <> 1;

REPLACE VIEW TRNG_COVID19.COUNTY_TS_STATS AS
LOCKING ROW FOR ACCESS
SELECT *
FROM TRNG_COVID19.FACT_Covid19Counties;

REPLACE VIEW TRNG_COVID19.DATA AS SELECT * FROM TRNG_COVID19.DATA_SIMUL;

REPLACE VIEW TRNG_COVID19.DATA_RAW AS SELECT * FROM TRNG_COVID19.DATA_SIMUL;

REPLACE VIEW TRNG_COVID19.DIM_CALENDAR_V  AS
    LOCKING ROW FOR ACCESS
    SELECT 
        CALENDAR_DATE AS CAL_DATE_KEY,
        DAY_OF_WEEK   AS CAL_DAY_OF_WEEK,
        CONCAT('W',TRIM(WEEK_OF_YEAR),'-',TRIM(YEAR_OF_CALENDAR)) AS CAL_WEEK_YEAR,
        MIN(CALENDAR_DATE) OVER (PARTITION BY WEEK_OF_YEAR,YEAR_OF_CALENDAR
        ORDER BY CALENDAR_DATE) AS WEEK_START_DATE,
            MAX(CALENDAR_DATE) OVER (PARTITION BY WEEK_OF_YEAR,YEAR_OF_CALENDAR
        ORDER BY CALENDAR_DATE) AS WEEK_END_DATE,
            CONCAT('M',TRIM(MONTH_OF_YEAR),'-',TRIM(YEAR_OF_CALENDAR)) AS CAL_MONTH_YEAR,
            MIN(CALENDAR_DATE) OVER (PARTITION BY MONTH_OF_YEAR,YEAR_OF_CALENDAR
        ORDER BY CALENDAR_DATE) AS MONTH_START_DATE,
            MAX(CALENDAR_DATE) OVER (PARTITION BY MONTH_OF_YEAR,YEAR_OF_CALENDAR
        ORDER BY CALENDAR_DATE) AS MONTH_END_DATE,
            
        CASE
            WHEN DAY_OF_WEEK = 1 THEN CALENDAR_DATE + 6
            WHEN DAY_OF_WEEK = 2 THEN CALENDAR_DATE + 5
            WHEN DAY_OF_WEEK = 3 THEN CALENDAR_DATE + 4
            WHEN DAY_OF_WEEK = 4 THEN CALENDAR_DATE + 3
            WHEN DAY_OF_WEEK = 5 THEN CALENDAR_DATE + 2
            WHEN DAY_OF_WEEK = 6 THEN CALENDAR_DATE + 1
        ELSE CALENDAR_DATE
        END cal_day_sat,
            day_of_year,
            day_of_calendar day_of_cal_1900,
            WEEK_OF_YEAR --select *
        
        FROM SYS_CALENDAR.CALENDAR a
        WHERE CALENDAR_DATE BETWEEN DATE '2000-01-01' AND 
        DATE '2030-01-01';

REPLACE VIEW TRNG_COVID19.Dim_client_Metrics_ref_V AS
    LOCKING ROW FOR ACCESS
    SELECT *
        FROM TRNG_COVID19.Dim_Client_Metrics_ref;

REPLACE VIEW TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF_V AS
    LOCKING ROW FOR ACCESS
    SELECT *
        FROM TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF
        WHERE CORP_ID = 1
            AND  CORP_FUNCTION = 'Generic'
            AND  DASHBOARD_VERSION = '1';

REPLACE VIEW TRNG_COVID19.Dim_Disney_Metrics_ref_V AS
    LOCKING ROW FOR ACCESS
    select *
        FROM TRNG_COVID19.Dim_Client_Metrics_ref
        where client_nbr = 1;

REPLACE VIEW TRNG_COVID19.DIM_GeoDemoGraphics_v as ( 

SELECT  
    SUMLEV (TITLE 'Geographic Summary Level'),
 STATE (TITLE 'State FIPS code'),
 STATE_CD (TITLE 'State Code'),
 COUNTY (TITLE 'County FIPS code'),
 STNAME (TITLE 'State Name'),
 CTYNAME (TITLE 'County Name'),
 OREPLACE(CTYNAME, ' County', '')  (TITLE 'County Name') COUNTY_NAME ,
 AGEGRP (TITLE 'Age group'),
    case  AGEGRP 
    When 0 Then 'Total'
 When 1 Then 'Age 0 to 4 years'
 When 2 Then 'Age 5 to 9 years'
    When 3 Then 'Age 10 to 14 years'
 When 4 Then 'Age 15 to 19 years'
 When 5 Then 'Age 20 to 24 years'
 When 6 Then 'Age 25 to 29 years'
 When 7 Then 'Age 30 to 34 years'
 When 8 Then 'Age 35 to 39 years'
 When 9 Then 'Age 40 to 44 years'
 When 10 Then 'Age 45 to 49 years'
 When 11 Then 'Age 50 to 54 years'
 When 12 Then 'Age 55 to 59 years'
 When 13 Then 'Age 60 to 64 years'
 When 14 Then 'Age 65 to 69 years'
 When 15 Then 'Age 70 to 74 years'
 When 16 Then 'Age 75 to 79 years'
 When 17 Then 'Age 80 to 84 years'
 When 18 Then 'Age 85 years or older'
    end as AGE_GRP,
     TOT_POP (title 'Total population') TOT_POP,
     TOT_MALE (title 'Total male population') TOT_MALE,
     TOT_FEMALE (title 'Total female population') TOT_FEMALE,
     WA_MALE (title 'White alone male population') WA_MALE,
     WA_FEMALE (title 'White alone female population') WA_FEMALE,
     BA_MALE (title 'Black or African American alone male population')BA_MALE,
     BA_FEMALE (title 'Black or African American alone female population') BA_FEMALE,
     IA_MALE (title 'American Indian and Alaska Native alone male population')IA_MALE,
     IA_FEMALE (title 'American Indian and Alaska Native alone female population')IA_FEMALE,
     AA_MALE (title 'Asian alone male population') AA_MALE,
     AA_FEMALE (title 'Asian alone female population') AA_FEMALE,
     NA_MALE (title 'Native Hawaiian and Other Pacific Islander alone male population')NA_MALE,
     NA_FEMALE (title 'Native Hawaiian and Other Pacific Islander alone female population') NA_FEMALE,
     TOM_MALE (title 'Two or More Races male population')TOM_MALE,
     TOM_FEMALE (title 'Two or More Races female population') TOM_FEMALE,
     WAC_MALE (title 'White alone or in combination male population')WAC_MALE,
     WAC_FEMALE (title 'White alone or in combination female population')WAC_FEMALE,
     BAC_MALE (title 'Black or African American alone or in combination male population')BAC_MALE,
     BAC_FEMALE (title 'Black or African American alone or in combination female population')BAC_FEMALE,
     IAC_MALE (title 'American Indian and Alaska Native alone or in combination male  population ')IAC_MALE,
     IAC_FEMALE (title 'American Indian and Alaska Native alone or in combination female population ')IAC_FEMALE,
     AAC_MALE (title 'Asian alone or in combination male population')AAC_MALE,
     AAC_FEMALE (title 'Asian alone or in combination female population')AAC_FEMALE,
     NAC_MALE (title 'Native Hawaiian and Other Pacific Islander alone or in combination male population')NAC_MALE,
     NAC_FEMALE (title 'Native Hawaiian and Other Pacific Islander alone or in combination female population')NAC_FEMALE,
     NH_MALE (title 'Not Hispanic male population')NH_MALE,
     NH_FEMALE (title 'Not Hispanic female population')NH_FEMALE,
     NHWA_MALE (title 'Not Hispanic, White alone male population')NHWA_MALE,
     NHWA_FEMALE (title 'Not Hispanic, White alone female population')NHWA_FEMALE,
     NHBA_MALE (title 'Not Hispanic, Black or African American alone male population')NHBA_MALE,
     NHBA_FEMALE (title 'Not Hispanic, Black or African American alone female population')NHBA_FEMALE,
     NHIA_MALE (title 'Not Hispanic, American Indian and Alaska Native alone male population')NHIA_MALE,
     NHIA_FEMALE (title 'Not Hispanic, American Indian and Alaska Native alone female population')NHIA_FEMALE,
     NHAA_MALE (title 'Not Hispanic, Asian alone male population')NHAA_MALE,
     NHAA_FEMALE (title 'Not Hispanic, Asian alone female population')NHAA_FEMALE,
     NHNA_MALE (title 'Not Hispanic, Native Hawaiian and Other Pacific Islander alone male population')NHNA_MALE,
     NHNA_FEMALE (title 'Not Hispanic, Native Hawaiian and Other Pacific Islander alone female population')NHNA_FEMALE,
     NHTOM_MALE (title 'Not Hispanic, Two or More Races male population')NHTOM_MALE,
     NHTOM_FEMALE (title 'Not Hispanic, Two or More Races female population')NHTOM_FEMALE,
     NHWAC_MALE (title 'Not Hispanic, White alone or in combination male population')NHWAC_MALE,
     NHWAC_FEMALE (title 'Not Hispanic, White alone or in combination female population')NHWAC_FEMALE,
     NHBAC_MALE (title 'Not Hispanic, Black or African American alone or in combination male population')NHBAC_MALE,
     NHBAC_FEMALE (title 'Not Hispanic, Black or African American alone or in combination female population')NHBAC_FEMALE,
     NHIAC_MALE (title 'Not Hispanic, American Indian and Alaska Native alone or in combination male population')NHIAC_MALE,
     NHIAC_FEMALE (title 'Not Hispanic, American Indian and Alaska Native alone or in combination female population')NHIAC_FEMALE,
     NHAAC_MALE (title 'Not Hispanic, Asian alone or in combination male population')NHAAC_MALE,
     NHAAC_FEMALE (title 'Not Hispanic, Asian alone or in combination female population')NHAAC_FEMALE,
     NHNAC_MALE (title 'Not Hispanic, Native Hawaiian and Other Pacific Islander alone or in combination male population')NHNAC_MALE,
     NHNAC_FEMALE (title 'Not Hispanic, Native Hawaiian and Other Pacific Islander alone or in combination female population') NHNAC_FEMALE,
     H_MALE (title 'Hispanic male population')H_MALE,
     H_FEMALE (title 'Hispanic female population')H_FEMALE,
     HWA_MALE (title 'Hispanic, White alone male population')HWA_MALE,
     HWA_FEMALE (title 'Hispanic, White alone female population')HWA_FEMALE,
     HBA_MALE (title 'Hispanic, Black or African American alone male population')HBA_MALE,
     HBA_FEMALE (title 'Hispanic, Black or African American alone female population')HBA_FEMALE,
     HIA_MALE (title 'Hispanic, American Indian and Alaska Native alone male population')HIA_MALE,
     HIA_FEMALE (title 'Hispanic, American Indian and Alaska Native alone female population')HIA_FEMALE,
     HAA_MALE (title 'Hispanic, Asian alone male population')HAA_MALE,
     HAA_FEMALE (title 'Hispanic, Asian alone female population')HAA_FEMALE,
     HNA_MALE (title 'Hispanic, Native Hawaiian and Other Pacific Islander alone male population')HNA_MALE,
     HNA_FEMALE (title 'Hispanic, Native Hawaiian and Other Pacific Islander alone female population')HNA_FEMALE,
     HTOM_MALE (title 'Hispanic, Two or More Races male population')HTOM_MALE,
     HTOM_FEMALE (title 'Hispanic, Two or More Races female population')HTOM_FEMALE,
     HWAC_MALE (title 'Hispanic, White alone or in combination male population')HWAC_MALE,
     HWAC_FEMALE (title 'Hispanic, White alone or in combination female population')HWAC_FEMALE,
     HBAC_MALE (title 'Hispanic, Black or African American alone or in combination male population')HBAC_MALE,
     HBAC_FEMALE (title 'Hispanic, Black or African American alone or in combination female population')HBAC_FEMALE,
     HIAC_MALE (title 'Hispanic, American Indian and Alaska Native alone or in combination male population')HIAC_MALE,
     HIAC_FEMALE (title 'Hispanic, American Indian and Alaska Native alone or in combination female population')HIAC_FEMALE,
     HAAC_MALE (title 'Hispanic, Asian alone or in combination male population')HAAC_MALE,
     HAAC_FEMALE (title 'Hispanic, Asian alone or in combination female population')HAAC_FEMALE,
     HNAC_MALE (title 'Hispanic, Native Hawaiian and Other Pacific Islander alone or in combination male population ')HNAC_MALE,
     HNAC_FEMALE (title 'Hispanic, Native Hawaiian and Other Pacific Islander alone or in combination female population') HNAC_FEMALE 
 
    -- select OREPLACE(ctyname, ' County', ''  ) COUNTY_CLEAN
    FROM TRNG_COVID19.STG_DemographicsUSCensus usc 
    join TRNG_COVID19.DIM_StatesLKUP st  ON st.state_name = usc.stname  
    where "year" = 8
   );

REPLACE VIEW TRNG_COVID19.DIM_GEO_LOCATION_V AS
    LOCKING ROW FOR ACCESS
    SELECT UID,
        GEO_GRANULARITY,
        Country_code,
        iso3,
        code3,
        FIPS,
        County,
        County_long,
        STATE_NAME,
        STATE_CODE,
        COUNTRY_NAME,
        Lat,
        Lon,
        Combined_Key,
        Population
        FROM TRNG_COVID19.DIM_GEO_LOCATION_T
    UNION ALL
    SELECT 
        CAST(-1 AS INTEGER) uid,
        CAST('N/A    ' AS VARCHAR(7) CHARACTER SET UNICODE NOT CASESPECIFIC) GEO_GRANULARITY,
        CAST(NULL AS VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC) Country_code,
        CAST(NULL AS VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC) iso3,
        CAST(NULL AS INTEGER) code3,
        CAST(NULL AS INTEGER) FIPS,
        CAST(NULL AS VARCHAR(128) CHARACTER SET LATIN NOT CASESPECIFIC) County,
        CAST(NULL AS VARCHAR(135) CHARACTER SET LATIN NOT CASESPECIFIC) County_long,
        CAST(NULL AS VARCHAR(128) CHARACTER SET LATIN NOT CASESPECIFIC) STATE_NAME,
        CAST(NULL AS CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC) STATE_CODE,
        CAST(NULL AS VARCHAR(128) CHARACTER SET LATIN NOT CASESPECIFIC) COUNTRY_NAME,
        CAST(NULL AS FLOAT) Lat,
        CAST(NULL AS FLOAT) Lon,
        CAST(NULL AS VARCHAR(128) CHARACTER SET LATIN NOT CASESPECIFIC) Combined_Key,
        CAST(NULL AS INTEGER) Population
        FROM TRNG_COVID19.DIM_GEO_LOCATION_T
        WHERE uid = 840
	UNION ALL
	SELECT  
        90000000 + cast(b.zipcode as integer) UID,
        'ZIPCODE' GEO_GRANULARITY,
        a.Country_code,
        a.iso3,
        a.code3,
        a.FIPS,
        a.County,
        a.County_long,
        a.STATE_NAME,
        a.STATE_CODE,
        a.COUNTRY_NAME,
        null Lat,
        null Lon,
        a.Combined_Key,
        null Population
FROM TRNG_COVID19.DIM_GEO_LOCATION_T a
        join 
TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP b
on a.fips = b.county_fips
and a.geo_granularity = 'county';

REPLACE VIEW TRNG_COVID19.DIM_METRICS_REF_NXP_V AS
    LOCKING ROW FOR ACCESS
    SELECT *
        FROM TRNG_COVID19.DIM_METRICS_REF
        WHERE DIM_METRICS_REF.DASHBOARD_VERSION = 'NXP';

REPLACE VIEW TRNG_COVID19.DIM_METRICS_REF_V AS
    LOCKING ROW FOR ACCESS
    SELECT *
        FROM TRNG_COVID19.DIM_METRICS_REF
        WHERE DASHBOARD_VERSION = 'Default';

REPLACE VIEW  TRNG_COVID19.DIM_PEOPLE_LOCATION_V AS
    LOCKING ROW FOR ACCESS
    SELECT PL.*,
        LKP.STATE_NAME,
        LKP.COUNTY_NAME,
        LKP.MSA_NAME
        FROM TRNG_COVID19.DIM_People_location PL
        LEFT JOIN TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP LKP ON 
        PL.ZIPCODE = LKP.ZIPCODE;

REPLACE VIEW TRNG_COVID19.DIM_RETVSN_DEVICE_SITE_EVENT_XREF_V           AS LOCKING ROW FOR ACCESS SELECT * FROM TRNG_COVID19.DIM_RETVSN_DEVICE_SITE_EVENT_XREF;

REPLACE VIEW TRNG_COVID19.DIM_RETVSN_DEVICE_V           AS LOCKING ROW FOR ACCESS SELECT * FROM TRNG_COVID19.DIM_RETVSN_DEVICE;

REPLACE VIEW TRNG_COVID19.DIM_RETVSN_GEO_LOCATION_V         AS LOCKING ROW FOR ACCESS SELECT * FROM TRNG_COVID19.DIM_RETVSN_GEO_LOCATION;

REPLACE VIEW TRNG_COVID19.DIM_RETVSN_SITE_HIER_OCCUPANCY_V           AS LOCKING ROW FOR ACCESS SELECT * FROM TRNG_COVID19.DIM_RETVSN_SITE_HIER_OCCUPANCY;

REPLACE VIEW TRNG_COVID19.DIM_RETVSN_SITE_LOCATION_HIER_V           AS LOCKING ROW FOR ACCESS SELECT * FROM TRNG_COVID19.DIM_RETVSN_SITE_LOCATION_HIER;

REPLACE VIEW TRNG_COVID19.DIM_RETVSN_SITE_LOCATION_V           AS LOCKING ROW FOR ACCESS SELECT * FROM TRNG_COVID19.DIM_RETVSN_SITE_LOCATION;

REPLACE VIEW TRNG_COVID19.DIM_RETVSN_SITE_MAP_IMAGE_V         AS LOCKING ROW FOR ACCESS SELECT * FROM TRNG_COVID19.DIM_RETVSN_SITE_MAP_IMAGE;

REPLACE VIEW TRNG_COVID19.DIM_RETVSN_SITE_POLICY_V           AS LOCKING ROW FOR ACCESS SELECT * FROM TRNG_COVID19.DIM_RETVSN_SITE_POLICY;

REPLACE VIEW  TRNG_COVID19.DIM_SITE_ADDRESSES_V AS
    LOCKING ROW FOR ACCESS
    SELECT SA.*, LKP.STATE_NAME, LKP.COUNTY_NAME, LKP.MSA_NAME
    FROM TRNG_COVID19.DIM_SITE_ADDRESSES SA
    LEFT JOIN TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP LKP ON 
         SA.ZIPCODE = LKP.ZIPCODE;

REPLACE VIEW TRNG_COVID19.DIM_Theatres_V AS
LOCKING ROW FOR ACCESS
SELECT *
FROM TRNG_COVID19.DIM_Theatres;

REPLACE VIEW TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP_V AS
LOCKING ROW FOR ACCESS
SELECT * FROM TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP;

REPLACE VIEW TRNG_COVID19.DMA_COUNTY_POP AS 
(
SELECT a.DMA, p.State as State, --UPPER(a.COUNTY) as COUNTY
(CASE WHEN UPPER(SUBSTRING(Area_Name,1,LENGTH(Area_Name)-7)) = 'MIAMI-DADE' THEN 'DADE'
ELSE UPPER(SUBSTRING(Area_Name,1,LENGTH(Area_Name)-7))  END) as COUNTY
,POP_ESTIMATE_2018
from TRNG_COVID19.PopulationEstimates p
FULL OUTER JOIN 
TRNG_COVID19.county_dma a
ON UPPER(a.COUNTY) = (CASE WHEN UPPER(SUBSTRING(Area_Name,1,LENGTH(Area_Name)-7)) = 'MIAMI-DADE' THEN 'DADE'
ELSE UPPER(SUBSTRING(Area_Name,1,LENGTH(Area_Name)-7))  END) 
 AND a.STATE = p.State
WHERE Area_Name like '%County%'
 UNION 
SELECT a.DMA, p.State as State, UPPER(a.COUNTY) as COUNTY
--UPPER(SUBSTRING(Area_Name,1,LENGTH(Area_Name)-7)) as COUNTY
,POP_ESTIMATE_2018
from TRNG_COVID19.PopulationEstimates p
FULL OUTER JOIN 
TRNG_COVID19.county_dma a
ON UPPER(a.COUNTY) = UPPER(Area_Name) 
 AND a.STATE = p.State
WHERE Area_Name like '%Parish%'
OR Area_Name = 'District of Columbia'
OR Area_Name like '%Borough%'
OR UPPER(Area_Name) like '%CITY%'
OR p.State = 'VA');

REPLACE VIEW TRNG_COVID19.ECONOMIC_FACTORS AS
(
SELECT a.SUBDOMAIN_1_NAME, a.DATE_KEY, a.METRIC_VALUE 
FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V  a
WHERE YEAR(DATE_KEY) >= '2018'
AND SUBDOMAIN_1_NAME IN ('Motor Gasoline','Jet Fuel')
);

REPLACE VIEW TRNG_COVID19.ECONOMIC_FACTORS_ARIMA_NH_PRED AS
(
SELECT CAST('2021-12-01' AS DATE) + (STEPAHEAD*31) AS "DATE_KEY", PREDICT AS METRIC_VALUE, SUBDOMAIN_1_NAME FROM TRNG_COVID19.EF_ARIMA_PRED_NH
);

REPLACE VIEW TRNG_COVID19.ECONOMIC_FACTORS_ARIMA_PRED AS
(
SELECT CAST('2021-12-25' AS DATE) + (STEPAHEAD*7) AS "DATE_KEY", PREDICT AS METRIC_VALUE, SUBDOMAIN_1_NAME FROM TRNG_COVID19.EF_ARIMA_PRED
);

REPLACE VIEW TRNG_COVID19.ECONOMIC_FACTORS_NH AS
(
SELECT a.SUBDOMAIN_1_NAME, a.DATE_KEY, a.METRIC_VALUE 
FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V  a
WHERE SUBDOMAIN_1_NAME IN ('Nondurable goods','Household consumption expenditures (for services)')
AND SUBDOMAIN_2_NAME IN ('Clothing and footwear','Food services and accommodations')
AND SUBDOMAIN_3_NAME IN ('Total','Food services')
AND YEAR(DATE_KEY) >= '2018'
AND METRIC_NAME = 'Personal Consumption Expenditure (Product Details)'
);

REPLACE VIEW TRNG_COVID19.ECONOMIC_FACTORS_NH_TRN AS
(
SELECT * FROM TRNG_COVID19.ECONOMIC_FACTORS_NH
--WHERE CAST(DATE_KEY AS DATE) < '2021-01-01'
WHERE CAST(DATE_KEY AS DATE) < ADD_MONTHS(TRUNC(CURRENT_DATE, 'MON'), -2)
);

REPLACE VIEW TRNG_COVID19.ECONOMIC_FACTORS_NH_TRN_trial AS
(
SELECT * FROM TRNG_COVID19.ECONOMIC_FACTORS_NH
--WHERE CAST(DATE_KEY AS DATE) < '2021-01-01'
WHERE CAST(DATE_KEY AS DATE) < ADD_MONTHS(TRUNC(CURRENT_DATE, 'MON'), -2)
);

REPLACE VIEW TRNG_COVID19.ECONOMIC_FACTORS_TRN AS
(
SELECT * FROM TRNG_COVID19.ECONOMIC_FACTORS 
--WHERE CAST(DATE_KEY AS DATE) < '2021-01-01'
WHERE CAST(DATE_KEY AS DATE) < ADD_MONTHS(TRUNC(CURRENT_DATE, 'MON'), -2)
);

REPLACE VIEW TRNG_COVID19.ECONOMIC_FACTORS_TRN_trial AS
(
SELECT * FROM TRNG_COVID19.ECONOMIC_FACTORS 
--WHERE CAST(DATE_KEY AS DATE) < '2021-01-01'
WHERE CAST(DATE_KEY AS DATE) < ADD_MONTHS(TRUNC(CURRENT_DATE, 'MON'), -2)
);

REPLACE VIEW TRNG_COVID19.FACT_Covid19Counties_V2 AS
LOCKING ROW FOR ACCESS
SELECT "Date" as DateOf,
       county,
       state,
       fips,
       cases,
       coalesce(cases- sum(cases) OVER (ORDER BY 
       county,
       state,
       fips , "date"  
                    ROWS  between 1 PRECEDING and 1 preceding),cases)  as NewCases,
       deaths,
         coalesce(Deaths- sum(Deaths) OVER (ORDER BY 
       county,
       state,
       fips , "date"  
                    ROWS  between 1 PRECEDING and 1 preceding),Deaths) NewDeaths 
                    FROM TRNG_COVID19.FACT_Covid19Counties;

REPLACE VIEW TRNG_COVID19.FACT_Covid19Counties_V  AS
LOCKING ROW FOR ACCESS
SELECT "Date" AS DateOf,
    county,
    state,
    fips,
    cases,
    COALESCE(cases- SUM(cases) OVER (
    ORDER BY county,
        state,
        fips,
        "date"  
    ROWS  BETWEEN 1 PRECEDING AND 1 PRECEDING),cases)  AS NewCases,
        deaths,
        COALESCE(Deaths- SUM(Deaths) OVER (
    ORDER BY county,
        state,
        fips,
        "date"  
    ROWS  BETWEEN 1 PRECEDING AND 1 PRECEDING),Deaths) NewDeaths
    FROM TRNG_COVID19.FACT_Covid19Counties;

REPLACE VIEW   TRNG_COVID19.FACT_COVID19_DATAHUB_STATE_V AS
    LOCKING ROW FOR ACCESS
    SELECT   DATE_KEY,
        GEO_KEY,
        g.state_name,
        TESTED_CNT,
        CONFIRMED_CNT,
        RECOVERED_CNT,
        DEATH_CNT,
        HOSPITALIZED_CNT,
        ON_VENTILATOR_CNT,
        IN_ICU_CNT,
        SEVERE_CASE_CNT,
        
        COALESCE(TESTED_CNT- SUM(TESTED_CNT) OVER (PARTITION  BY geo_key
        ORDER BY geo_key,
            DATE_KEY  
        ROWS  BETWEEN   1 PRECEDING AND 1 PRECEDING),0)   AS TESTED_NEW_CNT,
            COALESCE(CONFIRMED_CNT- SUM(CONFIRMED_CNT) OVER (PARTITION  BY geo_key
        ORDER BY geo_key,
            DATE_KEY  
        ROWS  BETWEEN 1 PRECEDING AND 1 PRECEDING),0)  AS CONFIRMED_NEW_CNT,
            COALESCE(RECOVERED_CNT- SUM(RECOVERED_CNT) OVER (PARTITION  BY geo_key
        ORDER BY geo_key,
            DATE_KEY  
        ROWS  BETWEEN 1 PRECEDING AND 1 PRECEDING),0)  AS RECOVERED_NEW_CNT,
            COALESCE(DEATH_CNT- SUM(DEATH_CNT) OVER (PARTITION  BY geo_key
        ORDER BY geo_key,
            DATE_KEY  
        ROWS  BETWEEN 1 PRECEDING AND 1 PRECEDING),0)  AS DEATH_NEW_CNT,
            COALESCE(HOSPITALIZED_CNT- SUM(HOSPITALIZED_CNT) OVER (PARTITION  BY geo_key
        ORDER BY geo_key,
            DATE_KEY  
        ROWS  BETWEEN 1 PRECEDING AND 1 PRECEDING),0)  AS HOSPITALIZED_NEW_CNT,
            COALESCE(ON_VENTILATOR_CNT- SUM(ON_VENTILATOR_CNT) OVER (PARTITION  BY geo_key
        ORDER BY geo_key,
            DATE_KEY  
        ROWS  BETWEEN 1 PRECEDING AND 1 PRECEDING),0)  AS ON_VENTILATOR_NEW_CNT,
            COALESCE(IN_ICU_CNT- SUM(IN_ICU_CNT) OVER (PARTITION  BY geo_key
        ORDER BY geo_key,
            DATE_KEY  
        ROWS  BETWEEN 1 PRECEDING AND 1 PRECEDING),0)  AS IN_ICU_NEW_CNT,
            COALESCE(SEVERE_CASE_CNT- SUM(SEVERE_CASE_CNT) OVER (PARTITION  BY geo_key
        ORDER BY geo_key,
            DATE_KEY  
        ROWS  BETWEEN 1 PRECEDING AND 1 PRECEDING),0)  AS SEVERE_CASE_NEW_CNT,
            dl.POPULATION,
            SCHOOL_CLOSING,
            WORKPLACE_CLOSING,
            CANCEL_EVENTS,
            GATHERINGS_RESTRICTIONS,
            TRANSPORT_CLOSING,
            STAY_HOME_RESTRICTIONS,
            INTERNAL_MOVEMENT_RESTRICTIONS,
            INTERNATIONAL_MOVEMENT_RESTRICTIONS,
            INFORMATION_CAMPAIGNS,
            TESTING_POLICY,
            CONTACT_TRACING,
            STRINGENCY_INDEX,
            KEY_STR,
            KEY_NUMERIC,
            KEY_GOOGLE_MOBILITY,
            KEY_APPLE_MOBILITY,
            KEY_ALPHA_2,
            REC_INS_TS
        FROM TRNG_COVID19.FACT_COVID19_DATAHUB_STATE dl
        JOIN TRNG_COVID19.DIM_GEO_LOCATION_V g ON g.uid = dl.geo_key;

REPLACE VIEW   TRNG_COVID19.FACT_COVID19_DATAHUB_STG_V AS
    LOCKING ROW FOR ACCESS
    SELECT  *
        FROM TRNG_COVID19.stg_COVID19_DATAHUB;

REPLACE VIEW   TRNG_COVID19.FACT_COVID19_DATAHUB_V AS
    LOCKING ROW FOR ACCESS
    SELECT  DATE_KEY,
        GEO_KEY,
        TESTCNT AS tested_cnt,
        CONFIRMED_CNT,
        RECOVERED_CNT,
        DEATHS_CNT AS DEATH_CNT,
        HOSPITALIZED_CNT,
        ON_VENTILATOR_CNT,
        IN_ICU_CNT,
        SEVERE_CASE_CNT,
        POPULATION,
        SCHOOL_CLOSING,
        WORKPLACE_CLOSING,
        CANCEL_EVENTS,
        GATHERINGS_RESTRICTIONS,
        TRANSPORT_CLOSING,
        STAY_HOME_RESTRICTIONS,
        INTERNAL_MOVEMENT_RESTRICTIONS,
        INTERNATIONAL_MOVEMENT_RESTRICTIONS,
        INFORMATION_CAMPAIGNS,
        TESTING_POLICY,
        CONTACT_TRACING,
        STRINGENCY_INDEX,
        KEY_STR,
        KEY_NUMERIC,
        KEY_GOOGLE_MOBILITY,
        KEY_APPLE_MOBILITY,
        KEY_ALPHA_2,
        REC_INS_TS
        FROM TRNG_COVID19.FACT_COVID19_DATAHUB;

REPLACE VIEW TRNG_COVID19.FACT_COVID_MODEL_DATA_SUM_V AS
LOCKING ROW FOR ACCESS
SELECT G.COUNTY, G.STATE_CODE, G.STATE_NAME, G.COUNTRY_NAME,
       F.*
FROM TRNG_COVID19.FACT_Covid_Model_Data_SUM F
JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
F.GEO_KEY = G.UID;

REPLACE VIEW TRNG_COVID19.FACT_Covid_Model_Data_V AS
LOCKING ROW FOR ACCESS
select  MODEL_KEY, DATE_KEY, DATE_GRANULARITY, GEO_KEY, GEO_GRANULARITY, MODELED_DATE, MODEL_VERSION, location_name, MetricName, MetricVal
from TRNG_COVID19.FACT_Covid_Model_Data UNPIVOT ((MetricVal) FOR MetricName
IN (
("allbed_mean"),("allbed_lower"),("allbed_upper"),("ICUbed_mean"),("ICUbed_lower"),("ICUbed_upper"),("InvVen_mean"),("InvVen_lower"),("InvVen_upper"),("deaths_mean"),("deaths_lower"),("deaths_upper"),("admis_mean"),("admis_lower"),("admis_upper"),("newICU_mean"),("newICU_lower"),("newICU_upper"),("totdea_mean"),("totdea_lower"),("totdea_upper"),("bedover_mean"),("bedover_lower"),("bedover_upper"),("icuover_mean"),("icuover_lower"),("icuover_upper"),("deaths_mean_smoothed"),("deaths_lower_smoothed"),("death
s_upper_smoothed"),("totdea_mean_smoothed"),("totdea_lower_smoothed"),("totdea_upper_smoothed"),/*("mobility_data_type"),*/("mobility_composite")/*,("total_tests_data_type")*/,("total_tests"),("confirmed_infections"),("est_infections_mean"),("est_infections_lower"),("est_infections_upper")
)) Tmp;

REPLACE VIEW TRNG_COVID19.FACT_Covid_Model_Score_County_V AS
    LOCKING ROW FOR ACCESS
    SELECT calendar_date,
        day_of_year,
        'County' Geo_granularity,
        t2.StateName,
        t2.CountyName,
        Metric_Name,
        CorrelationFactor*CountyToStateRatio AS CountyCorrelationFactor
        FROM TRNG_COVID19.FACT_Covid_Model_Score_V t1,
            TRNG_COVID19.CountyToStateRatio t2
        WHERE t1.location_name = t2.StateName;

REPLACE VIEW TRNG_COVID19.FACT_Covid_Model_Score_V AS
    LOCKING ROW FOR ACCESS
    
    
    
--    create table TRNG_COVID19.FACT_Covid_Model_Score_M as (
--    
--    SELECT 	calendar_date,
--        geo_key,
--        day_of_year,
--        Geo_granularity,
--        location_name,
--        Metric_Name,
--        CORR(day_of_year,Metric_Value) OVER (PARTITION BY location_name,Metric_Name
--        ORDER BY calendar_date,
--            location_name,
--            Metric_Name ROWS 30 PRECEDING) AS CorrelationFactor
--        FROM
--        (
--        SELECT 	t2.calendar_date,
--            day_of_year,
--            Metric_Name,
--            Metric_Value,
--            geo_key,
--            Geo_granularity,
--            location_name
--            FROM TRNG_COVID19.FACT_Covid_Model_Data_UNPIVOT t1,
--                SYS_CALENDAR.CALENDAR t2
--            WHERE t1.MODELED_DATE = t2.calendar_date
--                AND  t2.calendar_date BETWEEN DATE - 100 AND DATE
--                AND  Metric_Value <> 0
--            QUALIFY 1=ROW_NUMBER() OVER (PARTITION BY Geo_granularity,location_name,Metric_Name,calendar_date
--            ORDER BY model_version DESC)
--        ) zzz
--        QUALIFY CorrelationFactor IS NOT NULL
--        
--        ) with data primary index (calendar_date, location_name);
    
    Select * from TRNG_COVID19.FACT_Covid_Model_Score_M;

REPLACE VIEW TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V  AS
    LOCKING ROW FOR ACCESS
    SELECT INDICATOR_KEY,
        DATE_KEY,
        DATE_GRANULARITY,
        GEO_KEY,
        GEO_GRANULARITY,
        DOMAIN_NAME,
        SUBDOMAIN_1_NAME,
        SUBDOMAIN_2_NAME,
        SUBDOMAIN_3_NAME,
        METRIC_NAME,
        METRIC_VALUE,
        METRIC_INDEX,
        DATA_SOURCE_NAME,
        DATA_SOURCE_DESC,
        REC_INS_TS,
        REC_UPD_TS
        FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P;

REPLACE VIEW TRNG_COVID19.FACT_Labor_Stats_V AS
LOCKING ROW FOR ACCESS
SELECT *
FROM TRNG_COVID19.STG_LaborStats;

REPLACE VIEW TRNG_COVID19.FACT_TSATravel_V AS
LOCKING ROW FOR ACCESS
SELECT *
FROM TRNG_COVID19.FACT_TSATravel;

REPLACE VIEW TRNG_COVID19.FACT_Word_Cloud_Tweet_V AS
LOCKING ROW FOR ACCESS

SELECT  sum(frequency) as OCCURANCES,
  tweetdatetime(date) as DATE_KEY,
  token as TERM
FROM TRNG_COVID19.stg_tweet_output
WHERE lower(TRIM(token)) NOT IN (SELECT TwitterWord FROM TRNG_COVID19.STG_Tweeter_Excludes)
GROUP BY 2,3
QUALIFY ROW_NUMBER() over (partition by DATE_KEY ORDER BY OCCURANCES DESC ) <=300;

REPLACE VIEW TRNG_COVID19.F_IND_DASHBOARD_MOBILITY_GEO_WEEKLY_V AS
LOCKING ROW FOR ACCESS
SELECT
  SNAPSHOT_DATE,
  SNAPSHOT_WEEK,
  CURR_PREV_FLAG,
  DENSE_RANK() OVER (PARTITION BY GEO_KEY, CURR_PREV_FLAG ORDER BY DATE_KEY ASC) CAL_DAY_OF_WEEK,
  GEO_KEY,
  GEO_GRANULARITY,
  COUNTY,
  STATE_CODE,
  STATE_NAME,
  COUNTRY_NAME,
  POPULATION,
  DATE_KEY,
  METRIC_NAME,
  METRIC_INDEX
 FROM
  (
    SELECT 
          DT.SNAPSHOT_DATE,
          DT.SNAPSHOT_WEEK,
          CASE WHEN F.DATE_KEY BETWEEN DT.WEEK_START_DATE AND DT.WEEK_END_DATE
               THEN DT.CURR_PREV_FLAG
          END AS CURR_PREV_FLAG,
          F.GEO_KEY,
          UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
          G.COUNTY, 
          G.STATE_CODE,
          G.STATE_NAME,
          G.COUNTRY_NAME,
          G.POPULATION,
          F.DATE_KEY,
          METRIC_NAME,
          METRIC_INDEX
    FROM 
      TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F 
      JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
      F.GEO_KEY = G.UID
      JOIN (SELECT 
       		MAX(WEEK_END_DATE) OVER () AS SNAPSHOT_DATE,
       		MAX(CAL_WEEK_YEAR) OVER () AS SNAPSHOT_WEEK,
       		MIN(WEEK_START_DATE) OVER () AS FIL_START_DATE_KEY,
       		MAX(WEEK_END_DATE) OVER () FIL_END_DATE_KEY,
       		CASE WHEN RNK =1 THEN 'CURR'
            	 WHEN RNK =2 THEN 'PREV'
            	 WHEN RNK =3 THEN 'PREV-1'
            	 WHEN RNK =4 THEN 'PREV-2'
				 WHEN RNK =5 THEN 'PREV-3'
            	 ELSE 'PREV-4'
       		END CURR_PREV_FLAG,
       		RANK() OVER (ORDER BY WEEK_END_DATE DESC) RNK,
       		DT.*
    	   FROM 
            TRNG_COVID19.DIM_CALENDAR_V DT
			LEFT JOIN (
                       SELECT MAX(DATE_KEY) MAX_DT
                       FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F  
                       JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
                            F.GEO_KEY = G.UID
                       WHERE F.DATA_SOURCE_NAME = 'Google Mobility Report'
                      ) MAXDT ON 1=1
           WHERE CAL_DATE_KEY IN (MAX_DT,MAX_DT-7,MAX_DT-14,MAX_DT-21,MAX_DT-28, MAX_DT-35)
          ) DT ON
       F.DATE_KEY BETWEEN DT.FIL_START_DATE_KEY AND DT.FIL_END_DATE_KEY
    WHERE 
      F.DATA_SOURCE_NAME = 'Google Mobility Report' AND
      CASE WHEN F.DATE_KEY BETWEEN DT.WEEK_START_DATE AND DT.WEEK_END_DATE
           THEN DT.CURR_PREV_FLAG
      END IN ('CURR','PREV','PREV-1','PREV-2','PREV-3')
   ) T;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_CAR_RENTAL_WEEKLY_V AS
    LOCKING ROW FOR ACCESS
    SELECT
        SNAPSHOT_DATE,
        SNAPSHOT_WEEK,
        CURR_PREV_FLAG,
        DENSE_RANK() OVER (PARTITION BY GEO_KEY, CURR_PREV_FLAG
        ORDER BY DATE_KEY ASC) CAL_DAY_OF_WEEK,
            GEO_KEY,
            GEO_GRANULARITY,
            ZIPCODE,
            COUNTY,
            STATE_CODE,
            STATE_NAME,
            COUNTRY_NAME,
            POPULATION,
            DATE_KEY,
            DOMAIN_NAME,
            SUBDOMAIN_1_NAME,
            SUBDOMAIN_2_NAME,
            METRIC_NAME,
            METRIC_VALUE
        FROM
        (
        SELECT 
            DT.SNAPSHOT_DATE,
            DT.SNAPSHOT_WEEK,
            
            CASE
                WHEN F.DATE_KEY BETWEEN DT.WEEK_START_DATE AND DT.WEEK_END_DATE
            THEN DT.CURR_PREV_FLAG
            END AS CURR_PREV_FLAG,
                F.GEO_KEY,
                UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
                g.ZIPCODE,
                G.COUNTY,
                G.STATE_CODE,
                G.STATE_NAME,
                G.COUNTRY_NAME,
                G.POPULATION, 
                F.DATE_KEY,
                DOMAIN_NAME,
                SUBDOMAIN_1_NAME,
                SUBDOMAIN_2_NAME,
                METRIC_NAME,
                METRIC_VALUE
            FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F 
            JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
            F.GEO_KEY = G.UID
            JOIN (
            SELECT 
                MAX(WEEK_END_DATE) OVER () AS SNAPSHOT_DATE,
                MAX(CAL_WEEK_YEAR) OVER () AS SNAPSHOT_WEEK,
                MIN(WEEK_START_DATE) OVER () AS FIL_START_DATE_KEY,
                MAX(WEEK_END_DATE) OVER () FIL_END_DATE_KEY,
                
                CASE
                    WHEN RNK =1 THEN 'CURR'
                    WHEN RNK =2 THEN 'PREV'
                    WHEN RNK =3 THEN 'PREV-1'
                    WHEN RNK =4 THEN 'PREV-2'
                    WHEN RNK =4 THEN 'PREV-3'
                ELSE 'PREV-4'
                END CURR_PREV_FLAG,
                    RANK() OVER (
                ORDER BY WEEK_END_DATE DESC) RNK,
                    DT.*
                FROM TRNG_COVID19.DIM_CALENDAR_V DT
                LEFT JOIN (
                SELECT MAX(DATE_KEY) MAX_DT
                    FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F  
                    JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
                    F.GEO_KEY = G.UID
                    WHERE F.DATA_SOURCE_NAME = 'Reservation data mart'
                ) MAXDT ON 1=1
                WHERE CAL_DATE_KEY IN (MAX_DT,MAX_DT-7,MAX_DT-14,MAX_DT-21,MAX_DT-28, MAX_DT-35)
            ) DT ON
            F.DATE_KEY BETWEEN DT.FIL_START_DATE_KEY AND DT.FIL_END_DATE_KEY
            WHERE F.DATA_SOURCE_NAME = 'Reservation data mart'
                AND  
            CASE
                WHEN F.DATE_KEY BETWEEN DT.WEEK_START_DATE AND DT.WEEK_END_DATE
            THEN DT.CURR_PREV_FLAG
            END IN ('CURR','PREV','PREV-1','PREV-2','PREV-3')
        ) T;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_COVID_NAT_ESTIMATES_V AS
    LOCKING ROW FOR ACCESS
        SELECT 
        STATE AS STATE_CD,
        STATENAME AS STATE_NAME,
        CAST(COLLECTIONDATE AS DATE FORMAT 'YYYY-MM-DD') AS DATE_KEY,
        CAST(INPATBEDS_OCC_ANYPAT_EST       AS INTEGER) AS INPATBEDS_OCC_ANYPAT_EST,  
        CAST(INPATBEDS_OCC_ANYPAT_LOCI      AS INTEGER) AS INPATBEDS_OCC_ANYPAT_LOCI,
        CAST(INPATBEDS_OCC_ANYPAT_UPCI      AS INTEGER) AS INPATBEDS_OCC_ANYPAT_UPCI,
        CAST(INPATBEDS_OCC_ANYPAT_EST_AVAIL AS INTEGER) AS INPATBEDS_OCC_ANYPAT_EST_AVAIL,
        CAST(INBEDSOCCANYPAT__NUMBEDS_EST   AS DECIMAL(6,3)) AS INBEDSOCCANYPAT__NUMBEDS_EST,
        CAST(INBEDSOCCANYPAT__NUMBEDS_LOCI  AS DECIMAL(6,3)) AS INBEDSOCCANYPAT__NUMBEDS_LOCI,
        CAST(INBEDSOCCANYPAT__NUMBEDS_UPCI  AS DECIMAL(6,3)) AS INBEDSOCCANYPAT__NUMBEDS_UPCI,
        CAST(INPATBEDS_OCC_COVID_EST        AS INTEGER) AS INPATBEDS_OCC_COVID_EST,
        CAST(INPATBEDS_OCC_COVID_LOCI       AS INTEGER) AS INPATBEDS_OCC_COVID_LOCI,
        CAST(INPATBEDS_OCC_COVID_UPCI       AS INTEGER) AS INPATBEDS_OCC_COVID_UPCI,
        CAST(INBEDSOCCCOVID__NUMBEDS_EST    AS DECIMAL(6,3)) AS INBEDSOCCCOVID__NUMBEDS_EST,
        CAST(INBEDSOCCCOVID__NUMBEDS_LOCI   AS DECIMAL(6,3)) AS INBEDSOCCCOVID__NUMBEDS_LOCI,
        CAST(INBEDSOCCCOVID__NUMBEDS_UPCI   AS DECIMAL(6,3)) AS INBEDSOCCCOVID__NUMBEDS_UPCI,
        CAST(ICUBEDS_OCC_ANYPAT_EST         AS INTEGER) AS ICUBEDS_OCC_ANYPAT_EST,
        CAST(ICUBEDS_OCC_ANYPAT_LOCI        AS INTEGER) AS ICUBEDS_OCC_ANYPAT_LOCI,
        CAST(ICUBEDS_OCC_ANYPAT_UPCI        AS INTEGER) AS ICUBEDS_OCC_ANYPAT_UPCI,
        CAST(ICUBEDS_OCC_ANYPAT_EST_AVAIL   AS INTEGER) AS ICUBEDS_OCC_ANYPAT_EST_AVAIL,
        CAST(ICUBEDSOCCANYPAT__N_ICUBEDS_EST  AS DECIMAL(6,3)) AS ICUBEDSOCCANYPAT__N_ICUBEDS_EST,
        CAST(ICUBEDSOCCANYPAT__N_ICUBEDS_LOCI AS DECIMAL(6,3)) AS ICUBEDSOCCANYPAT__N_ICUBEDS_LOCI,
        CAST(ICUBEDSOCCANYPAT__N_ICUBEDS_UPCI AS DECIMAL(6,3)) AS ICUBEDSOCCANYPAT__N_ICUBEDS_UPCI
        FROM TRNG_COVID19.STG_COVID19_NATIONAL_ESTIMATES
        WHERE COLLECTIONDATE < '2021-07-01'
        
        UNION ALL
        
        SELECT
         IP.STATE_CD,
         G.STATE_NAME AS STATE_NAME,
         IP.COLLECTION_DATE_KEY AS DATE_KEY ,
         IP.EST_INPAT_OCC_BEDS,
         IP.LOW_EST_INPATIENT_OCC_BEDS,
         IP.HIGH_EST_INPATIENT_OCC_BEDS,
         (IP.TOT_INPATIENT_BEDS - IP.EST_INPAT_OCC_BEDS),
         IP.EST_PERC_INPATIENT_OCC_BEDS,
         IP.LOW_EST_PERC_INPATIENT_OCC_BEDS,
         IP.HIGH_EST_PERC_INPATIENT_OCC_BEDS,
         CIP.EST_COVID_OCC_BEDS ,
         CIP.LOW_EST_COVID_OCC_BEDS,
         CIP.HIGH_EST_COVID_OCC_BEDS,
         CIP.EST_PERC_COVID_OCC_BEDS,
         CIP.LOW_EST_PERC_COVID_OCC_BEDS,
         CIP.HIGH_EST_PERC_COVID_OCC_BEDS,
         ICU.EST_ICU_OCC_BEDS,
         ICU.LOW_EST_PERC_ICU_OCC_BEDS,
         ICU.HIGH_EST_PERC_ICU_OCC_BEDS,
         (ICU.TOT_ICU_BEDS - ICU.EST_ICU_OCC_BEDS),
         ICU.EST_PERC_ICU_OCC_BEDS,
         ICU.LOW_EST_PERC_ICU_OCC_BEDS,
         ICU.HIGH_EST_PERC_ICU_OCC_BEDS
        FROM
         TRNG_COVID19.F_IND_DASH_EST_HOSP_INPATIENT IP
         LEFT JOIN TRNG_COVID19.F_IND_DASH_EST_HOSP_ICU ICU ON
         IP.STATE_CD = ICU.STATE_CD AND
         IP.COLLECTION_DATE_KEY = ICU.COLLECTION_DATE_KEY
         LEFT JOIN TRNG_COVID19.F_IND_DASH_EST_HOSP_COVID_INPATIENT CIP ON
         IP.STATE_CD = CIP.STATE_CD AND
         IP.COLLECTION_DATE_KEY = CIP.COLLECTION_DATE_KEY
         JOIN (SELECT STATE_CODE, STATE_NAME 
               FROM TRNG_COVID19.DIM_GEO_LOCATION_V
               WHERE COUNTRY_CODE = 'US'
               GROUP BY 1,2
               UNION ALL
               SELECT COUNTRY_CODE AS STATE_CODE,
               COUNTRY_NAME AS STATE_NAME
               FROM TRNG_COVID19.DIM_GEO_LOCATION_V
               WHERE COUNTRY_CODE = 'US'
               GROUP BY 1,2) G ON
         IP.STATE_CD = G.STATE_CODE
         WHERE IP.COLLECTION_DATE_KEY >= '2021-07-01';

REPLACE VIEW TRNG_COVID19.F_IND_DASH_Covid_Projections_Curr_V AS
    LOCKING ROW FOR ACCESS
    SELECT *
        FROM TRNG_COVID19.FACT_Covid_Model_Data   f
        WHERE geo_key BETWEEN 83999999 AND 84099999 -- us only
        	QUALIFY dense_rank() OVER(partition by geo_key
            ORDER BY date_key  DESC)  =1;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_Covid_Projections_Prev_V AS
    LOCKING ROW FOR ACCESS
    SELECT  
            f.*
        FROM TRNG_COVID19.FACT_Covid_Model_Data   f
        WHERE geo_key BETWEEN 83999999 AND 84099999 -- us only
        QUALIFY DENSE_RANK() OVER(PARTITION BY geo_key
        ORDER BY date_key  DESC)  = 2;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_Covid_Projections_V AS
    LOCKING ROW FOR ACCESS
    SELECT *
        FROM TRNG_COVID19.FACT_Covid_Model_Data_UNPIVOT;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_COVID_READINESS_V AS
           -- select * from TRNG_COVID19.F_IND_DASH_COVID_READINESS_V
    LOCKING ROW FOR ACCESS
    WITH t1 AS (
    SELECT   MAX(date_key) max_dt
        FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_Curr_V f  ) --(select max_dt from t1)
    
    SELECT final.*,
        WEEK_START_DATE   Dash_date_placement --abs(sum(Month_first_ready) over(partition by curr_prev_flag  ) / (cast(14 as decimal(8,4)))-13 )   position_at_date
        
        FROM (
        SELECT 
            SNAPSHOT_DATE,
            SNAPSHOT_WEEK,
            CURR_PREV_FLAG,
            DATE_KEY,
            CAL_WEEK_YEAR,
            WEEK_START_DATE,
            WEEK_END_DATE +7 WEEK_END_DATE,
            geo_key,
            County,
            STATE_CODE,
            STATE_NAME,
            POPULATION,
            COUNTRY_NAME,
            100-((est_infections_Score-1)*(100/est_infections_Score))  Stability_score,
            readiness_score,
            mobility_Score,
            
            CASE
                WHEN  LAG (readiness_score,1,0) IGNORE NULLS   OVER (PARTITION BY geo_key
            ORDER BY cal_week_year ) = readiness_score THEN 0 ELSE readiness_score
            END  Month_first_ready,
                 --,  case when  row_number() OVER (PARTITION BY geo_key   ORDER BY   cal_week_year, readiness_score ) =  then 1 else 0 end  Month_first_ready
            
            CASE
                WHEN  LEAD (readiness_score,1,0) IGNORE NULLS   OVER (PARTITION BY geo_key
            ORDER BY cal_week_year ) = readiness_score AND readiness_score = 1 THEN 1 ELSE 0
            END  Month_first_reversal --select *
            
            FROM (
            SELECT  DISTINCT
                SNAPSHOT_DATE,
                SNAPSHOT_WEEK,
                CURR_PREV_FLAG,
                DATE_KEY,
                cal_week_year,
                week_start_date,
                week_end_date,
                geo_key,
                COUNTY,
                STATE_CODE,
                STATE_NAME,
                POPULATION,
                COUNTRY_NAME,
                0 Stability_score,
                
                CASE
                    WHEN  est_infect_10k < 4 
                THEN 1 ELSE 0
                END readiness_score,
                    MOBILITY_7MAVG_PERC_CHANGE_BASELINE,
                    Infections_7MAVG_PERC_CHANGE_BASELINE,
                    DENSE_RANK() OVER(PARTITION BY  geo_key
                ORDER BY Infections_7MAVG_PERC_CHANGE_BASELINE DESC) est_infections_Score,
                    MOBILITY_7MAVG_PERC_CHANGE_BASELINE   mobility_Score,
                    est_infect_10k --select  modeled_date, geo_key, count(1) 
                 --select *
                
                FROM 
                (
                SELECT  
                    DT.SNAPSHOT_DATE,
                    DT.SNAPSHOT_WEEK,
                    dt.cal_week_year,
                    dt.week_start_date,
                    dt.week_end_date,
                    
                    CASE
                        WHEN F.modeled_date BETWEEN DT.WEEK_START_DATE AND DT.WEEK_END_DATE
                    THEN DT.CURR_PREV_FLAG
                    END AS CURR_PREV_FLAG,
                        f.date_key,
                         -- F.modeled_date,
                    g.uid geo_key,
                        G.COUNTY,
                        G.STATE_NAME,
                        G.STATE_CODE,
                        G.POPULATION,
                        G.COUNTRY_NAME,
                         --   F.est_infections_mean,
                     --   f.mobility_composite,
                    CAST(AVG(F.mobility_composite)  --OVER (PARTITION BY F.GEO_KEY, dt.cal_week_year ORDER BY modeled_date DESC ) 
                    AS DECIMAL(38,5)) MOBILITY_7MAVG_PERC_CHANGE_BASELINE,
                        CAST(AVG(F.est_infections_mean)  -- OVER (PARTITION BY F.GEO_KEY, dt.cal_week_year  ORDER BY modeled_date DESC ROWS BETWEEN CURRENT ROW AND 6 FOLLOWING) 
                    AS DECIMAL(38,5)) Infections_7MAVG_PERC_CHANGE_BASELINE,
                        (CAST(100000 AS DECIMAL(16,4))/G.POPULATION)*Infections_7MAVG_PERC_CHANGE_BASELINE est_infect_10k --select * 
                     --select *
                    
                    FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_Curr_V f--TRNG_COVID19.F_IND_DASH_Covid_Projections_V F 
                    JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
                    F.GEO_KEY = G.UID
                    JOIN (
                    SELECT 
                        MIN(WEEK_END_DATE) OVER () AS SNAPSHOT_DATE,
                        MIN(CAL_WEEK_YEAR) OVER () AS SNAPSHOT_WEEK,
                        MIN(WEEK_START_DATE) OVER () AS FIL_START_DATE_KEY,
                        MAX(WEEK_END_DATE) OVER () FIL_END_DATE_KEY,
                        
                        CASE
                            WHEN RNK =1 THEN  'CURR'
                            WHEN RNK >1 THEN 'PROJ'||'-'||ltrim(CAST(rnk-1 AS VARCHAR(3)))
                        ELSE 'n/a'
                        END CURR_PREV_FLAG,
                            RANK() OVER (
                        ORDER BY WEEK_END_DATE ASC) RNK,
                            DT.* --select *
                        
                        FROM TRNG_COVID19.DIM_CALENDAR_V DT
                        WHERE CAL_DATE_KEY IN (  (
                        SELECT max_dt
                            FROM t1) , (
                        SELECT max_dt
                            FROM t1)+14, (
                        SELECT max_dt
                            FROM t1)+21,
                        (
                        SELECT max_dt
                            FROM t1)+35,(
                        SELECT max_dt
                            FROM t1)+42,(
                        SELECT max_dt
                            FROM t1)+49,(
                        SELECT max_dt
                            FROM t1)+56,(
                        SELECT max_dt
                            FROM t1)+63)
                    ) DT ON
                    F.modeled_date BETWEEN DT.week_start_date  AND DT.week_end_date
                    GROUP BY 1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9,
                        10,
                        11,
                        12,
                        13
                ) T
                WHERE CURR_PREV_FLAG LIKE ANY  ('CURR%','PROJ%')
                 -- and state_code = 'ca'
                 --             
                 --            QUALIFY RANK() OVER (PARTITION BY CURR_PREV_FLAG
                 --            ORDER BY DATE_KEY DESC) = 1 
                ) a ) final;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_Covid_Summary_V  AS
    LOCKING ROW FOR ACCESS
    SELECT *
        FROM TRNG_COVID19.FACT_COVID_MODEL_DATA_SUM;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_DataHub_STATE_V  AS
    LOCKING ROW FOR ACCESS
    SELECT *
        FROM TRNG_COVID19.STG_Covid19_datahub_states;

REPLACE VIEW   TRNG_COVID19.F_IND_DASH_DataHub_V AS
    LOCKING ROW FOR ACCESS
    SELECT  DATE_KEY,
        GEO_KEY,
        g.county,
        g.county_long,
        g.state_name,
        TESTCNT tested_cnt,
        CONFIRMED_CNT,
        RECOVERED_CNT,
        DEATHs_CNT DEATH_CNT,
        HOSPITALIZED_CNT,
        ON_VENTILATOR_CNT,
        IN_ICU_CNT,
        SEVERE_CASE_CNT,
        dh.POPULATION,
        SCHOOL_CLOSING,
        WORKPLACE_CLOSING,
        CANCEL_EVENTS,
        GATHERINGS_RESTRICTIONS,
        TRANSPORT_CLOSING,
        STAY_HOME_RESTRICTIONS,
        INTERNAL_MOVEMENT_RESTRICTIONS,
        INTERNATIONAL_MOVEMENT_RESTRICTIONS,
        INFORMATION_CAMPAIGNS,
        TESTING_POLICY,
        CONTACT_TRACING,
        STRINGENCY_INDEX,
        KEY_STR,
        KEY_NUMERIC,
        KEY_GOOGLE_MOBILITY,
        KEY_APPLE_MOBILITY,
        KEY_ALPHA_2,
        REC_INS_TS
        FROM TRNG_COVID19.FACT_COVID19_DATAHUB dh
         join TRNG_COVID19.DIM_GEO_LOCATION_V g on g.uid = dh.geo_key;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_GOOGLE_SEARCH_TRENDS_VIZ_V AS
    LOCKING ROW FOR ACCESS
    WITH t1 AS (SELECT MAX(date_key) max_dt FROM TRNG_COVID19.F_IND_DASH_GOOGLE_TRENDS_V)   
    SELECT
        SNAPSHOT_DATE,
        SNAPSHOT_WEEK,
        CURR_PREV_FLAG,
        DATE_KEY,
        COUNTY,
        STATE_CODE,
        STATE_NAME,
        COUNTRY_NAME,
        TREND_NAME,
        METRIC_PERC_CHANGE_BASELINE,
        METRIC_7MAVG_PERC_CHANGE_BASELINE
        FROM 
        (
        SELECT
            DT.SNAPSHOT_DATE,
            DT.SNAPSHOT_WEEK,
            CASE WHEN F.DATE_KEY BETWEEN DT.WEEK_START_DATE AND DT.WEEK_END_DATE
                 THEN DT.CURR_PREV_FLAG
            END AS CURR_PREV_FLAG,
            F.DATE_KEY,
            G.COUNTY,
            G.STATE_NAME,
            G.STATE_CODE,
            G.POPULATION,
            G.COUNTRY_NAME,
            F.TREND_NAME,
            F.METRIC_INDEX AS METRIC_PERC_CHANGE_BASELINE,
            CAST(AVG(F.METRIC_INDEX)  OVER (PARTITION BY F.GEO_KEY, F.TREND_NAME ORDER BY DATE_KEY DESC ROWS BETWEEN CURRENT ROW AND 6 FOLLOWING) AS DECIMAL(38,5)) METRIC_7MAVG_PERC_CHANGE_BASELINE
        FROM TRNG_COVID19.F_IND_DASH_GOOGLE_TRENDS_V F  
        JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
             F.GEO_KEY = G.UID
        JOIN (
              SELECT 
                MAX(WEEK_END_DATE) OVER () AS SNAPSHOT_DATE,
                MAX(CAL_WEEK_YEAR) OVER () AS SNAPSHOT_WEEK,
                MIN(WEEK_START_DATE) OVER () AS FIL_START_DATE_KEY,
                MAX(WEEK_END_DATE) OVER () FIL_END_DATE_KEY,  
                CASE
                    WHEN RNK =1 THEN 'CURR'
                    WHEN RNK =2 THEN 'PREV'
                ELSE 'PREV-1'
                END CURR_PREV_FLAG,
                RANK() OVER (ORDER BY WEEK_END_DATE DESC) RNK,
                DT.*
              FROM TRNG_COVID19.DIM_CALENDAR_V DT
              WHERE CAL_DATE_KEY IN ((SELECT max_dt FROM t1) - 7, (SELECT max_dt FROM t1) -14, (SELECT max_dt FROM t1)-21)
             ) DT ON
            F.DATE_KEY BETWEEN DT.FIL_START_DATE_KEY AND DT.FIL_END_DATE_KEY
        ) T
        WHERE CURR_PREV_FLAG IN ('CURR','PREV')
        QUALIFY RANK() OVER (PARTITION BY CURR_PREV_FLAG ORDER BY DATE_KEY DESC) = 1;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_GOOGLE_TRENDS_V AS
LOCKING ROW FOR ACCESS
SELECT * FROM TRNG_COVID19.F_IND_DASH_GOOGLE_TRENDS;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_HEALTH_VIZ_V AS
LOCKING ROW FOR ACCESS
SELECT
 SNAPSHOT_DATE,
 SNAPSHOT_WEEK,
 CURR_PREV_FLAG,
 GEO_KEY,
 COUNTY,
 STATE_CODE,
 STATE_NAME,
 COUNTY_POPULATION,
 COUNTY_POP_RNK,
 CASES_TODATE_PER100K,  -- cases to-date per 100K population
 CASES_TODATE_WK,       -- cases to-date for snapshot week
 NEW_CASES_WK,          -- new cases for snapshot week
 DEATHS_TODATE_WK,      -- deaths to-date for snapshot week
 NEW_DEATHS_WK,         -- new deaths for snapshot week
 NEW_CASES_7MAVG,       -- new cases 7MAVG for last day of snapshot week    
 NEW_CASES_7MAVG_100K,  -- new cases 7MAVG/100k pop for last day of snapshot week    
 NEW_DEATHS_7MAVG,      -- new deaths 7MAVG for last day of snapshot week
 NEW_DEATHS_7MAVG_100K, -- new deaths 7MAVG/100k pop for last day of snapshot week
 MAX(RECOVERY_FLAG) OVER (PARTITION BY COUNTY, STATE_NAME, CURR_PREV_FLAG ORDER BY 1) AS RECOVERY_FLAG,
 MIN(SAFE_FLAG) OVER (PARTITION BY COUNTY, STATE_NAME, CURR_PREV_FLAG ORDER BY 1) AS SAFE_FLAG,
 MAX(SURGE_FLAG)  OVER (PARTITION BY COUNTY, STATE_NAME, CURR_PREV_FLAG ORDER BY 1)AS SURGE_FLAG
FROM
(
 SELECT 
   SNAPSHOT_DATE,
   SNAPSHOT_WEEK,
   CURR_PREV_FLAG,
   DATE_KEY,
   GEO_KEY,
   COUNTY,
   STATE_CODE,
   STATE_NAME,
   POPULATION AS COUNTY_POPULATION,
   COUNTY_POP_RNK,
   CASES_TODATE_PER100K,
   CASES_TODATE_WK,
   NEW_CASES_WK,
   DEATHS_TODATE_WK,
   NEW_DEATHS_WK,
   NEW_CASES_7MAVG,
   NEW_CASES_7MAVG_100K,
   NEW_DEATHS_7MAVG,
   NEW_DEATHS_7MAVG_100K,
   CASE WHEN NEW_CASES_7MAVG_100K                                                                         < 4 AND
             LEAD(NEW_CASES_7MAVG_100K,1 ) OVER  (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) < 4 AND
			 LEAD(NEW_CASES_7MAVG_100K,2 ) OVER  (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) < 4 AND
			 LEAD(NEW_CASES_7MAVG_100K,3 ) OVER  (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) < 4 AND
			 LEAD(NEW_CASES_7MAVG_100K,4 ) OVER  (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) < 4 AND
			 LEAD(NEW_CASES_7MAVG_100K,5 ) OVER  (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) < 4 AND
			 LEAD(NEW_CASES_7MAVG_100K,6 ) OVER  (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) < 4 AND
			 LEAD(NEW_CASES_7MAVG_100K,7 ) OVER  (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) < 4 AND
			 LEAD(NEW_CASES_7MAVG_100K,8 ) OVER  (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) < 4 AND
			 LEAD(NEW_CASES_7MAVG_100K,9 ) OVER  (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) < 4 AND
			 LEAD(NEW_CASES_7MAVG_100K,10) OVER  (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) < 4 AND
			 LEAD(NEW_CASES_7MAVG_100K,11) OVER  (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) < 4 AND
			 LEAD(NEW_CASES_7MAVG_100K,12) OVER  (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) < 4 AND
			 LEAD(NEW_CASES_7MAVG_100K,13) OVER  (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) < 4 
	    THEN 1
		ELSE 0
   END AS SAFE_FLAG,
   CASE WHEN SAFE_FLAG = 0 AND
             LEAD(NEW_CASES_7MAVG_100K,1 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) >  NEW_CASES_7MAVG_100K AND
             LEAD(NEW_CASES_7MAVG_100K,2 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) >  LEAD(NEW_CASES_7MAVG_100K,1 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
             LEAD(NEW_CASES_7MAVG_100K,3 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) >  LEAD(NEW_CASES_7MAVG_100K,2 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
             LEAD(NEW_CASES_7MAVG_100K,4 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) >  LEAD(NEW_CASES_7MAVG_100K,3 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
             LEAD(NEW_CASES_7MAVG_100K,5 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) >  LEAD(NEW_CASES_7MAVG_100K,4 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
             LEAD(NEW_CASES_7MAVG_100K,6 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) >  LEAD(NEW_CASES_7MAVG_100K,5 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
             LEAD(NEW_CASES_7MAVG_100K,7 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) >  LEAD(NEW_CASES_7MAVG_100K,6 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
             LEAD(NEW_CASES_7MAVG_100K,8 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) >  LEAD(NEW_CASES_7MAVG_100K,7 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
             LEAD(NEW_CASES_7MAVG_100K,9 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) >  LEAD(NEW_CASES_7MAVG_100K,8 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
             LEAD(NEW_CASES_7MAVG_100K,10) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) >  LEAD(NEW_CASES_7MAVG_100K,9 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
             LEAD(NEW_CASES_7MAVG_100K,11) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) >  LEAD(NEW_CASES_7MAVG_100K,10) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
             LEAD(NEW_CASES_7MAVG_100K,12) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) >  LEAD(NEW_CASES_7MAVG_100K,11) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
             LEAD(NEW_CASES_7MAVG_100K,13) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) >  LEAD(NEW_CASES_7MAVG_100K,12) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
             LEAD(NEW_CASES_7MAVG_100K,14) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) >  LEAD(NEW_CASES_7MAVG_100K,13) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC)
         THEN 1
         ELSE 0
   END AS RECOVERY_FLAG,
   CASE WHEN SAFE_FLAG = 0 AND
             LEAD(NEW_CASES_WK,7 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  NEW_CASES_WK AND  
			 LEAD(NEW_CASES_WK,14) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  LEAD(NEW_CASES_WK,7 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC)
	    THEN 1
		ELSE 0
   END AS SURGE_FLAG
   --CASE WHEN NEW_CASES_7MAVG_100K >= 4 AND
   --          LEAD(NEW_CASES_7MAVG_100K,1 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  NEW_CASES_7MAVG_100K AND
   --          LEAD(NEW_CASES_7MAVG_100K,2 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  LEAD(NEW_CASES_7MAVG_100K,1 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
   --          LEAD(NEW_CASES_7MAVG_100K,3 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  LEAD(NEW_CASES_7MAVG_100K,2 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
   --          LEAD(NEW_CASES_7MAVG_100K,4 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  LEAD(NEW_CASES_7MAVG_100K,3 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
   --          LEAD(NEW_CASES_7MAVG_100K,5 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  LEAD(NEW_CASES_7MAVG_100K,4 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
   --          LEAD(NEW_CASES_7MAVG_100K,6 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  LEAD(NEW_CASES_7MAVG_100K,5 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
	--		   LEAD(NEW_CASES_7MAVG_100K,7 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  LEAD(NEW_CASES_7MAVG_100K,6 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
	--		   LEAD(NEW_CASES_7MAVG_100K,8 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  LEAD(NEW_CASES_7MAVG_100K,7 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
	--		   LEAD(NEW_CASES_7MAVG_100K,9 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  LEAD(NEW_CASES_7MAVG_100K,8 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
	--		   LEAD(NEW_CASES_7MAVG_100K,10) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  LEAD(NEW_CASES_7MAVG_100K,9 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
	--		   LEAD(NEW_CASES_7MAVG_100K,11) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  LEAD(NEW_CASES_7MAVG_100K,10 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
	--		   LEAD(NEW_CASES_7MAVG_100K,12) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  LEAD(NEW_CASES_7MAVG_100K,11 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
	--		   LEAD(NEW_CASES_7MAVG_100K,13) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  LEAD(NEW_CASES_7MAVG_100K,12 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) AND
	--		   LEAD(NEW_CASES_7MAVG_100K,14 ) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC) <  LEAD(NEW_CASES_7MAVG_100K,13) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC)
   --      THEN 1
   --      ELSE 0
   --END AS SURGE_FLAG
 FROM
 (
  SELECT
    SNAPSHOT_DATE,
    SNAPSHOT_WEEK,
    CURR_PREV_FLAG,
    DATE_KEY,
	GEO_KEY,
    COUNTY,
    STATE_CODE,
    STATE_NAME,
    POPULATION,
    DENSE_RANK() OVER (PARTITION BY SNAPSHOT_DATE,COUNTRY_NAME ORDER BY POPULATION DESC)                                                                             AS COUNTY_POP_RNK,
    MAX(ROUND(CAST(CASES_TODATE*100000 AS DECIMAL(38,5))/POPULATION,0)) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC)                                AS CASES_TODATE_PER100K,
	MAX(CASES_TODATE) OVER (PARTITION BY COUNTY, STATE_NAME, CURR_PREV_FLAG ORDER BY DATE_KEY DESC)                                                                  AS CASES_TODATE_WK,
	SUM(NEW_CASES) OVER (PARTITION BY COUNTY, STATE_NAME, CURR_PREV_FLAG ORDER BY DATE_KEY DESC)                                                                     AS NEW_CASES_WK,
	MAX(DEATHS_TODATE) OVER (PARTITION BY COUNTY, STATE_NAME, CURR_PREV_FLAG ORDER BY DATE_KEY DESC)                                                                 AS DEATHS_TODATE_WK,
	SUM(NEW_DEATHS) OVER (PARTITION BY COUNTY, STATE_NAME, CURR_PREV_FLAG ORDER BY DATE_KEY DESC)                                                                    AS NEW_DEATHS_WK,
    CAST(AVG(NEW_CASES)  OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC ROWS BETWEEN CURRENT ROW AND 6 FOLLOWING) AS DECIMAL(38,5))                    AS NEW_CASES_7MAVG,
	CAST(AVG(NEW_CASES)  OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC ROWS BETWEEN CURRENT ROW AND 6 FOLLOWING) AS DECIMAL(38,5))*100000/POPULATION  AS NEW_CASES_7MAVG_100K,
    CAST(AVG(NEW_DEATHS) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC ROWS BETWEEN CURRENT ROW AND 6 FOLLOWING) AS DECIMAL(38,5))                    AS NEW_DEATHS_7MAVG,
	CAST(AVG(NEW_DEATHS) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC ROWS BETWEEN CURRENT ROW AND 6 FOLLOWING) AS DECIMAL(38,5))*100000/POPULATION  AS NEW_DEATHS_7MAVG_100K
  FROM
  (
    SELECT
        DT.SNAPSHOT_DATE,
        DT.SNAPSHOT_WEEK,
        CASE WHEN F.DATE_KEY BETWEEN DT.WEEK_START_DATE AND DT.WEEK_END_DATE
             THEN DT.CURR_PREV_FLAG
        END AS CURR_PREV_FLAG,
        F.DATE_KEY,
		F.GEO_KEY,
        G.COUNTY,
        G.STATE_NAME,
        G.STATE_CODE,
        G.POPULATION,
        G.COUNTRY_NAME,
        SUM(CASE WHEN UPPER(F.METRIC_NAME) = 'CASES TO-DATE'
             THEN METRIC_VALUE
        END) AS CASES_TODATE,
        SUM(CASE WHEN UPPER(F.METRIC_NAME) = 'NEW DAILY CASES'
             THEN METRIC_VALUE
             END) AS NEW_CASES,
        SUM(CASE WHEN UPPER(F.METRIC_NAME) = 'DEATHS TO-DATE'
             THEN METRIC_VALUE
        END) AS DEATHS_TODATE,
        SUM(CASE WHEN UPPER(F.METRIC_NAME) = 'NEW DAILY DEATHS'
             THEN METRIC_VALUE
             END) AS NEW_DEATHS
    FROM 
     TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F 
     JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
     F.GEO_KEY = G.UID
     JOIN (SELECT 
       		MAX(WEEK_END_DATE) OVER () AS SNAPSHOT_DATE,
       		MAX(CAL_WEEK_YEAR) OVER () AS SNAPSHOT_WEEK,
       		MIN(WEEK_START_DATE) OVER () AS FIL_START_DATE_KEY,
       		MAX(WEEK_END_DATE) OVER () FIL_END_DATE_KEY,
       		CASE WHEN RNK =1 THEN 'CURR'
            	 WHEN RNK =2 THEN 'PREV'
				 WHEN RNK =3 THEN 'PREV-1'
            	 ELSE 'PREV-2'
       		END CURR_PREV_FLAG,
       		RANK() OVER (ORDER BY WEEK_END_DATE DESC) RNK,
       		DT.*
    	   FROM 
            TRNG_COVID19.DIM_CALENDAR_V DT
			LEFT JOIN (
                       SELECT MAX(DATE_KEY) MAX_DT
                       FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F  
                       JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
                            F.GEO_KEY = G.UID
                       WHERE F.DOMAIN_NAME = 'Covid19 NYT' AND  
                             F.GEO_GRANULARITY = 'COUNTY'                      
                      ) MAXDT ON 1=1
           WHERE CAL_DATE_KEY IN (MAX_DT-7,MAX_DT-14,MAX_DT-21, MAX_DT-28)
          ) DT ON
      F.DATE_KEY BETWEEN DT.FIL_START_DATE_KEY AND DT.FIL_END_DATE_KEY
    WHERE 
     F.DOMAIN_NAME = 'Covid19 NYT' AND
     F.GEO_GRANULARITY = 'COUNTY' 
    GROUP BY 1,2,3,4,5,6,7,8,9,10
  ) T
  WHERE CURR_PREV_FLAG IS NOT NULL
 ) T1
--WHERE CURR_PREV_FLAG IN ('CURR','PREV','PREV-1')
) T2
WHERE CURR_PREV_FLAG IN ('CURR','PREV')
QUALIFY RANK() OVER (PARTITION BY COUNTY, STATE_NAME, CURR_PREV_FLAG ORDER BY DATE_KEY DESC) = 1;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_MACROECONOMICS_GEO_MONTHLY_V AS
    LOCKING ROW FOR ACCESS
    SELECT 
        DT.SNAPSHOT_DATE,
        DT.SNAPSHOT_MONTH,
        FT.DATE_KEY,
        FT.MONTH_KEY,
        FT.WEEK_NUM,
        FT.GEO_GRANULARITY,
        FT.COUNTY,
        FT.STATE_CODE,
        FT.STATE_NAME,
        FT.COUNTRY_NAME,
        FT.POPULATION,
        FT.METRIC_NAME,
        FT.METRIC_DISPLAY_SHORT_NAME,
		FT.METRIC_UOM,
		FT.DASH_VIZ_DISPLAY_NAME,
        FT.METRIC_VALUE
    FROM
       (
        SELECT 
            DATE_KEY,
            DATE_KEY - EXTRACT(DAY FROM DATE_KEY)+1 AS MONTH_KEY,
            0 AS WEEK_NUM,
            UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
            G.COUNTY,
            G.STATE_CODE,
            G.STATE_NAME,
            G.COUNTRY_NAME,
            G.POPULATION,
            MT.METRIC_DISPLAY_NAME AS METRIC_NAME,
            MT.METRIC_DISPLAY_SHORT_NAME,
		    MT.METRIC_UOM,
            MT.DASH_VIZ_DISPLAY_NAME,
            CASE WHEN UPPER(MT.METRIC_VAL_IND_SEL) = 'I' 
			     THEN F.METRIC_INDEX
                 WHEN UPPER(MT.METRIC_VAL_IND_SEL) = 'V' 
			     THEN F.METRIC_VALUE
            END AS METRIC_VALUE,
            F.DATA_SOURCE_NAME
        FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
             JOIN TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF_V MT  ON 
                  MT.SEMANTIC_VIEW_NAME             = 'F_IND_DASH_MACROECONOMICS_VIZ_V' AND
                  F.METRIC_NAME                     = MT.METRIC_NAME AND 
                  F.DATA_SOURCE_NAME                = MT.DATA_SOURCE_NAME  AND
                  DECODE(F.SUBDOMAIN_1_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_1_NAME,'?')) = DECODE(MT.SUBDOMAIN_1_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_1_NAME,'?')) AND
                  DECODE(F.SUBDOMAIN_2_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_2_NAME,'?')) = DECODE(MT.SUBDOMAIN_2_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_2_NAME,'?')) AND
                  DECODE(F.SUBDOMAIN_3_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_3_NAME,'?')) = DECODE(MT.SUBDOMAIN_3_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_3_NAME,'?'))
            JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON 
                  F.GEO_KEY = G.UID
            LEFT JOIN 
			(
             SELECT    
			 MAX(DATE_KEY) MAX_DT
             FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
             WHERE DATA_SOURCE_NAME IN (SELECT DATA_SOURCE_NAME     
			                            FROM TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF_V 
                                        WHERE SEMANTIC_VIEW_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'
						            )
            ) MAXDT ON 1=1
            WHERE F.DATE_KEY BETWEEN CAST(CONCAT(TRIM(EXTRACT(YEAR FROM MAX_DT)-1),'-01-01') AS DATE FORMAT 'YYYY-MM-DD') AND MAX_DT AND  
			      UPPER(F.DATE_GRANULARITY) = 'MONTHLY'
                      				
        UNION ALL
        
		SELECT 
		    DATE_KEY,
            DATE_KEY - EXTRACT(DAY FROM DATE_KEY)+1 AS MONTH_KEY,
            DENSE_RANK() OVER (PARTITION BY EXTRACT(YEAR FROM DATE_KEY) ORDER BY DATE_KEY ASC) AS WEEK_NUM,
            UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
            G.COUNTY,
            G.STATE_CODE,
            G.STATE_NAME,
            G.COUNTRY_NAME,
            G.POPULATION,
            MT.METRIC_DISPLAY_NAME AS METRIC_NAME,
            MT.METRIC_DISPLAY_SHORT_NAME,
		    MT.METRIC_UOM,
            MT.DASH_VIZ_DISPLAY_NAME,
            CASE WHEN UPPER(MT.METRIC_VAL_IND_SEL) = 'I' 
			     THEN F.METRIC_INDEX
                 WHEN UPPER(MT.METRIC_VAL_IND_SEL) = 'V' 
			     THEN F.METRIC_VALUE
            END AS METRIC_VALUE,
            F.DATA_SOURCE_NAME    
        FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
             JOIN TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF_V MT  ON 
                  MT.SEMANTIC_VIEW_NAME             = 'F_IND_DASH_MACROECONOMICS_VIZ_V' AND
                  F.METRIC_NAME                     = MT.METRIC_NAME AND 
                  F.DATA_SOURCE_NAME                = MT.DATA_SOURCE_NAME  AND
                  DECODE(F.SUBDOMAIN_1_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_1_NAME,'?')) = DECODE(MT.SUBDOMAIN_1_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_1_NAME,'?')) AND
                  DECODE(F.SUBDOMAIN_2_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_2_NAME,'?')) = DECODE(MT.SUBDOMAIN_2_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_2_NAME,'?')) AND
                  DECODE(F.SUBDOMAIN_3_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_3_NAME,'?')) = DECODE(MT.SUBDOMAIN_3_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_3_NAME,'?'))
            JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON 
                  F.GEO_KEY = G.UID
            LEFT JOIN 
			(
             SELECT    
			 MAX(DATE_KEY) MAX_DT
             FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
             WHERE DATA_SOURCE_NAME IN (SELECT DATA_SOURCE_NAME     
			                            FROM TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF_V 
                                        WHERE SEMANTIC_VIEW_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'
						            )
            ) MAXDT ON 1=1
            WHERE F.DATE_KEY BETWEEN CAST(CONCAT(TRIM(EXTRACT(YEAR FROM MAX_DT)-1),'-01-01') AS DATE FORMAT 'YYYY-MM-DD') AND MAX_DT AND  
			      UPPER(F.DATE_GRANULARITY) = 'WEEKLY'
                				
        ) FT
		JOIN
	    (
         SELECT   
            MAX(DATE_KEY - EXTRACT(DAY FROM DATE_KEY)) AS SNAPSHOT_DATE,
            CONCAT('M',TRIM(MONTH(MAX(DATE_KEY - EXTRACT(DAY FROM DATE_KEY)))),'-',TRIM(YEAR(MAX(DATE_KEY - EXTRACT(DAY FROM DATE_KEY))))) AS SNAPSHOT_MONTH
         FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F                    
         WHERE DATA_SOURCE_NAME IN (SELECT DATA_SOURCE_NAME     
			                        FROM TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF_V 
                                    WHERE SEMANTIC_VIEW_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'
								   )
        ) DT ON 
        1=1;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_MACROECONOMICS_VIZ_NXP_V AS
    LOCKING ROW FOR ACCESS
    SELECT 
        DT.SNAPSHOT_DATE,
        DT.SNAPSHOT_MONTH,
        FT.DATE_KEY,
        FT.CURR_PREV_FLAG,
        FT.GEO_GRANULARITY,
        FT.COUNTY,
        FT.STATE_CODE,
        FT.STATE_NAME,
        FT.COUNTRY_NAME,
        FT.POPULATION,
        FT.METRIC_NAME,
    FT.METRIC_NAME_DISP_SHORT, 
        FT.METRIC_NAME_DISP_SHORT2,
        FT.METRIC_VALUE
        FROM
        (
        SELECT 
            DATE_KEY,
            
            CASE
                WHEN RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY DATE_KEY DESC) = 1
            THEN 'CURR-CY'
                WHEN RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY DATE_KEY DESC) = 2
            THEN 'PREV-CY'
                WHEN RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY DATE_KEY DESC) = 13
            THEN 'CURR-LY'
            END CURR_PREV_FLAG,
                GEO_GRANULARITY,
                COUNTY,
                STATE_CODE,
                STATE_NAME,
                COUNTRY_NAME,
                POPULATION,
                METRIC_NAME, 
                METRIC_NAME_DISP_SHORT, 
                METRIC_NAME_DISP_SHORT2,
                METRIC_VALUE,
                DATA_SOURCE_NAME 
             -- SELECT  * --DISTINCT DATA_SOURCE_NAME, METRIC_NAME
            FROM
            (
            SELECT DATE_KEY,
                UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
                G.COUNTY,
                G.STATE_CODE,
                G.STATE_NAME,
                G.COUNTRY_NAME,
                G.POPULATION,
                MT.DASH_METRIC_NAME_DISP METRIC_NAME,
                MT.DASH_METRIC_NAME_DISP_SHORT METRIC_NAME_DISP_SHORT, 
                MT.DASH_METRIC_NAME_DISP_SHORT2 METRIC_NAME_DISP_SHORT2, 
                CASE
                 WHEN MT.METRIC_VAL_IND_SEL = 'I' THEN F.METRIC_INDEX
                 WHEN MT.METRIC_VAL_IND_SEL = 'V' THEN F.METRIC_VALUE
                END AS METRIC_VALUE,
                    F.DATA_SOURCE_NAME, MT.DATA_SOURCE_NAME CC1
                FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F 
                JOIN TRNG_COVID19.DIM_METRICS_REF_NXP_V MT  ON 
                 DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                    F.METRIC_NAME = MT.METRIC_NAME AND 
                    F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                    F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                 F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                 F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME)  
                JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON 
                F.GEO_KEY = G.UID
                LEFT JOIN (
                SELECT    MAX(DATE_KEY) MAX_DT 
                    FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                    JOIN TRNG_COVID19.DIM_METRICS_REF_NXP_V MT
                    ON DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                    F.METRIC_NAME = MT.METRIC_NAME AND 
                    F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                    F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                 F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                 F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME)
                ) MAXDT ON 1=1
                WHERE F.DATE_KEY BETWEEN ADD_MONTHS(MAX_DT,-20) AND MAX_DT
                AND F.DATE_GRANULARITY = 'MONTHLY'
                 --                   AND  
--                CASE
--                    WHEN F.DATA_SOURCE_NAME = 'BUREAU OF ECONOMIC ANALYSIS - NIPA MONTHLY REPORT T2.4.5U' AND
--                TRIM(UPPER(F.DOMAIN_NAME))      IN ('GOODS','SERVICES') AND
--                TRIM(UPPER(F.SUBDOMAIN_1_NAME)) IN ('NONDURABLE GOODS','HOUSEHOLD CONSUMPTION EXPENDITURES (FOR SERVICES)') AND
--                TRIM(UPPER(F.SUBDOMAIN_2_NAME)) IN ('CLOTHING AND FOOTWEAR','FOOD SERVICES AND ACCOMMODATIONS') AND
--                TRIM(UPPER(F.SUBDOMAIN_3_NAME)) = 'TOTAL'   
--                THEN 1
--                    WHEN F.DATA_SOURCE_NAME IN ('CONSUMER SENTIMENT INDEX','BLS')
--                THEN 1
--                ELSE 0
--                END = 1
                ) T
            QUALIFY RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY DATE_KEY DESC) IN (1,2,13)
                                                                    
        UNION ALL
        SELECT DATE_KEY,
            'JAN-CY' AS CURR_PREV_FLAG,
            UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
            G.COUNTY,
            G.STATE_CODE,
            G.STATE_NAME,
            G.COUNTRY_NAME,
            G.POPULATION,
            
            MT.DASH_METRIC_NAME_DISP METRIC_NAME,
                MT.DASH_METRIC_NAME_DISP_SHORT METRIC_NAME_DISP_SHORT, 
                MT.DASH_METRIC_NAME_DISP_SHORT2 METRIC_NAME_DISP_SHORT2,
            CASE
                 WHEN MT.METRIC_VAL_IND_SEL = 'I' THEN F.METRIC_INDEX
                 WHEN MT.METRIC_VAL_IND_SEL = 'V' THEN F.METRIC_VALUE
                END AS METRIC_VALUE,
                F.DATA_SOURCE_NAME
             --SELECT *
            FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                JOIN TRNG_COVID19.DIM_METRICS_REF_NXP_V MT  ON 
                 DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                    F.METRIC_NAME = MT.METRIC_NAME AND 
                    F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                    F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                 F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                 F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME)  
            JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON 
            F.GEO_KEY = G.UID
            LEFT JOIN (
            SELECT   MAX(DATE_KEY) MAX_DT
                FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                    JOIN TRNG_COVID19.DIM_METRICS_REF_NXP_V MT
                    ON DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                    F.METRIC_NAME = MT.METRIC_NAME AND 
                    F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                    F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                 F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                 F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME) 
            ) MAXDT ON 1=1
            WHERE MONTH( F.DATE_KEY) = 1
                AND  YEAR(F.DATE_KEY) = YEAR (MAX_DT)
                 AND F.DATE_GRANULARITY = 'MONTHLY'
--                             AND  
--            CASE
--                WHEN F.DATA_SOURCE_NAME = 'BUREAU OF ECONOMIC ANALYSIS - NIPA MONTHLY REPORT T2.4.5U' AND
--            TRIM(UPPER(F.DOMAIN_NAME))      IN ('GOODS','SERVICES') AND
--            TRIM(UPPER(F.SUBDOMAIN_1_NAME)) IN ('NONDURABLE GOODS','HOUSEHOLD CONSUMPTION EXPENDITURES (FOR SERVICES)') AND
--            TRIM(UPPER(F.SUBDOMAIN_2_NAME)) IN ('CLOTHING AND FOOTWEAR','FOOD SERVICES AND ACCOMMODATIONS') AND
--            TRIM(UPPER(F.SUBDOMAIN_3_NAME)) = 'TOTAL'   
--            THEN 1
--                WHEN F.DATA_SOURCE_NAME IN ('CONSUMER SENTIMENT INDEX','BLS')
--            THEN 1
--            ELSE 0
--            END = 1   
             --GROUP BY 1,2,3,4,5,6,7,8,9,
            UNION ALL
        SELECT 
            T.DATE_KEY AS DATE_KEY,
            
            CASE
                WHEN RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY T.DATE_KEY DESC) = 1
            THEN 'CURR-CY'
                WHEN RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY T.DATE_KEY DESC) = 2
            THEN 'PREV-CY'
                WHEN RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY T.DATE_KEY DESC) = 13
            THEN 'CURR-LY'
            END CURR_PREV_FLAG,
                GEO_GRANULARITY,
                COUNTY,
                STATE_CODE,
                STATE_NAME,
                COUNTRY_NAME,
                POPULATION, 
             METRIC_NAME,
                METRIC_NAME_DISP_SHORT, 
                METRIC_NAME_DISP_SHORT2,
                METRIC_VALUE,
                DATA_SOURCE_NAME
            FROM
            (
            SELECT DATE_KEY,
                ADD_MONTHS(DATE_KEY - EXTRACT(DAY
                FROM DATE_KEY)+1,1)-1 AS MONTH_KEY,
                    UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
                    G.COUNTY,
                    G.STATE_CODE,
                    G.STATE_NAME,
                    G.COUNTRY_NAME,
                    G.POPULATION,
                    CONCAT(F.SUBDOMAIN_1_NAME,' - ',MT.DASH_METRIC_NAME_DISP)  AS METRIC_NAME,
                    
                 CONCAT(F.SUBDOMAIN_1_NAME,' - ',MT.DASH_METRIC_NAME_DISP_SHORT) METRIC_NAME_DISP_SHORT, 
                 MT.DASH_METRIC_NAME_DISP_SHORT2 METRIC_NAME_DISP_SHORT2,
                CASE
                 WHEN MT.METRIC_VAL_IND_SEL = 'I' THEN F.METRIC_INDEX
                 WHEN MT.METRIC_VAL_IND_SEL = 'V' THEN F.METRIC_VALUE
                END AS METRIC_VALUE,
                    MT.DATA_SOURCE_NAME
                FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                JOIN TRNG_COVID19.DIM_METRICS_REF_NXP_V MT  ON 
                 DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                    F.METRIC_NAME = MT.METRIC_NAME AND 
                    F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                    F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                 F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                 F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME)
                JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON 
                F.GEO_KEY = G.UID
                LEFT JOIN (
                            SELECT   MAX(DATE_KEY) MAX_DT
                FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                    JOIN TRNG_COVID19.DIM_METRICS_REF_NXP_V MT
                    ON DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                    F.METRIC_NAME = MT.METRIC_NAME AND 
                    F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                    F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                 F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                 F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME) 
                ) MAXDT ON 1=1
                WHERE F.DATE_KEY BETWEEN ADD_MONTHS(MAX_DT,-20) AND ADD_MONTHS(MAX_DT,0)
                 AND F.DATE_GRANULARITY = 'WEEKLY'
                QUALIFY RANK() OVER (PARTITION BY F.METRIC_NAME,MONTH_KEY
                ORDER BY DATE_KEY DESC) = 1
            ) T
            QUALIFY RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY DATE_KEY DESC) IN (1,2,13)
                                                                
        UNION ALL
        SELECT 
            T2.DATE_KEY AS DATE_KEY,
            CURR_PREV_FLAG,
            GEO_GRANULARITY,
            COUNTY,
            STATE_CODE,
            STATE_NAME,
            COUNTRY_NAME,
            POPULATION,
            METRIC_NAME,
            METRIC_NAME_DISP_SHORT, 
            METRIC_NAME_DISP_SHORT2,
            METRIC_VALUE,
            DATA_SOURCE_NAME
            FROM
            (
            SELECT DATE_KEY,
                ADD_MONTHS(DATE_KEY - EXTRACT(DAY
                FROM DATE_KEY)+1,1)-1 AS MONTH_KEY,
                    'JAN-CY' AS CURR_PREV_FLAG,
                    UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
                    G.COUNTY,
                    G.STATE_CODE,
                    G.STATE_NAME,
                    G.COUNTRY_NAME,
                    G.POPULATION,
                    CONCAT(F.SUBDOMAIN_1_NAME,' - ',MT.DASH_METRIC_NAME_DISP)  AS METRIC_NAME,
                    
                 CONCAT(F.SUBDOMAIN_1_NAME,' - ',MT.DASH_METRIC_NAME_DISP_SHORT) METRIC_NAME_DISP_SHORT, 
                 MT.DASH_METRIC_NAME_DISP_SHORT2 METRIC_NAME_DISP_SHORT2,
                CASE
                 WHEN MT.METRIC_VAL_IND_SEL = 'I' THEN F.METRIC_INDEX
                 WHEN MT.METRIC_VAL_IND_SEL = 'V' THEN F.METRIC_VALUE
                END AS METRIC_VALUE,
                    MT.DATA_SOURCE_NAME
                FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                 JOIN TRNG_COVID19.DIM_METRICS_REF_NXP_V MT  ON 
                 DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                    F.METRIC_NAME = MT.METRIC_NAME AND 
                    F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                    F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                 F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                 F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME)
                JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON 
                F.GEO_KEY = G.UID
                LEFT JOIN (
                SELECT   MAX(DATE_KEY) MAX_DT
                FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                    JOIN TRNG_COVID19.DIM_METRICS_REF_NXP_V MT
                    ON DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                    F.METRIC_NAME = MT.METRIC_NAME AND 
                    F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                    F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                 F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                 F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME) 
                ) MAXDT ON 1=1
                WHERE MONTH( F.DATE_KEY) = 1
                    AND  YEAR(DATE_KEY) = YEAR(MAX_DT)
                    AND F.DATE_GRANULARITY = 'WEEKLY'
                QUALIFY RANK() OVER (PARTITION BY F.METRIC_NAME,MONTH_KEY
                ORDER BY DATE_KEY DESC) = 1
            ) T2    
                                                                    
        ) FT
        JOIN (
        SELECT   
            MAX(DATE_KEY - EXTRACT(DAY
            FROM DATE_KEY)) AS SNAPSHOT_DATE,
                CONCAT('M',TRIM(MONTH(MAX(DATE_KEY - EXTRACT(DAY
            FROM DATE_KEY)))),'-',TRIM(YEAR(MAX(DATE_KEY - EXTRACT(DAY
            FROM DATE_KEY))))) AS SNAPSHOT_MONTH
            FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F                    
            JOIN TRNG_COVID19.DIM_METRICS_REF_NXP_V MT
                    ON DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                    F.METRIC_NAME = MT.METRIC_NAME AND 
                    F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                    F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                 F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                 F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME) 
        ) DT ON 
        1=1;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_MACROECONOMICS_VIZ_V2 AS
    LOCKING ROW FOR ACCESS
    SELECT 
        DT.SNAPSHOT_DATE,
        DT.SNAPSHOT_MONTH,
        FT.DATE_KEY,
        FT.CURR_PREV_FLAG,
        FT.GEO_GRANULARITY,
        FT.COUNTY,
        FT.STATE_CODE,
        FT.STATE_NAME,
        FT.COUNTRY_NAME,
        FT.POPULATION,
        FT.METRIC_NAME METRIC_RPT_DISPLAY_NAME,
        METRIC_NAME_DISP_SHORT METRIC_RPT_DISPLAY_NAME_2,
        METRIC_NAME_DISP_SHORT2 METRIC_RPT_DISPLAY_NAME_3,
        FT.METRIC_VALUE
        FROM
        (
        SELECT 
            DATE_KEY,
            
            CASE
                WHEN RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY DATE_KEY DESC) = 1
            THEN 'CURR-CY'
                WHEN RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY DATE_KEY DESC) = 2
            THEN 'PREV-CY'
                WHEN RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY DATE_KEY DESC) = 13
            THEN 'CURR-LY'
            END CURR_PREV_FLAG,
                GEO_GRANULARITY,
                COUNTY,
                STATE_CODE,
                STATE_NAME,
                COUNTRY_NAME,
                POPULATION,
                METRIC_NAME,
                METRIC_NAME_DISP_SHORT,
                METRIC_NAME_DISP_SHORT2,
                METRIC_VALUE,
                DATA_SOURCE_NAME -- SELECT  * --DISTINCT DATA_SOURCE_NAME, METRIC_NAME
            
            FROM
            (
            SELECT DATE_KEY,
                UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
                G.COUNTY,
                G.STATE_CODE,
                G.STATE_NAME,
                G.COUNTRY_NAME,
                G.POPULATION,
                MT.DASH_METRIC_NAME_DISP METRIC_NAME,
                MT.DASH_METRIC_NAME_DISP_SHORT METRIC_NAME_DISP_SHORT,
                MT.DASH_METRIC_NAME_DISP_SHORT2 METRIC_NAME_DISP_SHORT2,
                
                CASE
                    WHEN MT.METRIC_VAL_IND_SEL = 'I' THEN F.METRIC_INDEX
                    WHEN MT.METRIC_VAL_IND_SEL = 'V' THEN F.METRIC_VALUE
                END AS METRIC_VALUE,
                    F.DATA_SOURCE_NAME,
                    MT.DATA_SOURCE_NAME CC1
                FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F 
                JOIN TRNG_COVID19.DIM_METRICS_REF_V MT  ON 
                DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                F.METRIC_NAME = MT.METRIC_NAME AND 
                F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME)  
                JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON 
                F.GEO_KEY = G.UID
                LEFT JOIN (
                SELECT    MAX(DATE_KEY) MAX_DT
                    FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                    JOIN TRNG_COVID19.DIM_METRICS_REF_V MT
                    ON DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                    F.METRIC_NAME = MT.METRIC_NAME AND 
                    F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                    F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                    F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                    F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME)
                ) MAXDT ON 1=1
                WHERE F.DATE_KEY BETWEEN ADD_MONTHS(MAX_DT,-20) AND MAX_DT
                    AND  F.DATE_GRANULARITY = 'MONTHLY'
                 --                   AND  
                 --                CASE
                 --                    WHEN F.DATA_SOURCE_NAME = 'BUREAU OF ECONOMIC ANALYSIS - NIPA MONTHLY REPORT T2.4.5U' AND
                 --                TRIM(UPPER(F.DOMAIN_NAME))      IN ('GOODS','SERVICES') AND
                 --                TRIM(UPPER(F.SUBDOMAIN_1_NAME)) IN ('NONDURABLE GOODS','HOUSEHOLD CONSUMPTION EXPENDITURES (FOR SERVICES)') AND
                 --                TRIM(UPPER(F.SUBDOMAIN_2_NAME)) IN ('CLOTHING AND FOOTWEAR','FOOD SERVICES AND ACCOMMODATIONS') AND
                 --                TRIM(UPPER(F.SUBDOMAIN_3_NAME)) = 'TOTAL'   
                 --                THEN 1
                 --                    WHEN F.DATA_SOURCE_NAME IN ('CONSUMER SENTIMENT INDEX','BLS')
                 --                THEN 1
                 --                ELSE 0
                 --                END = 1
                ) T
            QUALIFY RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY DATE_KEY DESC) IN (1,2,13)
                                                                                            
        UNION ALL
        SELECT DATE_KEY,
            'JAN-CY' AS CURR_PREV_FLAG,
            UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
            G.COUNTY,
            G.STATE_CODE,
            G.STATE_NAME,
            G.COUNTRY_NAME,
            G.POPULATION,
            MT.DASH_METRIC_NAME_DISP METRIC_NAME,
            MT.DASH_METRIC_NAME_DISP_SHORT METRIC_NAME_DISP_SHORT,
            MT.DASH_METRIC_NAME_DISP_SHORT2 METRIC_NAME_DISP_SHORT2,
            
            CASE
                WHEN MT.METRIC_VAL_IND_SEL = 'I' THEN F.METRIC_INDEX
                WHEN MT.METRIC_VAL_IND_SEL = 'V' THEN F.METRIC_VALUE
            END AS METRIC_VALUE,
                F.DATA_SOURCE_NAME --SELECT *
            
            FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
            JOIN TRNG_COVID19.DIM_METRICS_REF_V MT  ON 
            DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
            F.METRIC_NAME = MT.METRIC_NAME AND 
            F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
            F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
            F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
            F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME)  
            JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON 
            F.GEO_KEY = G.UID
            LEFT JOIN (
            SELECT   MAX(DATE_KEY) MAX_DT
                FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                JOIN TRNG_COVID19.DIM_METRICS_REF_V MT
                ON DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                F.METRIC_NAME = MT.METRIC_NAME AND 
                F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME) 
            ) MAXDT ON 1=1
            WHERE MONTH( F.DATE_KEY) = 1
                AND  YEAR(F.DATE_KEY) = YEAR (MAX_DT)
                AND  F.DATE_GRANULARITY = 'MONTHLY'
             --                             AND  
             --            CASE
             --                WHEN F.DATA_SOURCE_NAME = 'BUREAU OF ECONOMIC ANALYSIS - NIPA MONTHLY REPORT T2.4.5U' AND
             --            TRIM(UPPER(F.DOMAIN_NAME))      IN ('GOODS','SERVICES') AND
             --            TRIM(UPPER(F.SUBDOMAIN_1_NAME)) IN ('NONDURABLE GOODS','HOUSEHOLD CONSUMPTION EXPENDITURES (FOR SERVICES)') AND
             --            TRIM(UPPER(F.SUBDOMAIN_2_NAME)) IN ('CLOTHING AND FOOTWEAR','FOOD SERVICES AND ACCOMMODATIONS') AND
             --            TRIM(UPPER(F.SUBDOMAIN_3_NAME)) = 'TOTAL'   
             --            THEN 1
             --                WHEN F.DATA_SOURCE_NAME IN ('CONSUMER SENTIMENT INDEX','BLS')
             --            THEN 1
             --            ELSE 0
             --            END = 1   
             --GROUP BY 1,2,3,4,5,6,7,8,9,
            UNION ALL
        SELECT 
            T.DATE_KEY AS DATE_KEY,
            
            CASE
                WHEN RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY T.DATE_KEY DESC) = 1
            THEN 'CURR-CY'
                WHEN RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY T.DATE_KEY DESC) = 2
            THEN 'PREV-CY'
                WHEN RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY T.DATE_KEY DESC) = 13
            THEN 'CURR-LY'
            END CURR_PREV_FLAG,
                GEO_GRANULARITY,
                COUNTY,
                STATE_CODE,
                STATE_NAME,
                COUNTRY_NAME,
                POPULATION,
                METRIC_NAME,
                METRIC_NAME_DISP_SHORT,
                METRIC_NAME_DISP_SHORT2,
                METRIC_VALUE,
                DATA_SOURCE_NAME
            FROM
            (
            SELECT DATE_KEY,
                ADD_MONTHS(DATE_KEY - EXTRACT(DAY
                FROM DATE_KEY)+1,1)-1 AS MONTH_KEY,
                    UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
                    G.COUNTY,
                    G.STATE_CODE,
                    G.STATE_NAME,
                    G.COUNTRY_NAME,
                    G.POPULATION,
                    MT.DASH_METRIC_NAME_DISP  AS METRIC_NAME,
                    MT.DASH_METRIC_NAME_DISP_SHORT METRIC_NAME_DISP_SHORT,
                    MT.DASH_METRIC_NAME_DISP_SHORT2 METRIC_NAME_DISP_SHORT2,
                    
                CASE
                    WHEN MT.METRIC_VAL_IND_SEL = 'I' THEN F.METRIC_INDEX
                    WHEN MT.METRIC_VAL_IND_SEL = 'V' THEN F.METRIC_VALUE
                END AS METRIC_VALUE,
                    MT.DATA_SOURCE_NAME
                FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                JOIN TRNG_COVID19.DIM_METRICS_REF_V MT  ON 
                DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                F.METRIC_NAME = MT.METRIC_NAME AND 
                F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME)
                JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON 
                F.GEO_KEY = G.UID
                LEFT JOIN (
                SELECT   MAX(DATE_KEY) MAX_DT
                    FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                    JOIN TRNG_COVID19.DIM_METRICS_REF_V MT
                    ON DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                    F.METRIC_NAME = MT.METRIC_NAME AND 
                    F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                    F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                    F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                    F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME) 
                ) MAXDT ON 1=1
                WHERE F.DATE_KEY BETWEEN ADD_MONTHS(MAX_DT,-20) AND ADD_MONTHS(MAX_DT,0)
                    AND  F.DATE_GRANULARITY = 'WEEKLY'
                QUALIFY RANK() OVER (PARTITION BY F.METRIC_NAME,MONTH_KEY
                ORDER BY DATE_KEY DESC) = 1
            ) T
            QUALIFY RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY DATE_KEY DESC) IN (1,2,13)
                                                                                        
        UNION ALL
        SELECT 
            T2.DATE_KEY AS DATE_KEY,
            CURR_PREV_FLAG,
            GEO_GRANULARITY,
            COUNTY,
            STATE_CODE,
            STATE_NAME,
            COUNTRY_NAME,
            POPULATION,
            METRIC_NAME,
            METRIC_NAME_DISP_SHORT,
            METRIC_NAME_DISP_SHORT2,
            METRIC_VALUE,
            DATA_SOURCE_NAME
            FROM
            (
            SELECT DATE_KEY,
                ADD_MONTHS(DATE_KEY - EXTRACT(DAY
                FROM DATE_KEY)+1,1)-1 AS MONTH_KEY,
                    'JAN-CY' AS CURR_PREV_FLAG,
                    UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
                    G.COUNTY,
                    G.STATE_CODE,
                    G.STATE_NAME,
                    G.COUNTRY_NAME,
                    G.POPULATION,
                    MT.DASH_METRIC_NAME_DISP AS METRIC_NAME,
                    MT.DASH_METRIC_NAME_DISP_SHORT METRIC_NAME_DISP_SHORT,
                    MT.DASH_METRIC_NAME_DISP_SHORT2 METRIC_NAME_DISP_SHORT2,
                    
                CASE
                    WHEN MT.METRIC_VAL_IND_SEL = 'I' THEN F.METRIC_INDEX
                    WHEN MT.METRIC_VAL_IND_SEL = 'V' THEN F.METRIC_VALUE
                END AS METRIC_VALUE,
                    MT.DATA_SOURCE_NAME
                FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                JOIN TRNG_COVID19.DIM_METRICS_REF_V MT  ON 
                DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                F.METRIC_NAME = MT.METRIC_NAME AND 
                F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME)
                JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON 
                F.GEO_KEY = G.UID
                LEFT JOIN (
                SELECT   MAX(DATE_KEY) MAX_DT
                    FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                    JOIN TRNG_COVID19.DIM_METRICS_REF_V MT
                    ON DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
                    F.METRIC_NAME = MT.METRIC_NAME AND 
                    F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
                    F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
                    F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
                    F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME) 
                ) MAXDT ON 1=1
                WHERE MONTH( F.DATE_KEY) = 1
                    AND  YEAR(DATE_KEY) = YEAR(MAX_DT)
                    AND  F.DATE_GRANULARITY = 'WEEKLY'
                QUALIFY RANK() OVER (PARTITION BY F.METRIC_NAME,MONTH_KEY
                ORDER BY DATE_KEY DESC) = 1
            ) T2    
                                                                                            
        ) FT
        JOIN (
        SELECT   
            MAX(DATE_KEY - EXTRACT(DAY
            FROM DATE_KEY)) AS SNAPSHOT_DATE,
                CONCAT('M',TRIM(MONTH(MAX(DATE_KEY - EXTRACT(DAY
            FROM DATE_KEY)))),'-',TRIM(YEAR(MAX(DATE_KEY - EXTRACT(DAY
            FROM DATE_KEY))))) AS SNAPSHOT_MONTH
            FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F                    
            JOIN TRNG_COVID19.DIM_METRICS_REF_V MT
            ON DASHBOARD_DATA_SOURCE_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'   AND
            F.METRIC_NAME = MT.METRIC_NAME AND 
            F.DATA_SOURCE_NAME = MT.DATA_SOURCE_NAME  AND
            F.SUBDOMAIN_1_NAME = COALESCE(MT.SUBDOMAIN_1_NAME,F.SUBDOMAIN_1_NAME) AND
            F.SUBDOMAIN_2_NAME  = COALESCE(MT.SUBDOMAIN_2_NAME,F.SUBDOMAIN_2_NAME) AND
            F.SUBDOMAIN_3_NAME  = COALESCE(MT.SUBDOMAIN_3_NAME,F.SUBDOMAIN_3_NAME) 
        ) DT ON 
        1=1;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_MACROECONOMICS_VIZ_V AS
    LOCKING ROW FOR ACCESS
    SELECT 
        DT.SNAPSHOT_DATE,
        DT.SNAPSHOT_MONTH,
        FT.DATE_KEY,
        FT.CURR_PREV_FLAG,
        FT.GEO_GRANULARITY,
        FT.COUNTY,
        FT.STATE_CODE,
        FT.STATE_NAME,
        FT.COUNTRY_NAME,
        FT.POPULATION,
        FT.METRIC_NAME,
        FT.METRIC_DISPLAY_SHORT_NAME,
		FT.METRIC_UOM,
		FT.DASH_VIZ_DISPLAY_NAME,
        FT.METRIC_VALUE
    FROM
       (
        SELECT 
            T.DATE_KEY,
            CASE WHEN RANK() OVER (PARTITION BY T.METRIC_DISPLAY_NAME ORDER BY DATE_KEY DESC) = 1
                 THEN 'CURR-CY'
                 WHEN RANK() OVER (PARTITION BY T.METRIC_DISPLAY_NAME ORDER BY DATE_KEY DESC) = 2
                 THEN 'PREV-CY'
                 WHEN RANK() OVER (PARTITION BY T.METRIC_DISPLAY_NAME ORDER BY DATE_KEY DESC) = 13
                 THEN 'CURR-LY'
            END CURR_PREV_FLAG,
            T.GEO_GRANULARITY,
            T.COUNTY,
            T.STATE_CODE,
            T.STATE_NAME,
            T.COUNTRY_NAME,
            T.POPULATION,
            T.METRIC_DISPLAY_NAME AS METRIC_NAME,
            T.METRIC_DISPLAY_SHORT_NAME,
			T.METRIC_UOM,
			T.DASH_VIZ_DISPLAY_NAME,
            T.METRIC_VALUE,
            T.DATA_SOURCE_NAME
        FROM
           (
            SELECT 
			    DATE_KEY,
                UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
                G.COUNTY,
                G.STATE_CODE,
                G.STATE_NAME,
                G.COUNTRY_NAME,
                G.POPULATION,
                MT.METRIC_DISPLAY_NAME,
                MT.METRIC_DISPLAY_SHORT_NAME,
				MT.METRIC_UOM,
                MT.DASH_VIZ_DISPLAY_NAME,                
                CASE WHEN UPPER(MT.METRIC_VAL_IND_SEL) = 'I' 
				     THEN F.METRIC_INDEX
                     WHEN UPPER(MT.METRIC_VAL_IND_SEL) = 'V' 
					 THEN F.METRIC_VALUE
                END AS METRIC_VALUE,
                F.DATA_SOURCE_NAME
            FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F 
                 JOIN TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF_V MT  ON 
                      MT.SEMANTIC_VIEW_NAME             = 'F_IND_DASH_MACROECONOMICS_VIZ_V' AND
                      F.METRIC_NAME                     = MT.METRIC_NAME AND 
                      F.DATA_SOURCE_NAME                = MT.DATA_SOURCE_NAME  AND
                      DECODE(F.SUBDOMAIN_1_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_1_NAME,'?')) = DECODE(MT.SUBDOMAIN_1_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_1_NAME,'?')) AND
                      DECODE(F.SUBDOMAIN_2_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_2_NAME,'?')) = DECODE(MT.SUBDOMAIN_2_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_2_NAME,'?')) AND
                      DECODE(F.SUBDOMAIN_3_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_3_NAME,'?')) = DECODE(MT.SUBDOMAIN_3_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_3_NAME,'?'))
                JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON 
                     F.GEO_KEY = G.UID
                LEFT JOIN 
			    (
                 SELECT    
				    MAX(DATE_KEY) MAX_DT
                 FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                 WHERE DATA_SOURCE_NAME IN (SELECT DATA_SOURCE_NAME     
				                            FROM TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF_V 
                                            WHERE SEMANTIC_VIEW_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'
										   )
                ) MAXDT ON 1=1
            WHERE F.DATE_KEY BETWEEN ADD_MONTHS(MAX_DT,-20) AND MAX_DT AND  
			      UPPER(F.DATE_GRANULARITY) = 'MONTHLY'

           ) T
        QUALIFY RANK() OVER (PARTITION BY T.METRIC_DISPLAY_NAME ORDER BY T.DATE_KEY DESC) IN (1,2,13)
                                                                                                        				
        UNION ALL
		
        SELECT 
            DATE_KEY,
            'JAN-CY' AS CURR_PREV_FLAG,
            UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
            G.COUNTY,
            G.STATE_CODE,
            G.STATE_NAME,
            G.COUNTRY_NAME,
            G.POPULATION,
            MT.METRIC_DISPLAY_NAME AS METRIC_NAME,
            MT.METRIC_DISPLAY_SHORT_NAME,
			MT.METRIC_UOM,
            MT.DASH_VIZ_DISPLAY_NAME,  
            CASE WHEN UPPER(MT.METRIC_VAL_IND_SEL) = 'I' 
			     THEN F.METRIC_INDEX
                 WHEN UPPER(MT.METRIC_VAL_IND_SEL) = 'V' 
			     THEN F.METRIC_VALUE
            END AS METRIC_VALUE,
            F.DATA_SOURCE_NAME
        FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
             JOIN TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF_V MT  ON 
                  MT.SEMANTIC_VIEW_NAME             = 'F_IND_DASH_MACROECONOMICS_VIZ_V' AND
                  F.METRIC_NAME                     = MT.METRIC_NAME AND 
                  F.DATA_SOURCE_NAME                = MT.DATA_SOURCE_NAME  AND
                  DECODE(F.SUBDOMAIN_1_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_1_NAME,'?')) = DECODE(MT.SUBDOMAIN_1_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_1_NAME,'?')) AND
                  DECODE(F.SUBDOMAIN_2_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_2_NAME,'?')) = DECODE(MT.SUBDOMAIN_2_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_2_NAME,'?')) AND
                  DECODE(F.SUBDOMAIN_3_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_3_NAME,'?')) = DECODE(MT.SUBDOMAIN_3_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_3_NAME,'?'))
             JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON 
             F.GEO_KEY = G.UID
             LEFT JOIN 
			 (
              SELECT    
			  MAX(DATE_KEY) MAX_DT
              FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
              WHERE DATA_SOURCE_NAME IN (SELECT DATA_SOURCE_NAME     
			                             FROM TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF_V 
                                         WHERE SEMANTIC_VIEW_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'
							   )
             ) MAXDT ON 1=1
            WHERE MONTH( F.DATE_KEY) = 1 AND  
			      YEAR(F.DATE_KEY) = YEAR (MAX_DT) AND  
				  UPPER(F.DATE_GRANULARITY) = 'MONTHLY'

        UNION ALL
        
		SELECT 
            T.DATE_KEY AS DATE_KEY,
            CASE WHEN RANK() OVER (PARTITION BY T.METRIC_DISPLAY_NAME ORDER BY DATE_KEY DESC) = 1
                 THEN 'CURR-CY'
                 WHEN RANK() OVER (PARTITION BY T.METRIC_DISPLAY_NAME ORDER BY DATE_KEY DESC) = 2
                 THEN 'PREV-CY'
                 WHEN RANK() OVER (PARTITION BY T.METRIC_DISPLAY_NAME ORDER BY DATE_KEY DESC) = 13
                 THEN 'CURR-LY'
            END CURR_PREV_FLAG,
            T.GEO_GRANULARITY,
            T.COUNTY,
            T.STATE_CODE,
            T.STATE_NAME,
            T.COUNTRY_NAME,
            T.POPULATION,
            T.METRIC_DISPLAY_NAME AS METRIC_NAME,
            T.METRIC_DISPLAY_SHORT_NAME,
			T.METRIC_UOM,
			T.DASH_VIZ_DISPLAY_NAME,
            T.METRIC_VALUE,
            T.DATA_SOURCE_NAME
        FROM
           (
            SELECT 
			    DATE_KEY,
                ADD_MONTHS(DATE_KEY - EXTRACT(DAY FROM DATE_KEY)+1,1)-1 AS MONTH_KEY,
                UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
                G.COUNTY,
                G.STATE_CODE,
                G.STATE_NAME,
                G.COUNTRY_NAME,
                G.POPULATION,
                MT.METRIC_DISPLAY_NAME,
                MT.METRIC_DISPLAY_SHORT_NAME,
				MT.METRIC_UOM,
                MT.DASH_VIZ_DISPLAY_NAME,                
                CASE WHEN UPPER(MT.METRIC_VAL_IND_SEL) = 'I' 
				     THEN F.METRIC_INDEX
                     WHEN UPPER(MT.METRIC_VAL_IND_SEL) = 'V' 
					 THEN F.METRIC_VALUE
                END AS METRIC_VALUE,
                F.DATA_SOURCE_NAME
            FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
             JOIN TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF_V MT  ON 
                  MT.SEMANTIC_VIEW_NAME             = 'F_IND_DASH_MACROECONOMICS_VIZ_V' AND
                  F.METRIC_NAME                     = MT.METRIC_NAME AND 
                  F.DATA_SOURCE_NAME                = MT.DATA_SOURCE_NAME  AND
                  DECODE(F.SUBDOMAIN_1_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_1_NAME,'?')) = DECODE(MT.SUBDOMAIN_1_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_1_NAME,'?')) AND
                  DECODE(F.SUBDOMAIN_2_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_2_NAME,'?')) = DECODE(MT.SUBDOMAIN_2_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_2_NAME,'?')) AND
                  DECODE(F.SUBDOMAIN_3_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_3_NAME,'?')) = DECODE(MT.SUBDOMAIN_3_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_3_NAME,'?'))
             JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON 
             F.GEO_KEY = G.UID
             LEFT JOIN 
			 (
              SELECT    
			  MAX(DATE_KEY) MAX_DT
              FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
              WHERE DATA_SOURCE_NAME IN (SELECT DATA_SOURCE_NAME     
			                             FROM TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF_V 
                                         WHERE SEMANTIC_VIEW_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'
							            )
             ) MAXDT ON 1=1
            WHERE F.DATE_KEY BETWEEN ADD_MONTHS(MAX_DT,-20) AND ADD_MONTHS(MAX_DT,0) AND      -- US-EIA had -20 to -1 and not 0
			      UPPER(F.DATE_GRANULARITY) = 'WEEKLY'
            QUALIFY RANK() OVER (PARTITION BY METRIC_DISPLAY_NAME,MONTH_KEY ORDER BY DATE_KEY DESC) = 1
           ) T
        QUALIFY RANK() OVER (PARTITION BY T.METRIC_DISPLAY_NAME ORDER BY DATE_KEY DESC) IN (1,2,13)
                                                                                                        
        UNION ALL
		
        SELECT 
            T.DATE_KEY AS DATE_KEY,
            T.CURR_PREV_FLAG,
            T.GEO_GRANULARITY,
            T.COUNTY,
            T.STATE_CODE,
            T.STATE_NAME,
            T.COUNTRY_NAME,
            T.POPULATION,
            T.METRIC_DISPLAY_NAME AS METRIC_NAME,
            T.METRIC_DISPLAY_SHORT_NAME,
			T.METRIC_UOM,
			T.DASH_VIZ_DISPLAY_NAME,
            T.METRIC_VALUE,
            T.DATA_SOURCE_NAME
        FROM
           (
            SELECT 
			    DATE_KEY,
                ADD_MONTHS(DATE_KEY - EXTRACT(DAY FROM DATE_KEY)+1,1)-1 AS MONTH_KEY,
                'JAN-CY' AS CURR_PREV_FLAG,
                UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
                G.COUNTY,
                G.STATE_CODE,
                G.STATE_NAME,
                G.COUNTRY_NAME,
                G.POPULATION,
                MT.METRIC_DISPLAY_NAME,
                MT.METRIC_DISPLAY_SHORT_NAME,
			    MT.METRIC_UOM,
                MT.DASH_VIZ_DISPLAY_NAME,  
                CASE WHEN UPPER(MT.METRIC_VAL_IND_SEL) = 'I' 
			         THEN F.METRIC_INDEX
                     WHEN UPPER(MT.METRIC_VAL_IND_SEL) = 'V' 
			         THEN F.METRIC_VALUE
                END AS METRIC_VALUE,
                F.DATA_SOURCE_NAME
            FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
             JOIN TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF_V MT  ON 
                  MT.SEMANTIC_VIEW_NAME             = 'F_IND_DASH_MACROECONOMICS_VIZ_V' AND
                  F.METRIC_NAME                     = MT.METRIC_NAME AND 
                  F.DATA_SOURCE_NAME                = MT.DATA_SOURCE_NAME  AND
                  DECODE(F.SUBDOMAIN_1_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_1_NAME,'?')) = DECODE(MT.SUBDOMAIN_1_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_1_NAME,'?')) AND
                  DECODE(F.SUBDOMAIN_2_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_2_NAME,'?')) = DECODE(MT.SUBDOMAIN_2_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_2_NAME,'?')) AND
                  DECODE(F.SUBDOMAIN_3_NAME,'','?',' ','?',COALESCE(F.SUBDOMAIN_3_NAME,'?')) = DECODE(MT.SUBDOMAIN_3_NAME,'','?',' ','?',COALESCE(MT.SUBDOMAIN_3_NAME,'?'))
             JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON 
             F.GEO_KEY = G.UID
             LEFT JOIN 
			 (
              SELECT    
			  MAX(DATE_KEY) MAX_DT
              FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
              WHERE DATA_SOURCE_NAME IN (SELECT DATA_SOURCE_NAME     
			                             FROM TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF_V 
                                         WHERE SEMANTIC_VIEW_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'
							            )
             ) MAXDT ON 1=1
            WHERE MONTH(F.DATE_KEY) = 1 AND  
			      YEAR(DATE_KEY) = YEAR(MAX_DT) AND  
				  UPPER(F.DATE_GRANULARITY) = 'WEEKLY'
            QUALIFY RANK() OVER (PARTITION BY MT.METRIC_DISPLAY_NAME, MONTH_KEY ORDER BY DATE_KEY DESC) = 1
           ) T				
                                                                                                        				
        ) FT
        JOIN 
	    (
         SELECT   
            MAX(DATE_KEY - EXTRACT(DAY FROM DATE_KEY)) AS SNAPSHOT_DATE,
            CONCAT('M',TRIM(MONTH(MAX(DATE_KEY - EXTRACT(DAY FROM DATE_KEY)))),'-',TRIM(YEAR(MAX(DATE_KEY - EXTRACT(DAY FROM DATE_KEY))))) AS SNAPSHOT_MONTH
         FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F                    
         WHERE DATA_SOURCE_NAME IN (SELECT DATA_SOURCE_NAME     
			                        FROM TRNG_COVID19.DIM_DASH_VIZ_METRIC_XREF_V 
                                    WHERE SEMANTIC_VIEW_NAME = 'F_IND_DASH_MACROECONOMICS_VIZ_V'
								   )
        ) DT ON 
       1=1;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_MACROECONOMICS_VIZ_V_ben AS
    LOCKING ROW FOR ACCESS
    SELECT 
        DT.SNAPSHOT_DATE,
        DT.SNAPSHOT_MONTH,
        FT.DATE_KEY,
        FT.CURR_PREV_FLAG,
        FT.GEO_GRANULARITY,
        FT.COUNTY,
        FT.STATE_CODE,
        FT.STATE_NAME,
        FT.COUNTRY_NAME,
        FT.POPULATION,
        FT.METRIC_NAME,
        METRIC_NAME_SHORT,
        FT.METRIC_VALUE -- select *
        
        FROM
        (
        SELECT 
            DATE_KEY,
            
            CASE
                WHEN RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY DATE_KEY DESC) = 1
            THEN 'CURR-CY'
                WHEN RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY DATE_KEY DESC) = 2
            THEN 'PREV-CY'
                WHEN RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY DATE_KEY DESC) = 13
            THEN 'CURR-LY'
            END CURR_PREV_FLAG,
                GEO_GRANULARITY,
                COUNTY,
                STATE_CODE,
                STATE_NAME,
                COUNTRY_NAME,
                POPULATION,
                METRIC_NAME,
                METRIC_NAME_SHORT,
                METRIC_VALUE,
                 --metric_val_ind_sel,
            DATA_SOURCE_NAME
            FROM
            (
            SELECT DATE_KEY,
                UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
                G.COUNTY,
                G.STATE_CODE,
                G.STATE_NAME,
                G.COUNTRY_NAME,
                G.POPULATION,
                cref.METRIC_NAME_disp METRIC_NAME,
                cref.METRIC_NAME_disp_short METRIC_NAME_SHORT,
                cref.metric_val_ind_sel,
                
                CASE
                    WHEN  cref.metric_val_ind_sel = 'i'  THEN metric_index
                    WHEN  cref.metric_val_ind_sel = 'v'  THEN metric_value
                ELSE 0
                END metric_value,
                    f.DATA_SOURCE_NAME
                FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON 
                F.GEO_KEY = G.UID
                JOIN TRNG_COVID19.Dim_Disney_Metrics_ref_V cref
                ON cref.data_source_name = f.data_source_name
                AND cref.DOMAIN_NAME = f.DOMAIN_NAME
                AND cref.SUBDOMAIN_1_NAME = f.SUBDOMAIN_1_NAME
                AND cref.SUBDOMAIN_2_NAME = f.SUBDOMAIN_2_NAME
                AND cref.SUBDOMAIN_3_NAME = f.SUBDOMAIN_3_NAME
                LEFT JOIN (
                SELECT   MAX(DATE_KEY) MAX_DT
                    FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                    WHERE F.DATA_SOURCE_NAME IN (
                    SELECT DISTINCT x.data_source_name
                        FROM TRNG_COVID19.Dim_Disney_Metrics_ref_V  x) 
                ) MAXDT ON 1=1
                WHERE F.DATE_KEY BETWEEN ADD_MONTHS(MAX_DT,-20) AND MAX_DT
                 --GROUP BY 1,2,3,4,5,6,7,8,9,10
                ) T
            QUALIFY RANK() OVER (PARTITION BY METRIC_NAME
            ORDER BY DATE_KEY DESC) IN (1,2,13)
                                                       
                                                    
        ) FT
        JOIN (
        SELECT   
            MAX(DATE_KEY - EXTRACT(DAY
            FROM DATE_KEY)) AS SNAPSHOT_DATE,
                CONCAT('M',TRIM(MONTH(MAX(DATE_KEY - EXTRACT(DAY
            FROM DATE_KEY)))),'-',TRIM(YEAR(MAX(DATE_KEY - EXTRACT(DAY
            FROM DATE_KEY))))) AS SNAPSHOT_MONTH
            FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
            JOIN TRNG_COVID19.Dim_Disney_Metrics_ref_V cref
            ON cref.data_source_name = f.data_source_name
            AND cref.DOMAIN_NAME = f.DOMAIN_NAME
            AND cref.SUBDOMAIN_1_NAME = f.SUBDOMAIN_1_NAME
            AND cref.SUBDOMAIN_2_NAME = f.SUBDOMAIN_2_NAME
            AND cref.SUBDOMAIN_3_NAME = f.SUBDOMAIN_3_NAME 
        ) DT ON 
        1=1;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_MOBILITY_GEO_VIZ_V AS
    LOCKING ROW FOR ACCESS
    SELECT
        SNAPSHOT_DATE,
        SNAPSHOT_WEEK,
        CURR_PREV_FLAG,
        DATE_KEY,
        PEAK_CASES_DATE_KEY,
        WEEKDAY,
        WKND_WRKDY_FLAG,
        GEO_GRANULARITY,
        COUNTY,
        STATE_CODE,
        STATE_NAME,
        POPULATION,
        COUNTRY_NAME,
        
        CASE
            WHEN UPPER(GEO_GRANULARITY) = 'COUNTY' THEN COUNTY_POP_RNK ELSE NULL
        END COUNTY_POP_RNK,
            
        CASE
            WHEN UPPER(GEO_GRANULARITY) = 'COUNTRY' THEN COUNTRY_POP_RNK ELSE NULL
        END COUNTRY_POP_RNK,
            LOCATION_TYPE,
            MOBIL_PERC_CHANGE_BASELINE
        FROM
        (
        SELECT
            DT.SNAPSHOT_DATE,
            DT.SNAPSHOT_WEEK,
            
            CASE
                WHEN F.DATE_KEY BETWEEN DT.WEEK_START_DATE AND DT.WEEK_END_DATE
            THEN DT.CURR_PREV_FLAG
            END AS CURR_PREV_FLAG,
                F.DATE_KEY,
                
            CASE
                WHEN GP.PEAK_FLAG = 'PEAK'
            THEN GP.DATE_KEY
            ELSE NULL
            END	AS PEAK_CASES_DATE_KEY,
                
            CASE
                WHEN DOW.CAL_DAY_OF_WEEK = 1
            THEN 'SUN'
                WHEN DOW.CAL_DAY_OF_WEEK = 2
            THEN 'MON'
                WHEN DOW.CAL_DAY_OF_WEEK = 3
            THEN 'TUE'
                WHEN DOW.CAL_DAY_OF_WEEK = 4
            THEN 'WED'
                WHEN DOW.CAL_DAY_OF_WEEK = 5
            THEN 'THU'
                WHEN DOW.CAL_DAY_OF_WEEK = 6
            THEN 'FRI'
                WHEN DOW.CAL_DAY_OF_WEEK = 7
            THEN 'SAT'
            END WEEKDAY,
                
            CASE
                WHEN DOW.CAL_DAY_OF_WEEK IN (1,7) THEN 'WEEKEND'
            ELSE 'WORKDAY'
            END WKND_WRKDY_FLAG,
                F.GEO_KEY,
                F.GEO_GRANULARITY,
                G.COUNTY,
                G.STATE_NAME,
                G.STATE_CODE,
                G.POPULATION,
                G.COUNTRY_NAME,
                DENSE_RANK() OVER (PARTITION BY SNAPSHOT_DATE,G.COUNTRY_NAME
            ORDER BY (
            CASE
                WHEN UPPER( G.GEO_GRANULARITY)='COUNTY' THEN G.POPULATION ELSE NULL
            END) DESC) AS COUNTY_POP_RNK,
                DENSE_RANK() OVER (PARTITION BY SNAPSHOT_DATE
            ORDER BY (
            CASE
                WHEN UPPER( G.GEO_GRANULARITY)='COUNTRY' THEN G.POPULATION ELSE NULL
            END) DESC) AS COUNTRY_POP_RNK,
                TRIM(OREPLACE(F.METRIC_NAME,'%Mobility_Change_Baseline for','')) AS LOCATION_TYPE,
                F.METRIC_INDEX AS MOBIL_PERC_CHANGE_BASELINE
            FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F 
            JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
            F.GEO_KEY = G.UID
            JOIN (
            SELECT 
                MAX(WEEK_END_DATE) OVER () AS SNAPSHOT_DATE,
                MAX(CAL_WEEK_YEAR) OVER () AS SNAPSHOT_WEEK,
                MIN(WEEK_START_DATE) OVER () AS FIL_START_DATE_KEY,
                MAX(WEEK_END_DATE) OVER () FIL_END_DATE_KEY,
                
                CASE
                    WHEN RNK =1 THEN 'CURR'
                    WHEN RNK =2 THEN 'PREV'
                ELSE 'PREV-1'
                END CURR_PREV_FLAG,
                    RANK() OVER (
                ORDER BY WEEK_END_DATE DESC) RNK,
                    DT.*
                FROM TRNG_COVID19.DIM_CALENDAR_V DT
                LEFT JOIN (
                SELECT   MAX(DATE_KEY) MAX_DT
                    FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
                    WHERE F.DATA_SOURCE_NAME = 'Google Mobility Report'
                )  MAXDT ON 1=1
                WHERE CAL_DATE_KEY IN (MAX_DT-7, MAX_DT-14)
            ) DT ON
            F.DATE_KEY BETWEEN DT.FIL_START_DATE_KEY AND DT.FIL_END_DATE_KEY
            JOIN TRNG_COVID19.DIM_CALENDAR_V DOW ON 
            F.DATE_KEY = DOW.CAL_DATE_KEY
            LEFT JOIN (
            SELECT 
                MA.GEO_KEY,
                MA.DATE_KEY,
                MA.NEW_CASES_7MAVG,
                
                CASE
                    WHEN MAX(MA.DATE_KEY) OVER (PARTITION BY MA.GEO_KEY) - MIN(MA.DATE_KEY) OVER (PARTITION BY MA.GEO_KEY) < 7
                THEN 'NO PEAK'
                    WHEN LEAD(NEW_CASES_7MAVG,1) OVER  (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC) <  NEW_CASES_7MAVG AND
                LEAD(NEW_CASES_7MAVG,2) OVER  (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC) <  LEAD(NEW_CASES_7MAVG,1) OVER  (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC) AND
                LEAD(NEW_CASES_7MAVG,3) OVER  (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC) <  LEAD(NEW_CASES_7MAVG,2) OVER  (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC) AND
                LEAD(NEW_CASES_7MAVG,4) OVER  (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC) <  LEAD(NEW_CASES_7MAVG,3) OVER  (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC) AND
                LEAD(NEW_CASES_7MAVG,5) OVER  (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC) <  LEAD(NEW_CASES_7MAVG,4) OVER  (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC) AND
                LEAD(NEW_CASES_7MAVG,6) OVER  (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC) <  LEAD(NEW_CASES_7MAVG,5) OVER  (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC) AND
                LEAD(NEW_CASES_7MAVG,7) OVER  (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC) <  LEAD(NEW_CASES_7MAVG,6) OVER  (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC) AND
                LEAD(NEW_CASES_7MAVG,8) OVER  (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC) <  LEAD(NEW_CASES_7MAVG,7) OVER  (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC)
                THEN 'PEAK'
                ELSE 'NO PEAK'
                END PEAK_FLAG
                FROM TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT_V MA
                JOIN (
                SELECT 
                    DATE_KEY,
                    GEO_KEY,
                    COUNTY,
                    STATE_NAME,
                    DENSE_RANK() OVER (PARTITION BY COUNTY, STATE_NAME
                    ORDER BY NEW_CASES_7MAVG DESC,
                        DATE_KEY ASC) AS RNK
                    FROM TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT_V
                    QUALIFY RNK=1
                ) TP ON
                MA.GEO_KEY = TP.GEO_KEY AND
                MA.DATE_KEY BETWEEN TP.DATE_KEY AND TP.DATE_KEY + 14
                QUALIFY RANK() OVER (PARTITION BY MA.GEO_KEY
                ORDER BY MA.DATE_KEY ASC) = 1
            ) GP ON
            F.GEO_KEY = GP.GEO_KEY
            WHERE F.DATA_SOURCE_NAME = 'Google Mobility Report'
        ) T
        WHERE CURR_PREV_FLAG IN ('CURR','PREV');

REPLACE VIEW TRNG_COVID19.F_IND_DASH_MOBILITY_GEO_WEEKLY_V AS
    LOCKING ROW FOR ACCESS
    SELECT
        SNAPSHOT_DATE,
        SNAPSHOT_WEEK,
        CURR_PREV_FLAG,
        DENSE_RANK() OVER (PARTITION BY GEO_KEY, CURR_PREV_FLAG
        ORDER BY DATE_KEY ASC) CAL_DAY_OF_WEEK,
            GEO_KEY,
            GEO_GRANULARITY,
            COUNTY,
            STATE_CODE,
            STATE_NAME,
            COUNTRY_NAME,
            POPULATION,
            DATE_KEY,
            METRIC_NAME,
            METRIC_INDEX
        FROM
        (
        SELECT 
            DT.SNAPSHOT_DATE,
            DT.SNAPSHOT_WEEK,
            
            CASE
                WHEN F.DATE_KEY BETWEEN DT.WEEK_START_DATE AND DT.WEEK_END_DATE
            THEN DT.CURR_PREV_FLAG
            END AS CURR_PREV_FLAG,
                F.GEO_KEY,
                UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
                G.COUNTY,
                G.STATE_CODE,
                G.STATE_NAME,
                G.COUNTRY_NAME,
                G.POPULATION,
                F.DATE_KEY,
                METRIC_NAME,
                METRIC_INDEX
            FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F 
            JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
            F.GEO_KEY = G.UID
            JOIN (
            SELECT 
                MAX(WEEK_END_DATE) OVER () AS SNAPSHOT_DATE,
                MAX(CAL_WEEK_YEAR) OVER () AS SNAPSHOT_WEEK,
                MIN(WEEK_START_DATE) OVER () AS FIL_START_DATE_KEY,
                MAX(WEEK_END_DATE) OVER () FIL_END_DATE_KEY,
                
                CASE
                    WHEN RNK =1 THEN 'CURR'
                    WHEN RNK =2 THEN 'PREV'
                    WHEN RNK =3 THEN 'PREV-1'
                    WHEN RNK =4 THEN 'PREV-2'
                    WHEN RNK =4 THEN 'PREV-3'
                ELSE 'PREV-4'
                END CURR_PREV_FLAG,
                    RANK() OVER (
                ORDER BY WEEK_END_DATE DESC) RNK,
                    DT.*
                FROM TRNG_COVID19.DIM_CALENDAR_V DT
                LEFT JOIN (
                SELECT MAX(DATE_KEY) MAX_DT
                    FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F  
                    JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
                    F.GEO_KEY = G.UID
                    WHERE F.DATA_SOURCE_NAME = 'Google Mobility Report'
                ) MAXDT ON 1=1
                WHERE CAL_DATE_KEY IN (MAX_DT,MAX_DT-7,MAX_DT-14,MAX_DT-21,MAX_DT-28, MAX_DT-35)
            ) DT ON
            F.DATE_KEY BETWEEN DT.FIL_START_DATE_KEY AND DT.FIL_END_DATE_KEY
            WHERE F.DATA_SOURCE_NAME = 'Google Mobility Report'
                AND  
            CASE
                WHEN F.DATE_KEY BETWEEN DT.WEEK_START_DATE AND DT.WEEK_END_DATE
            THEN DT.CURR_PREV_FLAG
            END IN ('CURR','PREV','PREV-1','PREV-2','PREV-3')
        ) T;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_NYT_COVID19_COUNTY_7MAVG_V AS
    LOCKING ROW FOR ACCESS
    SELECT *
        FROM TRNG_COVID19.F_IND_DASH_NYT_COVID19_COUNTY_7MAVG;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_NYT_COVID19_DATAHUB_TD_EMP_LOC_V AS 
    LOCKING ROW FOR ACCESS
    SELECT 
        H.SNAPSHOT_DATE,
        H.SNAPSHOT_WEEK,
        H.CURR_PREV_FLAG,
        HW.DATE_KEY,
        H.GEO_KEY,
        H.COUNTY,
        LKP.MSA_NAME,
        H.STATE_CODE,
        H.STATE_NAME,
        HW.COUNTRY_NAME,
        H.COUNTY_POPULATION,
        H.COUNTY_POP_RNK,
        H.CASES_TODATE_PER100K,
        H.CASES_TODATE_WK,
        H.NEW_CASES_WK,
        H.NEW_CASES_7MAVG,
        H.NEW_CASES_7MAVG_100K,
        H.DEATHS_TODATE_WK,
        H.NEW_DEATHS_WK,
        H.NEW_DEATHS_7MAVG,
        H.NEW_DEATHS_7MAVG_100K,
        H.RECOVERY_FLAG,
        H.SAFE_FLAG,
        H.SURGE_FLAG,
        
        CASE
            WHEN RANK() OVER (PARTITION BY H.SNAPSHOT_DATE, H.STATE_CODE
        ORDER BY H.GEO_KEY) = 1
        THEN DM.BUCKET
        ELSE NULL
        END AS STATE_TTS_BUCKET,
            
        CASE
            WHEN RANK() OVER (PARTITION BY H.SNAPSHOT_DATE, H.STATE_CODE
        ORDER BY H.GEO_KEY) = 1
        THEN DM.EST_DATE_START 
        ELSE NULL
        END AS STATE_TTS_EST_START_DATE,
            DH.TESTED_CNT,
            DH.CONFIRMED_CNT,
            DH.RECOVERED_CNT,
            DH.DEATH_CNT,
            DH.HOSPITALIZED_CNT,
            DH.ON_VENTILATOR_CNT,
            DH.IN_ICU_CNT,
            DH.SEVERE_CASE_CNT,
            DH.SCHOOL_CLOSING,
            DH.WORKPLACE_CLOSING,
            DH.CANCEL_EVENTS,
            DH.GATHERINGS_RESTRICTIONS,
            DH.TRANSPORT_CLOSING,
            DH.STAY_HOME_RESTRICTIONS,
            DH.INTERNAL_MOVEMENT_RESTRICTIONS,
            DH.INTERNATIONAL_MOVEMENT_RESTRICTIONS,
            DH.INFORMATION_CAMPAIGNS,
            DH.TESTING_POLICY,
            DH.CONTACT_TRACING,
            DH.STRINGENCY_INDEX,
            (
        CASE
            WHEN COALESCE(TRIM(SMSA.MSA_WITH_SITE),'') = '' THEN 0 ELSE 1
        END) MSA_WITH_SITE_FLAG,
            SA.SITE_ID            AS SITE_ID,
            SA.SITE_TYPE          AS SITE_TYPE,
            SA.ADDRESS            AS SITE_ADDRESS,
            INITCAP(LOWER(SA.CITY)) AS SITE_CITY_NAME,
            SA.MSA_NAME           AS SITE_MSA_NAME,
            SA.COUNTY_NAME        AS SITE_COUNTY_NAME,
            SA.STATE_NAME         AS SITE_STATE_NAME,
            SA.FTE_HC_AT_LOCATION AS SITE_FTE_CNT,
            SA.CONTINGENT_HC_AT_LOCATION AS SITE_NONFTE_CNT,
            SA.AVERAGE_ATTENDANCE AS SITE_AVG_ATTENDANCE,
            SA.SECURITY_TYPE      AS SITE_SECURITY_TYPE,
            (
        CASE
            WHEN COALESCE(TRIM(EMSA.MSA_WITH_EMP),'') = '' THEN 0 ELSE 1
        END) MSA_WITH_EMP_FLAG,
            PL.MSA_NAME           AS EMP_MSA_NAME,
            PL.COUNTY_NAME        AS EMP_COUNTY_NAME,
            PL.STATE_NAME         AS EMP_LOC_STATE_NAME,
            SUM(
        CASE
            WHEN UPPER(PEOPLE_TYPE) = 'VIRTUAL' THEN COALESCE(NBR_AT_LOCATION,0) ELSE 0
        END) AS LOC_VIRTUAL_EMP_CNT,
            SUM(
        CASE
            WHEN UPPER(PEOPLE_TYPE) = 'OFFICE'  THEN COALESCE(NBR_AT_LOCATION,0) ELSE 0
        END) AS LOC_OFFICE_EMP_CNT
        FROM TRNG_COVID19.F_IND_DASH_HEALTH_VIZ_V H
        JOIN TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT_V HW ON 
        H.SNAPSHOT_DATE    = HW.SNAPSHOT_DATE  AND
        H.CURR_PREV_FLAG   = HW.CURR_PREV_FLAG AND 
        H.GEO_KEY          = HW.GEO_KEY        AND
        HW.CAL_DAY_OF_WEEK = 7
        LEFT JOIN TRNG_COVID19.FACT_COVID19_DATAHUB_V DH ON
        HW.DATE_KEY        = DH.DATE_KEY AND 
        HW.GEO_KEY         = DH.GEO_KEY
        LEFT JOIN (
        SELECT STATE_NAME,
            COUNTY_NAME,
            MSA_NAME
            FROM TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP_V
            GROUP BY 1,
                2,
                3) LKP ON
        H.COUNTY           = LKP.COUNTY_NAME AND
        H.STATE_NAME       = LKP.STATE_NAME
        LEFT JOIN TRNG_COVID19.DIM_SITE_ADDRESSES_V SA ON
        H.COUNTY              = SA.COUNTY_NAME AND
        H.STATE_NAME          = SA.STATE_NAME AND
        UPPER(SA.CLIENT_NAME) = 'TERADATA' AND
        SA.COUNTRY_CD         = 'USA'
        LEFT JOIN (
        SELECT MSA_NAME AS MSA_WITH_SITE
            FROM TRNG_COVID19.DIM_SITE_ADDRESSES_V
            WHERE UPPER( CLIENT_NAME) = 'TERADATA'
                AND  COUNTRY_CD         = 'USA'
            GROUP BY 1
        ) SMSA ON 
        LKP.MSA_NAME = SMSA.MSA_WITH_SITE
        LEFT JOIN TRNG_COVID19.DIM_PEOPLE_LOCATION_V PL ON
        H.COUNTY     = PL.COUNTY_NAME AND
        H.STATE_NAME = PL.STATE_NAME
        LEFT JOIN (
        SELECT MSA_NAME AS MSA_WITH_EMP
            FROM TRNG_COVID19.DIM_PEOPLE_LOCATION_V
            GROUP BY 1
        ) EMSA ON 
        LKP.MSA_NAME = EMSA.MSA_WITH_EMP
        LEFT JOIN TRNG_COVID19.F_IND_DASH_TIMELINE_TO_SAFETY_V DM ON 
        /*H.SNAPSHOT_DATE   = DM.SNAPSHOT_DATE AND data may lag so can't use this for join*/
        H.STATE_CODE      = DM.STATE_CODE AND
        DM.BUCKET         = 1
        LEFT JOIN TRNG_COVID19.FACT_COVID_MODEL_DATA_SUM_V ICU ON 
        H.STATE_CODE        = ICU.STATE_CODE AND
        ICU.GEO_GRANULARITY = 'STATE'
        WHERE H.CURR_PREV_FLAG = 'CURR' --and H.state_name = 'Iowa'
        
        GROUP BY H.SNAPSHOT_DATE,
            H.SNAPSHOT_WEEK,
            H.CURR_PREV_FLAG,
            HW.DATE_KEY,
            H.GEO_KEY,
            H.COUNTY,
            LKP.MSA_NAME,
            H.STATE_CODE,
            H.STATE_NAME,
            HW.COUNTRY_NAME,
            H.COUNTY_POPULATION,
            H.COUNTY_POP_RNK,
            H.CASES_TODATE_PER100K,
            H.CASES_TODATE_WK,
            H.NEW_CASES_WK,
            H.NEW_CASES_7MAVG,
            H.NEW_CASES_7MAVG_100K,
            H.DEATHS_TODATE_WK,
            H.NEW_DEATHS_WK,
            H.NEW_DEATHS_7MAVG,
            H.NEW_DEATHS_7MAVG_100K,
            H.RECOVERY_FLAG,
            H.SAFE_FLAG,
            H.SURGE_FLAG,
            DM.BUCKET,
            DM.EST_DATE_START,
            DH.TESTED_CNT,
            DH.CONFIRMED_CNT,
            DH.RECOVERED_CNT,
            DH.DEATH_CNT,
            DH.HOSPITALIZED_CNT,
            DH.ON_VENTILATOR_CNT,
            DH.IN_ICU_CNT,
            DH.SEVERE_CASE_CNT,
            DH.SCHOOL_CLOSING,
            DH.WORKPLACE_CLOSING,
            DH.CANCEL_EVENTS,
            DH.GATHERINGS_RESTRICTIONS,
            DH.TRANSPORT_CLOSING,
            DH.STAY_HOME_RESTRICTIONS,
            DH.INTERNAL_MOVEMENT_RESTRICTIONS,
            DH.INTERNATIONAL_MOVEMENT_RESTRICTIONS,
            DH.INFORMATION_CAMPAIGNS,
            DH.TESTING_POLICY,
            DH.CONTACT_TRACING,
            DH.STRINGENCY_INDEX,
            (
        CASE
            WHEN COALESCE(TRIM(SMSA.MSA_WITH_SITE),'') = '' THEN 0 ELSE 1
        END),
            SA.SITE_ID,
            SA.SITE_TYPE,
            SA.ADDRESS,
            INITCAP(LOWER(SA.CITY)),
            SA.MSA_NAME,
            SA.COUNTY_NAME,
            SA.STATE_NAME,
            SA.FTE_HC_AT_LOCATION,
            SA.CONTINGENT_HC_AT_LOCATION,
            SA.AVERAGE_ATTENDANCE,
            SA.SECURITY_TYPE,
            (
        CASE
            WHEN COALESCE(TRIM(EMSA.MSA_WITH_EMP),'') = '' THEN 0 ELSE 1
        END),
            PL.MSA_NAME,
            PL.COUNTY_NAME,
            PL.STATE_NAME;

CREATE VIEW F_IND_DASH_NYT_COVID19_DATAHUB_TD_EMP_LOC_V_BKP_21_05_2021 AS 
    LOCKING ROW FOR ACCESS
    SELECT 
        H.SNAPSHOT_DATE,
        H.SNAPSHOT_WEEK,
        H.CURR_PREV_FLAG,
        HW.DATE_KEY,
        H.GEO_KEY,
        H.COUNTY,
        LKP.MSA_NAME,
        H.STATE_CODE,
        H.STATE_NAME,
        HW.COUNTRY_NAME,
        H.COUNTY_POPULATION,
        H.COUNTY_POP_RNK,
        H.CASES_TODATE_PER100K,
        H.CASES_TODATE_WK,
        H.NEW_CASES_WK,
        H.NEW_CASES_7MAVG,
        H.NEW_CASES_7MAVG_100K,
        H.DEATHS_TODATE_WK,
        H.NEW_DEATHS_WK,
        H.NEW_DEATHS_7MAVG,
        H.NEW_DEATHS_7MAVG_100K,
        H.RECOVERY_FLAG,
        H.SAFE_FLAG,
        H.SURGE_FLAG,
        
        CASE
            WHEN RANK() OVER (PARTITION BY H.SNAPSHOT_DATE, H.STATE_CODE
        ORDER BY H.GEO_KEY) = 1
        THEN DM.BUCKET
        ELSE NULL
        END AS STATE_TTS_BUCKET,
            
        CASE
            WHEN RANK() OVER (PARTITION BY H.SNAPSHOT_DATE, H.STATE_CODE
        ORDER BY H.GEO_KEY) = 1
        THEN DM.EST_DATE_START 
        ELSE NULL
        END AS STATE_TTS_EST_START_DATE,
            
        --CASE
        --    WHEN RANK() OVER (PARTITION BY H.SNAPSHOT_DATE, H.STATE_CODE
        --ORDER BY H.GEO_KEY) = 1
        --THEN ICU.PEAK_ICU_BED_DAY_MEAN 
        --ELSE NULL
        --END AS STATE_PEAK_ICU_BEDS_MEAN_DATE,
            DH.TESTED_CNT,
            DH.CONFIRMED_CNT,
            DH.RECOVERED_CNT,
            DH.DEATH_CNT,
            DH.HOSPITALIZED_CNT,
            DH.ON_VENTILATOR_CNT,
            DH.IN_ICU_CNT,
            DH.SEVERE_CASE_CNT,
            DH.SCHOOL_CLOSING,
            DH.WORKPLACE_CLOSING,
            DH.CANCEL_EVENTS,
            DH.GATHERINGS_RESTRICTIONS,
            DH.TRANSPORT_CLOSING,
            DH.STAY_HOME_RESTRICTIONS,
            DH.INTERNAL_MOVEMENT_RESTRICTIONS,
            DH.INTERNATIONAL_MOVEMENT_RESTRICTIONS,
            DH.INFORMATION_CAMPAIGNS,
            DH.TESTING_POLICY,
            DH.CONTACT_TRACING,
            DH.STRINGENCY_INDEX,
            (
        CASE
            WHEN COALESCE(TRIM(SMSA.MSA_WITH_SITE),'') = '' THEN 0 ELSE 1
        END) MSA_WITH_SITE_FLAG,
            SA.SITE_ID            AS SITE_ID,
            SA.SITE_TYPE          AS SITE_TYPE,
            SA.ADDRESS            AS SITE_ADDRESS,
            INITCAP(LOWER(SA.CITY)) AS SITE_CITY_NAME,
            SA.MSA_NAME           AS SITE_MSA_NAME,
            SA.COUNTY_NAME        AS SITE_COUNTY_NAME,
            SA.STATE_NAME         AS SITE_STATE_NAME,
            SA.FTE_HC_AT_LOCATION AS SITE_FTE_CNT,
            SA.CONTINGENT_HC_AT_LOCATION AS SITE_NONFTE_CNT,
            SA.AVERAGE_ATTENDANCE AS SITE_AVG_ATTENDANCE,
            SA.SECURITY_TYPE      AS SITE_SECURITY_TYPE,
            (
        CASE
            WHEN COALESCE(TRIM(EMSA.MSA_WITH_EMP),'') = '' THEN 0 ELSE 1
        END) MSA_WITH_EMP_FLAG,
            PL.MSA_NAME           AS EMP_MSA_NAME,
            PL.COUNTY_NAME        AS EMP_COUNTY_NAME,
            PL.STATE_NAME         AS EMP_LOC_STATE_NAME,
            SUM(
        CASE
            WHEN UPPER(PEOPLE_TYPE) = 'VIRTUAL' THEN COALESCE(NBR_AT_LOCATION,0) ELSE 0
        END) AS LOC_VIRTUAL_EMP_CNT,
            SUM(
        CASE
            WHEN UPPER(PEOPLE_TYPE) = 'OFFICE'  THEN COALESCE(NBR_AT_LOCATION,0) ELSE 0
        END) AS LOC_OFFICE_EMP_CNT
        
        --select h.SNAPSHOT_DATE, h.state_code, h.county, count(1)
        --select * 
        FROM TRNG_COVID19.F_IND_DASH_HEALTH_VIZ_V H
        JOIN TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT_V HW ON 
        H.SNAPSHOT_DATE    = HW.SNAPSHOT_DATE  AND
        H.CURR_PREV_FLAG   = HW.CURR_PREV_FLAG AND 
        H.GEO_KEY          = HW.GEO_KEY        AND
        HW.CAL_DAY_OF_WEEK = 7
        LEFT JOIN TRNG_COVID19.FACT_COVID19_DATAHUB_V DH ON
        HW.DATE_KEY        = DH.DATE_KEY AND 
        HW.GEO_KEY         = DH.GEO_KEY
        LEFT JOIN (
        SELECT STATE_NAME,
            COUNTY_NAME,
            MSA_NAME
            FROM TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP_V
            GROUP BY 1,
                2,
                3) LKP ON
        H.COUNTY           = LKP.COUNTY_NAME AND
        H.STATE_NAME       = LKP.STATE_NAME
        LEFT JOIN TRNG_COVID19.DIM_SITE_ADDRESSES_V SA ON
        H.COUNTY              = SA.COUNTY_NAME AND
        H.STATE_NAME          = SA.STATE_NAME AND
        UPPER(SA.CLIENT_NAME) = 'TERADATA' AND
        SA.COUNTRY_CD         = 'USA'
        LEFT JOIN (
        SELECT MSA_NAME AS MSA_WITH_SITE
            FROM TRNG_COVID19.DIM_SITE_ADDRESSES_V
            WHERE UPPER( CLIENT_NAME) = 'TERADATA'
                AND  COUNTRY_CD         = 'USA'
            GROUP BY 1
        ) SMSA ON 
        LKP.MSA_NAME = SMSA.MSA_WITH_SITE  
        LEFT JOIN (select PL.MSA_NAME,
            PL.COUNTY_NAME,
            PL.STATE_NAME,PEOPLE_TYPE, sum( Nbr_at_location) Nbr_at_location from TRNG_COVID19.DIM_PEOPLE_LOCATION_V pl group by 1,2,3,4) PL ON
        H.COUNTY     = PL.COUNTY_NAME AND
        H.STATE_NAME = PL.STATE_NAME  
        LEFT JOIN (
        SELECT MSA_NAME AS MSA_WITH_EMP
            FROM TRNG_COVID19.DIM_PEOPLE_LOCATION_V
            GROUP BY 1
        ) EMSA ON 
        LKP.MSA_NAME = EMSA.MSA_WITH_EMP  
        LEFT JOIN TRNG_COVID19.F_IND_DASH_TIMELINE_TO_SAFETY_V DM ON 
                /*H.SNAPSHOT_DATE   = DM.SNAPSHOT_DATE AND data may lag so can't use this for join*/
        H.STATE_CODE      = DM.STATE_CODE AND
        DM.BUCKET         = 1
        LEFT JOIN (select date_key, 
        state_code, 
        geo_granularity /*ICU.PEAK_ICU_BED_DAY_MEAN*/
        from TRNG_COVID19.FACT_COVID_MODEL_DATA_SUM_V ICU
           qualify rank() over(partition by geo_key  order by date_key desc) = 1
        ) icu ON 
        H.STATE_CODE        = ICU.STATE_CODE AND
        ICU.GEO_GRANULARITY = 'STATE'   
        WHERE H.CURR_PREV_FLAG = 'CURR' --
       -- and H.state_name = 'California'
        
        GROUP BY H.SNAPSHOT_DATE,
            H.SNAPSHOT_WEEK,
            H.CURR_PREV_FLAG,
            HW.DATE_KEY,
            H.GEO_KEY,
            H.COUNTY,
            LKP.MSA_NAME,
            H.STATE_CODE,
            H.STATE_NAME,
            HW.COUNTRY_NAME,
            H.COUNTY_POPULATION,
            H.COUNTY_POP_RNK,
            H.CASES_TODATE_PER100K,
            H.CASES_TODATE_WK,
            H.NEW_CASES_WK,
            H.NEW_CASES_7MAVG,
            H.NEW_CASES_7MAVG_100K,
            H.DEATHS_TODATE_WK,
            H.NEW_DEATHS_WK,
            H.NEW_DEATHS_7MAVG,
            H.NEW_DEATHS_7MAVG_100K,
            H.RECOVERY_FLAG,
            H.SAFE_FLAG,
            H.SURGE_FLAG,
            DM.BUCKET,
            DM.EST_DATE_START,
            --ICU.PEAK_ICU_BED_DAY_MEAN,
            DH.TESTED_CNT,
            DH.CONFIRMED_CNT,
            DH.RECOVERED_CNT,
            DH.DEATH_CNT,
            DH.HOSPITALIZED_CNT,
            DH.ON_VENTILATOR_CNT,
            DH.IN_ICU_CNT,
            DH.SEVERE_CASE_CNT,
            DH.SCHOOL_CLOSING,
            DH.WORKPLACE_CLOSING,
            DH.CANCEL_EVENTS,
            DH.GATHERINGS_RESTRICTIONS,
            DH.TRANSPORT_CLOSING,
            DH.STAY_HOME_RESTRICTIONS,
            DH.INTERNAL_MOVEMENT_RESTRICTIONS,
            DH.INTERNATIONAL_MOVEMENT_RESTRICTIONS,
            DH.INFORMATION_CAMPAIGNS,
            DH.TESTING_POLICY,
            DH.CONTACT_TRACING,
            DH.STRINGENCY_INDEX,
            (
        CASE
            WHEN COALESCE(TRIM(SMSA.MSA_WITH_SITE),'') = '' THEN 0 ELSE 1
        END),
            SA.SITE_ID,
            SA.SITE_TYPE,
            SA.ADDRESS,
            INITCAP(LOWER(SA.CITY)),
            SA.MSA_NAME,
            SA.COUNTY_NAME,
            SA.STATE_NAME,
            SA.FTE_HC_AT_LOCATION,
            SA.CONTINGENT_HC_AT_LOCATION,
            SA.AVERAGE_ATTENDANCE,
            SA.SECURITY_TYPE,
            (
        CASE
            WHEN COALESCE(TRIM(EMSA.MSA_WITH_EMP),'') = '' THEN 0 ELSE 1
        END),
            PL.MSA_NAME,
            PL.COUNTY_NAME,
            PL.STATE_NAME;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT_V AS
LOCKING ROW FOR ACCESS
SELECT * FROM TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT
QUALIFY RANK() OVER (PARTITION BY 1 ORDER BY SNAPSHOT_DATE DESC) = 1;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_TIMELINE_SAFTEY_V_Delete AS
                
    LOCKING ROW FOR ACCESS --    WITH t1 AS (
--         SELECT   MAX(date_key) max_dt, max(modeled_date) max_mod_dt
--             FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_V f  ) --(select max_dt from t1)
    
    SELECT geo_key,
                state_name,
                STATE_CODE,
            population,
            mobility_composite,
            modeled_date,
            location_name,direction_flag, Est_Stability_Date,Est_Stability_Date_end,Est_next_wave_Date,Est_next_wave_Date_end,
            coalesce(Est_Stability_Date,Est_Stability_Date_end,Est_next_wave_Date,Est_next_wave_Date_end) fil_date, DT.SNAPSHOT_DATE,
                    DT.SNAPSHOT_WEEK,
                    dt.cal_week_year,
                    dt.week_start_date,
                    dt.week_end_date,
                    dt.cal_day_sat,
                    dt.day_of_year,
     dt.day_of_cal_1900
        FROM (
        SELECT     geo_key,
                state_name,
                STATE_CODE,
            population,
            mobility_composite,
            modeled_date,
            location_name,
            
        
            direction_flag,
            
            CASE
                WHEN safe_flag = 1  
                AND LAG(safe_flag,1) OVER(PARTITION BY state_name
            ORDER BY modeled_date) = 0 THEN modeled_date  ELSE NULL
            END  Est_Stability_Date,
                
            CASE
                WHEN safe_flag = 0  
                AND LAG(safe_flag,1) OVER(PARTITION BY state_name
            ORDER BY modeled_date) = 1 THEN modeled_date   ELSE NULL
            END  Est_Stability_Date_end,
                
            CASE
                WHEN bad_flag = 1 
                and LAG(bad_flag,1) OVER(PARTITION BY state_name
            ORDER BY modeled_date) = 0 THEN modeled_date   ELSE NULL
            END  Est_next_wave_Date,
                
            CASE
                WHEN bad_flag = 0 
                AND LAG(bad_flag,1) OVER(PARTITION BY state_name
            ORDER BY modeled_date) = 1 THEN modeled_date   ELSE NULL
            END Est_next_wave_Date_end
            FROM (
            SELECT geo_key,
                state_name,
                STATE_CODE,
                modeled_date,
                bad_day,
                safe_day, 
                infections_per100k,
                population,
                mobility_composite,
                location_name,
                
                 
                  
                SUM(safe_day) OVER (PARTITION BY geo_key
                ORDER BY modeled_date 
                ROWS   13 PRECEDING   ) safe_14,
                
                    SUM(bad_day) OVER (PARTITION BY geo_key
                ORDER BY modeled_date 
                ROWS   13 PRECEDING      ) bad_14,
                    
                CASE
                    WHEN  
                SUM(safe_day) OVER (PARTITION BY geo_key
                ORDER BY modeled_date 
                ROWS   13 PRECEDING  ) >= 14 THEN 1 ELSE 0
                END safe_flag,
                    
                CASE
                    WHEN  
                SUM(bad_day) OVER (PARTITION BY geo_key
                ORDER BY modeled_date 
                ROWS   13 PRECEDING      ) >= 14 THEN 1 ELSE 0
                END bad_flag,
                    
                CASE
                    WHEN  
                SUM(safe_day) OVER (PARTITION BY geo_key
                ORDER BY modeled_date 
                ROWS   13 PRECEDING  ) >  
                SUM(bad_day) OVER (PARTITION BY geo_key
                ORDER BY modeled_date 
                ROWS   13 PRECEDING      ) THEN '+' ELSE '-'
                END direction_flag
                
                
                FROM (
                SELECT     g.uid geo_key,
                        G.COUNTY,
                        G.STATE_NAME,
                        G.STATE_CODE,
                        G.POPULATION,
                        G.COUNTRY_NAME,
                       
                    f.mobility_composite,
                  
                    f.modeled_date,
                    f.location_name,
                    CAST(  est_infections_mean*(CAST(100000 AS DECIMAL(15,4)) /population) AS DECIMAL(15,4)) infections_per100k,
                    
                    CASE
                        WHEN infections_per100k <4 THEN 1 ELSE 0
                    END safe_day,
                        
                    CASE
                        WHEN infections_per100k >=4 THEN 1 ELSE 0
                    END bad_day --select   state_name, population, f.mobility_composite, F.GEO_KEY,f.modeled_date ,
                     --select 
                     --cast(  F_IND_DASH_Covid_Projections_Curr_V.est_infections_mean*(cast(100000 as decimal(15,4)) /population) as decimal(15,4)) infections_per100k 
                    
                    FROM F_IND_DASH_Covid_Projections_Curr_V F  -- where modeled_date = '2020-03-09' and location_name = 'Alabama'
                    JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
                    F.GEO_KEY = G.UID
                    WHERE f.geo_key BETWEEN 83999999 AND 84099999
                     --and f.modeled_date + 14 => '2020-06-21'
                     --and f.date_key = (select max_dt from t1)  
                 --    and f.location_name in ( 'Connecticut','alaska','alabama')
                     --and modeled_date>date_key
                    ) a
            
            ) list   ) final
             JOIN (
                    SELECT 
                        MIN(WEEK_END_DATE) OVER () AS SNAPSHOT_DATE,
                        MIN(CAL_WEEK_YEAR) OVER () AS SNAPSHOT_WEEK,
                        MIN(WEEK_START_DATE) OVER () AS FIL_START_DATE_KEY,
                        MAX(WEEK_END_DATE) OVER () FIL_END_DATE_KEY,
                        
                        CASE
                            WHEN RNK =1 THEN  'CURR'
                            WHEN RNK >1 THEN 'PROJ'||'-'||ltrim(CAST(rnk-1 AS VARCHAR(3)))
                        ELSE 'n/a'
                        END CURR_PREV_FLAG,
                            RANK() OVER (
                        ORDER BY WEEK_END_DATE ASC) RNK,
                            DT.* --select *
                        
                        FROM TRNG_COVID19.DIM_CALENDAR_V DT
--                        WHERE CAL_DATE_KEY between   ( select min(modeled_date) min_fil_date 
--              				FROM TRNG_COVID19.F_IND_DASH_Timeline_to_saftey_V  f) and ( select max(modeled_date) max_fil_date 
--              				FROM TRNG_COVID19.F_IND_DASH_Timeline_to_saftey_V  f) 
                    ) DT ON
                    fil_date = cal_date_key
            
            
            
            
          
        WHERE state_name IS NOT NULL;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_Timeline_to_safety_V AS
-- Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
--08/05/2020       2.0         Teradata DW              	Changed avg(mobility_composite) to a max()                                                                     
    LOCKING ROW FOR ACCESS --    
        -- prev query is used to compare the previouly loaded projections against the latest projections
        -- this will show if the modeling is indicating things are getting better or worst.
        -- The query should be indentical to the bottom query excpet it uses the view TRNG_COVID19.F_IND_DASH_Covid_Projections_prev_V
    WITH prev AS (
    SELECT   
        geo_key,
        STATE_NAME,
        STATE_CODE,
        Population,
        mobility_composite,
         --date_delta,
        Est_Date_start,
        NULL Est_Date_end,
        Bucket,
        (
        SELECT dt2.week_of_year
            FROM TRNG_COVID19.DIM_CALENDAR_V dt2
            WHERE cal_date_key = Est_Date_start)   - dt.week_of_year seq_week_nbr,
        SNAPSHOT_DATE,
        SNAPSHOT_WEEK,
        CAL_WEEK_YEAR,
        WEEK_START_DATE,
        WEEK_END_DATE,
        cal_day_sat,
        day_of_year,
        day_of_cal_1900 --select *
        
        FROM (
        SELECT states.geo_key,
            states.state_name,
            states.state_code,
            states.population,
            mobility_composite,
            Est_Date_start,
            bucket
            FROM (
            SELECT DISTINCT date_key,
                geo_key,
                g.state_name,
                g.state_code,
                g.Population --,  MODELED_DATE,  est_infections_mean
                
                FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_prev_V a
                JOIN TRNG_COVID19.DIM_GEO_LOCATION_V g ON g.uid = a.geo_key) states  
                                                                                                                                         
            JOIN (
            SELECT DISTINCT
                geo_key,
                state_name,
                safe_flag,
                1 bucket,
                MIN(Est_Date_start)  OVER(PARTITION BY geo_key) + 14 Est_Date_start,
                max(mobility_composite) OVER(PARTITION BY geo_key)  mobility_composite
                FROM (
                SELECT geo_key,
                    state_name,
                    infections_per100k,
                    mobility_composite,
                    safe_day,
                    Last_confirmed_infections,
                    
                    CASE
                        WHEN  
                    SUM(safe_day) OVER (PARTITION BY geo_key
                    ORDER BY modeled_date 
                    ROWS  BETWEEN  CURRENT ROW AND 13 FOLLOWING  ) >= 14 THEN 'Y' ELSE 'N'
                    END safe_flag,
                        
                    CASE
                        WHEN safe_flag = 'Y' THEN modeled_date ELSE NULL
                    END Est_Date_start
                    FROM (
                    SELECT   geo_key,
                        state_name,
                        f.mobility_composite,
                        f.modeled_date,
                        MAX(
                        CASE
                            WHEN f.confirmed_infections IS NOT NULL THEN f.modeled_date
                        END ) OVER(PARTITION BY geo_key) Last_confirmed_infections,
                            CAST(  est_infections_mean*(CAST(100000 AS DECIMAL(15,4)) /population) AS DECIMAL(15,4)) infections_per100k,
                            
                        CASE
                            WHEN infections_per100k <4  THEN 1 ELSE 0
                        END safe_day,
                            
                        CASE
                            WHEN infections_per100k >=4 
                        AND infections_per100k > LAG(infections_per100k,1) OVER(PARTITION BY uid
                        ORDER BY modeled_date)
                        THEN 1 ELSE 0
                        END bad_day
                        FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_prev_V F 
                        JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
                        F.GEO_KEY = G.UID
                         --where f.geo_key = 84000001
                        )  a   ) final
                WHERE safe_flag = 'Y'
                    AND  COALESCE(est_date_start,Last_confirmed_infections - 13)  >= Last_confirmed_infections  - 13
                                                                                                                                     
            ) safe
            ON states.geo_key = safe.geo_key 
        UNION ALL
        SELECT states.geo_key,
            states.state_name,
            states.state_code,
            states.population,
            mobility_composite,
            Est_Date_start,
            bucket
            FROM (
            SELECT DISTINCT date_key,
                geo_key,
                g.state_name,
                g.state_code,
                g.Population --,  MODELED_DATE,  est_infections_mean
                
                FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_prev_V a
                JOIN TRNG_COVID19.DIM_GEO_LOCATION_V g ON g.uid = a.geo_key) states  
            JOIN 
            (
            SELECT DISTINCT
                geo_key,
                state_name,
                safe_flag,
                2 bucket,
                MIN(Est_Date_start)   OVER(PARTITION BY geo_key) + 14 Est_Date_start,
                max(mobility_composite)  OVER(PARTITION BY geo_key) mobility_composite
                FROM (
                SELECT geo_key,
                    state_name,
                    infections_per100k,
                    mobility_composite,
                    safe_day,
                    Last_confirmed_infections,
                    
                    CASE
                        WHEN  
                    SUM(safe_day) OVER (PARTITION BY geo_key
                    ORDER BY modeled_date 
                    ROWS   BETWEEN  CURRENT ROW AND 13 FOLLOWING ) >= 14 THEN 'Y' ELSE 'N'
                    END safe_flag,
                        
                    CASE
                        WHEN safe_flag = 'Y' THEN modeled_date ELSE NULL
                    END Est_Date_start
                    FROM (
                    SELECT   geo_key,
                        state_name,
                        f.mobility_composite,
                        f.modeled_date,
                        MAX(
                        CASE
                            WHEN f.confirmed_infections IS NOT NULL THEN f.modeled_date
                        END ) OVER(PARTITION BY geo_key) Last_confirmed_infections,
                            CAST(  est_infections_mean*(CAST(100000 AS DECIMAL(15,4)) /population) AS DECIMAL(15,4)) infections_per100k,
                            
                        CASE
                            WHEN infections_per100k <4  THEN 1 ELSE 0
                        END safe_day,
                            
                        CASE
                            WHEN infections_per100k >=4 
                        AND infections_per100k > LAG(infections_per100k,1) OVER(PARTITION BY uid
                        ORDER BY modeled_date)
                        THEN 1 ELSE 0
                        END bad_day
                        FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_prev_V F 
                        JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
                        F.GEO_KEY = G.UID
                         --where f.geo_key = 84000001
                        )  a   ) final
                WHERE safe_flag  = 'N'
                    AND  COALESCE(est_date_start,Last_confirmed_infections -13)  >= Last_confirmed_infections  - 13
                                                                                                                                    
            ) Not_safe
            ON states.geo_key = not_safe.geo_key 
        UNION ALL
        SELECT states.geo_key,
            states.state_name,
            states.state_code,
            states.population,
            mobility_composite,
            bad.Est_Date_start,
            bucket
            FROM (
            SELECT DISTINCT date_key,
                geo_key,
                g.state_name,
                g.state_code,
                g.Population --,  MODELED_DATE,  est_infections_mean
                
                FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_prev_V a
                JOIN TRNG_COVID19.DIM_GEO_LOCATION_V g ON g.uid = a.geo_key) states  
            JOIN 
                                                                                                                                 
            (
            SELECT DISTINCT
                geo_key,
                state_name,
                bad_flag,
                3 bucket,
                MIN(Est_Date_start) OVER(PARTITION BY geo_key)  Est_Date_start,
                max(mobility_composite) OVER(PARTITION BY geo_key) mobility_composite
                FROM (
                SELECT geo_key,
                    state_name,
                    infections_per100k,
                    mobility_composite,
                    bad_day,
                    Last_confirmed_infections,
                    
                    CASE
                        WHEN infections_per100k >=4
                    AND  
                    SUM(bad_day) OVER (PARTITION BY geo_key
                    ORDER BY modeled_date 
                    ROWS  BETWEEN  CURRENT ROW AND 13 FOLLOWING     ) >= 14 THEN 'Y' ELSE 'N'
                    END bad_flag,
                        
                    CASE
                        WHEN bad_flag = 'Y' THEN modeled_date ELSE NULL
                    END Est_Date_start
                    FROM (
                    SELECT   geo_key,
                        state_name,
                        f.mobility_composite,
                        f.modeled_date,
                        MAX(
                        CASE
                            WHEN f.confirmed_infections IS NOT NULL THEN f.modeled_date
                        END ) OVER(PARTITION BY geo_key) Last_confirmed_infections,
                            CAST(  est_infections_mean*(CAST(100000 AS DECIMAL(15,4)) /population) AS DECIMAL(15,4)) infections_per100k,
                            
                        CASE
                            WHEN infections_per100k <4  THEN 1 ELSE 0
                        END safe_day,
                            
                        CASE
                            WHEN   infections_per100k > LAG(infections_per100k,1) OVER(PARTITION BY uid
                        ORDER BY modeled_date)
                        THEN 1 ELSE 0
                        END bad_day
                        FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_prev_V F 
                        JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
                        F.GEO_KEY = G.UID
                         --where f.geo_key = 84000001
                        )  a   ) final
                WHERE bad_flag = 'Y'
                    AND  COALESCE(est_date_start,Last_confirmed_infections - 14)  >= Last_confirmed_infections - 14 
                                                                                                                                    
            ) bad 
                                                                                                                                            
            ON states.geo_key = bad.geo_key 
                                                                                      
                                                                                      
                                                                                           
                                                                                      
        ) for_view 
                                                                        
                                                                                      --      
        LEFT OUTER JOIN 
        (
        SELECT 
            MAX(WEEK_END_DATE) OVER () AS SNAPSHOT_DATE,
            MAX(CAL_WEEK_YEAR) OVER () AS SNAPSHOT_WEEK,
            MIN(WEEK_START_DATE) OVER () AS FIL_START_DATE_KEY,
            MAX(WEEK_END_DATE) OVER () FIL_END_DATE_KEY,
            
            CASE
                WHEN RNK =1 THEN 'CURR'
                WHEN RNK =2 THEN 'PREV'
            ELSE 'PREV-1'
            END CURR_curr_FLAG,
                RANK() OVER (
            ORDER BY WEEK_END_DATE DESC) RNK,
                DT.*
            FROM TRNG_COVID19.DIM_CALENDAR_V DT
            LEFT JOIN (
            SELECT MAX(DATE_KEY) MAX_DT
                FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_prev_V  F                  
            ) MAXDT ON 1=1
            WHERE CAL_DATE_KEY IN (MAX_DT-7)
                                                                                
        ) dt
        ON   1=1
         -- prevent rows in bucket 2 that are in bucket 1 (mutuall exclusive      
         --        QUALIFY
         --        CASE
         --            WHEN (bucket = 2 AND LAG(bucket, 1, 0) RESPECT NULLS 
         --        OVER (PARTITION BY for_view.geo_key
         --        ORDER BY bucket) <> 1) OR bucket IN (1,3)  THEN 1 ELSE 0
         --        END = 1
        ) -- 
     --    select * from prev where geo_key = 84000038
     --================ main sql ================================================== 
    
    SELECT  prev_bucket,
        prev_est_start,
        prev_est_date_end,
        prev_snapshot_date,
        mobility_composite_curr,
        NEW_ENTRY,
        GEO_KEY,
        STATE_NAME,
        STATE_CODE,
        Population,
        mobility_composite,
        Last_confirmed_infections,
        Est_Date_start,
        Est_Date_end,
        bucket,
        seq_week_nbr,
        SNAPSHOT_DATE,
        SNAPSHOT_WEEK,
        CAL_WEEK_YEAR,
        WEEK_START_DATE,
        WEEK_END_DATE,
        cal_day_sat,
        day_of_year,
        day_of_cal_1900,
        DATE_OF_PROJECTIONS,
        PROJECTIONS_UP_UNTIL
        FROM (
        SELECT   
            (
            SELECT prev.Est_Date_start
                FROM prev
                WHERE for_view.geo_key = prev.geo_key
                    AND  bucket = 3)  prev_3_strt_dt,
            (
            SELECT prev.Est_Date_start
                FROM prev
                WHERE for_view.geo_key = prev.geo_key
                    AND  bucket = 2)  prev_2_strt_dt,
            (
            SELECT prev.Est_Date_start
                FROM prev
                WHERE for_view.geo_key = prev.geo_key
                    AND  bucket = 1)  prev_1_strt_dt,
            (
            SELECT prev.Est_Date_end
                FROM prev
                WHERE for_view.geo_key = prev.geo_key
                    AND  bucket = 3)  prev_3_end_dt,
            (
            SELECT prev.Est_Date_end
                FROM prev
                WHERE for_view.geo_key = prev.geo_key
                    AND  bucket = 2)  prev_2_end_dt,
            (
            SELECT prev.Est_Date_end
                FROM prev
                WHERE for_view.geo_key = prev.geo_key
                    AND  bucket = 1)  prev_1_end_dt,
            
            CASE
                WHEN bucket = 1   THEN
            CASE
                WHEN prev_1_strt_dt IS NOT NULL AND Est_Date_start <> prev_1_strt_dt THEN 1
            END
                WHEN bucket = 2   THEN
            CASE
                WHEN prev_2_strt_dt IS NOT NULL AND Est_Date_start <> prev_2_strt_dt THEN 2
                WHEN prev_1_strt_dt IS NOT NULL THEN 1
            END
                WHEN bucket = 3   THEN
            CASE
                WHEN prev_3_strt_dt IS NOT NULL AND Est_Date_start <> prev_3_strt_dt THEN 3
                WHEN prev_1_strt_dt IS NOT NULL THEN 1
            END
            END  prev_bucket,
                
            CASE
                WHEN prev_bucket = 1 THEN  prev_1_strt_dt
                WHEN prev_bucket = 2 THEN  prev_2_strt_dt
                WHEN prev_bucket = 3 THEN  prev_3_strt_dt
            ELSE NULL
            END prev_est_start,
                
            CASE
                WHEN prev_bucket = 1 THEN  prev_1_end_dt
                WHEN prev_bucket = 2 THEN  prev_2_end_dt
                WHEN prev_bucket = 3 THEN  prev_3_end_dt
            ELSE NULL
            END prev_est_date_end,
                (
            SELECT prev.snapshot_date
                FROM prev
                WHERE for_view.geo_key = prev.geo_key
                    AND  bucket = prev_bucket) prev_snapshot_date,
                mobility_composite  mobility_composite_curr,
                NULL   NEW_ENTRY,
                geo_key,
                STATE_NAME,
                STATE_CODE,
                Population,
                mobility_composite,
                 --date_delta,
            Est_Date_start,
                Last_confirmed_infections,
                NULL Est_Date_end,
                Bucket,
                (
            SELECT dt2.week_of_year
                FROM TRNG_COVID19.DIM_CALENDAR_V dt2
                WHERE cal_date_key = Est_Date_start)   - dt.week_of_year seq_week_nbr,
                SNAPSHOT_DATE,
                SNAPSHOT_WEEK,
                CAL_WEEK_YEAR,
                WEEK_START_DATE,
                WEEK_END_DATE,
                cal_day_sat,
                day_of_year,
                day_of_cal_1900,
                Last_confirmed_infections + 1 DATE_OF_PROJECTIONS,
                (
            SELECT MAX(modeled_date)
                FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_Curr_V)  PROJECTIONS_UP_UNTIL --select *
             --select *       
            
            FROM (
            SELECT states.geo_key,
                states.state_name,
                states.state_code,
                states.population,
                mobility_composite,
                Est_Date_start,
                bucket,
                Last_confirmed_infections
                FROM (
                SELECT DISTINCT date_key,
                    geo_key,
                    g.state_name,
                    g.state_code,
                    g.Population --,  MODELED_DATE,  est_infections_mean
                    
                    FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_curr_V a
                    JOIN TRNG_COVID19.DIM_GEO_LOCATION_V g ON g.uid = a.geo_key) states  
                                                                                                                                                         
                JOIN (
                SELECT distinct
                    geo_key,
                    state_name,
                    safe_flag,
                    1 bucket,
                    Last_confirmed_infections, 
                    MIN(Est_Date_start)  OVER(PARTITION BY geo_key) + 14  Est_Date_start,
                    max(mobility_composite) OVER(PARTITION BY geo_key)  mobility_composite 
                    FROM (
                    SELECT geo_key,
                        state_name,
                        infections_per100k,
                        mobility_composite,
                        safe_day,
                        Last_confirmed_infections,
                        modeled_date,
                        CASE
                            WHEN  
                        SUM(safe_day) OVER (PARTITION BY geo_key
                        ORDER BY modeled_date 
                        ROWS  BETWEEN  CURRENT ROW AND 13 FOLLOWING ) >= 14 THEN 'Y' ELSE 'N'
                        END safe_flag,
                            
                        CASE
                            WHEN safe_flag = 'Y' THEN modeled_date ELSE NULL
                        END Est_Date_start
                        FROM (
                        SELECT   geo_key,
                            state_name,
                            f.mobility_composite,
                            f.modeled_date,
                            MAX(
                            CASE
                                WHEN f.confirmed_infections IS NOT NULL THEN f.modeled_date
                            END ) OVER() Last_confirmed_infections,
                                CAST(  est_infections_mean*(CAST(100000 AS DECIMAL(15,4)) /population) AS DECIMAL(15,4)) infections_per100k,
                                
                            CASE
                                WHEN infections_per100k <4  THEN 1 ELSE 0
                            END safe_day,
                                
                            CASE
                                WHEN   infections_per100k > LAG(infections_per100k,1) OVER(PARTITION BY uid
                            ORDER BY modeled_date)
                            THEN 1 ELSE 0
                            END bad_day
                            FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_curr_V F 
                            JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
                            F.GEO_KEY = G.UID
                           -- where f.geo_key = 84000001
                            )  a   ) final
                    WHERE safe_flag = 'Y'
                        AND  est_date_start > Last_confirmed_infections - 13
                                                                                                                                                     
                ) safe
                ON states.geo_key = safe.geo_key 
            UNION ALL
            SELECT states.geo_key,
                states.state_name,
                states.state_code,
                states.population,
                mobility_composite,
                Est_Date_start,
                bucket,
                Last_confirmed_infections
                FROM (
                SELECT DISTINCT date_key,
                    geo_key,
                    g.state_name,
                    g.state_code,
                    g.Population --,  MODELED_DATE,  est_infections_mean
                    
                    FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_curr_V a
                    JOIN TRNG_COVID19.DIM_GEO_LOCATION_V g ON g.uid = a.geo_key) states  
                JOIN 
                (
                SELECT DISTINCT
                    geo_key,
                    state_name,
                    safe_flag,
                    2 bucket,
                    Last_confirmed_infections,
                    MIN(Est_Date_start)   OVER(PARTITION BY geo_key) + 14 Est_Date_start,
                    max(mobility_composite)  OVER(PARTITION BY geo_key) mobility_composite
                    FROM (
                    SELECT geo_key,
                        state_name,
                        infections_per100k,
                        mobility_composite,
                        safe_day,
                        Last_confirmed_infections,
                        
                        CASE
                            WHEN  
                        SUM(safe_day) OVER (PARTITION BY geo_key
                        ORDER BY modeled_date 
                        ROWS   BETWEEN  CURRENT ROW AND 13 FOLLOWING  ) >= 14 THEN 'Y' ELSE 'N'
                        END safe_flag,
                            
                        CASE
                            WHEN safe_flag = 'Y' THEN modeled_date ELSE NULL
                        END Est_Date_start
                        FROM (
                        SELECT   geo_key,
                            state_name,
                            f.mobility_composite,
                            f.modeled_date,
                            MAX(
                            CASE
                                WHEN f.confirmed_infections IS NOT NULL THEN f.modeled_date
                            END ) OVER() Last_confirmed_infections,
                                CAST(  est_infections_mean*(CAST(100000 AS DECIMAL(15,4)) /population) AS DECIMAL(15,4)) infections_per100k,
                                
                            CASE
                                WHEN infections_per100k <4  THEN 1 ELSE 0
                            END safe_day,
                                
                            CASE
                                WHEN   infections_per100k > LAG(infections_per100k,1) OVER(PARTITION BY uid
                            ORDER BY modeled_date)
                            THEN 1 ELSE 0
                            END bad_day
                            FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_curr_V F 
                            JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
                            F.GEO_KEY = G.UID
                             --where f.geo_key = 84000002
                            )  a   ) final
                    WHERE safe_flag = 'N'
                        AND  COALESCE(est_date_start,Last_confirmed_infections -13)  >= Last_confirmed_infections  - 13
                                                                                                                                                    
                ) Not_safe
                ON states.geo_key = not_safe.geo_key 
            UNION ALL
            SELECT states.geo_key,
                states.state_name,
                states.state_code,
                states.population,
                mobility_composite,
                bad.Est_Date_start,
                bucket,
                Last_confirmed_infections
                FROM (
                SELECT DISTINCT date_key,
                    geo_key,
                    g.state_name,
                    g.state_code,
                    g.Population --,  MODELED_DATE,  est_infections_mean
                    
                    FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_curr_V a
                    JOIN TRNG_COVID19.DIM_GEO_LOCATION_V g ON g.uid = a.geo_key) states  
                JOIN 
                                                                                                                                                 
                (
                SELECT DISTINCT
                    geo_key,
                    state_name,
                    bad_flag,
                    3 bucket,
                    Last_confirmed_infections,
                    MIN(Est_Date_start) OVER(PARTITION BY geo_key)  Est_Date_start,
                    max(mobility_composite) OVER(PARTITION BY geo_key) mobility_composite
                    FROM (
                    SELECT geo_key,
                        state_name,
                        infections_per100k,
                        mobility_composite,
                        bad_day,
                        Last_confirmed_infections,
                        
                        CASE
                            WHEN infections_per100k >=4
                        AND  
                        SUM(bad_day) OVER (PARTITION BY geo_key
                        ORDER BY modeled_date 
                        ROWS   BETWEEN  CURRENT ROW AND 13 FOLLOWING    ) >= 14 THEN 'Y' ELSE 'N'
                        END bad_flag,
                            
                        CASE
                            WHEN bad_flag = 'Y' THEN modeled_date ELSE NULL
                        END Est_Date_start
                        FROM (
                        SELECT   geo_key,
                            state_name,
                            f.mobility_composite,
                            f.modeled_date,
                            MAX(
                            CASE
                                WHEN f.confirmed_infections IS NOT NULL THEN f.modeled_date
                            END ) OVER() Last_confirmed_infections,
                                CAST(  est_infections_mean*(CAST(100000 AS DECIMAL(15,4)) /population) AS DECIMAL(15,4)) infections_per100k,
                                
                            CASE
                                WHEN infections_per100k <4  THEN 1 ELSE 0
                            END safe_day,
                                
                            CASE
                                WHEN
                            infections_per100k > LAG(infections_per100k,1) OVER(PARTITION BY uid
                            ORDER BY modeled_date)
                            THEN 1 ELSE 0
                            END bad_day
                            FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_curr_V F 
                            JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
                            F.GEO_KEY = G.UID
                             --  where f.geo_key = 84000002
                            )  a   ) final
                    WHERE bad_flag = 'Y'
                        AND  est_date_start > Last_confirmed_infections   - 14 
                                                                                                                                                    
                ) bad 
                                                                                                                                                            
                ON states.geo_key = bad.geo_key 
                                                                                                      
                                                                                                      
                                                                                                           
                                                                                                      
            ) for_view 
                                                                                        
                                                                                                      --      
            LEFT OUTER JOIN 
            (
            SELECT 
                MAX(WEEK_END_DATE) OVER () AS SNAPSHOT_DATE,
                MAX(CAL_WEEK_YEAR) OVER () AS SNAPSHOT_WEEK,
                MIN(WEEK_START_DATE) OVER () AS FIL_START_DATE_KEY,
                MAX(WEEK_END_DATE) OVER () FIL_END_DATE_KEY,
                
                CASE
                    WHEN RNK =1 THEN 'CURR'
                    WHEN RNK =2 THEN 'PREV'
                ELSE 'PREV-1'
                END CURR_curr_FLAG,
                    RANK() OVER (
                ORDER BY WEEK_END_DATE DESC) RNK,
                    DT.*
                FROM TRNG_COVID19.DIM_CALENDAR_V DT
                LEFT JOIN (
                SELECT MAX(DATE_KEY) MAX_DT
                    FROM TRNG_COVID19.F_IND_DASH_Covid_Projections_curr_V  F                  
                ) MAXDT ON 1=1
                WHERE CAL_DATE_KEY IN (MAX_DT-7)
                                                                                                
            ) dt
            ON   1=1
                                                       -- where geo_key = 84000038
                                                          -- prevent rows in bucket 2 that are in bucket 1 (mutuall exclusive      
            QUALIFY
            CASE
                WHEN (bucket = 2 AND LAG(bucket, 1, 0) RESPECT NULLS 
            OVER (PARTITION BY for_view.geo_key
            ORDER BY bucket) <> 1) OR bucket IN (1,3)  THEN 1 ELSE 0
            END = 1
        ) final;

REPLACE VIEW TRNG_COVID19.F_IND_DASH_Word_Cloud_Tweet_VIZ_V AS
    LOCKING ROW FOR ACCESS
    with cdt as( 
      SELECT   max(date_key) max_dt
        FROM    TRNG_COVID19.FACT_Word_Cloud_Tweet_V   f )
    , tbl AS  (
    SELECT 
        SNAPSHOT_DATE,
        SNAPSHOT_WEEK,
        CURR_PREV_FLAG,
        DATE_KEY,
        term,
        occurances 
        
        FROM 
        (
        SELECT
            DT.SNAPSHOT_DATE,
            DT.SNAPSHOT_WEEK,
            
            CASE
                WHEN F.DATE_KEY BETWEEN DT.WEEK_START_DATE AND DT.WEEK_END_DATE
            THEN DT.CURR_PREV_FLAG
            END AS CURR_PREV_FLAG,
                F.DATE_KEY,
                
                F.term,
                SUM(F.occurances)  occurances --select *
            
            FROM (
            SELECT f.*
                FROM TRNG_COVID19.FACT_Word_Cloud_Tweet_V f ,
                cdt
                    
                WHERE    date_key > cdt.max_dt - 14) F  
            JOIN (
            SELECT 
                MAX(WEEK_END_DATE) OVER () AS SNAPSHOT_DATE,
                MAX(CAL_WEEK_YEAR) OVER () AS SNAPSHOT_WEEK,
                MIN(WEEK_START_DATE) OVER () AS FIL_START_DATE_KEY,
                MAX(WEEK_END_DATE) OVER () FIL_END_DATE_KEY,
                
                CASE
                    WHEN RNK =1 THEN 'CURR'
                    WHEN RNK =2 THEN 'PREV'
                ELSE 'PREV-1'
                END CURR_PREV_FLAG,
                    RANK() OVER (
                ORDER BY WEEK_END_DATE DESC) RNK,
                    DT.*
                FROM TRNG_COVID19.DIM_CALENDAR_V DT
                WHERE CAL_DATE_KEY IN ((
                SELECT max_dt
                    FROM cdt), (
                SELECT max_dt
                    FROM cdt) - 7 )
            ) DT ON
            F.DATE_KEY BETWEEN DT.FIL_START_DATE_KEY AND DT.FIL_END_DATE_KEY
            GROUP BY 1,
                2,
                3,
                4,
                5 
        ) T
        WHERE CURR_PREV_FLAG IN ('CURR','PREV')
        QUALIFY RANK() OVER (PARTITION BY CURR_PREV_FLAG
        ORDER BY DATE_KEY DESC) = 1 ) 
        
     
    
    SELECT curr.SNAPSHOT_DATE,
        curr.SNAPSHOT_WEEK,
        curr.CURR_PREV_FLAG,
        curr.DATE_KEY curr_DATE_KEY,
        prev.DATE_KEY prev_DATE_KEY,
       
        prev.occurances prev_occurances,
        prev.term prev_term ,
        curr.occurances occurances,
        curr.term curr_term
        
        FROM tbl curr  
        JOIN tbl prev ON curr.snapshot_date = prev.snapshot_date AND curr.snapshot_week = prev.snapshot_week 
        AND curr.term = prev.term
        /* MG Commented to have a value show till 7 days past*/--AND curr.date_key <>   prev.date_key
        WHERE curr.curr_prev_flag = 'CURR'
            /* MG Commented to have a value show till 7 days past*/--AND  prev.curr_prev_flag = 'prev';;
;

REPLACE VIEW TRNG_COVID19.F_RETVSN_SITE_DEVICE_EVENT_DAILY_V  AS LOCKING ROW FOR ACCESS SELECT * FROM TRNG_COVID19.F_RETVSN_SITE_DEVICE_EVENT_DAILY;

REPLACE VIEW TRNG_COVID19.F_RETVSN_SITE_DEVICE_EVENT_DETAIL_V           AS LOCKING ROW FOR ACCESS SELECT * FROM TRNG_COVID19.F_RETVSN_SITE_DEVICE_EVENT_DETAIL;

REPLACE VIEW TRNG_COVID19.F_RETVSN_SITE_DEVICE_EVENT_HOURLY_V           AS LOCKING ROW FOR ACCESS SELECT * FROM TRNG_COVID19.F_RETVSN_SITE_DEVICE_EVENT_HOURLY;

REPLACE VIEW TRNG_COVID19.gap_static_table_v AS

LOCKING ROW FOR ACCESS

SELECT * FROM ADLDEMO_COVID19.F_IND_DASH_COVID_NAT_ESTIMATES_V

WHERE date_key >= '2020-07-12' and date_key < '2021-06-18'

REPLACE VIEW  TRNG_COVID19.General_Metrics_Covid_V AS
    (
 SELECT cast('ConsumerPricIndex' as varchar(100)) TABLE_NAME, cast ('Price index' as varchar(100)) METRIC_TYPE , cast( 'n/a'   as varchar(100)) SUB_METRIC_TYPE , "year" YR,
 case MTH 
when '01' then 'Q1'
when '02' then 'Q1'
when '03' then 'Q1'
when '04' then 'Q2'
when '05' then 'Q2'
when '06' then 'Q2'
when '07' then 'Q3'
when '08' then 'Q3'
when '09' then 'Q3'
when '10' then 'Q4'
when '11' then 'Q4'
when '12' then 'Q4'
  end QTR,
 MTH, cast( mth_value as decimal(15,2)) MTH_VALUE
 -- select *
FROM TRNG_COVID19.STG_ConsumerPriceIndex UNPIVOT ((mth_value)  FOR   MTH 
                          IN ((jan) AS '01', 
                              (feb) AS '02',
                              (mar) AS '03',
                              (apr) AS '04',
                              (may) AS '05',
                              (jun) AS '06',
                              (jul) AS '07',
                              (aug) AS '08',
                              (sep) AS '09',
                              (oct) AS '10',
                              (nov) AS '11',
                              ("dec") AS '12')) Tmp
                              
union all                              
  SELECT cast('CensusDataStats' as varchar(100)) table_name, cast ( BUSINESS_TYPE as varchar(100)) metric_type , cast( 'n/a'   as varchar(100)) sub_metric_type , "year" yr, 
   case mth 
when '01' then 'Q1'
when '02' then 'Q1'
when '03' then 'Q1'
when '04' then 'Q2'
when '05' then 'Q2'
when '06' then 'Q2'
when '07' then 'Q3'
when '08' then 'Q3'
when '09' then 'Q3'
when '10' then 'Q4'
when '11' then 'Q4'
when '12' then 'Q4'
  end qtr,
  mth, cast( mth_value as decimal(15,2)) mth_value
                                 -- select *
FROM         TRNG_COVID19.STG_CensusDataStats             
  UNPIVOT ((mth_value)  FOR   mth 
                          IN ((jan) AS '01', 
                              (feb) AS '02',
                              (mar) AS '03',
                              (apr) AS '04',
                              (may) AS '05',
                              (jun) AS '06',
                              (jul) AS '07',
                              (aug) AS '08',
                              (sep) AS '09',
                              (oct) AS '10',
                              (nov) AS '11',
                              ("dec") AS '12')) Tmp
                                                         
 union all     
 
 
 SELECT cast('ConsumerSentimentIndex' as varchar(100)) table_name, cast ( 'ConsumerSentimentIndex' as varchar(100)) metric_type , cast( 'n/a'   as varchar(100)) sub_metric_type , "year" yr, 
  case mth 
when '01' then 'Q1'
when '02' then 'Q1'
when '03' then 'Q1'
when '04' then 'Q2'
when '05' then 'Q2'
when '06' then 'Q2'
when '07' then 'Q3'
when '08' then 'Q3'
when '09' then 'Q3'
when '10' then 'Q4'
when '11' then 'Q4'
when '12' then 'Q4'
  end qtr,
 case "month" 
 when 'January' then '01'
 when 'February' then '02'
 when 'March' then '03'
 when 'April' then '04'
 when 'May' then '05'
 when 'June' then '06'
 when 'July' then '07'
 when 'August' then '08'
 when 'September' then '09'
 when 'October' then '10'
 when 'November' then '11'
 when 'December' then '12' 
 
  end mth, 
 
 cast( Consumer_Sentiment_Index as decimal(15,2)) mth_value
 from TRNG_COVID19.STG_ConsumerSentimentIndex 
  
 union all

 --create volatile table xx as (
 
SELECT cast('BureauEconomicAnalysis' as varchar(100)) table_name, cast ( Category as varchar(100)) metric_type ,  
cast( Subgategory  as varchar(100)) sub_metric_type , 
case  yr_qtr 
when '2018Q1' then  2018 
when '2018Q2' then  2018 
when '2018Q3' then  2018 
when '2018Q4' then  2018 
when '2019Q1' then  2019 
when '2019Q2' then  2019 
when '2019Q3' then  2019 
when '2019Q4' then  2019 
when '2020Q1' then  2020  
  end yr   ,
case   yr_qtr 
when '2018Q1' then 'Q1'
when '2018Q2' then 'Q2'
when '2018Q3' then 'Q3'
when '2018Q4' then 'Q4'
when '2019Q1' then 'Q1'
when '2019Q2' then 'Q2'
when '2019Q3' then 'Q3'
when '2019Q4' then 'Q4'
when '2020Q1' then 'Q1' 
  end qtr   ,
case   trim(qtr)||trim(month_of_quarter)
when 'Q11' then '01'
when 'Q12' then '02'
when 'Q13' then '03'
when 'Q21' then '04'
when 'Q22' then '05'
when 'Q23' then '06'
when 'Q31' then '07'
when 'Q32' then '08'
when 'Q33' then '09'
when 'Q41' then '10'
when 'Q42' then '11'
when 'Q43' then '12' 
  end mth   , 
  qtr_value/3  mth_value
 --'2' mth, cast( '2.2'   as decimal(15,2)) mth_value
                                 -- select  *
FROM         TRNG_COVID19.STG_BureauEconomicAnalysis             
  UNPIVOT (   (qtr_value )  FOR   yr_qtr  
                          IN (("2018Q1") AS '2018Q1', 
                              ("2018Q2") AS '2018Q2',
                              ("2018Q3") AS '2018Q3',
                              ("2018Q4") AS '2018Q4',
                              ("2019Q1") AS '2019Q1',
                              ("2019Q2") AS '2019Q2',
                              ("2019Q3") AS '2019Q3',
                              ("2019Q4") AS '2019Q4',
                              ("2020Q1") AS '2020Q1') ) Tmp
                              
 cross join 
 
  (select distinct month_of_quarter from Sys_Calendar.Calendar ) q   
 
 union all
 
SELECT cast('CensusSeasonalFactors' as varchar(100)) table_name, cast ( BUSINESS_TYPE as varchar(100)) metric_type , cast( 'n/a'   as varchar(100)) sub_metric_type , "year" yr, 
   case mth 
when '01' then 'Q1'
when '02' then 'Q1'
when '03' then 'Q1'
when '04' then 'Q2'
when '05' then 'Q2'
when '06' then 'Q2'
when '07' then 'Q3'
when '08' then 'Q3'
when '09' then 'Q3'
when '10' then 'Q4'
when '11' then 'Q4'
when '12' then 'Q4'
  end qtr,
  mth, cast( mth_value as decimal(15,2)) mth_value
                                 -- select *
FROM         TRNG_COVID19.STG_CensusSeasonalFactors              
  UNPIVOT ((mth_value)  FOR   mth 
                          IN ((jan) AS '01', 
                              (feb) AS '02',
                              (mar) AS '03',
                              (apr) AS '04',
                              (may) AS '05',
                              (jun) AS '06',
                              (jul) AS '07',
                              (aug) AS '08',
                              (sep) AS '09',
                              (oct) AS '10',
                              (nov) AS '11',
                              ("dec") AS '12')) Tmp
                                                           
     );

REPLACE VIEW TRNG_COVID19.STG_GoogleMobility_V AS
    LOCKING ROW FOR ACCESS
SELECT country_region_code,
    country_region,
    sub_region_1,
    sub_region_2,
    "date" date_key,
    retail_and_recreation_percent_change_from_baseline  retail_and_recreation,
    grocery_and_pharmacy_percent_change_from_baseline grocery_and_pharmacy,
    parks_percent_change_from_baseline parks,
    transit_stations_percent_change_from_baseline transit_stations,
    workplaces_percent_change_from_baseline workplaces,
    residential_percent_change_from_baseline residential
    FROM TRNG_COVID19.STG_GoogleMobility;

REPLACE VIEW TRNG_COVID19.TOT_COUNTY_CASES_V AS
    SELECT t0.*
        FROM (
        (
        SELECT US_CONF_COUNTY_SMAVG.Province_State AS province_state,
            US_CONF_COUNTY_SMAVG.county AS county,
            US_CONF_COUNTY_SMAVG."date" AS "date",
            CAST('US_CONF_COUNTY_SMAVG' AS VARCHAR(32)) AS "table name",
            US_CONF_COUNTY_SMAVG.tot_conf_smavg AS tot_conf
            FROM TRNG_COVID19.US_CONF_COUNTY_SMAVG 
        ) 
            
        UNION  ALL
        
        (
        SELECT ARIMA_COUNTY_CASE_PRED.Province_State AS province_state,
            ARIMA_COUNTY_CASE_PRED.county AS county,
            ARIMA_COUNTY_CASE_PRED."date" AS "date",
            CAST('ARIMA_COUNTY_CASE_PRED' AS VARCHAR(32)) AS "table name",
            ARIMA_COUNTY_CASE_PRED.total_conf AS tot_conf
            FROM TRNG_COVID19.ARIMA_COUNTY_CASE_PRED
        ) 
          
        ) t0;

REPLACE VIEW TRNG_COVID19.TOT_COUNTY_DEATHS_V AS
    SELECT t0.*
        FROM (
        (
        SELECT US_DEATH_COUNTY_SMAVG.Province_State AS province_state,
            US_DEATH_COUNTY_SMAVG.county AS county,
            US_DEATH_COUNTY_SMAVG."date" AS "date",
            CAST('US_DEATH_COUNTY_SMAVG' AS VARCHAR(32)) AS "table name",
            US_DEATH_COUNTY_SMAVG.tot_deaths_smavg AS tot_deaths
            FROM TRNG_COVID19.US_DEATH_COUNTY_SMAVG 
        )
            
        UNION  ALL 
          
        (
        SELECT ARIMA_COUNTY_DEATH_PRED.Province_State AS province_state,
            ARIMA_COUNTY_DEATH_PRED.county AS county,
            ARIMA_COUNTY_DEATH_PRED."date" AS "date",
            CAST('ARIMA_COUNTY_DEATH_PRED' AS VARCHAR(32)) AS "table name",
            ARIMA_COUNTY_DEATH_PRED.total_deaths AS tot_deaths
            FROM TRNG_COVID19.ARIMA_COUNTY_DEATH_PRED
        )
          
        ) t0;

REPLACE VIEW TRNG_COVID19.TOT_STATE_CASES_V AS
    SELECT t0.*
        FROM (
        (
        SELECT US_CONF_STATE_VAC_SMAVG.Province_State AS province_state,
            US_CONF_STATE_VAC_SMAVG."date" AS "date",
            CAST('US_CONF_STATE_VAC_SMAVG' AS VARCHAR(32)) AS "table name",
            US_CONF_STATE_VAC_SMAVG.total_conf_smavg AS tot_conf
            FROM TRNG_COVID19.US_CONF_STATE_VAC_SMAVG
        )
          
        UNION  ALL 
        (
        SELECT VARMAX_CASE_STATE.Province_State AS province_state,
            VARMAX_CASE_STATE."date" AS "date",
            CAST('VARMAX_CASE_STATE' AS VARCHAR(32)) AS "table name",
            VARMAX_CASE_STATE.total_conf AS tot_conf
            FROM TRNG_COVID19.VARMAX_CASE_STATE
        )
          
        ) t0;

REPLACE VIEW TRNG_COVID19.TOT_STATE_DEATHS_V AS
    SELECT t0.*
        FROM (
        (
        SELECT US_DEATH_STATE_VAC_SMAVG.Province_State AS province_state,
            US_DEATH_STATE_VAC_SMAVG."date" AS "date",
            CAST('US_DEATH_STATE_VAC_SMAVG' AS VARCHAR(32)) AS "table name",
            US_DEATH_STATE_VAC_SMAVG.total_deaths_smavg AS total_deaths
            FROM TRNG_COVID19.US_DEATH_STATE_VAC_SMAVG
        )
          
        UNION  ALL 
          
        (
        SELECT VARMAX_DEATH_STATE.Province_State AS province_state,
            VARMAX_DEATH_STATE."date" AS "date",
            CAST('VARMAX_DEATH_STATE' AS VARCHAR(32)) AS "table name",
            VARMAX_DEATH_STATE.total_deaths AS total_deaths
            FROM TRNG_COVID19.VARMAX_DEATH_STATE
        )
          
        ) t0;

REPLACE VIEW  TRNG_COVID19.US_CONF AS
 (
 SELECT CAST(METRIC_VALUE AS INT) AS TOT_CONF, 
     STATE_NAME AS PROVINCE_STATE, 
     COUNTY, 
     DATE_KEY AS "DATE"
  FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F 
     JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
     F.GEO_KEY = G.UID
	 WHERE METRIC_NAME = 'CASES TO-DATE'
	  AND DATE_KEY > '2020-10-01'
	  AND STATE_NAME NOT IN ('AMERICAN SAMOA','DIAMOND PRINCESS'
   ,'GRAND PRINCESS', 'GUAM' , 'NORTHERN MARIANA ISLANDS', 'PUERTO RICO', 
    'VIRGIN ISLANDS')
  );

REPLACE VIEW TRNG_COVID19.US_CONF_COUNTY AS
(
SEL TOT_CONF,PROVINCE_STATE,COUNTY, CAST("date" AS DATE)  AS "date" FROM TRNG_COVID19.US_CONF
WHERE (COUNTY,PROVINCE_STATE) IN (SEL COUNTY, PROVINCE_STATE FROM TRNG_COVID19.US_CONF_COUNTY_TOP)
AND COUNTY NOT IN (
'Washington' ,'Jefferson' ,'Madison' ,'Montgomery' ,'Jackson' ,'Cumberland' ,'Franklin' ,'Monroe' ,'Orange' ,'Wayne' ,'Boone' ,'Marion' ,'Clark' 
,'Douglas' ,'Lake' ,'Johnson' ,'Rockingham' ,'Suffolk' ,'Fayette' ,'DeKalb' ,'Lancaster' ,'Kent' ,'Clay' ,'Lee' ,'Greene' ,'Hamilton' ,'Wood' 
,'Delaware' ,'York' ,'Middlesex' ,'Erie' ,'Butler' ,'St. Clair' ,'Walker' ,'Williamson' ,'Warren' ,'Adams' ,'Nassau' ,'Scott' ,'Hancock'
 ,'Crawford' ,'Benton' ,'Sussex' ,'Cass' ,'Walton' ,'Bay' ,'Hillsborough' ,'Richmond' ,'Lauderdale' ,'Essex' ,'Norfolk' ,'Fairfield' ,'Grant' 
 ,'Shelby' ,'Davidson' ,'Wilson' ,'Dallas' ,'Santa Cruz' ,'Anderson' ,'Rutherford' ,'Lowndes' ,'Calhoun' ,'Livingston' ,'Richland' ,'Floyd' 
 ,'Union' ,'Houston' ,'Columbia' ,'Howard' ,'Allen' ,'Hall' ,'Kings' ,'Forsyth' ,'St. Louis' ,'Frederick' ,'Somerset' ,'Carroll' ,'Portage'
 ,'Sumter' ,'Blount' ,'Lincoln' ,'Christian' ,'Winnebago' ,'Morgan' ,'Berkeley' ,'Midland' ,'Mercer' ,'Cleveland' ,'Polk' ,'Putnam' ,'Bedford' ,'El Paso' )
);

REPLACE VIEW TRNG_COVID19.US_CONF_COUNTY_SMAVG AS
(
SELECT * FROM MOVINGAVERAGE (
  ON TRNG_COVID19.US_CONF_COUNTY PARTITION BY COUNTY ORDER BY "date"
  USING
  MAVGTYPE ('S')
  TARGETCOLUMNS ('TOT_CONF')
  WINDOWSIZE (7)
  INCLUDEFIRST ('TRUE')
) AS DT 
WHERE "date" > '2021-01-07'
);

REPLACE VIEW TRNG_COVID19.US_CONF_COUNTY_TOP AS
(
	SEL TOP 800 * FROM TRNG_COVID19.US_CONF
	WHERE "DATE" IN (SEL MAX("DATE") FROM TRNG_COVID19.US_CONF)
	ORDER BY TOT_CONF DESC
	);

REPLACE VIEW TRNG_COVID19.US_CONF_STATE AS 
  (
    SELECT PROVINCE_STATE, "DATE", SUM(TOT_CONF) AS TOTAL_CONF 
    FROM TRNG_COVID19.US_CONF
    GROUP BY 1,2
	);

REPLACE VIEW TRNG_COVID19.US_CONF_STATE_VAC AS 
    (
	SELECT A.* ,COALESCE(B.TOTAL_VACCINATIONS, C.TOTAL_VACCINATIONS, 0) AS TOTAL_VAC
	FROM TRNG_COVID19.US_CONF_STATE A 
	LEFT OUTER JOIN TRNG_COVID19.US_STATE_VAC B
	ON A.PROVINCE_STATE = B.LOCATION
	AND A."DATE" =  B."DATE"
	LEFT OUTER JOIN TRNG_COVID19.US_STATE_VAC_PREV C
	ON B.LOCATION = C.LOCATION	
	AND B."DATE" =  C.PREV_DT
	);

REPLACE VIEW TRNG_COVID19.US_CONF_STATE_VAC_SMAVG AS
(
SELECT * FROM MOVINGAVERAGE (
  ON TRNG_COVID19.US_CONF_STATE_VAC PARTITION BY PROVINCE_STATE ORDER BY "DATE"
  USING
  MAVGTYPE ('S')
  TARGETCOLUMNS ('TOTAL_CONF')
  WINDOWSIZE (7)
  INCLUDEFIRST ('TRUE')
) AS DT 
WHERE "DATE" > '2021-01-07'
);

REPLACE VIEW TRNG_COVID19.US_CONF_STATE_VAC_SMAVG_U AS
(
SELECT * FROM MOVINGAVERAGE (
  ON TRNG_COVID19.US_CONF_STATE_VAC_SMAVG PARTITION BY PROVINCE_STATE ORDER BY "DATE"
  USING
  MAVGTYPE ('S')
  TARGETCOLUMNS ('TOTAL_VAC')
  WINDOWSIZE (7)
  INCLUDEFIRST ('TRUE')
) AS DT 
WHERE "DATE" > '2020-10-07'
);

REPLACE VIEW  TRNG_COVID19.US_DEATH AS
 (
 SEL CAST(METRIC_VALUE AS INT) AS TOT_DEATHS ,STATE_NAME AS PROVINCE_STATE,
     COUNTY, DATE_KEY AS "DATE"
  FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F 
     JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
     F.GEO_KEY = G.UID
	 WHERE METRIC_NAME = 'DEATHS TO-DATE'
	  AND DATE_KEY > '2020-10-01'
	  AND STATE_NAME NOT IN ('AMERICAN SAMOA','DIAMOND PRINCESS'
   ,'GRAND PRINCESS', 'GUAM' , 'NORTHERN MARIANA ISLANDS', 'PUERTO RICO', 
    'VIRGIN ISLANDS')
  );

REPLACE VIEW TRNG_COVID19.US_DEATH_COUNTY AS
(
SEL TOT_DEATHS,PROVINCE_STATE,COUNTY, CAST("date" AS DATE)  AS "date" FROM TRNG_COVID19.US_DEATH
WHERE (COUNTY,PROVINCE_STATE) IN (SEL COUNTY,PROVINCE_STATE FROM TRNG_COVID19.US_DEATH_COUNTY_TOP)
AND COUNTY NOT IN (
'Washington' ,'Jefferson' ,'Madison' ,'Montgomery' ,'Jackson' ,'Cumberland' ,'Franklin' ,'Monroe' ,'Orange' ,'Wayne' ,'Boone' ,'Marion' ,'Clark' 
,'Douglas' ,'Lake' ,'Johnson' ,'Rockingham' ,'Suffolk' ,'Fayette' ,'DeKalb' ,'Lancaster' ,'Kent' ,'Clay' ,'Lee' ,'Greene' ,'Hamilton' ,'Wood' 
,'Delaware' ,'York' ,'Middlesex' ,'Erie' ,'Butler' ,'St. Clair' ,'Walker' ,'Williamson' ,'Warren' ,'Adams' ,'Nassau' ,'Scott' ,'Hancock'
 ,'Crawford' ,'Benton' ,'Sussex' ,'Cass' ,'Walton' ,'Bay' ,'Hillsborough' ,'Richmond' ,'Lauderdale' ,'Essex' ,'Norfolk' ,'Fairfield' ,'Grant' 
 ,'Shelby' ,'Davidson' ,'Wilson' ,'Dallas' ,'Santa Cruz' ,'Anderson' ,'Rutherford' ,'Lowndes' ,'Calhoun' ,'Livingston' ,'Richland' ,'Floyd' 
 ,'Union' ,'Houston' ,'Columbia' ,'Howard' ,'Allen' ,'Hall' ,'Kings' ,'Forsyth' ,'St. Louis' ,'Frederick' ,'Somerset' ,'Carroll' ,'Portage'
 ,'Sumter' ,'Blount' ,'Lincoln' ,'Christian' ,'Winnebago' ,'Morgan' ,'Berkeley' ,'Midland' ,'Mercer' ,'Cleveland' ,'Polk' ,'Putnam' ,'Bedford' ,'El Paso' )
);

REPLACE VIEW TRNG_COVID19.US_DEATH_COUNTY_SMAVG AS
(
SELECT * FROM MOVINGAVERAGE (
  ON TRNG_COVID19.US_DEATH_COUNTY PARTITION BY COUNTY ORDER BY "date"
  USING
  MAVGTYPE ('S')
  TARGETCOLUMNS ('TOT_DEATHS')
  WINDOWSIZE (7)
  INCLUDEFIRST ('TRUE')
) AS DT 
WHERE "date" > '2021-01-07'
);

REPLACE VIEW TRNG_COVID19.US_DEATH_COUNTY_TOP AS
(
	SEL TOP 800 * FROM TRNG_COVID19.US_DEATH
	WHERE "DATE" IN (SEL MAX("DATE") FROM TRNG_COVID19.US_DEATH)
	ORDER BY TOT_DEATHS DESC
	);

REPLACE VIEW TRNG_COVID19.US_DEATH_STATE AS 
  (
    SELECT PROVINCE_STATE, "DATE", SUM(TOT_DEATHS) AS TOTAL_DEATHS 
    FROM TRNG_COVID19.US_DEATH
	GROUP BY 1,2
	);

REPLACE VIEW TRNG_COVID19.US_DEATH_STATE_VAC AS 
    (
	SEL A.* , COALESCE(B.TOTAL_VACCINATIONS, 0) AS TOTAL_VAC
	FROM TRNG_COVID19.US_DEATH_STATE A 
	LEFT OUTER JOIN TRNG_COVID19.US_STATE_VAC B
	ON A.PROVINCE_STATE = B.LOCATION
	AND A."DATE" =  B."DATE"
	);

REPLACE VIEW TRNG_COVID19.US_DEATH_STATE_VAC_SMAVG AS
(
SELECT * FROM MOVINGAVERAGE (
  ON TRNG_COVID19.US_DEATH_STATE_VAC PARTITION BY PROVINCE_STATE ORDER BY "DATE"
  USING
  MAVGTYPE ('S')
  TARGETCOLUMNS ('TOTAL_DEATHS')
  WINDOWSIZE (7)
  INCLUDEFIRST ('TRUE')
) AS DT 
WHERE "DATE" > '2021-01-07'
);

REPLACE VIEW TRNG_COVID19.US_STATE_VAC_PREV AS
 ( 
 SELECT LOCATION, 
 CAST("DATE" AS DATE ) + INTERVAL '1' DAY  AS PREV_DT, 
 TOTAL_VACCINATIONS 
 FROM TRNG_COVID19.US_STATE_VAC
);

REPLACE VIEW  TRNG_COVID19.US_STATE_VAC_VW AS
(
SELECT "date",
location,
people_vaccinated as pv,
people_fully_vaccinated as pfv,
b.Population as pop,
pv/pop as per_people_vac,
pfv/pop as per_people_fully_vac
FROM TRNG_COVID19.US_STATE_VAC a
INNER JOIN TRNG_COVID19.STATE_POP b
ON location = State
WHERE "date" in (sel max("date") FROM TRNG_COVID19.US_STATE_VAC)
);

REPLACE VIEW TRNG_COVID19.VARMAX_CASE_STATE AS
(
SELECT (SEL MAX("DATE") FROM TRNG_COVID19.US_CONF_STATE_VAC_SMAVG) + CAST(STEPAHEAD AS INT) AS "DATE", PREDICT_TOTAL_CONF_SMAVG AS TOTAL_CONF, PROVINCE_STATE
FROM TRNG_COVID19.VARMAX_CASE_VAC
WHERE COEF IS NULL
AND TOTAL_CONF > 0
);

REPLACE VIEW TRNG_COVID19.VARMAX_DEATH_STATE AS
(
SELECT (SEL MAX("DATE") FROM TRNG_COVID19.US_DEATH_STATE_VAC_SMAVG) + CAST(STEPAHEAD AS INT) AS "DATE", PREDICT_TOTAL_DEATHS_SMAVG AS TOTAL_DEATHS, PROVINCE_STATE 
FROM TRNG_COVID19.VARMAX_DEATH_VAC
WHERE COEF IS NULL
AND TOTAL_DEATHS > 0
);

REPLACE VIEW TRNG_COVID19.XREF_SOURCE_DATA_UPDATES_V  AS
LOCKING ROW FOR ACCESS

SELECT COALESCE(t1.Category,'NON') AS Category,COALESCE(StagingTable,'NON') AS StagingTable,COALESCE(t1.DataSource,'NO STAGING SOURCE DEFINED') AS DataSource,COALESCE(t2.Metric_Name,'NOT USED IN THE REPORTS') AS MetricName,COALESCE(CoreTable,'NOT USED IN THE REPORTS') as CoreTable, COALESCE(t2.MaxAvailableDate,t1.MaxAvailableDate) as MaxAvailableDate
FROM (
	SELECT 'BEA - Personal Consumption 2-3-5' as Category,'STG_BEA_PersonalConsumption_2_3_5' as StagingTable,'Manual                                                                               ' as DataSource, MAX(CAST("PERIOD_MMM-YYYY" AS DATE FORMAT 'MMM-YYYY')) as MaxAvailableDate from TRNG_COVID19.STG_BEA_PersonalConsumption_2_3_5
	UNION
	SELECT 'BEA - Personal Consumption 2-4-5','STG_BEA_PersonalConsumption_2_4_5' as StagingTable,'Manual', MAX(CAST("PERIOD_MMM-YYYY" AS DATE FORMAT 'MMM-YYYY')) from TRNG_COVID19.STG_BEA_PersonalConsumption_2_4_5
	UNION
	SELECT 'COVID19 National Estimates','STG_COVID19_NATIONAL_ESTIMATES' as StagingTable,'Manual', MAX(CollectionDate) from TRNG_COVID19.STG_COVID19_NATIONAL_ESTIMATES
	UNION
	SELECT 'COVID19 Statistics','STG_covid19_stats' as StagingTable,'https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv', MAX(CAST(Date_Key AS DATE FORMAT 'YYYY-MM-DD')) FROM TRNG_COVID19.STG_covid19_stats
	UNION
	SELECT 'COVID19 Projections','STG_Hospitalization_all_locs' as StagingTable,'https://ihmecovid19storage.blob.core.windows.net/latest/ihme-covid19.zip', MAX(CAST("Date" AS DATE FORMAT 'YYYY-MM-DD')) FROM TRNG_COVID19.STG_Hospitalization_all_locs
	UNION
	SELECT 'Google Trends','STG_Google_Search_IOT' as StagingTable,'Python Pytrends API', MAX(CAST("Date" AS DATE FORMAT 'YYYY-MM-DD')) FROM TRNG_COVID19.STG_Google_Search_IOT
	UNION
	SELECT 'Google Mobility','STG_Google_Mobility' as StagingTable,'https://www.gstatic.com/covid19/mobility/Global_Mobility_Report.csv', MAX(CAST(date_key AS DATE FORMAT 'YYYY-MM-DD')) FROM TRNG_COVID19.STG_Google_Mobility
	UNION
	SELECT 'COVID19 Datahhub','STG_COVID19_Datahub_LVL3' as StagingTable,'Python Covid19 Datahub', MAX(CAST(date_key AS DATE FORMAT 'YYYY-MM-DD')) FROM TRNG_COVID19.STG_COVID19_Datahub_LVL3
	UNION
	SELECT 'Labor Statistics','STG_Labor_Stats_LNS13000000' as StagingTable,'https://api.bls.gov/publicAPI/v2/timeseries/data', MAX(CAST(year_key||'-'||oreplace(period_key,'M',null) AS DATE FORMAT 'YYYY-MM')) FROM TRNG_COVID19.STG_Labor_Stats_LNS13000000
	UNION
	SELECT 'Fuel Production','STG_Fuel_Production' as StagingTable,'https://www.eia.gov/dnav/pet/xls/PET_CONS_WPSUP_K_4.xls', MAX(date_key) FROM TRNG_COVID19.STG_Fuel_Production
	UNION
	SELECT 'TSA Travel','STG_TSA_TRAVEL' as StagingTable,'https://www.tsa.gov/coronavirus/passenger-throughput', MAX(cast(TO_DATE((lpad(STRTOK(cast(cast(travel_date as date format 'MM/DD/YYYY') as VARCHAR(1024)),'/',1),2,'0')||'/'||lpad(STRTOK(cast(cast(travel_date as date format 'MM/DD/YYYY') as VARCHAR(1024)),'/',1),2,'0')||'/'||STRTOK(cast(cast(travel_date as date format 'MM/DD/YYYY') as VARCHAR(1024)),'/',3)),'MM/DD/YYYY') as date)) 
        FROM TRNG_COVID19.STG_TSA_TRAVEL WHERE Travel_Date is not null
	UNION
	SELECT 'Census Data','STG_US_CENSUS_SURVEY' as StagingTable,'https://www.census.gov/econ/currentdata/export/csv', MAX(CAST("PERIOD" AS DATE FORMAT 'MMM-YYYY')) FROM TRNG_COVID19.STG_US_CENSUS_SURVEY
	UNION
	SELECT 'Consumer Sentiment Index','STG_Consumer_Sentiment_Index' as StagingTable,'http://www.sca.isr.umich.edu/files/tbcics.csv', MAX(CAST(SUBSTR("Month",1,3)||'-'||"Year" AS DATE FORMAT 'MMM-YYYY')) FROM TRNG_COVID19.STG_Consumer_Sentiment_Index
	UNION
	SELECT 'Consumer Price Index','STG_Labor_Stats_CUSR0000SA0' as StagingTable,'https://api.bls.gov/publicAPI/v2/timeseries/data', MAX(CAST(year_key||'-'||oreplace(period_key,'M',null) AS DATE FORMAT 'YYYY-MM')) FROM TRNG_COVID19.STG_Labor_Stats_CUSR0000SA0
	UNION
	SELECT 'Hospitalization','STG_Estimated_Inpatient_All' as StagingTable,'https://healthdata.gov/node/3281096/download', MAX(CAST(Collection_Date AS DATE FORMAT 'YYYY-MM-DD')) FROM TRNG_COVID19.STG_Estimated_Inpatient_All
	UNION
	SELECT 'Hospitalization','STG_Estimated_Inpatient_Covid' as StagingTable,'https://healthdata.gov/node/3281101/download', MAX(CAST(Collection_Date AS DATE FORMAT 'YYYY-MM-DD')) FROM TRNG_COVID19.STG_Estimated_Inpatient_Covid
	UNION
	SELECT 'Hospitalization','STG_Estimated_Icu' as StagingTable,'https://healthdata.gov/node/3281106/download', MAX(CAST(Collection_Date AS DATE FORMAT 'YYYY-MM-DD')) FROM TRNG_COVID19.STG_Estimated_Icu) t1
	--
FULL OUTER JOIN (SELECT CASE WHEN Metric_Name IN ('Household - Clothing & Footwear','Household - Food Services & Accommodation','Personal Consumption Expenditure (Product Details)') THEN 'BEA - Personal Consumption 2-4-5'
						WHEN Metric_Name IN ('US Product Supplied 4WKAVG') THEN 'Fuel Production'
						WHEN Metric_Name IN ('Unemployment Level','Unemployment Rate') THEN 'Labor Statistics'
						WHEN Metric_Name IN ('CPI') THEN 'Consumer Price Index'
						WHEN Metric_Name IN ('%Mobility_Change_Baseline for Grocery & pharmacy',
											'%Mobility_Change_Baseline for Parks',
											'%Mobility_Change_Baseline for Residential',
											'%Mobility_Change_Baseline for Retail & recreation',
											'%Mobility_Change_Baseline for Transit Stations',
											'%Mobility_Change_Baseline for Workplace') THEN 'Google Mobility'
						WHEN Metric_Name IN ('Consumer Sentiment Index') THEN 'Consumer Sentiment Index'
						WHEN Metric_Name IN ('Traffic Volume') THEN 'TSA Travel'
						WHEN Metric_Name IN ('New Daily Cases','New Daily Deaths','Deaths to-date','Cases to-date') THEN 'COVID19 Statistics'
						WHEN Metric_Name IN ('Total units') THEN 'Census Data'
					END AS Category,
					Metric_Name,'FACT_INDICATOR_DASHBOARD_T2_P' AS CoreTable, MAX(Date_Key) as MaxAvailableDate
			FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P
			GROUP BY 1,2
			UNION
			SELECT 'Google Trends',TREND_Name,'F_IND_DASH_GOOGLE_TRENDS', MAX(Date_Key) as MaxAvailableDate
			FROM TRNG_COVID19.F_IND_DASH_GOOGLE_TRENDS
			GROUP BY 1,2
			UNION
			SELECT 'COVID19 Datahhub','COVID19 Metrics','FACT_COVID19_DATAHUB', MAX(Date_Key) as MaxAvailableDate
			FROM TRNG_COVID19.FACT_COVID19_DATAHUB
			UNION
			SELECT 'COVID19 Projections','COVID19 Projection Metrics','FACT_Covid_Model_Data', MAX(Date_Key) as MaxAvailableDate
			FROM TRNG_COVID19.FACT_Covid_Model_Data
			UNION
			SELECT 'Hospitalization','Hospital Inpatient ICU Metrics','F_IND_DASH_EST_HOSP_ICU', MAX(COLLECTION_DATE_KEY) as MaxAvailableDate
			FROM TRNG_COVID19.F_IND_DASH_EST_HOSP_ICU
			UNION
			SELECT 'Hospitalization','Hospital Inpatient Metrics','F_IND_DASH_EST_HOSP_INPATIENT', MAX(COLLECTION_DATE_KEY) as MaxAvailableDate
			FROM TRNG_COVID19.F_IND_DASH_EST_HOSP_INPATIENT
			UNION
			SELECT 'Hospitalization','Hospital Covid Inpatient Metrics','F_IND_DASH_EST_HOSP_COVID_INPATIENT', MAX(COLLECTION_DATE_KEY) as MaxAvailableDate
			FROM TRNG_COVID19.F_IND_DASH_EST_HOSP_COVID_INPATIENT
			) t2
			--
ON t2.Category = t1.Category;

REPLACE VIEW TRNG_COVID19.z_F_IND_DASH_NYT_COVID_VIZ_V AS
    LOCKING ROW FOR ACCESS
                 --select * from TRNG_COVID19.F_IND_DASH_NYT_COVID_VIZ_V
    WITH cdt AS (
    SELECT MAX(date_key) max_dt
        FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
        WHERE F.domain_name = 'Covid19 NYT'  ) --(select max_dt from t1) 
    , tbl AS  (
    SELECT 
        SNAPSHOT_DATE,
        SNAPSHOT_WEEK,
        CURR_PREV_FLAG,
        DATE_KEY,
        COUNTY,
        STATE_CODE,
        STATE_NAME,
        COUNTRY_NAME,
        Metric_name,
        METRIC_value -- select *
        
        FROM 
        (
        SELECT
            DT.SNAPSHOT_DATE,
            DT.SNAPSHOT_WEEK,
            
            CASE
                WHEN F.DATE_KEY BETWEEN DT.WEEK_START_DATE AND DT.WEEK_END_DATE
            THEN DT.CURR_PREV_FLAG
            END AS CURR_PREV_FLAG,
                F.DATE_KEY,
                ' ' COUNTY,
                ' 'STATE_NAME,
                ' 'STATE_CODE,
                0 POPULATION,
                G.COUNTRY_NAME,
                F.metric_name,
                SUM(F.METRIC_value)  METRIC_value --select *
            
            FROM (
            SELECT f.*
                FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V f,
                    (
                SELECT MAX(date_key)   cc1
                    FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V
                    WHERE domain_name = 'Covid19 NYT') t1
                WHERE domain_name = 'Covid19 NYT'
                    AND  date_key > t1.cc1 - 14) F 
            JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
            F.GEO_KEY = G.UID
            JOIN (
            SELECT 
                MAX(WEEK_END_DATE) OVER () AS SNAPSHOT_DATE,
                MAX(CAL_WEEK_YEAR) OVER () AS SNAPSHOT_WEEK,
                MIN(WEEK_START_DATE) OVER () AS FIL_START_DATE_KEY,
                MAX(WEEK_END_DATE) OVER () FIL_END_DATE_KEY,
                
                CASE
                    WHEN RNK =1 THEN 'CURR'
                    WHEN RNK =2 THEN 'PREV'
                ELSE 'PREV-1'
                END CURR_PREV_FLAG,
                    RANK() OVER (
                ORDER BY WEEK_END_DATE DESC) RNK,
                    DT.*
                FROM TRNG_COVID19.DIM_CALENDAR_V DT
                WHERE CAL_DATE_KEY IN ((
                SELECT max_dt
                    FROM cdt) - 7, (
                SELECT max_dt
                    FROM cdt) -14, (
                SELECT max_dt
                    FROM cdt)-21)
            ) DT ON
            F.DATE_KEY BETWEEN DT.FIL_START_DATE_KEY AND DT.FIL_END_DATE_KEY
            GROUP BY 1,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
                9,
                10
        ) T
        WHERE CURR_PREV_FLAG IN ('CURR','PREV')
        QUALIFY RANK() OVER (PARTITION BY CURR_PREV_FLAG
        ORDER BY DATE_KEY DESC) = 1 ) --select * from tbl
    
    SELECT curr.SNAPSHOT_DATE,
        curr.SNAPSHOT_WEEK,
        curr.CURR_PREV_FLAG,
        curr.DATE_KEY curr_DATE_KEY,
        prev.DATE_KEY prev_DATE_KEY,
        curr.COUNTY,
        curr.STATE_CODE,
        curr.STATE_NAME,
        curr.COUNTRY_NAME,
        prev.Metric_name prev_Metric_name,
        prev.METRIC_value prev_METRIC_value,
        curr.Metric_name curr_Metric_name,
        curr.METRIC_value curr_METRIC_value
        FROM tbl curr  
        JOIN tbl prev ON curr.snapshot_date = prev.snapshot_date AND curr.snapshot_week = prev.snapshot_week 
        AND curr.metric_name = prev.metric_name
        AND curr.date_key <>   prev.date_key
        WHERE curr.curr_prev_flag = 'CURR'
            AND  prev.curr_prev_flag =  'PREV';

REPLACE PROCEDURE TRNG_COVID19.ETL_BEA_CORE (OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_BEA_CORE                                              		
Developed By      : Teradata Team                                                                            			  
Created           : July 2, 2020 			                                                                           		     
Description       : This Procecdure is used to Upcert FACT_INDICATOR_DASHBOARD_T2_p Table									 
Procedure syntax  : CALL ETL_BEA_CORE (v_MsgTxt,v_RowCnt,v_ResultSet) ;      

1 - Represnts Failure
Null - Represnts Success   
                                                                                                                                  
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
07/02/2020      1.0         Teradata DW              	Initial
07/14/2020		2.0			Teradata DW					Multiplied metric by million to get true count
*/
/*****************************************************************************************************/
SQL SECURITY INVOKER
BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'FACT_INDICATOR_DASHBOARD_T2_P';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_BEA_CORE';
DECLARE v_Message VARCHAR(200);

/* Exception Handling when when SQL Exception occurs */
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS EXCEPTION 1
	v_Message = MESSAGE_TEXT;
	INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs (Sql_Code,Logged_Time,Sql_State,Error_Text,Procedure_Name)
	VALUES(:SQLCODE,CURRENT_TIMESTAMP(0),:SQLSTATE,v_Message,v_ProcName);
	--
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;


/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/

--Bureau of Economic Analysis - NIPA Monthly Report T2.4.5U
MERGE INTO TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P as target
USING  
  ( select          x.PROCESS_TYPE,     
    CASE
             WHEN x.PROCESS_TYPE = 'I'
         THEN y.MAX_ID + ROW_NUMBER() OVER(
         ORDER BY x.METRIC_NAME,
           x.DATE_KEY ,
           x.GEO_GRANULARITY ,
           x.DATE_KEY ,
           x.DOMAIN_NAME ,
           x.SUBDOMAIN_1_NAME,
           x.SUBDOMAIN_2_NAME,
           x.SUBDOMAIN_3_NAME 
             )

         ELSE x.INDICATOR_KEY
         END AS INDICATOR_KEY,  	
   	x.Date_key,
    x.DATE_GRANULARITY,
    x.GEO_KEY, 
    x.GEO_GRANULARITY,
    x.DOMAIN_NAME,
    x.SUBDOMAIN_1_NAME,
    x.SUBDOMAIN_2_NAME,
    x.SUBDOMAIN_3_NAME,
    x.METRIC_NAME,
    x.METRIC_VALUE,
    x.METRIC_INDEX,
    x.DATA_SOURCE_NAME,
    x.DATA_SOURCE_DESC,
    x.REC_INS_TS,
    x.REC_UPD_TS
   
from  
  
  (
  
 select b.indicator_key, 
    a.DATE_KEY,
    a.DATE_GRANULARITY,
    a.GEO_KEY,
    a.GEO_GRANULARITY,
    a.DOMAIN_NAME,
    a.SUBDOMAIN_1_NAME,
    a.SUBDOMAIN_2_NAME,
    a.SUBDOMAIN_3_NAME,
    a.METRIC_NAME,
    a.METRIC_VALUE,
    a.METRIC_INDEX,
    a.DATA_SOURCE_NAME,
    a.DATA_SOURCE_DESC, 
    coalesce(b.REC_INS_TS,CURRENT_TIMESTAMP(0)) REC_INS_TS ,
    CURRENT_TIMESTAMP(0) REC_UPD_TS,
    CASE
          WHEN b.INDICATOR_KEY IS NULL
                 THEN 'I'
          WHEN b.INDICATOR_KEY is not null  
          and (a.METRIC_VALUE <> b.METRIC_VALUE or
                a. METRIC_INDEX <> b.METRIC_INDEX) -- put weird logic here
                 THEN 'U'
          ELSE NULL
                     END AS PROCESS_TYPE
    from (
SELECT 
 cast(    
 STRTOK("period_mmm-yyyy",'-',2)||'-'||
 case  STRTOK("period_mmm-yyyy",'-',1)  
   when 'jan' then '01'
   when 'feb' then '02'
   when 'mar' then '03'
   when 'apr' then '04'
   when 'may' then '05'
   when 'jun' then '06'
   when 'jul' then '07'
   when 'aug' then '08'
   when 'sep' then '09'
   when 'oct' then '10'
   when 'nov' then '11'
   when 'dec' then '12'
 end  ||'-01'  as date )  DATE_KEY,
    'Monthly' DATE_GRANULARITY,
    840 GEO_KEY,
    'Country' GEO_GRANULARITY,
   trim( tmp.DOMAIN_NAME )  DOMAIN_NAME,
   trim( tmp.SUBDOMAIN_1_NAME) SUBDOMAIN_1_NAME,
   trim( tmp.SUBDOMAIN_2_NAME) SUBDOMAIN_2_NAME,
   trim( tmp.SUBDOMAIN_3_NAME) SUBDOMAIN_3_NAME,
   trim( tmp.SUBDOMAIN_4_NAME) SUBDOMAIN_4_NAME,
    oreplace(tmp.METRIC_NAME,' M$') METRIC_NAME,
    cast(tmp.METRIC_VALUE as decimal(32,6))  *  cast(1000000 as decimal(32,0))  as   METRIC_VALUE , -- convert to real number
    tmp.METRIC_index,
    tmp.DATA_SOURCE_NAME,
    tmp.DATA_SOURCE_DESC 
 
   FROM  TRNG_COVID19.STG_BEA_PersonalConsumption_2_4_5  tmp
   where SUBDOMAIN_4_NAME IN ('Total','Purchased meals and beverages (102)') ) a
           -- FROM TRNG_COVID19.STG_BureauEconomicAnalysis             

        LEFT OUTER JOIN TRNG_COVID19.FACT_INDICATOR_DASHBOARD_v b
           ON  a.METRIC_NAME = b.METRIC_NAME
           and a.DATE_KEY = b.DATE_KEY
           and a.GEO_GRANULARITY = b.GEO_GRANULARITY
           and a.GEO_key = b.GEO_key
           and a.DOMAIN_NAME = b.DOMAIN_NAME
           and a.SUBDOMAIN_1_NAME = b.SUBDOMAIN_1_NAME
           and a.SUBDOMAIN_2_NAME = b.SUBDOMAIN_2_NAME
           and a.SUBDOMAIN_3_NAME = b.SUBDOMAIN_3_NAME 
       
                ) AS x

        
          CROSS JOIN
                (SELECT
                                ZEROIFNULL(MAX(INDICATOR_KEY)) AS MAX_ID
                 FROM
                                TRNG_COVID19.FACT_INDICATOR_DASHBOARD_v
                ) AS y  
           WHERE x.PROCESS_TYPE IS NOT NULL 
            
)  as source
  

-- join on primary key is obligatory

ON  source.INDICATOR_KEY = target.INDICATOR_KEY
 and source.date_key = target.date_key
--WHEN MATCHED THEN UPDATE
--SET product_status  = source.product_status
WHEN NOT MATCHED THEN 
insert  
(   	
     INDICATOR_KEY,  	
   	Date_key,
    DATE_GRANULARITY,
    GEO_KEY, 
    GEO_GRANULARITY,
    DOMAIN_NAME,
    SUBDOMAIN_1_NAME,
    SUBDOMAIN_2_NAME,
    SUBDOMAIN_3_NAME,
    METRIC_NAME,
    METRIC_VALUE,
    METRIC_INDEX,
    DATA_SOURCE_NAME,
     DATA_SOURCE_DESC,
     REC_INS_TS,
     REC_UPD_TS  ) 
values ( 
		
     source.INDICATOR_KEY,  	
   	source.Date_key,
    source.DATE_GRANULARITY,
    source.GEO_KEY, 
    source.GEO_GRANULARITY,
    source.DOMAIN_NAME,
    source.SUBDOMAIN_1_NAME,
    source.SUBDOMAIN_2_NAME,
    source.SUBDOMAIN_3_NAME,
    source.METRIC_NAME,
    source.METRIC_VALUE,
    source.METRIC_INDEX,
    source.DATA_SOURCE_NAME,
    source.DATA_SOURCE_DESC,
    source.REC_INS_TS,
    source.REC_UPD_TS   )
     when matched then
 update 
 set  METRIC_VALUE = source.METRIC_VALUE
 , METRIC_INDEX = source.METRIC_INDEX
 , REC_UPD_TS = source.REC_UPD_TS ; 
	
	
 
/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;


/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));
	
END;

REPLACE PROCEDURE TRNG_COVID19.ETL_CENSUS_DATA_CORE (OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_CENSUS_DATA_CORE                                              		
Developed By      : Teradata Team                                                                            			  
Created           : July 19, 2020 			                                                                           		     
Description       : This Procecdure is used to Upcert FACT_INDICATOR_DASHBOARD_T2_P Table									 
Procedure syntax  : CALL ETL_CENSUS_DATA_CORE (v_MsgTxt,v_RowCnt,v_ResultSet) ;      

1 - Represnts Failure
Null - Represnts Success
                                                                                                                                  
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
07/19/2020      1.0         Teradata DW              	Initial
*/
/*****************************************************************************************************/
SQL SECURITY INVOKER
BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'FACT_INDICATOR_DASHBOARD_T2_P';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_CENSUS_DATA_CORE';
DECLARE v_Message VARCHAR(200);

/* Exception Handling when when SQL Exception occurs */
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS EXCEPTION 1
	v_Message = MESSAGE_TEXT;
	INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs (Sql_Code,Logged_Time,Sql_State,Error_Text,Procedure_Name)
	VALUES(:SQLCODE,CURRENT_TIMESTAMP(0),:SQLSTATE,v_Message,v_ProcName);
	--
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;

/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/

MERGE INTO TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_p as target
USING  
  ( select          x.PROCESS_TYPE,     
    CASE
             WHEN x.PROCESS_TYPE = 'I'
         THEN y.MAX_ID + ROW_NUMBER() OVER(
         ORDER BY x.METRIC_NAME,
           x.DATE_KEY ,
           x.GEO_GRANULARITY ,
           x.DATE_KEY ,
           x.DOMAIN_NAME ,
           x.SUBDOMAIN_1_NAME,
           x.SUBDOMAIN_2_NAME,
           x.SUBDOMAIN_3_NAME 
             )

         ELSE x.INDICATOR_KEY
         END AS INDICATOR_KEY,  	
   	x.Date_key,
    x.DATE_GRANULARITY,
    x.GEO_KEY, 
    x.GEO_GRANULARITY,
    x.DOMAIN_NAME,
    x.SUBDOMAIN_1_NAME,
    x.SUBDOMAIN_2_NAME,
    x.SUBDOMAIN_3_NAME,
    x.METRIC_NAME,
    x.METRIC_VALUE,
    x.METRIC_INDEX,
    x.DATA_SOURCE_NAME,
    x.DATA_SOURCE_DESC,
    x.REC_INS_TS,
    x.REC_UPD_TS
   --select *  
from ( 
SELECT 
	PROCESS_TYPE,
-- a. contains the source data
-- b. contains the target data that matches the nkey of the source data
	a.INDICATOR_KEY,  	
   	a.Date_key,
    a.DATE_GRANULARITY,
    a.GEO_KEY, 
    a.GEO_GRANULARITY,
    a.DOMAIN_NAME,
    a.SUBDOMAIN_1_NAME,
    a.SUBDOMAIN_2_NAME,
    a.SUBDOMAIN_3_NAME,
    a.METRIC_NAME,
    a.METRIC_VALUE,
    a.METRIC_INDEX,
    a.DATA_SOURCE_NAME,
    a.DATA_SOURCE_DESC,
    a.REC_INS_TS,
    a.REC_upd_TS
     
-- if b. is null that means there was no match so set the process type to insert
-- if b. is not null then compare source to target data of updatable columns to determin if there should be an update       
     
      
      FROM
  
  (
  select b.INDICATOR_KEY,
     	aa.Date_key,
    aa.DATE_GRANULARITY,
    aa.GEO_KEY, 
    aa.GEO_GRANULARITY,
    aa.DOMAIN_NAME,
    aa.SUBDOMAIN_1_NAME,
    aa.SUBDOMAIN_2_NAME,
    aa.SUBDOMAIN_3_NAME,
    aa.METRIC_NAME,
    aa.METRIC_VALUE,
    aa.METRIC_INDEX,
    aa.DATA_SOURCE_NAME,
    aa.DATA_SOURCE_DESC,
    aa.REC_INS_TS,
    aa.REC_UPD_TS,
     CASE
          WHEN b.INDICATOR_KEY IS NULL
                 THEN 'I'
          WHEN b.INDICATOR_KEY is not null  
          and (aa.METRIC_VALUE <> b.METRIC_VALUE or
               aa. METRIC_INDEX <> b.METRIC_INDEX) -- put weird logic here
                 THEN 'U'
          ELSE NULL
                     END AS PROCESS_TYPE
        from  ( 
      
  SELECT   'Monthly' date_granularity,
           840 GEO_KEY, 
    'Country' GEO_GRANULARITY,
 cast(    
 STRTOK(period,'-',2)||'-'||
 case  STRTOK(period,'-',1)  
   when 'jan' then '01'
   when 'feb' then '02'
   when 'mar' then '03'
   when 'apr' then '04'
   when 'may' then '05'
   when 'jun' then '06'
   when 'jul' then '07'
   when 'aug' then '08'
   when 'sep' then '09'
   when 'oct' then '10'
   when 'nov' then '11'
   when 'dec' then '12'
 end  ||'-01'  as date )  DATE_KEY ,       
    case when "value" = 'NA' then null else cast("value" as integer) * 1000 end  METRIC_VALUE ,
    0   METRIC_index,
    'US Census' DATA_SOURCE_NAME, 
    DATA_SOURCE_DESC,
    'New Residential Construction' DOMAIN_NAME,
    'Annual Rate for Housing Units Authorized' SUBDOMAIN_1_NAME,
    'Total' SUBDOMAIN_2_NAME,
    'Total' SUBDOMAIN_3_NAME,   
    'Total units' METRIC_NAME,
    CURRENT_TIMESTAMP(0) REC_INS_TS,
    CURRENT_TIMESTAMP(0) REC_UPD_TS --select * 

    FROM  TRNG_COVID19.STG_US_CENSUS_SURVEY 
    where  METRIC_VALUE is not null        
    ) aa     
        LEFT OUTER JOIN TRNG_COVID19.FACT_INDICATOR_DASHBOARD_v b
           ON  aa.METRIC_NAME = b.METRIC_NAME
           and aa.DATE_KEY = b.DATE_KEY
           and aa.GEO_GRANULARITY = b.GEO_GRANULARITY
           and aa.DATE_KEY = b.DATE_KEY
           and aa.DOMAIN_NAME = b.DOMAIN_NAME
           and aa.SUBDOMAIN_1_NAME = b.SUBDOMAIN_1_NAME
           and aa.SUBDOMAIN_2_NAME = b.SUBDOMAIN_2_NAME
           and aa.SUBDOMAIN_3_NAME = b.SUBDOMAIN_3_NAME
           )  a
                ) AS x

        
          CROSS JOIN
                (SELECT
                                ZEROIFNULL(MAX(INDICATOR_KEY)) AS MAX_ID
                            
                 FROM
                                TRNG_COVID19.FACT_INDICATOR_DASHBOARD_v  
                ) AS y  
           WHERE x.PROCESS_TYPE IS NOT NULL 
            
)  as source
  

-- join on primary key is obligatory

ON  source.INDICATOR_KEY = target.INDICATOR_KEY
and source.date_key = target.date_key
 
--WHEN MATCHED THEN UPDATE
--SET product_status  = source.product_status
WHEN NOT MATCHED THEN 
INSERT  
(   	
    INDICATOR_KEY,  	
    Date_key,
    DATE_GRANULARITY,
    GEO_KEY, 
    GEO_GRANULARITY,
    DOMAIN_NAME,
    SUBDOMAIN_1_NAME,
    SUBDOMAIN_2_NAME,
    SUBDOMAIN_3_NAME,
    METRIC_NAME,
    METRIC_VALUE,
    METRIC_INDEX,
    DATA_SOURCE_NAME,
    DATA_SOURCE_DESC,
    REC_INS_TS,
    REC_UPD_TS  
) 
values 
( 		
    source.INDICATOR_KEY,  	
    source.Date_key,
    source.DATE_GRANULARITY,
    source.GEO_KEY, 
    source.GEO_GRANULARITY,
    source.DOMAIN_NAME,
    source.SUBDOMAIN_1_NAME,
    source.SUBDOMAIN_2_NAME,
    source.SUBDOMAIN_3_NAME,
    source.METRIC_NAME,
    source.METRIC_VALUE,
    source.METRIC_INDEX,
    source.DATA_SOURCE_NAME,
    source.DATA_SOURCE_DESC,
    source.REC_INS_TS,
    source.REC_UPD_TS   )
     when matched then
 update 
 set  METRIC_VALUE = source.METRIC_VALUE
 , METRIC_INDEX = source.METRIC_INDEX
 , REC_UPD_TS = source.REC_UPD_TS;
 
 
/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;


/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));
	
END;

REPLACE PROCEDURE TRNG_COVID19.ETL_CONSUMER_SENTIMENT_CORE (OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_CONSUMER_SENTIMENT_CORE                                              		
Developed By      : Teradata Team                                                                            			  
Created           : July 15, 2020 			                                                                           		     
Description       : This Procecdure is used to Upcert FACT_INDICATOR_DASHBOARD_T2_p Table									 
Procedure syntax  : CALL ETL_CONSUMER_SENTIMENT_CORE (v_MsgTxt,v_RowCnt,v_ResultSet) ;      

1 - Represnts Failure
Null - Represnts Success   
                                                                                                                                  
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
07/15/2020      1.0         Teradata DW              	Initial                                         					
*/
/*****************************************************************************************************/
SQL SECURITY INVOKER
BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'FACT_INDICATOR_DASHBOARD_T2_P';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_CONSUMER_SENTIMENT_CORE';
DECLARE v_Message VARCHAR(200);

/* Exception Handling when when SQL Exception occurs */
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS EXCEPTION 1
	v_Message = MESSAGE_TEXT;
	INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs (Sql_Code,Logged_Time,Sql_State,Error_Text,Procedure_Name)
	VALUES(:SQLCODE,CURRENT_TIMESTAMP(0),:SQLSTATE,v_Message,v_ProcName);
	--
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;

/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/

MERGE INTO TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P as target
USING  
  ( select x.PROCESS_TYPE,     
    CASE WHEN x.PROCESS_TYPE = 'I' THEN y.MAX_ID + ROW_NUMBER() OVER(ORDER BY	x.METRIC_NAME,
																	       		x.DATE_KEY ,
																		     	x.GEO_GRANULARITY ,
																		        x.DATE_KEY ,
																		        x.DOMAIN_NAME ,
																		        x.SUBDOMAIN_1_NAME,
																		        x.SUBDOMAIN_2_NAME,
																		        x.SUBDOMAIN_3_NAME)
																				ELSE x.INDICATOR_KEY
																				END AS INDICATOR_KEY,  	
   	x.Date_key,
    x.DATE_GRANULARITY,
    x.GEO_KEY, 
    x.GEO_GRANULARITY,
    x.DOMAIN_NAME,
    x.SUBDOMAIN_1_NAME,
    x.SUBDOMAIN_2_NAME,
    x.SUBDOMAIN_3_NAME,
    x.METRIC_NAME,
    x.METRIC_VALUE,
    x.METRIC_INDEX,
    x.DATA_SOURCE_NAME,
    x.DATA_SOURCE_DESC,
    x.REC_INS_TS,
    x.REC_UPD_TS
	from ( SELECT PROCESS_TYPE,
				-- a. contains the source data
				-- b. contains the target data that matches the nkey of the source data
			    a.INDICATOR_KEY,  	
			    a.Date_key,
			    a.DATE_GRANULARITY,
			    a.GEO_KEY, 
			    a.GEO_GRANULARITY,
			    a.DOMAIN_NAME,
			    a.SUBDOMAIN_1_NAME,
			    a.SUBDOMAIN_2_NAME,
			    a.SUBDOMAIN_3_NAME,
			    a.METRIC_NAME,
			    a.METRIC_VALUE,
			    a.METRIC_INDEX,
			    a.DATA_SOURCE_NAME,
			    a.DATA_SOURCE_DESC,
			    a.REC_INS_TS,
			    a.REC_upd_TS
				-- if b. is null that means there was no match so set the process type to insert
				-- if b. is not null then compare source to target data of updatable columns to determin if there should be an update       
			FROM ( select 	b.INDICATOR_KEY,
						    aa.Date_key,
						    aa.DATE_GRANULARITY,
						    aa.GEO_KEY, 
						    aa.GEO_GRANULARITY,
						    aa.DOMAIN_NAME,
						    aa.SUBDOMAIN_1_NAME,
						    aa.SUBDOMAIN_2_NAME,
						    aa.SUBDOMAIN_3_NAME,
						    aa.METRIC_NAME,
						    aa.METRIC_VALUE,
						    aa.METRIC_INDEX,
						    aa.DATA_SOURCE_NAME,
						    aa.DATA_SOURCE_DESC,
						    aa.REC_INS_TS,
						    aa.REC_UPD_TS,
						    CASE WHEN b.INDICATOR_KEY IS NULL THEN 'I'
						        WHEN b.INDICATOR_KEY is not null and (aa.METRIC_VALUE <> b.METRIC_VALUE or aa. METRIC_INDEX <> b.METRIC_INDEX) -- put weird logic here
								THEN 'U'
						        ELSE NULL END AS PROCESS_TYPE
					FROM  (SELECT  CASE "month"
						            WHEN 'January' THEN '01'
						            WHEN 'February' THEN '02'
						            WHEN 'March' THEN '03'
						            WHEN 'April' THEN '04'
						            WHEN 'May' THEN '05'
						            WHEN 'June' THEN '06'
						            WHEN 'July' THEN '07'
						            WHEN 'August' THEN '08'
						            WHEN 'September' THEN '09'
						            WHEN 'October' THEN '10'
						            WHEN 'November' THEN '11'
						            WHEN 'December' THEN '12'END mth,
        							cast("year" || '/' || MTH || '/01' as date format 'yyyy/mm/dd') DATE_KEY,
									'Monthly' DATE_GRANULARITY , 
									'840' GEO_KEY  ,
									'Country' GEO_GRANULARITY,  
									'Consumer Sentiment Index'  DOMAIN_NAME ,  
									' ' SUBDOMAIN_1_NAME,
									' ' SUBDOMAIN_2_NAME,
									' ' SUBDOMAIN_3_NAME,
									'Consumer Sentiment Index' METRIC_NAME,
									0  METRIC_VALUE	 ,
									CAST(Consumer_Sentiment_Index AS DECIMAL(15,2)) METRIC_index ,
									'Consumer Sentiment Index' DATA_SOURCE_NAME ,
									'Consumer Sentiment Index' DATA_SOURCE_DESC ,
									 current_timestamp(0) REC_INS_TS, 	 
									current_timestamp(0) REC_UPD_TS
        					FROM TRNG_COVID19.STG_Consumer_Sentiment_Index ) aa     
			        LEFT OUTER JOIN TRNG_COVID19.FACT_INDICATOR_DASHBOARD_v b
			           ON  aa.METRIC_NAME = b.METRIC_NAME
			           and aa.DATE_KEY = b.DATE_KEY
			           and aa.GEO_GRANULARITY = b.GEO_GRANULARITY
			           and aa.geo_KEY = b.geo_KEY
			           and aa.DOMAIN_NAME = b.DOMAIN_NAME
			           and aa.SUBDOMAIN_1_NAME = b.SUBDOMAIN_1_NAME
			           and aa.SUBDOMAIN_2_NAME = b.SUBDOMAIN_2_NAME
			           and aa.SUBDOMAIN_3_NAME = b.SUBDOMAIN_3_NAME
			           )  a
					   ) AS x
					   --
          CROSS JOIN
                (SELECT ZEROIFNULL(MAX(INDICATOR_KEY)) AS MAX_ID
                 FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_v   
                ) AS y  
           WHERE x.PROCESS_TYPE IS NOT NULL 
            
)  as source
  

-- join on primary key is obligatory

ON  source.INDICATOR_KEY = target.INDICATOR_KEY
and source.date_key = target.date_key
 
--WHEN MATCHED THEN UPDATE
--SET product_status  = source.product_status
WHEN NOT MATCHED THEN 
INSERT 
(   	
    INDICATOR_KEY,  	
    Date_key,
    DATE_GRANULARITY,
    GEO_KEY, 
    GEO_GRANULARITY,
    DOMAIN_NAME,
    SUBDOMAIN_1_NAME,
    SUBDOMAIN_2_NAME,
    SUBDOMAIN_3_NAME,
    METRIC_NAME,
    METRIC_VALUE,
    METRIC_INDEX,
    DATA_SOURCE_NAME,
    DATA_SOURCE_DESC,
    REC_INS_TS,
    REC_UPD_TS  
) 
VALUES 
( 		
    source.INDICATOR_KEY,  	
    source.Date_key,
    source.DATE_GRANULARITY,
    source.GEO_KEY, 
    source.GEO_GRANULARITY,
    source.DOMAIN_NAME,
    source.SUBDOMAIN_1_NAME,
    source.SUBDOMAIN_2_NAME,
    source.SUBDOMAIN_3_NAME,
    source.METRIC_NAME,
    source.METRIC_VALUE,
    source.METRIC_INDEX,
    source.DATA_SOURCE_NAME,
    source.DATA_SOURCE_DESC,
    source.REC_INS_TS,
    source.REC_UPD_TS   );
	
 
/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;


/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));
	
END;

REPLACE PROCEDURE TRNG_COVID19.ETL_COVID19_DATAHUB_CORE (OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_COVID19_DATAHUB_CORE                                              		
Developed By      : Teradata Team                                                                            			  
Created           : JuLY 5, 2020 			                                                                           		     
Description       : This Procecdure is used to Upcert ETL_COVID19_DATAHUB_CORE Table									 
Procedure syntax  : CALL ETL_COVID19_DATAHUB_CORE (v_MsgTxt,v_RowCnt,v_ResultSet) ;      

1 - Represnts Failure
Null - Represnts Success   
                                                                                                                                  
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
07/05/2020      1.0         Teradata DW              	Initial
07/06/2020		2.0         Teradata DW              	Added LVL2 Code
07/06/2020		3.0			Teradata DW					severe column was not being passed anymore set to null
*/
/*****************************************************************************************************/
SQL SECURITY INVOKER
BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'FACT_COVID19_DATAHUB';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_COVID19_DATAHUB_CORE';
DECLARE v_Message VARCHAR(200);

/* Exception Handling when when SQL Exception occurs */
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS EXCEPTION 1
	v_Message = MESSAGE_TEXT;
	INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs (Sql_Code,Logged_Time,Sql_State,Error_Text,Procedure_Name)
	VALUES(:SQLCODE,CURRENT_TIMESTAMP(0),:SQLSTATE,v_Message,v_ProcName);
	--
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;

/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/

 
MERGE INTO TRNG_COVID19.FACT_COVID19_DATAHUB as target
USING    
 ( select x.PROCESS_TYPE,      	
    x.date_key,
    x.GEO_KEY,
    x.TEST_CNT,
    x.confirmed_CNT,
    x.recovered_CNT,
    x.deaths_CNT,
    x.HOSPITALIZED_CNT,
    x.ON_VENTILATOR_CNT,
    x.IN_ICU_CNT,
    x.SEVERE_CASE_CNT,
    x.population  ,
    x.school_closing  ,
    x.workplace_closing  ,
    x.cancel_events  ,
    x.gatherings_restrictions  ,
    x.transport_closing  ,
    x.stay_home_restrictions  ,
    x.internal_movement_restrictions  ,
    x.international_movement_restrictions  ,
    x.information_campaigns  ,
    x.testing_policy  ,
    x.contact_tracing  ,
    x.stringency_index  ,
    --x.key_STR,
    x.key_numeric,
    x.key_google_mobility,
    x.key_apple_mobility,
    --x.key_alpha_2, 
    x.REC_INS_TS 
   --select *  
from  
  
  (
  
 select  a.date_key,
    a.GEO_KEY,
    a.TEST_CNT,
    a.confirmed_CNT,
    a.recovered_CNT,
    a.deaths_CNT,
    a.HOSPITALIZED_CNT,
    a.ON_VENTILATOR_CNT,
    a.IN_ICU_CNT,
    a.SEVERE_CASE_CNT,
    a.population  ,
    a.school_closing  ,
    a.workplace_closing  ,
    a.cancel_events  ,
    a.gatherings_restrictions  ,
    a.transport_closing  ,
    a.stay_home_restrictions  ,
    a.internal_movement_restrictions  ,
    a.international_movement_restrictions  ,
    a.information_campaigns  ,
    a.testing_policy  ,
    a.contact_tracing  ,
    a.stringency_index  ,
    --a.key_STR,
    a.key_numeric,
    a.key_google_mobility,
    a.key_apple_mobility,
    --a.key_alpha_2, 
    a.REC_INS_TS ,
 
    CASE
          WHEN b.date_KEY IS NULL
                 THEN 'I'
          WHEN b.date_KEY is not null  
          and ( a.TEST_CNT <> b.TESTED_CNT or
                a.confirmed_CNT <> b.confirmed_CNT or
    			a.recovered_CNT <> b.recovered_CNT or
    			a.HOSPITALIZED_CNT <> b.HOSPITALIZED_CNT or
    			a.deaths_CNT <> b.death_CNT  or
   				a.ON_VENTILATOR_CNT <> b.ON_VENTILATOR_CNT or
    			a.IN_ICU_CNT <> b.IN_ICU_CNT or
    			a.SEVERE_CASE_CNT <> b.SEVERE_CASE_CNT )
                -- put weird logic here
                 THEN 'U'
          ELSE NULL
                     END AS PROCESS_TYPE
                     
                     --select *
    from (


SELECT 
    cast (date_key as date) date_key,
    UID GEO_KEY,
    tests TEST_CNT,
    confirmed confirmed_CNT,
    recovered recovered_CNT,
    deaths deaths_CNT,
    hosp HOSPITALIZED_CNT,
    vent  ON_VENTILATOR_CNT,
    icu IN_ICU_CNT,
	-- 07/17/20 Changes
    0 SEVERE_CASE_CNT,
	-- End of Changes
    l3.population  ,
    school_closing  ,
    workplace_closing  ,
    cancel_events  ,
    gatherings_restrictions  ,
    transport_closing  ,
    stay_home_restrictions  ,
    internal_movement_restrictions  ,
    international_movement_restrictions  ,
    information_campaigns  ,
    testing_policy  ,
    contact_tracing  ,
    stringency_index  ,
    --"key" key_STR,
    key_local as key_numeric,
    key_google_mobility,
    key_apple_mobility,
    --key_alpha_2 ,
 	current_timestamp(0) REC_INS_TS
 	--select min(date_key)
from TRNG_COVID19.STG_COVID19_Datahub_LVL3 l3
left outer join TRNG_COVID19.DIM_GEO_LOCATION_V g
on l3.key_local  =  g.fips 
where g.uid is not null ) a
 
        LEFT OUTER JOIN TRNG_COVID19.FACT_COVID19_DATAHUB_v b
           ON   a.DATE_KEY = b.DATE_KEY 
           and a.GEO_key = b.GEO_key 
       
                ) AS x
WHERE x.PROCESS_TYPE  IS NOT NULL 
         
)  as source
  

-- join on primary key is obligatory

ON  source.date_key = target.date_key
 and source.GEO_KEY = target.GEO_KEY
--WHEN MATCHED THEN UPDATE
--SET product_status  = source.product_status
WHEN NOT MATCHED THEN 
insert  
(   	      	
   	date_key,
    GEO_KEY,
    TESTCNT,
    confirmed_CNT,
    recovered_CNT,
    deaths_CNT,
    HOSPITALIZED_CNT,
    ON_VENTILATOR_CNT,
    IN_ICU_CNT,
    SEVERE_CASE_CNT,
	population  ,
    school_closing  ,
    workplace_closing  ,
    cancel_events  ,
    gatherings_restrictions  ,
    transport_closing  ,
    stay_home_restrictions  ,
    internal_movement_restrictions  ,
    international_movement_restrictions  ,
    information_campaigns  ,
    testing_policy  ,
    contact_tracing  ,
    stringency_index  ,
    --key_STR,
    key_numeric,
    key_google_mobility,
    key_apple_mobility,
    --key_alpha_2, 
    REC_INS_TS   
) 
values 
( 		   	
   	source.date_key,
    source.GEO_KEY,
    source.TEST_CNT,
    source.confirmed_CNT,
    source.recovered_CNT,
    source.deaths_CNT,
    source.HOSPITALIZED_CNT,
    source.ON_VENTILATOR_CNT,
    source.IN_ICU_CNT,
    source.SEVERE_CASE_CNT,
    source.population  ,
    source.school_closing  ,
    source.workplace_closing  ,
    source.cancel_events  ,
    source.gatherings_restrictions  ,
    source.transport_closing  ,
    source.stay_home_restrictions  ,
    source.internal_movement_restrictions  ,
    source.international_movement_restrictions  ,
    source.information_campaigns  ,
    source.testing_policy  ,
    source.contact_tracing  ,
    source.stringency_index  ,
    --source.key_STR,
    source.key_numeric,
    source.key_google_mobility,
    source.key_apple_mobility,
    --source.key_alpha_2, 
    source.REC_INS_TS 
)
 when matched then
 update 
 set   	TESTCNT = source.TEST_CNT
       	,confirmed_CNT = source.confirmed_CNT
    	,recovered_CNT = source.recovered_CNT
     	,deaths_CNT = source.deaths_CNT
     	,HOSPITALIZED_CNT = source.HOSPITALIZED_CNT
     	,ON_VENTILATOR_CNT = source.ON_VENTILATOR_CNT
     	,IN_ICU_CNT = source.IN_ICU_CNT
     	,SEVERE_CASE_CNT  = source.SEVERE_CASE_CNT
     	;
	

SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;


--LVL2 Changes
MERGE INTO TRNG_COVID19.FACT_COVID19_DATAHUB_STATE as target
USING    
 ( select x.PROCESS_TYPE,      	
   	x.date_key,
    x.GEO_KEY,
    x.TESTED_CNT,
    x.confirmed_CNT,
    x.recovered_CNT,
    x.death_CNT,
    x.HOSPITALIZED_CNT,
    x.ON_VENTILATOR_CNT,
    x.IN_ICU_CNT,
    x.SEVERE_CASE_CNT,
    x.population  ,
    x.school_closing  ,
    x.workplace_closing  ,
    x.cancel_events  ,
    x.gatherings_restrictions  ,
    x.transport_closing  ,
    x.stay_home_restrictions  ,
    x.internal_movement_restrictions  ,
    x.international_movement_restrictions  ,
    x.information_campaigns  ,
    x.testing_policy  ,
    x.contact_tracing  ,
    x.stringency_index  ,
    --x.key_STR,
    x.key_numeric,
    x.key_google_mobility,
    x.key_apple_mobility,
    --x.key_alpha_2, 
    x.REC_INS_TS 
    --select *  
from  
  
  (
  
 select  a.date_key,
    a.GEO_KEY,
    a.TESTED_CNT,
    a.confirmed_CNT,
    a.recovered_CNT,
    a.death_CNT,
    a.HOSPITALIZED_CNT,
    a.ON_VENTILATOR_CNT,
    a.IN_ICU_CNT,
    a.SEVERE_CASE_CNT,
    a.population  ,
    a.school_closing  ,
    a.workplace_closing  ,
    a.cancel_events  ,
    a.gatherings_restrictions  ,
    a.transport_closing  ,
    a.stay_home_restrictions  ,
    a.internal_movement_restrictions  ,
    a.international_movement_restrictions  ,
    a.information_campaigns  ,
    a.testing_policy  ,
    a.contact_tracing  ,
    a.stringency_index  ,
    --a.key_STR,
    a.key_numeric,
    a.key_google_mobility,
    a.key_apple_mobility,
    --a.key_alpha_2, 
    a.REC_INS_TS ,
 
    CASE
          WHEN b.date_KEY IS NULL
                 THEN 'I'
          WHEN b.date_KEY is not null  
          and ( a.TESTED_CNT <> b.TESTED_CNT or
                a.confirmed_CNT <> b.confirmed_CNT or
    			a.recovered_CNT <> b.recovered_CNT or
    			a.HOSPITALIZED_CNT <> b.HOSPITALIZED_CNT or
    			a.death_CNT <> b.death_CNT  or
   				a.ON_VENTILATOR_CNT <> b.ON_VENTILATOR_CNT or
    			a.IN_ICU_CNT <> b.IN_ICU_CNT or
    			a.SEVERE_CASE_CNT <> b.SEVERE_CASE_CNT )
                -- put weird logic here
                 THEN 'U'
          ELSE NULL
                     END AS PROCESS_TYPE
                     
                     --select *
    from (


SELECT 
    cast ( date_key as date) date_key,
    UID GEO_KEY,
    tests TESTED_CNT,
    confirmed confirmed_CNT,
    recovered recovered_CNT,
    deaths death_CNT,
    hosp HOSPITALIZED_CNT,
    vent  ON_VENTILATOR_CNT,
    icu IN_ICU_CNT, 
	-- 07/17/20 Changes
    0 SEVERE_CASE_CNT,
	-- End of Changes 
    l2.population  ,
    school_closing  ,
    workplace_closing  ,
    cancel_events  ,
    gatherings_restrictions  ,
    transport_closing  ,
    stay_home_restrictions  ,
    internal_movement_restrictions  ,
    international_movement_restrictions  ,
    information_campaigns  ,
    testing_policy  ,
    contact_tracing  ,
    stringency_index  ,
    --"key" key_STR,
    key_local as key_numeric,
    key_google_mobility,
    key_apple_mobility,
    --key_alpha_2 ,
 	current_timestamp(0) REC_INS_TS
 	--select min(date_key)
from TRNG_COVID19.STG_COVID19_Datahub_LVL2 l2 
      left outer join TRNG_COVID19.DIM_GEO_LOCATION_V g
		on l2.administrative_area_level_2   =  g.state_name  
		where g.uid is not null 
		and g.geo_granularity = 'State') a
 
        LEFT OUTER JOIN TRNG_COVID19.FACT_COVID19_DATAHUB_STATE_v b
           ON   a.DATE_KEY = b.DATE_KEY 
           and a.GEO_key = b.GEO_key 
       
                ) AS x
WHERE x.PROCESS_TYPE  IS NOT NULL 
         
)  as source
  

-- join on primary key is obligatory

ON  source.date_key = target.date_key
 and source.GEO_KEY = target.GEO_KEY
--WHEN MATCHED THEN UPDATE
--SET product_status  = source.product_status
WHEN NOT MATCHED THEN 
insert  
(   	      	
   	 date_key,
    GEO_KEY,
     TESTED_CNT,
    confirmed_CNT,
    recovered_CNT,
     death_CNT,
     HOSPITALIZED_CNT,
     ON_VENTILATOR_CNT,
     IN_ICU_CNT,
     SEVERE_CASE_CNT,
     population  ,
      school_closing  ,
     workplace_closing  ,
     cancel_events  ,
      gatherings_restrictions  ,
     transport_closing  ,
     stay_home_restrictions  ,
     internal_movement_restrictions  ,
     international_movement_restrictions  ,
     information_campaigns  ,
     testing_policy  ,
     contact_tracing  ,
     stringency_index  ,
     --key_STR,
     key_numeric,
     key_google_mobility,
     key_apple_mobility,
     --key_alpha_2, 
     REC_INS_TS   
) 
values 
( 		   	
   	source.date_key,
    source.GEO_KEY,
    source.TESTED_CNT,
    source.confirmed_CNT,
    source.recovered_CNT,
    source.death_CNT,
    source.HOSPITALIZED_CNT,
    source.ON_VENTILATOR_CNT,
    source.IN_ICU_CNT,
    source.SEVERE_CASE_CNT,
    source.population  ,
    source.school_closing  ,
    source.workplace_closing  ,
    source.cancel_events  ,
    source.gatherings_restrictions  ,
    source.transport_closing  ,
    source.stay_home_restrictions  ,
    source.internal_movement_restrictions  ,
    source.international_movement_restrictions  ,
    source.information_campaigns  ,
    source.testing_policy  ,
    source.contact_tracing  ,
    source.stringency_index  ,
    --source.key_STR,
    source.key_numeric,
    source.key_google_mobility,
    source.key_apple_mobility,
    --source.key_alpha_2, 
    source.REC_INS_TS 
)
 when matched then
 update 
 set   	TESTED_CNT = source.TESTED_CNT
       	,confirmed_CNT = source.confirmed_CNT
    	,recovered_CNT = source.recovered_CNT
     	,death_CNT = source.death_CNT
     	,HOSPITALIZED_CNT = source.HOSPITALIZED_CNT
     	,ON_VENTILATOR_CNT = source.ON_VENTILATOR_CNT
     	,IN_ICU_CNT = source.IN_ICU_CNT
     	,SEVERE_CASE_CNT  = source.SEVERE_CASE_CNT;
 
/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;


/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));
	
END;

REPLACE PROCEDURE TRNG_COVID19.ETL_COVID_CASES_CORE (OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_COVID_CASES_CORE                                                 		
Developed By      : Teradata Team                                                                            			  
Created           : June 26, 2020 			                                                                           		     
Description       : This Procecdure is used to Upcert FACT_INDICATOR_DASHBOARD_T2_p Table									 
Procedure syntax  : CALL ETL_COVID_CASES_CORE (v_MsgTxt,v_RowCnt,v_ResultSet) ;      

1 - Represnts Failure
Null - Represnts Success   
                                                                                                                                  
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
06/26/2020      1.0         Teradata DW              	Initial
07/21/2020      2.0         Teradata DW              	Added Moving Average Physical Tables & Stats Collection
07/22/2020		3.0			Teradata DW					Replaced the entire code to be incremental
07/26/2020		4.0			Teradata DW					Added the historical one time load step which is only run for new installations
07/29/2020		5.0			Teradata DW					Modified the the merge
*/
/*****************************************************************************************************/
SQL SECURITY INVOKER
BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'FACT_INDICATOR_DASHBOARD_T2_p';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_BaseData INTEGER;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_COVID_CASES_CORE';
DECLARE v_Message VARCHAR(200);

/* Exception Handling when when SQL Exception occurs */
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS EXCEPTION 1
	v_Message = MESSAGE_TEXT;
	INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs (Sql_Code,Logged_Time,Sql_State,Error_Text,Procedure_Name)
	VALUES(:SQLCODE,CURRENT_TIMESTAMP(0),:SQLSTATE,v_Message,v_ProcName);
	--
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;


/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/

-- New York Times covid case cases
-- Historical Load
-- 07.29.20 Changes
SELECT COUNT(*) INTO v_BaseData
FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P
WHERE DOMAIN_NAME = 'Covid19 NYT';

IF v_BaseData = 0 THEN -- One time Historical Load
--
MERGE INTO TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P AS TGT
USING  
  ( 
    SELECT 
		  COALESCE(F.INDICATOR_KEY, MAXKEY.MAX_ID + ROW_NUMBER() OVER (ORDER BY T2.DATE_KEY, T2.GEO_KEY, T2.DOMAIN_NAME, T2.SUBDOMAIN_1_NAME, T2.SUBDOMAIN_2_NAME, T2.SUBDOMAIN_3_NAME, T2.METRIC_NAME)) AS INDICATOR_KEY,
		  T2.DATE_KEY,
		  T2.DATE_GRANULARITY,
		  T2.GEO_KEY,
		  T2.GEO_GRANULARITY,
		  T2.DOMAIN_NAME,
		  T2.SUBDOMAIN_1_NAME,
		  T2.SUBDOMAIN_2_NAME,
		  T2.SUBDOMAIN_3_NAME,
		  T2.METRIC_NAME,
		  T2.METRIC_VALUE,
		  0 AS METRIC_INDEX,
		  T2.DATA_SOURCE_NAME,
		  T2.DATA_SOURCE_DESC,
		  CURRENT_TIMESTAMP(0) AS REC_INS_TS,
		  CURRENT_TIMESTAMP(0) AS REC_UPD_TS,
		  CASE WHEN F.INDICATOR_KEY IS NULL
		       THEN 'I'
	    	   WHEN F.INDICATOR_KEY IS NOT NULL AND F.METRIC_VALUE <> T2.METRIC_VALUE
			   THEN 'U'
		       ELSE 'P'
		  END AS INS_UPD_FLAG
	FROM
                    (SELECT 
		          T1.DATE_KEY,
                          'Day'  AS DATE_GRANULARITY,
                          GK.UID AS GEO_KEY,
                          T1.GEO_GRANULARITY,
                          'Covid19 NYT'  DOMAIN_NAME,
                          ' ' SUBDOMAIN_1_NAME,
                          ' ' SUBDOMAIN_2_NAME,
                          ' ' SUBDOMAIN_3_NAME,
                          T1.CASES,
			  T1.DAILY_NEW_CASES,
		          T1.DEATHS,
			  T1.DAILY_NEW_DEATHS,
                          'New York Times Covid cases/deaths reporting' AS DATA_SOURCE_NAME,
                          'New York Times Covid cases/deaths reporting' AS DATA_SOURCE_DESC  
                      FROM
                            (
                               SELECT 
                                     COALESCE(M.CAL_DATE_KEY,CAST(S.DATE_KEY AS DATE FORMAT 'YYYY-MM-DD')) AS DATE_KEY,
                                     CASE WHEN COALESCE(M.COUNTY,S.COUNTY) = 'Unknown'
                                          THEN 'STATE'
                                          ELSE COALESCE(M.GEO_GRANULARITY,'COUNTY')
                                     END AS GEO_GRANULARITY,
                                     COALESCE(M.COUNTY,S.COUNTY) AS COUNTY,
                                     MIN(COALESCE(M.STATE_CODE,'ZZ')) OVER (PARTITION BY COALESCE(M.STATE_NAME,S.STATE) ORDER BY M.STATE_CODE) AS STATE_CODE,
                                     COALESCE(M.STATE_NAME,S.STATE) AS STATE_NAME,
				                     COALESCE(S.CASES,0) AS CASES,
									 COALESCE(COALESCE(S.CASES - LAG(S.CASES,1) OVER (PARTITION BY COALESCE(M.COUNTY,S.COUNTY),COALESCE(M.STATE_NAME,S.STATE) 
									                                                  ORDER BY COALESCE(M.CAL_DATE_KEY,CAST(S.DATE_KEY AS DATE FORMAT 'YYYY-MM-DD'))),S.CASES -1),0) AS DAILY_NEW_CASES,
                                     COALESCE(S.DEATHS,0) AS DEATHS,
									 COALESCE(COALESCE(S.DEATHS - LAG(S.DEATHS,1) OVER (PARTITION BY COALESCE(M.COUNTY,S.COUNTY),COALESCE(M.STATE_NAME,S.STATE) 
									                                                    ORDER BY COALESCE(M.CAL_DATE_KEY,CAST(S.DATE_KEY AS DATE FORMAT 'YYYY-MM-DD'))),S.DEATHS-1),0) AS DAILY_NEW_DEATHS
                               FROM
                                (
                                  SELECT 
                                     DT.CAL_DATE_KEY,
                                     GC.UID AS GEO_KEY,
                                     GC.GEO_GRANULARITY,
                                     GC.COUNTY, 
                                     GC.COUNTY_LONG,
                                     GC.STATE_CODE,
                                     GC.STATE_NAME 
                                  FROM 
                                     TRNG_COVID19.DIM_GEO_LOCATION_V GC
                                     JOIN TRNG_COVID19.DIM_CALENDAR_V DT ON
                                     DT.CAL_DATE_KEY BETWEEN (SELECT MIN(DATE_KEY) FROM TRNG_COVID19.STG_COVID19_STATS) AND (SELECT MAX(DATE_KEY) FROM TRNG_COVID19.STG_COVID19_STATS) AND
                                     GC.GEO_GRANULARITY = 'COUNTY' AND 
                                     GC.COUNTRY_CODE    = 'US'
                                ) M
                                FULL OUTER JOIN
                                (
                                   SELECT 
                                      DATE_KEY,
                                      CASE WHEN COUNTY = 'New York City'
					                       THEN 'New York'
						                   ELSE COUNTY
				                      END AS COUNTY,             -- New York City is a combination of 5 counties - it will be loaded to NY County and corrected later
                                      STATE,
                                      CASES,
                                      DEATHS
                                   FROM 
                                     TRNG_COVID19.STG_COVID19_STATS
                                   WHERE 
                                     DATE_KEY BETWEEN (SELECT MIN(DATE_KEY) FROM TRNG_COVID19.STG_COVID19_STATS) AND (SELECT MAX(DATE_KEY) FROM TRNG_COVID19.STG_COVID19_STATS)
                                 ) S ON 
                                 S.DATE_KEY = M.CAL_DATE_KEY AND
                                 S.COUNTY IN (M.COUNTY, M.COUNTY_LONG) AND
                                 S.STATE    = M.STATE_NAME
                            ) T1     
                            JOIN TRNG_COVID19.DIM_GEO_LOCATION_V GK ON
                            T1.GEO_GRANULARITY = GK.GEO_GRANULARITY AND
                            T1.STATE_NAME      = GK.STATE_NAME AND 
                            T1.COUNTY          = COALESCE(GK.COUNTY,'Unknown')	
							--WHERE T1.DATE_KEY >= CURRENT_DATE -29  -- for incremental loads, need to filter first date because the daily new cases/deaths calculation is incorrect
                    )  NYT 
             UNPIVOT ((METRIC_VALUE)  FOR  METRIC_NAME 
                                      IN ((CASES)  AS 'Cases to-date', 
									      (DAILY_NEW_CASES) AS 'New Daily Cases',
                                          (DEATHS) AS 'Deaths to-date',
										  (DAILY_NEW_DEATHS) AS 'New Daily Deaths'
										 )
		             )  T2
		 LEFT OUTER JOIN TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F ON
		         T2.DATE_KEY         = F.DATE_KEY             AND
		         T2.DATE_GRANULARITY = F.DATE_GRANULARITY     AND
		         T2.GEO_KEY          = F.GEO_KEY              AND
		         T2.GEO_GRANULARITY  = F.GEO_GRANULARITY      AND
		         T2.DOMAIN_NAME      = F.DOMAIN_NAME          AND
                 T2.SUBDOMAIN_1_NAME = F.SUBDOMAIN_1_NAME     AND
                 T2.SUBDOMAIN_2_NAME = F.SUBDOMAIN_2_NAME     AND
                 T2.SUBDOMAIN_3_NAME = F.SUBDOMAIN_3_NAME     AND
		 T2.METRIC_NAME      = F.METRIC_NAME
		 LEFT OUTER JOIN (SELECT ZEROIFNULL(MAX(INDICATOR_KEY)) AS MAX_ID
		                  FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V) MAXKEY ON 
		          1=1
 	     WHERE
            INS_UPD_FLAG IN ('I','U')	
  )  STG ON  
STG.INDICATOR_KEY = TGT.INDICATOR_KEY AND
STG.DATE_KEY      = TGT.DATE_KEY
WHEN NOT MATCHED THEN 
INSERT
  (       
    INDICATOR_KEY,     
    DATE_KEY,
    DATE_GRANULARITY,
    GEO_KEY, 
    GEO_GRANULARITY,
    DOMAIN_NAME,
    SUBDOMAIN_1_NAME,
    SUBDOMAIN_2_NAME,
    SUBDOMAIN_3_NAME,
    METRIC_NAME,
    METRIC_VALUE,
    METRIC_INDEX,
    DATA_SOURCE_NAME,
    DATA_SOURCE_DESC,
    REC_INS_TS,
    REC_UPD_TS  
   )  
VALUES 
   (    
    STG.INDICATOR_KEY,      
    STG.DATE_KEY,
    STG.DATE_GRANULARITY,
    STG.GEO_KEY, 
    STG.GEO_GRANULARITY,
    STG.DOMAIN_NAME,
    STG.SUBDOMAIN_1_NAME,
    STG.SUBDOMAIN_2_NAME,
    STG.SUBDOMAIN_3_NAME,
    STG.METRIC_NAME,
    STG.METRIC_VALUE,
    STG.METRIC_INDEX,
    STG.DATA_SOURCE_NAME,
    STG.DATA_SOURCE_DESC,
    STG.REC_INS_TS,
    STG.REC_UPD_TS   
  )
WHEN MATCHED THEN
UPDATE SET 
    METRIC_VALUE  = STG.METRIC_VALUE,
    METRIC_INDEX  = STG.METRIC_INDEX,
    REC_UPD_TS    = STG.REC_UPD_TS ;
	
	
	
	
UPDATE TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P
FROM (
SELECT
   F.INDICATOR_KEY,
   F.DATE_KEY,
   F.GEO_KEY,
   G.POPULATION,
   G.STATE_CODE,
   F.DOMAIN_NAME,
   F.METRIC_NAME,
   F.METRIC_VALUE,
   SUM(F.METRIC_VALUE) OVER (PARTITION BY F.DATE_KEY, F.DOMAIN_NAME, F.METRIC_NAME,G.STATE_CODE) AS TOT_METRIC_VALUE,
   SUM(G.POPULATION) OVER (PARTITION BY F.DATE_KEY, F.DOMAIN_NAME, F.METRIC_NAME, G.STATE_CODE) AS TOT_POPULATION,
   (SUM(F.METRIC_VALUE) OVER (PARTITION BY F.DATE_KEY, F.DOMAIN_NAME, F.METRIC_NAME,G.STATE_CODE) * 
    CAST(G.POPULATION AS DECIMAL(38,6))/SUM(G.POPULATION) OVER (PARTITION BY F.DATE_KEY, F.DOMAIN_NAME, F.METRIC_NAME,G.STATE_CODE)) AS NEW_METRIC_VALUE
FROM
   TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
   JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
   F.GEO_KEY = G.UID
WHERE
   F.DOMAIN_NAME = 'Covid19 NYT' AND
   F.GEO_KEY IN (84070003,84029037,84029047,84029095,84029165,84036061,84036005,84036047,84036081,84036085) AND
   F.DATE_KEY BETWEEN CURRENT_DATE -30 AND CURRENT_DATE
) AS SRC
SET METRIC_VALUE = SRC.NEW_METRIC_VALUE,
    REC_UPD_TS      = CURRENT_TIMESTAMP(0)
WHERE 
   FACT_INDICATOR_DASHBOARD_T2_P.INDICATOR_KEY = SRC.INDICATOR_KEY;
      
END IF;
	
-----------------------------------------------------------
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
-----------------------------------------------------------
   
-- Incremental Load
-- 07.29.20 Changes
MERGE INTO TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P AS TGT
USING  
  ( 
    SELECT 
		  COALESCE(F.INDICATOR_KEY, MAXKEY.MAX_ID + ROW_NUMBER() OVER (ORDER BY T2.DATE_KEY, T2.GEO_KEY, T2.DOMAIN_NAME, T2.SUBDOMAIN_1_NAME, T2.SUBDOMAIN_2_NAME, T2.SUBDOMAIN_3_NAME, T2.METRIC_NAME)) AS INDICATOR_KEY,
		  T2.DATE_KEY,
		  T2.DATE_GRANULARITY,
		  T2.GEO_KEY,
		  T2.GEO_GRANULARITY,
		  T2.DOMAIN_NAME,
		  T2.SUBDOMAIN_1_NAME,
		  T2.SUBDOMAIN_2_NAME,
		  T2.SUBDOMAIN_3_NAME,
		  T2.METRIC_NAME,
		  T2.METRIC_VALUE,
		  0 AS METRIC_INDEX,
		  T2.DATA_SOURCE_NAME,
		  T2.DATA_SOURCE_DESC,
		  CURRENT_TIMESTAMP(0) AS REC_INS_TS,
		  CURRENT_TIMESTAMP(0) AS REC_UPD_TS,
		  CASE WHEN F.INDICATOR_KEY IS NULL
		       THEN 'I'
	    	   WHEN F.INDICATOR_KEY IS NOT NULL AND F.METRIC_VALUE <> T2.METRIC_VALUE
			   THEN 'U'
		       ELSE 'P'
		  END AS INS_UPD_FLAG
	FROM
                    ( SELECT 
		                  T1.DATE_KEY,
                          'Day'  AS DATE_GRANULARITY,
                          GK.UID AS GEO_KEY,
                          T1.GEO_GRANULARITY,
                          'Covid19 NYT'  DOMAIN_NAME,
                          ' ' SUBDOMAIN_1_NAME,
                          ' ' SUBDOMAIN_2_NAME,
                          ' ' SUBDOMAIN_3_NAME,
                          T1.CASES,
			  T1.DAILY_NEW_CASES,
		          T1.DEATHS,
			  T1.DAILY_NEW_DEATHS,
                          'New York Times Covid cases/deaths reporting' AS DATA_SOURCE_NAME,
                          'New York Times Covid cases/deaths reporting' AS DATA_SOURCE_DESC  
                      FROM
                            (
                               SELECT 
                                     COALESCE(M.CAL_DATE_KEY,CAST(S.DATE_KEY AS DATE FORMAT 'YYYY-MM-DD')) AS DATE_KEY,
                                     CASE WHEN COALESCE(M.COUNTY,S.COUNTY) = 'Unknown'
                                          THEN 'STATE'
                                          ELSE COALESCE(M.GEO_GRANULARITY,'COUNTY')
                                     END AS GEO_GRANULARITY,
                                     COALESCE(M.COUNTY,S.COUNTY) AS COUNTY,
                                     MIN(COALESCE(M.STATE_CODE,'ZZ')) OVER (PARTITION BY COALESCE(M.STATE_NAME,S.STATE) ORDER BY M.STATE_CODE) AS STATE_CODE,
                                     COALESCE(M.STATE_NAME,S.STATE) AS STATE_NAME,
				                     COALESCE(S.CASES,0) AS CASES,
									 COALESCE(COALESCE(S.CASES - LAG(S.CASES,1) OVER (PARTITION BY COALESCE(M.COUNTY,S.COUNTY),COALESCE(M.STATE_NAME,S.STATE) 
									                                                  ORDER BY COALESCE(M.CAL_DATE_KEY,CAST(S.DATE_KEY AS DATE FORMAT 'YYYY-MM-DD'))),S.CASES -1),0) AS DAILY_NEW_CASES,
                                     COALESCE(S.DEATHS,0) AS DEATHS,
									 COALESCE(COALESCE(S.DEATHS - LAG(S.DEATHS,1) OVER (PARTITION BY COALESCE(M.COUNTY,S.COUNTY),COALESCE(M.STATE_NAME,S.STATE) 
									                                                    ORDER BY COALESCE(M.CAL_DATE_KEY,CAST(S.DATE_KEY AS DATE FORMAT 'YYYY-MM-DD'))),S.DEATHS-1),0) AS DAILY_NEW_DEATHS
                               FROM
                                (
                                  SELECT 
                                     DT.CAL_DATE_KEY,
                                     GC.UID AS GEO_KEY,
                                     GC.GEO_GRANULARITY,
                                     GC.COUNTY, 
                                     GC.COUNTY_LONG,
                                     GC.STATE_CODE,
                                     GC.STATE_NAME 
                                  FROM 
                                     TRNG_COVID19.DIM_GEO_LOCATION_V GC
                                     JOIN TRNG_COVID19.DIM_CALENDAR_V DT ON
                                     DT.CAL_DATE_KEY BETWEEN CURRENT_DATE -30 AND (SELECT MAX(DATE_KEY) FROM TRNG_COVID19.STG_COVID19_STATS) AND
                                     GC.GEO_GRANULARITY = 'COUNTY' AND 
                                     GC.COUNTRY_CODE    = 'US'
                                ) M
                                FULL OUTER JOIN
                                (
                                   SELECT 
                                      DATE_KEY,
                                      CASE WHEN COUNTY = 'New York City'
					                       THEN 'New York'
						                   ELSE COUNTY
				                      END AS COUNTY,             -- New York City is a combination of 5 counties - it will be loaded to NY County and corrected later
                                      STATE,
                                      CASES,
                                      DEATHS
                                   FROM 
                                     TRNG_COVID19.STG_COVID19_STATS
                                   WHERE 
                                     DATE_KEY BETWEEN CURRENT_DATE-30 AND (SELECT MAX(DATE_KEY) FROM TRNG_COVID19.STG_COVID19_STATS)
                                 ) S ON 
                                 S.DATE_KEY = M.CAL_DATE_KEY AND
                                 S.COUNTY IN (M.COUNTY, M.COUNTY_LONG) AND
                                 S.STATE    = M.STATE_NAME
                            ) T1     
                            JOIN TRNG_COVID19.DIM_GEO_LOCATION_V GK ON
                            T1.GEO_GRANULARITY = GK.GEO_GRANULARITY AND
                            T1.STATE_NAME      = GK.STATE_NAME AND 
                            T1.COUNTY          = COALESCE(GK.COUNTY,'Unknown')	
							WHERE T1.DATE_KEY >= CURRENT_DATE -29  -- for incremental loads, need to filter first date because the daily new cases/deaths calculation is incorrect
                    )  NYT 
             UNPIVOT ((METRIC_VALUE)  FOR  METRIC_NAME 
                                      IN ((CASES)  AS 'Cases to-date', 
									      (DAILY_NEW_CASES) AS 'New Daily Cases',
                                          (DEATHS) AS 'Deaths to-date',
										  (DAILY_NEW_DEATHS) AS 'New Daily Deaths'
										 )
		             )  T2
		 LEFT OUTER JOIN TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F ON
		         T2.DATE_KEY         = F.DATE_KEY             AND
		         T2.DATE_GRANULARITY = F.DATE_GRANULARITY     AND
		         T2.GEO_KEY          = F.GEO_KEY              AND
		         T2.GEO_GRANULARITY  = F.GEO_GRANULARITY      AND
		         T2.DOMAIN_NAME      = F.DOMAIN_NAME          AND
                 T2.SUBDOMAIN_1_NAME = F.SUBDOMAIN_1_NAME     AND
                 T2.SUBDOMAIN_2_NAME = F.SUBDOMAIN_2_NAME     AND
                 T2.SUBDOMAIN_3_NAME = F.SUBDOMAIN_3_NAME     AND
		 T2.METRIC_NAME      = F.METRIC_NAME
		 LEFT OUTER JOIN (SELECT ZEROIFNULL(MAX(INDICATOR_KEY)) AS MAX_ID
		                  FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V) MAXKEY ON 
		          1=1
 	     WHERE
             INS_UPD_FLAG IN ('I','U')	
  )  STG ON  
STG.INDICATOR_KEY = TGT.INDICATOR_KEY AND
STG.DATE_KEY      = TGT.DATE_KEY
WHEN NOT MATCHED THEN 
INSERT
  (       
    INDICATOR_KEY,     
    DATE_KEY,
    DATE_GRANULARITY,
    GEO_KEY, 
    GEO_GRANULARITY,
    DOMAIN_NAME,
    SUBDOMAIN_1_NAME,
    SUBDOMAIN_2_NAME,
    SUBDOMAIN_3_NAME,
    METRIC_NAME,
    METRIC_VALUE,
    METRIC_INDEX,
    DATA_SOURCE_NAME,
    DATA_SOURCE_DESC,
    REC_INS_TS,
    REC_UPD_TS  
   )  VALUES 
   (    
    STG.INDICATOR_KEY,      
    STG.DATE_KEY,
    STG.DATE_GRANULARITY,
    STG.GEO_KEY, 
    STG.GEO_GRANULARITY,
    STG.DOMAIN_NAME,
    STG.SUBDOMAIN_1_NAME,
    STG.SUBDOMAIN_2_NAME,
    STG.SUBDOMAIN_3_NAME,
    STG.METRIC_NAME,
    STG.METRIC_VALUE,
    STG.METRIC_INDEX,
    STG.DATA_SOURCE_NAME,
    STG.DATA_SOURCE_DESC,
    STG.REC_INS_TS,
    STG.REC_UPD_TS   
  )
WHEN MATCHED THEN
UPDATE SET 
    METRIC_VALUE  = STG.METRIC_VALUE,
    METRIC_INDEX  = STG.METRIC_INDEX,
    REC_UPD_TS    = STG.REC_UPD_TS ;
	
	
-----------------------------------------------------------
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
-----------------------------------------------------------	

	
UPDATE TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P
FROM (
SELECT
   F.INDICATOR_KEY,
   F.DATE_KEY,
   F.GEO_KEY,
   G.POPULATION,
   G.STATE_CODE,
   F.DOMAIN_NAME,
   F.METRIC_NAME,
   F.METRIC_VALUE,
   SUM(F.METRIC_VALUE) OVER (PARTITION BY F.DATE_KEY, F.DOMAIN_NAME, F.METRIC_NAME,G.STATE_CODE) AS TOT_METRIC_VALUE,
   SUM(G.POPULATION) OVER (PARTITION BY F.DATE_KEY, F.DOMAIN_NAME, F.METRIC_NAME, G.STATE_CODE) AS TOT_POPULATION,
   (SUM(F.METRIC_VALUE) OVER (PARTITION BY F.DATE_KEY, F.DOMAIN_NAME, F.METRIC_NAME,G.STATE_CODE) * 
    CAST(G.POPULATION AS DECIMAL(38,6))/SUM(G.POPULATION) OVER (PARTITION BY F.DATE_KEY, F.DOMAIN_NAME, F.METRIC_NAME,G.STATE_CODE)) AS NEW_METRIC_VALUE
FROM
   TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F
   JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
   F.GEO_KEY = G.UID
WHERE
   F.DOMAIN_NAME = 'Covid19 NYT' AND
   F.GEO_KEY IN (84070003,84029037,84029047,84029095,84029165,84036061,84036005,84036047,84036081,84036085) AND
   F.DATE_KEY BETWEEN CURRENT_DATE -30 AND CURRENT_DATE
) AS SRC
SET METRIC_VALUE = SRC.NEW_METRIC_VALUE,
    REC_UPD_TS      = CURRENT_TIMESTAMP(0)
WHERE 
   FACT_INDICATOR_DASHBOARD_T2_P.INDICATOR_KEY = SRC.INDICATOR_KEY;
   
   
 
-----------------------------------------------------------
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
-----------------------------------------------------------	


-- 072120 Added Moving Average Physical Tables
DELETE FROM TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT;
INSERT INTO TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT
SELECT
  SNAPSHOT_DATE,
  SNAPSHOT_WEEK,
  CURR_PREV_FLAG,
  RANK() OVER (PARTITION BY GEO_KEY, CURR_PREV_FLAG ORDER BY DATE_KEY ASC) CAL_DAY_OF_WEEK,
  GEO_KEY,
  GEO_GRANULARITY,
  COUNTY,
  STATE_CODE,
  STATE_NAME,
  COUNTRY_NAME,
  POPULATION,
  DATE_KEY,
  CASES_TODATE,
  NEW_CASES,
  DEATHS_TODATE,
  NEW_DEATHS,
  DENSE_RANK() OVER (PARTITION BY COUNTRY_NAME ORDER BY POPULATION DESC) AS COUNTY_POP_RNK,
  CAST(AVG(CASES_TODATE) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC ROWS BETWEEN CURRENT ROW AND 6 FOLLOWING) AS DECIMAL(38,5)) AS CASES_TODATE_7MAVG,
  CAST(AVG(NEW_CASES) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC ROWS BETWEEN CURRENT ROW AND 6 FOLLOWING) AS DECIMAL(38,5)) AS NEW_CASES_7MAVG,
  CAST(AVG(DEATHS_TODATE) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC ROWS BETWEEN CURRENT ROW AND 6 FOLLOWING) AS DECIMAL(38,5)) AS DEATHS_TODATE_7MAVG,
  CAST(AVG(NEW_DEATHS) OVER (PARTITION BY COUNTY, STATE_NAME ORDER BY DATE_KEY DESC ROWS BETWEEN CURRENT ROW AND 6 FOLLOWING) AS DECIMAL(38,5)) AS NEW_DEATHS_7MAVG
 FROM
  (
    SELECT 
          DT.SNAPSHOT_DATE,
          DT.SNAPSHOT_WEEK,
          CASE WHEN F.DATE_KEY BETWEEN DT.WEEK_START_DATE AND DT.WEEK_END_DATE
               THEN DT.CURR_PREV_FLAG
          END AS CURR_PREV_FLAG,
          F.GEO_KEY,
          UPPER(F.GEO_GRANULARITY) GEO_GRANULARITY,
          G.COUNTY, 
          G.STATE_CODE,
          G.STATE_NAME,
          G.COUNTRY_NAME,
          G.POPULATION,
          F.DATE_KEY,
          SUM(CASE WHEN UPPER(F.METRIC_NAME) = 'CASES TO-DATE'
                   THEN METRIC_VALUE
          END) AS CASES_TODATE,
          SUM(CASE WHEN UPPER(F.METRIC_NAME) = 'NEW DAILY CASES'
                   THEN METRIC_VALUE
              END) AS NEW_CASES,
          SUM(CASE WHEN UPPER(F.METRIC_NAME) = 'DEATHS TO-DATE'
                   THEN METRIC_VALUE
          END) AS DEATHS_TODATE,
          SUM(CASE WHEN UPPER(F.METRIC_NAME) = 'NEW DAILY DEATHS'
                   THEN METRIC_VALUE
              END) AS NEW_DEATHS
    FROM 
      TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F 
      JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
      F.GEO_KEY = G.UID
      JOIN (SELECT 
       		MAX(WEEK_END_DATE) OVER () AS SNAPSHOT_DATE,
       		MAX(CAL_WEEK_YEAR) OVER () AS SNAPSHOT_WEEK,
       		MIN(WEEK_START_DATE) OVER () AS FIL_START_DATE_KEY,
       		MAX(WEEK_END_DATE) OVER () FIL_END_DATE_KEY,
       		CASE WHEN RNK =1 THEN 'CURR'
            	 WHEN RNK =2 THEN 'PREV'
            	 WHEN RNK =3 THEN 'PREV-1'
            	 WHEN RNK =4 THEN 'PREV-2'
				 WHEN RNK =5 THEN 'PREV-3'
            	 ELSE 'PREV-4'
       		END CURR_PREV_FLAG,
       		RANK() OVER (ORDER BY WEEK_END_DATE DESC) RNK,
       		DT.*
    	   FROM 
            TRNG_COVID19.DIM_CALENDAR_V DT
			LEFT JOIN (
                       SELECT MAX(DATE_KEY) MAX_DT
                       FROM TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V F  
                       JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
                            F.GEO_KEY = G.UID
                       WHERE F.DOMAIN_NAME = 'Covid19 NYT' AND  
                             F.GEO_GRANULARITY = 'COUNTY'
                      ) MAXDT ON 1=1
           WHERE CAL_DATE_KEY IN (MAX_DT-7,MAX_DT-14,MAX_DT-21,MAX_DT-28, MAX_DT-35, MAX_DT-42)
          ) DT ON
       F.DATE_KEY BETWEEN DT.FIL_START_DATE_KEY AND DT.FIL_END_DATE_KEY
    WHERE 
      F.DOMAIN_NAME = 'Covid19 NYT' AND 
      F.GEO_GRANULARITY = 'COUNTY'  AND
      CASE WHEN F.DATE_KEY BETWEEN DT.WEEK_START_DATE AND DT.WEEK_END_DATE
           THEN DT.CURR_PREV_FLAG
      END IN ('CURR','PREV','PREV-1','PREV-2','PREV-3')
     GROUP BY 1,2,3,4,5,6,7,8,9,10,11
   ) T;
 
/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;


/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));
	
END;

REPLACE PROCEDURE TRNG_COVID19.ETL_COVID_MODEL_CORE (OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_COVID_MODEL_CORE                                              		
Developed By      : Teradata Team                                                                            			  
Created           : June 26, 2020 			                                                                           		     
Description       : This Procecdure is used to Upcert FACT_Covid_Model_Data Table									 
Procedure syntax  : CALL ETL_COVID_MODEL_CORE (v_MsgTxt,v_RowCnt,v_ResultSet) ;      

1 - Represnts Failure
Null - Represnts Success   
                                                                                                                                  
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
06/26/2020      1.0         Teradata DW              	Initial
07/11/2020		2.0			Teradata DW					Added the insert to FACT_Covid_Model_Data_SUM as target
07/25/2020		3.0			Teradata DW					Modified the STG_Summary_stats_all_locs to not be based on path date
07/29/2020		4.0			Teradata DW					Modified the State join to be US only
10/02/2020		5.0			Teradata DW					Added the new source of hospitalization data
10/07/2020		6.0			Teradata DW					The source data column naming changed casuing the proc to break
*/
/*****************************************************************************************************/
SQL SECURITY INVOKER
BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'FACT_Covid_Model_Data';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_COVID_MODEL_CORE';
DECLARE v_Date_Key_Val DATE;
DECLARE v_Message VARCHAR(200);

/* Exception Handling when when SQL Exception occurs */
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS EXCEPTION 1
	v_Message = MESSAGE_TEXT;
	INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs (Sql_Code,Logged_Time,Sql_State,Error_Text,Procedure_Name)
	VALUES(:SQLCODE,CURRENT_TIMESTAMP(0),:SQLSTATE,v_Message,v_ProcName);
	--
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;

/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/

-- 07.25.20 Changes
SELECT CASE WHEN MAX(DATE_KEY) IS NULL THEN DATE 
			ELSE TO_DATE('9999-12-31','YYYY-MM-DD') END into v_Date_Key_Val
FROM TRNG_COVID19.FACT_Covid_Model_Data t
WHERE EXISTS (SELECT 1 FROM TRNG_COVID19.STG_Hospitalization_all_locs WHERE Path_Update_Dt = t.Path_Update_Val);


IF v_Date_Key_Val <> '9999-12-31'(DATE) THEN
	-- forcasting model
	-- Every version is kept for day over day comparison
	MERGE INTO TRNG_COVID19.FACT_Covid_Model_Data as target
	USING  
	  	(select x.PROCESS_TYPE,     
	    		CASE WHEN x.PROCESS_TYPE = 'I'
	        	THEN y.MAX_ID + ROW_NUMBER() OVER(ORDER BY x.location_name,x.Modeled_date)
				ELSE x.MODEL_KEY END AS MODEL_KEY,
	  	x.geo_key,
	  	x.geo_granularity,
	    x.MODEL_VERSION,
	    x.location_name,
	    x.Modeled_date,
	    x.date_key,
	    x.DATE_GRANULARITY,
	    x.allbed_mean,
	    x.allbed_lower,
	    x.allbed_upper,
	    x.ICUbed_mean,
	    x.ICUbed_lower,
	    x.ICUbed_upper,
	    x.deaths_mean,
	    x.deaths_lower,
	    x.deaths_upper,
	    x.admis_mean,
	    x.admis_lower,
	    x.admis_upper,
	    --x.newICU_mean,
	    --x.newICU_lower,
	    --x.newICU_upper,
	    x.totdea_mean,
	    x.totdea_lower,
	    x.totdea_upper,
	    x.deaths_mean_smoothed,
	    x.deaths_lower_smoothed,
	    x.deaths_upper_smoothed,
	    x.totdea_mean_smoothed,
	    x.totdea_lower_smoothed,
	    x.totdea_upper_smoothed,
	    x.mobility_data_type,
	    x.mobility_composite,
	    x.total_tests_data_type,
	    x.total_tests,
	    x.confirmed_infections,
	    x.est_infections_mean,
	    x.est_infections_lower,
	    x.est_infections_upper,
	    x.REC_INS_TS,
	    x.REC_UPD_TS,
		x.Path_Update_Val
	from (
	 	select
	  	b.MODEL_KEY,
	  	a.geo_key,
	  	a.geo_granularity,
	    a.MODEL_VERSION,
	    a.location_name,
	    a.Modeled_date,
	    a.date_key,
	    a.DATE_GRANULARITY,
	    a.allbed_mean,
	    a.allbed_lower,
	    a.allbed_upper,
	    a.ICUbed_mean,
	    a.ICUbed_lower,
	    a.ICUbed_upper,
	    a.deaths_mean,
	    a.deaths_lower,
	    a.deaths_upper,
	    a.admis_mean,
	    a.admis_lower,
	    a.admis_upper,
	    --a.newICU_mean,
	    --a.newICU_lower,
	    --a.newICU_upper,
	    a.totdea_mean,
	    a.totdea_lower,
	    a.totdea_upper,
	    a.deaths_mean_smoothed,
	    a.deaths_lower_smoothed,
	    a.deaths_upper_smoothed,
	    a.totdea_mean_smoothed,
	    a.totdea_lower_smoothed,
	    a.totdea_upper_smoothed,
	    a.mobility_data_type,
	    a.mobility_composite,
	    a.total_tests_data_type,
	    a.total_tests,
	    a.confirmed_infections,
	    a.est_infections_mean,
	    a.est_infections_lower,
	    a.est_infections_upper,
	    coalesce(b.REC_INS_TS,a.REC_INS_TS) REC_INS_TS,
	    a.REC_UPD_TS,
	    CASE WHEN b.MODEL_KEY IS NULL THEN 'I'
	          ELSE NULL END AS PROCESS_TYPE,
		a.Path_Update_Val
	    FROM  ( 
				select 
			 	coalesce(l.uid,-1) geo_key,
			 	coalesce(l.geo_granularity, (select geo_granularity from TRNG_COVID19.DIM_GEO_LOCATION_V where uid = -1) ) geo_granularity,
			 	a.V1 MODEL_VERSION,
			    a.location_name,
			    a."date"  Modeled_date, 
			    a.allbed_mean,
			    a.allbed_lower,
			    a.allbed_upper,
			    a.ICUbed_mean,
			    a.ICUbed_lower,
			    a.ICUbed_upper,
			    a.deaths_mean,
			    a.deaths_lower,
			    a.deaths_upper,
			    a.admis_mean,
			    a.admis_lower,
			    a.admis_upper,
			    --a.newICU_mean,
			    --a.newICU_lower,
			    --a.newICU_upper,
			    a.totdea_mean,
			    a.totdea_lower,
			    a.totdea_upper,
			    a.deaths_mean_smoothed,
			    a.deaths_lower_smoothed,
			    a.deaths_upper_smoothed,
			    a.totdea_mean_smoothed,
			    a.totdea_lower_smoothed,
			    a.totdea_upper_smoothed,
			    a.mobility_data_type,
			    a.mobility_composite,
			    a.total_tests_data_type,
			    a.total_tests,
			    a.confirmed_infections,
			    a.est_infections_mean,
			    a.est_infections_lower,
			    a.est_infections_upper,
				current_timestamp(0) REC_INS_TS, 	 
				current_timestamp(0) REC_UPD_TS,
				--cast(Path_Update_Dt as date) date_key,
				v_Date_Key_Val as date_key,
				'Daily' date_granularity,
				a.Path_Update_dt as Path_Update_Val
				from TRNG_COVID19.STG_Hospitalization_all_locs a
				left outer join TRNG_COVID19.DIM_GEO_LOCATION_V l 
			        	on (a.location_name = l.state_name
						-- 07.29.20 Changes
			        	and l.geo_granularity = 'State' and location_id  between 500 and 599) -- handle Georgia
			        	or (a.location_name = l.country_name
			        	and l.geo_granularity = 'country')
				 
			    --where date_key >= coalesce((select max(date_key) from TRNG_COVID19.FACT_Covid_Model_Data),date_key)
	        ) a     
	        LEFT OUTER JOIN TRNG_COVID19.FACT_Covid_Model_Data b
	        	on a.geo_key =  b.geo_key 
				and a.Modeled_date = b.Modeled_date
				and a.date_key = b.date_key) AS x

	        CROSS JOIN
	                (SELECT ZEROIFNULL(MAX(Model_KEY)) AS MAX_ID
	                 FROM TRNG_COVID19.FACT_Covid_Model_Data 
	                ) AS y  
	        WHERE x.PROCESS_TYPE IS NOT NULL
			
		)  as source
	-- join on primary key is obligatory
	ON  source.Model_KEY = target.Model_KEY
	and source.date_key = target.date_key
	and source.geo_key = target.geo_key
	--
	WHEN NOT MATCHED THEN 
	insert  
	(   	
		MODEL_KEY,
	    DATE_KEY,
	    DATE_GRANULARITY,
	    GEO_KEY,
	    GEO_GRANULARITY,
	    MODEL_VERSION,
	    location_name,
	    Modeled_date,
	    allbed_mean,
	    allbed_lower,
	    allbed_upper,
	    ICUbed_mean,
	    ICUbed_lower,
	    ICUbed_upper,
	    deaths_mean,
	    deaths_lower,
	    deaths_upper,
	    admis_mean,
	    admis_lower,
	    admis_upper,
	    --newICU_mean,
	    --newICU_lower,
	    --newICU_upper,
	    totdea_mean,
	    totdea_lower,
	    totdea_upper,
	    deaths_mean_smoothed,
	    deaths_lower_smoothed,
	    deaths_upper_smoothed,
	    totdea_mean_smoothed,
	    totdea_lower_smoothed,
	    totdea_upper_smoothed,
	    mobility_data_type,
	    mobility_composite,
	    total_tests_data_type,
	    total_tests,
	    confirmed_infections,
	    est_infections_mean,
	    est_infections_lower,
	    est_infections_upper,
	    REC_INS_TS,
	    REC_UPD_TS,
		Path_Update_Val) 
	values (	
	   	source.MODEL_KEY,
	    source.DATE_key,
	    source.DATE_GRANULARITY,
	    source.GEO_KEY,
	    source.GEO_GRANULARITY,
	    source.MODEL_VERSION,
	    source.location_name,
	    source.Modeled_date,
	    source.allbed_mean,
	    source.allbed_lower,
	    source.allbed_upper,
	    source.ICUbed_mean,
	    source.ICUbed_lower,
	    source.ICUbed_upper,
	    source.deaths_mean,
	    source.deaths_lower,
	    source.deaths_upper,
	    source.admis_mean,
	    source.admis_lower,
	    source.admis_upper,
	    --source.newICU_mean,
	    --source.newICU_lower,
	    --source.newICU_upper,
	    source.totdea_mean,
	    source.totdea_lower,
	    source.totdea_upper,
	    source.deaths_mean_smoothed,
	    source.deaths_lower_smoothed,
	    source.deaths_upper_smoothed,
	    source.totdea_mean_smoothed,
	    source.totdea_lower_smoothed,
	    source.totdea_upper_smoothed,
	    source.mobility_data_type,
	    source.mobility_composite,
	    source.total_tests_data_type,
	    source.total_tests,
	    source.confirmed_infections,
	    source.est_infections_mean,
	    source.est_infections_lower,
	    source.est_infections_upper,
	    source.REC_INS_TS,
	    source.REC_UPD_TS,
		source.Path_Update_Val);
	    
	----------------------------------------------------------- 
	SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
	----------------------------------------------------------- 

	delete from TRNG_COVID19.FACT_Covid_Model_Data_UNPIVOT;
	insert into TRNG_COVID19.FACT_Covid_Model_Data_UNPIVOT
	SELECT 
		MODEL_KEY,
	    DATE_KEY,
	    DATE_GRANULARITY,
	    GEO_KEY,
	    GEO_GRANULARITY,
	    MODELED_DATE,
	    MODEL_VERSION,
	    location_name,
	    mobility_data_type,
	    total_tests_data_type,
	    Metric_name,
	    Metric_value,
	    REC_INS_TS,
	    REC_UPD_TS 
		--
	    FROM TRNG_COVID19.FACT_Covid_Model_Data 
	    UNPIVOT ((metric_value)  FOR  metric_name 
	    IN ((allbed_mean) as'allbed_mean',
			(allbed_lower) as'allbed_lower',
			(allbed_upper) as'allbed_upper',
			(ICUbed_mean) as'ICUbed_mean',
			(ICUbed_lower) as'ICUbed_lower',
			(ICUbed_upper) as'ICUbed_upper',
			(deaths_mean) as'deaths_mean',
			(deaths_lower) as'deaths_lower',
			(deaths_upper) as'deaths_upper',
			(admis_mean) as'admis_mean',
			(admis_lower) as'admis_lower',
			(admis_upper) as'admis_upper',
			--(newICU_mean) as'newICU_mean',
			--(newICU_lower) as'newICU_lower',
			--(newICU_upper) as'newICU_upper',
			(totdea_mean) as'totdea_mean',
			(totdea_lower) as'totdea_lower',
			(totdea_upper) as'totdea_upper',
			(deaths_mean_smoothed) as'deaths_mean_smoothed',
			(deaths_lower_smoothed) as'deaths_lower_smoothed',
			(deaths_upper_smoothed) as'deaths_upper_smoothed',
			(totdea_mean_smoothed) as'totdea_mean_smoothed',
			(totdea_lower_smoothed) as'totdea_lower_smoothed',
			(totdea_upper_smoothed) as'totdea_upper_smoothed',
			 --(mobility_data_type) as'mobility_data_type',
			 (mobility_composite) as'mobility_composite',
			--(total_tests_data_type) as'total_tests_data_type',
			 (total_tests) as'total_tests',
			(confirmed_infections) as'confirmed_infections',
			(est_infections_mean) as'est_infections_mean',
			(est_infections_lower) as'est_infections_lower',
			(est_infections_upper) as'est_infections_upper'
			) )  a
	--07/25/2020 Changes
	where a.date_key = v_Date_Key_Val;

	----------------------------------------------------------- 
	SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
	----------------------------------------------------------- 
	-- Added 07/11/20
	MERGE INTO TRNG_COVID19.FACT_Covid_Model_Data_SUM as target
	USING  
	  (   
	   select          
	   	x.PROCESS_TYPE,     
	    x.DATE_KEY,
	    x.DATE_GRANULARITY,
	    x.GEO_KEY,
	    x.GEO_GRANULARITY,
	    x.all_bed_capacity,
	    x.icu_bed_capacity,
	    --x.all_bed_usage,
	    --x.icu_bed_usage,
	    --x.available_all_nbr,
	    --x.available_icu_nbr,
	    --x.travel_limit_start_date,
	    --x.travel_limit_end_date,
	    --x.stay_home_start_date,
	    --x.stay_home_end_date,
	    --x.educational_fac_start_date,
	    --x.educational_fac_end_date,
	    --x.any_gathering_restrict_start_date,
	    --x.any_gathering_restrict_end_date,
	    --x.any_business_start_date,
	    --x.any_business_end_date,
	    --x.all_non_ess_business_start_date,
	    --x.all_non_ess_business_end_date,
	    x.REC_INS_TS,
	    x.REC_UPD_TS
		-- 
	from (
	 	select   
	  	a.DATE_KEY,
	    a.DATE_GRANULARITY,
	    a.GEO_KEY,
	    a.GEO_GRANULARITY,
	    a.all_bed_capacity,
	    a.icu_bed_capacity,
	    --a.all_bed_usage,
	    --a.icu_bed_usage,
	    --a.available_all_nbr,
	    --a.available_icu_nbr,
	    --a.travel_limit_start_date,
	    --a.travel_limit_end_date,
	    --a.stay_home_start_date,
	    --a.stay_home_end_date,
	    --a.educational_fac_start_date,
	    --a.educational_fac_end_date,
	    --a.any_gathering_restrict_start_date,
	    --a.any_gathering_restrict_end_date,
	    --a.any_business_start_date,
	    --a.any_business_end_date,
	    --a.all_non_ess_business_start_date,
	    --a.all_non_ess_business_end_date,
	    coalesce(b.REC_INS_TS,current_timestamp(0)) REC_INS_TS,
	    current_timestamp REC_UPD_TS,
	    CASE WHEN b.date_KEY IS NULL THEN 'I'
	         ELSE NULL END AS PROCESS_TYPE
	    from  ( 
	 	select 
		--cast(  Path_Update_Dt  as date) date_key,
		v_Date_Key_Val as date_key,
		'Daily' date_granularity, 
	 	coalesce(l.uid,-1) geo_key,
	 	coalesce(l.geo_granularity, (select geo_granularity from TRNG_COVID19.DIM_GEO_LOCATION_V where uid = -1) ) geo_granularity,
	    a.all_bed_capacity,
	    a.icu_bed_capacity
	    --a.all_bed_usage,
	    --a.icu_bed_usage,
	    --a.available_all_nbr,
	    --a.available_icu_nbr,
	    --a.travel_limit_start_date,
	    --a.travel_limit_end_date,
	    --a.stay_home_start_date,
	    --a.stay_home_end_date,
	    --a.educational_fac_start_date,
	    --a.educational_fac_end_date,
	    --a.any_gathering_restrict_start_date,
	    --a.any_gathering_restrict_end_date,
	    --a.any_business_start_date,
	    --a.any_business_end_date,
	    --a."ALL_NON-ESS_BUSINESS_START_DATE" ALL_NON_ESS_BUSINESS_START_DATE,
	    --a."ALL_NON-ESS_BUSINESS_END_DATE" ALL_NON_ESS_BUSINESS_END_DATE 
		--
	    from TRNG_COVID19.STG_Summary_stats_all_locs a
	    left outer join TRNG_COVID19.DIM_GEO_LOCATION_V l 
	      	on (a.location_name = l.state_name
			-- 07.29.20 Changes
	       	and l.geo_granularity = 'State' and location_id  between 500 and 599) -- handle Georgia
	       	or (a.location_name = l.country_name
	       	and l.geo_granularity = 'country')
	    --where date_key >= coalesce((select max(date_key) from TRNG_COVID19.FACT_Covid_Model_Data_SUM),date_key)
	        ) a     
	        LEFT OUTER JOIN TRNG_COVID19.FACT_Covid_Model_Data_SUM b
	        on a.geo_key =  b.geo_key 
			and a.date_key = b.date_key         
	        ) AS x
	  
	        WHERE x.PROCESS_TYPE IS NOT NULL 
	             
	)  as source
	--
	ON source.date_key = target.date_key
	AND source.geo_key = target.geo_key
	--
	WHEN NOT MATCHED THEN 
	insert  
	(   	
	 	DATE_KEY,
	    DATE_GRANULARITY,
	    GEO_KEY,
	    GEO_GRANULARITY,
	    all_bed_capacity,
	    icu_bed_capacity,
	    --all_bed_usage,
	    --icu_bed_usage,
	    --available_all_nbr,
	    --available_icu_nbr,
	    --travel_limit_start_date,
	    --travel_limit_end_date,
	    --stay_home_start_date,
	    --stay_home_end_date,
	    --educational_fac_start_date,
	    --educational_fac_end_date,
	    --any_gathering_restrict_start_date,
	    --any_gathering_restrict_end_date,
	    --any_business_start_date,
	    --any_business_end_date,
	    --all_non_ess_business_start_date,
	    --all_non_ess_business_end_date,
	    REC_INS_TS,
	    REC_UPD_TS  ) 
	values ( 
	  	source.DATE_KEY,
	    source.DATE_GRANULARITY,
	    source.GEO_KEY,
	    source.GEO_GRANULARITY,
	    source.all_bed_capacity,
	    source.icu_bed_capacity,
	    --source.all_bed_usage,
	    --source.icu_bed_usage,
	    --source.available_all_nbr,
	    --source.available_icu_nbr,
	    --source.travel_limit_start_date,
	    --source.travel_limit_end_date,
	    --source.stay_home_start_date,
	    --source.stay_home_end_date,
	    --source.educational_fac_start_date,
	    --source.educational_fac_end_date,
	    --source.any_gathering_restrict_start_date,
	    --source.any_gathering_restrict_end_date,
	    --source.any_business_start_date,
	    --source.any_business_end_date,
	    --source.all_non_ess_business_start_date,
	    --source.all_non_ess_business_end_date,
	    source.REC_INS_TS,
	    null  );
		--
END IF;

 -- 10/02/20 Changes
----------------------------------------------------------- 
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
----------------------------------------------------------- 

INSERT INTO TRNG_COVID19.F_IND_DASH_EST_HOSP_ICU
SELECT "state",
    "collection_date",
    "Staffed Adult ICU Beds Occupied Estimated",
    "Count LL",
    "Count UL",
    "Percentage of Staffed Adult ICU Beds Occupied Estimated",
    "Percentage LL",
    "Percentage UL",
    "Total Staffed Adult ICU Beds",
    "Total LL",
    "Total UL",
    CURRENT_TIMESTAMP(0)
    FROM TRNG_COVID19.STG_Estimated_Icu
    WHERE (state, collection_date) not in (SELECT STATE_CD, COLLECTION_DATE_KEY FROM TRNG_COVID19.F_IND_DASH_EST_HOSP_ICU);
	
	----------------------------------------------------------- 
	SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
	----------------------------------------------------------- 
	
INSERT INTO TRNG_COVID19.F_IND_DASH_EST_HOSP_INPATIENT
SELECT "state",
    "collection_date",
    "Inpatient Beds Occupied Estimated",
    "Count LL",
    "Count UL",
    "Percentage of Inpatient Beds Occupied Estimated",
    "Percentage LL",
    "Percentage UL",
    "Total Inpatient Beds",
    "Total LL",
    "Total UL",
    CURRENT_TIMESTAMP(0)
    FROM TRNG_COVID19.STG_Estimated_Inpatient_All
    WHERE (state, collection_date) not in (SELECT STATE_CD, COLLECTION_DATE_KEY FROM TRNG_COVID19.F_IND_DASH_EST_HOSP_INPATIENT);
	
	----------------------------------------------------------- 
	SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
	----------------------------------------------------------- 
	
INSERT INTO TRNG_COVID19.F_IND_DASH_EST_HOSP_COVID_INPATIENT
SELECT "state",
    "collection_date",
    "Inpatient Beds Occupied by COVID-19 Patients Estimated",
    "Count LL",
    "Count UL",
    "Percentage of Inpatient Beds Occupied by COVID-19 Patients Estimated",
    "Percentage LL",
    "Percentage UL",
    "Total Inpatient Beds",
    "Total LL",
    "Total UL",
    CURRENT_TIMESTAMP(0)
    FROM TRNG_COVID19.STG_Estimated_Inpatient_Covid
     WHERE (state, collection_date) not in (SELECT STATE_CD, COLLECTION_DATE_KEY FROM TRNG_COVID19.F_IND_DASH_EST_HOSP_COVID_INPATIENT);
	 
 -- 10/02/20 End of Changes 
 
/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;


/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));
	
END;


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
REPLACE PROCEDURE TRNG_COVID19.ETL_COVID_MODEL_CORE_am (OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_COVID_MODEL_CORE                                              		
Developed By      : Teradata Team                                                                            			  
Created           : June 26, 2020 			                                                                           		     
Description       : This Procecdure is used to Upcert FACT_Covid_Model_Data Table									 
Procedure syntax  : CALL ETL_COVID_MODEL_CORE (v_MsgTxt,v_RowCnt,v_ResultSet) ;      

1 - Represnts Failure
Null - Represnts Success   
                                                                                                                                  
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
06/26/2020      1.0         Teradata DW              	Initial
07/11/2020		2.0			Teradata DW					Added the insert to FACT_Covid_Model_Data_SUM as target
07/25/2020		3.0			Teradata DW					Modified the STG_Summary_stats_all_locs to not be based on path date
07/29/2020		4.0			Teradata DW					Modified the State join to be US only
10/02/2020		5.0			Teradata DW					Added the new source of hospitalization data
10/07/2020		6.0			Teradata DW					The source data column naming changed casuing the proc to break
*/
/*****************************************************************************************************/
SQL SECURITY INVOKER
BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'FACT_Covid_Model_Data';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_COVID_MODEL_CORE';
DECLARE v_Date_Key_Val DATE;
DECLARE v_Message VARCHAR(200);

/* Exception Handling when when SQL Exception occurs */
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS EXCEPTION 1
	v_Message = MESSAGE_TEXT;
	INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs (Sql_Code,Logged_Time,Sql_State,Error_Text,Procedure_Name)
	VALUES(:SQLCODE,CURRENT_TIMESTAMP(0),:SQLSTATE,v_Message,v_ProcName);
	--
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;

/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/

-- 07.25.20 Changes
SELECT CASE WHEN MAX(DATE_KEY) IS NULL THEN DATE 
			ELSE TO_DATE('9999-12-31','YYYY-MM-DD') END into v_Date_Key_Val
FROM TRNG_COVID19.FACT_Covid_Model_Data t
WHERE EXISTS (SELECT 1 FROM TRNG_COVID19.STG_Hospitalization_all_locs WHERE Path_Update_Dt = t.Path_Update_Val);


IF v_Date_Key_Val <> '9999-12-31'(DATE) THEN
	-- forcasting model
	-- Every version is kept for day over day comparison
	MERGE INTO TRNG_COVID19.FACT_Covid_Model_Data as target
	USING  
	  	(select x.PROCESS_TYPE,     
	    		CASE WHEN x.PROCESS_TYPE = 'I'
	        	THEN y.MAX_ID + ROW_NUMBER() OVER(ORDER BY x.location_name,x.Modeled_date)
				ELSE x.MODEL_KEY END AS MODEL_KEY,
	  	x.geo_key,
	  	x.geo_granularity,
	    x.MODEL_VERSION,
	    x.location_name,
	    x.Modeled_date,
	    x.date_key,
	    x.DATE_GRANULARITY,
	    x.allbed_mean,
	    x.allbed_lower,
	    x.allbed_upper,
	    x.ICUbed_mean,
	    x.ICUbed_lower,
	    x.ICUbed_upper,
	    x.InvVen_mean,
	    x.InvVen_lower,
	    x.InvVen_upper,
	    x.deaths_mean,
	    x.deaths_lower,
	    x.deaths_upper,
	    x.admis_mean,
	    x.admis_lower,
	    x.admis_upper,
	    x.newICU_mean,
	    x.newICU_lower,
	    x.newICU_upper,
	    x.totdea_mean,
	    x.totdea_lower,
	    x.totdea_upper,
	    x.bedover_mean,
	    x.bedover_lower,
	    x.bedover_upper,
	    x.icuover_mean,
	    x.icuover_lower,
	    x.icuover_upper,
	    x.deaths_mean_smoothed,
	    x.deaths_lower_smoothed,
	    x.deaths_upper_smoothed,
	    x.totdea_mean_smoothed,
	    x.totdea_lower_smoothed,
	    x.totdea_upper_smoothed,
	    x.mobility_data_type,
	    x.mobility_composite,
	    x.total_tests_data_type,
	    x.total_tests,
	    x.confirmed_infections,
	    x.est_infections_mean,
	    x.est_infections_lower,
	    x.est_infections_upper,
	    x.REC_INS_TS,
	    x.REC_UPD_TS,
		x.Path_Update_Val
	from (
	 	select
	  	b.MODEL_KEY,
	  	a.geo_key,
	  	a.geo_granularity,
	    a.MODEL_VERSION,
	    a.location_name,
	    a.Modeled_date,
	    a.date_key,
	    a.DATE_GRANULARITY,
	    a.allbed_mean,
	    a.allbed_lower,
	    a.allbed_upper,
	    a.ICUbed_mean,
	    a.ICUbed_lower,
	    a.ICUbed_upper,
	    a.InvVen_mean,
	    a.InvVen_lower,
	    a.InvVen_upper,
	    a.deaths_mean,
	    a.deaths_lower,
	    a.deaths_upper,
	    a.admis_mean,
	    a.admis_lower,
	    a.admis_upper,
	    a.newICU_mean,
	    a.newICU_lower,
	    a.newICU_upper,
	    a.totdea_mean,
	    a.totdea_lower,
	    a.totdea_upper,
	    a.bedover_mean,
	    a.bedover_lower,
	    a.bedover_upper,
	    a.icuover_mean,
	    a.icuover_lower,
	    a.icuover_upper,
	    a.deaths_mean_smoothed,
	    a.deaths_lower_smoothed,
	    a.deaths_upper_smoothed,
	    a.totdea_mean_smoothed,
	    a.totdea_lower_smoothed,
	    a.totdea_upper_smoothed,
	    a.mobility_data_type,
	    a.mobility_composite,
	    a.total_tests_data_type,
	    a.total_tests,
	    a.confirmed_infections,
	    a.est_infections_mean,
	    a.est_infections_lower,
	    a.est_infections_upper,
	    coalesce(b.REC_INS_TS,a.REC_INS_TS) REC_INS_TS,
	    a.REC_UPD_TS,
	    CASE WHEN b.MODEL_KEY IS NULL THEN 'I'
	          ELSE NULL END AS PROCESS_TYPE,
		a.Path_Update_Val
	    FROM  ( 
				select 
			 	coalesce(l.uid,-1) geo_key,
			 	coalesce(l.geo_granularity, (select geo_granularity from TRNG_COVID19.DIM_GEO_LOCATION_V where uid = -1) ) geo_granularity,
			 	a.V1 MODEL_VERSION,
			    a.location_name,
			    a."date"  Modeled_date, 
			    a.allbed_mean,
			    a.allbed_lower,
			    a.allbed_upper,
			    a.ICUbed_mean,
			    a.ICUbed_lower,
			    a.ICUbed_upper,
			    a.InvVen_mean,
			    a.InvVen_lower,
			    a.InvVen_upper,
			    a.deaths_mean,
			    a.deaths_lower,
			    a.deaths_upper,
			    a.admis_mean,
			    a.admis_lower,
			    a.admis_upper,
			    a.newICU_mean,
			    a.newICU_lower,
			    a.newICU_upper,
			    a.totdea_mean,
			    a.totdea_lower,
			    a.totdea_upper,
			    a.bedover_mean,
			    a.bedover_lower,
			    a.bedover_upper,
			    a.icuover_mean,
			    a.icuover_lower,
			    a.icuover_upper,
			    a.deaths_mean_smoothed,
			    a.deaths_lower_smoothed,
			    a.deaths_upper_smoothed,
			    a.totdea_mean_smoothed,
			    a.totdea_lower_smoothed,
			    a.totdea_upper_smoothed,
			    a.mobility_data_type,
			    a.mobility_composite,
			    a.total_tests_data_type,
			    a.total_tests,
			    a.confirmed_infections,
			    a.est_infections_mean,
			    a.est_infections_lower,
			    a.est_infections_upper,
				current_timestamp(0) REC_INS_TS, 	 
				current_timestamp(0) REC_UPD_TS,
				--cast(Path_Update_Dt as date) date_key,
				v_Date_Key_Val as date_key,
				'Daily' date_granularity,
				a.Path_Update_dt as Path_Update_Val
				from TRNG_COVID19.STG_Hospitalization_all_locs a
				left outer join TRNG_COVID19.DIM_GEO_LOCATION_V l 
			        	on (a.location_name = l.state_name
						-- 07.29.20 Changes
			        	and l.geo_granularity = 'State' and location_id  between 500 and 599) -- handle Georgia
			        	or (a.location_name = l.country_name
			        	and l.geo_granularity = 'country')
				 
			    --where date_key >= coalesce((select max(date_key) from TRNG_COVID19.FACT_Covid_Model_Data),date_key)
	        ) a     
	        LEFT OUTER JOIN TRNG_COVID19.FACT_Covid_Model_Data b
	        	on a.geo_key =  b.geo_key 
				and a.Modeled_date = b.Modeled_date
				and a.date_key = b.date_key) AS x

	        CROSS JOIN
	                (SELECT ZEROIFNULL(MAX(Model_KEY)) AS MAX_ID
	                 FROM TRNG_COVID19.FACT_Covid_Model_Data 
	                ) AS y  
	        WHERE x.PROCESS_TYPE IS NOT NULL
			
		)  as source
	-- join on primary key is obligatory
	ON  source.Model_KEY = target.Model_KEY
	and source.date_key = target.date_key
	and source.geo_key = target.geo_key
	--
	WHEN NOT MATCHED THEN 
	insert  
	(   	
		MODEL_KEY,
	    DATE_KEY,
	    DATE_GRANULARITY,
	    GEO_KEY,
	    GEO_GRANULARITY,
	    MODEL_VERSION,
	    location_name,
	    Modeled_date,
	    allbed_mean,
	    allbed_lower,
	    allbed_upper,
	    ICUbed_mean,
	    ICUbed_lower,
	    ICUbed_upper,
	    InvVen_mean,
	    InvVen_lower,
	    InvVen_upper,
	    deaths_mean,
	    deaths_lower,
	    deaths_upper,
	    admis_mean,
	    admis_lower,
	    admis_upper,
	    newICU_mean,
	    newICU_lower,
	    newICU_upper,
	    totdea_mean,
	    totdea_lower,
	    totdea_upper,
	    bedover_mean,
	    bedover_lower,
	    bedover_upper,
	    icuover_mean,
	    icuover_lower,
	    icuover_upper,
	    deaths_mean_smoothed,
	    deaths_lower_smoothed,
	    deaths_upper_smoothed,
	    totdea_mean_smoothed,
	    totdea_lower_smoothed,
	    totdea_upper_smoothed,
	    mobility_data_type,
	    mobility_composite,
	    total_tests_data_type,
	    total_tests,
	    confirmed_infections,
	    est_infections_mean,
	    est_infections_lower,
	    est_infections_upper,
	    REC_INS_TS,
	    REC_UPD_TS,
		Path_Update_Val) 
	values (	
	   	source.MODEL_KEY,
	    source.DATE_key,
	    source.DATE_GRANULARITY,
	    source.GEO_KEY,
	    source.GEO_GRANULARITY,
	    source.MODEL_VERSION,
	    source.location_name,
	    source.Modeled_date,
	    source.allbed_mean,
	    source.allbed_lower,
	    source.allbed_upper,
	    source.ICUbed_mean,
	    source.ICUbed_lower,
	    source.ICUbed_upper,
	    source.InvVen_mean,
	    source.InvVen_lower,
	    source.InvVen_upper,
	   	source.deaths_mean,
	    source.deaths_lower,
	    source.deaths_upper,
	    source.admis_mean,
	    source.admis_lower,
	    source.admis_upper,
	    source.newICU_mean,
	    source.newICU_lower,
	    source.newICU_upper,
	    source.totdea_mean,
	    source.totdea_lower,
	    source.totdea_upper,
	    source.bedover_mean,
	   	source.bedover_lower,
	    source.bedover_upper,
	    source.icuover_mean,
	    source.icuover_lower,
	    source.icuover_upper,
	    source.deaths_mean_smoothed,
	    source.deaths_lower_smoothed,
	    source.deaths_upper_smoothed,
	    source.totdea_mean_smoothed,
	    source.totdea_lower_smoothed,
	    source.totdea_upper_smoothed,
	    source.mobility_data_type,
	    source.mobility_composite,
	    source.total_tests_data_type,
	    source.total_tests,
	    source.confirmed_infections,
	    source.est_infections_mean,
	    source.est_infections_lower,
	    source.est_infections_upper,
	    source.REC_INS_TS,
	    source.REC_UPD_TS,
		source.Path_Update_Val);
	    
	----------------------------------------------------------- 
	SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
	----------------------------------------------------------- 

	delete from TRNG_COVID19.FACT_Covid_Model_Data_UNPIVOT;
	insert into TRNG_COVID19.FACT_Covid_Model_Data_UNPIVOT
	SELECT 
		MODEL_KEY,
	    DATE_KEY,
	    DATE_GRANULARITY,
	    GEO_KEY,
	    GEO_GRANULARITY,
	    MODELED_DATE,
	    MODEL_VERSION,
	    location_name,
	    mobility_data_type,
	    total_tests_data_type,
	    Metric_name,
	    Metric_value,
	    REC_INS_TS,
	    REC_UPD_TS 
		--
	    FROM TRNG_COVID19.FACT_Covid_Model_Data 
	    UNPIVOT ((metric_value)  FOR  metric_name 
	    IN ((allbed_mean) as'allbed_mean',
			(allbed_lower) as'allbed_lower',
			(allbed_upper) as'allbed_upper',
			(ICUbed_mean) as'ICUbed_mean',
			(ICUbed_lower) as'ICUbed_lower',
			(ICUbed_upper) as'ICUbed_upper',
			(InvVen_mean) as'InvVen_mean',
			(InvVen_lower) as'InvVen_lower',
			(InvVen_upper) as'InvVen_upper',
			(deaths_mean) as'deaths_mean',
			(deaths_lower) as'deaths_lower',
			(deaths_upper) as'deaths_upper',
			(admis_mean) as'admis_mean',
			(admis_lower) as'admis_lower',
			(admis_upper) as'admis_upper',
			(newICU_mean) as'newICU_mean',
			(newICU_lower) as'newICU_lower',
			(newICU_upper) as'newICU_upper',
			(totdea_mean) as'totdea_mean',
			(totdea_lower) as'totdea_lower',
			(totdea_upper) as'totdea_upper',
			(bedover_mean) as'bedover_mean',
			(bedover_lower) as'bedover_lower',
			(bedover_upper) as'bedover_upper',
			(icuover_mean) as'icuover_mean',
			(icuover_lower) as'icuover_lower',
			(icuover_upper) as'icuover_upper',
			(deaths_mean_smoothed) as'deaths_mean_smoothed',
			(deaths_lower_smoothed) as'deaths_lower_smoothed',
			(deaths_upper_smoothed) as'deaths_upper_smoothed',
			(totdea_mean_smoothed) as'totdea_mean_smoothed',
			(totdea_lower_smoothed) as'totdea_lower_smoothed',
			(totdea_upper_smoothed) as'totdea_upper_smoothed',
			 --(mobility_data_type) as'mobility_data_type',
			 (mobility_composite) as'mobility_composite',
			--(total_tests_data_type) as'total_tests_data_type',
			 (total_tests) as'total_tests',
			(confirmed_infections) as'confirmed_infections',
			(est_infections_mean) as'est_infections_mean',
			(est_infections_lower) as'est_infections_lower',
			(est_infections_upper) as'est_infections_upper'
			) )  a
	--07/25/2020 Changes
	where a.date_key = v_Date_Key_Val;

	----------------------------------------------------------- 
	SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
	----------------------------------------------------------- 
	-- Added 07/11/20
	MERGE INTO TRNG_COVID19.FACT_Covid_Model_Data_SUM as target
	USING  
	  (   
	   select          
	   	x.PROCESS_TYPE,     
	    x.DATE_KEY,
	    x.DATE_GRANULARITY,
	    x.GEO_KEY,
	    x.GEO_GRANULARITY,
	    x.peak_bed_day_mean,
	    x.peak_bed_day_lower,
	    x.peak_bed_day_upper,
	    x.peak_icu_bed_day_mean,
	    x.peak_icu_bed_day_lower,
	    x.peak_icu_bed_day_upper,
	    x.peak_vent_day_mean,
	    x.peak_vent_day_lower,
	    x.peak_vent_day_upper,
	    x.all_bed_capacity,
	    x.icu_bed_capacity,
	    x.all_bed_usage,
	    x.icu_bed_usage,
	    x.available_all_nbr,
	    x.available_icu_nbr,
	    x.travel_limit_start_date,
	    x.travel_limit_end_date,
	    x.stay_home_start_date,
	    x.stay_home_end_date,
	    x.educational_fac_start_date,
	    x.educational_fac_end_date,
	    x.any_gathering_restrict_start_date,
	    x.any_gathering_restrict_end_date,
	    x.any_business_start_date,
	    x.any_business_end_date,
	    x.all_non_ess_business_start_date,
	    x.all_non_ess_business_end_date,
	    x.REC_INS_TS,
	    x.REC_UPD_TS
		-- 
	from (
	 	select   
	  	a.DATE_KEY,
	    a.DATE_GRANULARITY,
	    a.GEO_KEY,
	    a.GEO_GRANULARITY,
	    a.peak_bed_day_mean,
	    a.peak_bed_day_lower,
	    a.peak_bed_day_upper,
	    a.peak_icu_bed_day_mean,
	    a.peak_icu_bed_day_lower,
	    a.peak_icu_bed_day_upper,
	    a.peak_vent_day_mean,
	    a.peak_vent_day_lower,
	    a.peak_vent_day_upper,
	    a.all_bed_capacity,
	    a.icu_bed_capacity,
	    a.all_bed_usage,
	    a.icu_bed_usage,
	    a.available_all_nbr,
	    a.available_icu_nbr,
	    a.travel_limit_start_date,
	    a.travel_limit_end_date,
	    a.stay_home_start_date,
	    a.stay_home_end_date,
	    a.educational_fac_start_date,
	    a.educational_fac_end_date,
	    a.any_gathering_restrict_start_date,
	    a.any_gathering_restrict_end_date,
	    a.any_business_start_date,
	    a.any_business_end_date,
	    a.all_non_ess_business_start_date,
	    a.all_non_ess_business_end_date,
	    coalesce(b.REC_INS_TS,current_timestamp(0)) REC_INS_TS,
	    current_timestamp REC_UPD_TS,
	    CASE WHEN b.date_KEY IS NULL THEN 'I'
	         ELSE NULL END AS PROCESS_TYPE
	    from  ( 
	 	select 
		--cast(  Path_Update_Dt  as date) date_key,
		v_Date_Key_Val as date_key,
		'Daily' date_granularity, 
	 	coalesce(l.uid,-1) geo_key,
	 	coalesce(l.geo_granularity, (select geo_granularity from TRNG_COVID19.DIM_GEO_LOCATION_V where uid = -1) ) geo_granularity,
	    a.peak_bed_day_mean,
	    a.peak_bed_day_lower,
	    a.peak_bed_day_upper,
	    a.peak_icu_bed_day_mean,
	    a.peak_icu_bed_day_lower,
	    a.peak_icu_bed_day_upper,
	    a.peak_vent_day_mean,
	    a.peak_vent_day_lower,
	    a.peak_vent_day_upper,
	    a.all_bed_capacity,
	    a.icu_bed_capacity,
	    a.all_bed_usage,
	    a.icu_bed_usage,
	    a.available_all_nbr,
	    a.available_icu_nbr,
	    a.travel_limit_start_date,
	    a.travel_limit_end_date,
	    a.stay_home_start_date,
	    a.stay_home_end_date,
	    a.educational_fac_start_date,
	    a.educational_fac_end_date,
	    a.any_gathering_restrict_start_date,
	    a.any_gathering_restrict_end_date,
	    a.any_business_start_date,
	    a.any_business_end_date,
	    a."ALL_NON-ESS_BUSINESS_START_DATE" ALL_NON_ESS_BUSINESS_START_DATE,
	    a."ALL_NON-ESS_BUSINESS_END_DATE" ALL_NON_ESS_BUSINESS_END_DATE 
		--
	    from TRNG_COVID19.STG_Summary_stats_all_locs a
	    left outer join TRNG_COVID19.DIM_GEO_LOCATION_V l 
	      	on (a.location_name = l.state_name
			-- 07.29.20 Changes
	       	and l.geo_granularity = 'State' and location_id  between 500 and 599) -- handle Georgia
	       	or (a.location_name = l.country_name
	       	and l.geo_granularity = 'country')
	    --where date_key >= coalesce((select max(date_key) from TRNG_COVID19.FACT_Covid_Model_Data_SUM),date_key)
	        ) a     
	        LEFT OUTER JOIN TRNG_COVID19.FACT_Covid_Model_Data_SUM b
	        on a.geo_key =  b.geo_key 
			and a.date_key = b.date_key         
	        ) AS x
	  
	        WHERE x.PROCESS_TYPE IS NOT NULL 
	             
	)  as source
	--
	ON source.date_key = target.date_key
	AND source.geo_key = target.geo_key
	--
	WHEN NOT MATCHED THEN 
	insert  
	(   	
	 	DATE_KEY,
	    DATE_GRANULARITY,
	    GEO_KEY,
	    GEO_GRANULARITY,
	    peak_bed_day_mean,
	    peak_bed_day_lower,
	    peak_bed_day_upper,
	    peak_icu_bed_day_mean,
	    peak_icu_bed_day_lower,
	    peak_icu_bed_day_upper,
	    peak_vent_day_mean,
	    peak_vent_day_lower,
	    peak_vent_day_upper,
	    all_bed_capacity,
	    icu_bed_capacity,
	    all_bed_usage,
	    icu_bed_usage,
	    available_all_nbr,
	    available_icu_nbr,
	    travel_limit_start_date,
	    travel_limit_end_date,
	    stay_home_start_date,
	    stay_home_end_date,
	    educational_fac_start_date,
	    educational_fac_end_date,
	    any_gathering_restrict_start_date,
	    any_gathering_restrict_end_date,
	    any_business_start_date,
	    any_business_end_date,
	    all_non_ess_business_start_date,
	    all_non_ess_business_end_date,
	    REC_INS_TS,
	    REC_UPD_TS  ) 
	values ( 
	  	source.DATE_KEY,
	    source.DATE_GRANULARITY,
	    source.GEO_KEY,
	    source.GEO_GRANULARITY,
	    source.peak_bed_day_mean,
	    source.peak_bed_day_lower,
	    source.peak_bed_day_upper,
	    source.peak_icu_bed_day_mean,
	    source.peak_icu_bed_day_lower,
	    source.peak_icu_bed_day_upper,
	    source.peak_vent_day_mean,
	    source.peak_vent_day_lower,
	    source.peak_vent_day_upper,
	    source.all_bed_capacity,
	    source.icu_bed_capacity,
	    source.all_bed_usage,
	    source.icu_bed_usage,
	    source.available_all_nbr,
	    source.available_icu_nbr,
	    source.travel_limit_start_date,
	    source.travel_limit_end_date,
	    source.stay_home_start_date,
	    source.stay_home_end_date,
	    source.educational_fac_start_date,
	    source.educational_fac_end_date,
	    source.any_gathering_restrict_start_date,
	    source.any_gathering_restrict_end_date,
	    source.any_business_start_date,
	    source.any_business_end_date,
	    source.all_non_ess_business_start_date,
	    source.all_non_ess_business_end_date,
	    source.REC_INS_TS,
	    null  );
		--
END IF;

 -- 10/02/20 Changes
----------------------------------------------------------- 
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
----------------------------------------------------------- 

INSERT INTO TRNG_COVID19.F_IND_DASH_EST_HOSP_ICU
SELECT "state",
    "collection_date",
    "Staffed Adult ICU Beds Occupied Estimated",
    "Count LL",
    "Count UL",
    "Percentage of Staffed Adult ICU Beds Occupied Estimated",
    "Percentage LL",
    "Percentage UL",
    "Total Staffed Adult ICU Beds",
    "Total LL",
    "Total UL",
    CURRENT_TIMESTAMP(0)
    FROM TRNG_COVID19.STG_Estimated_Icu
    WHERE (state, collection_date) not in (SELECT STATE_CD, COLLECTION_DATE_KEY FROM TRNG_COVID19.F_IND_DASH_EST_HOSP_ICU);
	
	----------------------------------------------------------- 
	SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
	----------------------------------------------------------- 
	
INSERT INTO TRNG_COVID19.F_IND_DASH_EST_HOSP_INPATIENT
SELECT "state",
    "collection_date",
    "Inpatient Beds Occupied Estimated",
    "Count LL",
    "Count UL",
    "Percentage of Inpatient Beds Occupied Estimated",
    "Percentage LL",
    "Percentage UL",
    "Total Inpatient Beds",
    "Total LL",
    "Total UL",
    CURRENT_TIMESTAMP(0)
    FROM TRNG_COVID19.STG_Estimated_Inpatient_All
    WHERE (state, collection_date) not in (SELECT STATE_CD, COLLECTION_DATE_KEY FROM TRNG_COVID19.F_IND_DASH_EST_HOSP_INPATIENT);
	
	----------------------------------------------------------- 
	SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
	----------------------------------------------------------- 
	
INSERT INTO TRNG_COVID19.F_IND_DASH_EST_HOSP_COVID_INPATIENT
SELECT "state",
    "collection_date",
    "Inpatient Beds Occupied by COVID-19 Patients Estimated",
    "Count LL",
    "Count UL",
    "Percentage of Inpatient Beds Occupied by COVID-19 Patients Estimated",
    "Percentage LL",
    "Percentage UL",
    "Total Inpatient Beds",
    "Total LL",
    "Total UL",
    CURRENT_TIMESTAMP(0)
    FROM TRNG_COVID19.STG_Estimated_Inpatient_Covid
     WHERE (state, collection_date) not in (SELECT STATE_CD, COLLECTION_DATE_KEY FROM TRNG_COVID19.F_IND_DASH_EST_HOSP_COVID_INPATIENT);
	 
 -- 10/02/20 End of Changes 
 
/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;


/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));
	
END;

CREATE PROCEDURE ETL_COVID_MODEL_CORE_BKP_21_05_2021 (OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_COVID_MODEL_CORE                                              		
Developed By      : Teradata Team                                                                            			  
Created           : June 26, 2020 			                                                                           		     
Description       : This Procecdure is used to Upcert FACT_Covid_Model_Data Table									 
Procedure syntax  : CALL ETL_COVID_MODEL_CORE (v_MsgTxt,v_RowCnt,v_ResultSet) ;      

1 - Represnts Failure
Null - Represnts Success   
                                                                                                                                  
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
06/26/2020      1.0         Teradata DW              	Initial
07/11/2020		2.0			Teradata DW					Added the insert to FACT_Covid_Model_Data_SUM as target
07/25/2020		3.0			Teradata DW					Modified the STG_Summary_stats_all_locs to not be based on path date
07/29/2020		4.0			Teradata DW					Modified the State join to be US only
10/02/2020		5.0			Teradata DW					Added the new source of hospitalization data
10/07/2020		6.0			Teradata DW					The source data column naming changed casuing the proc to break
*/
/*****************************************************************************************************/
SQL SECURITY INVOKER
BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'FACT_Covid_Model_Data';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_COVID_MODEL_CORE';
DECLARE v_Date_Key_Val DATE;
DECLARE v_Message VARCHAR(200);

/* Exception Handling when when SQL Exception occurs */
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS EXCEPTION 1
	v_Message = MESSAGE_TEXT;
	INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs (Sql_Code,Logged_Time,Sql_State,Error_Text,Procedure_Name)
	VALUES(:SQLCODE,CURRENT_TIMESTAMP(0),:SQLSTATE,v_Message,v_ProcName);
	--
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;

/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/

-- 07.25.20 Changes
SELECT CASE WHEN MAX(DATE_KEY) IS NULL THEN DATE 
			ELSE TO_DATE('9999-12-31','YYYY-MM-DD') END into v_Date_Key_Val
FROM TRNG_COVID19.FACT_Covid_Model_Data t
WHERE EXISTS (SELECT 1 FROM TRNG_COVID19.STG_Hospitalization_all_locs WHERE Path_Update_Dt = t.Path_Update_Val);


IF v_Date_Key_Val <> '9999-12-31'(DATE) THEN
	-- forcasting model
	-- Every version is kept for day over day comparison
	MERGE INTO TRNG_COVID19.FACT_Covid_Model_Data as target
	USING  
	  	(select x.PROCESS_TYPE,     
	    		CASE WHEN x.PROCESS_TYPE = 'I'
	        	THEN y.MAX_ID + ROW_NUMBER() OVER(ORDER BY x.location_name,x.Modeled_date)
				ELSE x.MODEL_KEY END AS MODEL_KEY,
	  	x.geo_key,
	  	x.geo_granularity,
	    x.MODEL_VERSION,
	    x.location_name,
	    x.Modeled_date,
	    x.date_key,
	    x.DATE_GRANULARITY,
	    x.allbed_mean,
	    x.allbed_lower,
	    x.allbed_upper,
	    x.ICUbed_mean,
	    x.ICUbed_lower,
	    x.ICUbed_upper,
	    x.InvVen_mean,
	    x.InvVen_lower,
	    x.InvVen_upper,
	    x.deaths_mean,
	    x.deaths_lower,
	    x.deaths_upper,
	    x.admis_mean,
	    x.admis_lower,
	    x.admis_upper,
	    x.newICU_mean,
	    x.newICU_lower,
	    x.newICU_upper,
	    x.totdea_mean,
	    x.totdea_lower,
	    x.totdea_upper,
	    x.bedover_mean,
	    x.bedover_lower,
	    x.bedover_upper,
	    x.icuover_mean,
	    x.icuover_lower,
	    x.icuover_upper,
	    x.deaths_mean_smoothed,
	    x.deaths_lower_smoothed,
	    x.deaths_upper_smoothed,
	    x.totdea_mean_smoothed,
	    x.totdea_lower_smoothed,
	    x.totdea_upper_smoothed,
	    x.mobility_data_type,
	    x.mobility_composite,
	    x.total_tests_data_type,
	    x.total_tests,
	    x.confirmed_infections,
	    x.est_infections_mean,
	    x.est_infections_lower,
	    x.est_infections_upper,
	    x.REC_INS_TS,
	    x.REC_UPD_TS,
		x.Path_Update_Val
	from (
	 	select
	  	b.MODEL_KEY,
	  	a.geo_key,
	  	a.geo_granularity,
	    a.MODEL_VERSION,
	    a.location_name,
	    a.Modeled_date,
	    a.date_key,
	    a.DATE_GRANULARITY,
	    a.allbed_mean,
	    a.allbed_lower,
	    a.allbed_upper,
	    a.ICUbed_mean,
	    a.ICUbed_lower,
	    a.ICUbed_upper,
	    a.InvVen_mean,
	    a.InvVen_lower,
	    a.InvVen_upper,
	    a.deaths_mean,
	    a.deaths_lower,
	    a.deaths_upper,
	    a.admis_mean,
	    a.admis_lower,
	    a.admis_upper,
	    a.newICU_mean,
	    a.newICU_lower,
	    a.newICU_upper,
	    a.totdea_mean,
	    a.totdea_lower,
	    a.totdea_upper,
	    a.bedover_mean,
	    a.bedover_lower,
	    a.bedover_upper,
	    a.icuover_mean,
	    a.icuover_lower,
	    a.icuover_upper,
	    a.deaths_mean_smoothed,
	    a.deaths_lower_smoothed,
	    a.deaths_upper_smoothed,
	    a.totdea_mean_smoothed,
	    a.totdea_lower_smoothed,
	    a.totdea_upper_smoothed,
	    a.mobility_data_type,
	    a.mobility_composite,
	    a.total_tests_data_type,
	    a.total_tests,
	    a.confirmed_infections,
	    a.est_infections_mean,
	    a.est_infections_lower,
	    a.est_infections_upper,
	    coalesce(b.REC_INS_TS,a.REC_INS_TS) REC_INS_TS,
	    a.REC_UPD_TS,
	    CASE WHEN b.MODEL_KEY IS NULL THEN 'I'
	          ELSE NULL END AS PROCESS_TYPE,
		a.Path_Update_Val
	    FROM  ( 
				select 
			 	coalesce(l.uid,-1) geo_key,
			 	coalesce(l.geo_granularity, (select geo_granularity from TRNG_COVID19.DIM_GEO_LOCATION_V where uid = -1) ) geo_granularity,
			 	a.V1 MODEL_VERSION,
			    a.location_name,
			    a."date"  Modeled_date, 
			    a.allbed_mean,
			    a.allbed_lower,
			    a.allbed_upper,
			    a.ICUbed_mean,
			    a.ICUbed_lower,
			    a.ICUbed_upper,
			    a.InvVen_mean,
			    a.InvVen_lower,
			    a.InvVen_upper,
			    a.deaths_mean,
			    a.deaths_lower,
			    a.deaths_upper,
			    a.admis_mean,
			    a.admis_lower,
			    a.admis_upper,
			    a.newICU_mean,
			    a.newICU_lower,
			    a.newICU_upper,
			    a.totdea_mean,
			    a.totdea_lower,
			    a.totdea_upper,
			    a.bedover_mean,
			    a.bedover_lower,
			    a.bedover_upper,
			    a.icuover_mean,
			    a.icuover_lower,
			    a.icuover_upper,
			    a.deaths_mean_smoothed,
			    a.deaths_lower_smoothed,
			    a.deaths_upper_smoothed,
			    a.totdea_mean_smoothed,
			    a.totdea_lower_smoothed,
			    a.totdea_upper_smoothed,
			    a.mobility_data_type,
			    a.mobility_composite,
			    a.total_tests_data_type,
			    a.total_tests,
			    a.confirmed_infections,
			    a.est_infections_mean,
			    a.est_infections_lower,
			    a.est_infections_upper,
				current_timestamp(0) REC_INS_TS, 	 
				current_timestamp(0) REC_UPD_TS,
				--cast(Path_Update_Dt as date) date_key,
				v_Date_Key_Val as date_key,
				'Daily' date_granularity,
				a.Path_Update_dt as Path_Update_Val
				from TRNG_COVID19.STG_Hospitalization_all_locs a
				left outer join TRNG_COVID19.DIM_GEO_LOCATION_V l 
			        	on (a.location_name = l.state_name
						-- 07.29.20 Changes
			        	and l.geo_granularity = 'State' and location_id  between 500 and 599) -- handle Georgia
			        	or (a.location_name = l.country_name
			        	and l.geo_granularity = 'country')
				 
			    --where date_key >= coalesce((select max(date_key) from TRNG_COVID19.FACT_Covid_Model_Data),date_key)
	        ) a     
	        LEFT OUTER JOIN TRNG_COVID19.FACT_Covid_Model_Data b
	        	on a.geo_key =  b.geo_key 
				and a.Modeled_date = b.Modeled_date
				and a.date_key = b.date_key) AS x

	        CROSS JOIN
	                (SELECT ZEROIFNULL(MAX(Model_KEY)) AS MAX_ID
	                 FROM TRNG_COVID19.FACT_Covid_Model_Data 
	                ) AS y  
	        WHERE x.PROCESS_TYPE IS NOT NULL
			
		)  as source
	-- join on primary key is obligatory
	ON  source.Model_KEY = target.Model_KEY
	and source.date_key = target.date_key
	and source.geo_key = target.geo_key
	--
	WHEN NOT MATCHED THEN 
	insert  
	(   	
		MODEL_KEY,
	    DATE_KEY,
	    DATE_GRANULARITY,
	    GEO_KEY,
	    GEO_GRANULARITY,
	    MODEL_VERSION,
	    location_name,
	    Modeled_date,
	    allbed_mean,
	    allbed_lower,
	    allbed_upper,
	    ICUbed_mean,
	    ICUbed_lower,
	    ICUbed_upper,
	    InvVen_mean,
	    InvVen_lower,
	    InvVen_upper,
	    deaths_mean,
	    deaths_lower,
	    deaths_upper,
	    admis_mean,
	    admis_lower,
	    admis_upper,
	    newICU_mean,
	    newICU_lower,
	    newICU_upper,
	    totdea_mean,
	    totdea_lower,
	    totdea_upper,
	    bedover_mean,
	    bedover_lower,
	    bedover_upper,
	    icuover_mean,
	    icuover_lower,
	    icuover_upper,
	    deaths_mean_smoothed,
	    deaths_lower_smoothed,
	    deaths_upper_smoothed,
	    totdea_mean_smoothed,
	    totdea_lower_smoothed,
	    totdea_upper_smoothed,
	    mobility_data_type,
	    mobility_composite,
	    total_tests_data_type,
	    total_tests,
	    confirmed_infections,
	    est_infections_mean,
	    est_infections_lower,
	    est_infections_upper,
	    REC_INS_TS,
	    REC_UPD_TS,
		Path_Update_Val) 
	values (	
	   	source.MODEL_KEY,
	    source.DATE_key,
	    source.DATE_GRANULARITY,
	    source.GEO_KEY,
	    source.GEO_GRANULARITY,
	    source.MODEL_VERSION,
	    source.location_name,
	    source.Modeled_date,
	    source.allbed_mean,
	    source.allbed_lower,
	    source.allbed_upper,
	    source.ICUbed_mean,
	    source.ICUbed_lower,
	    source.ICUbed_upper,
	    source.InvVen_mean,
	    source.InvVen_lower,
	    source.InvVen_upper,
	   	source.deaths_mean,
	    source.deaths_lower,
	    source.deaths_upper,
	    source.admis_mean,
	    source.admis_lower,
	    source.admis_upper,
	    source.newICU_mean,
	    source.newICU_lower,
	    source.newICU_upper,
	    source.totdea_mean,
	    source.totdea_lower,
	    source.totdea_upper,
	    source.bedover_mean,
	   	source.bedover_lower,
	    source.bedover_upper,
	    source.icuover_mean,
	    source.icuover_lower,
	    source.icuover_upper,
	    source.deaths_mean_smoothed,
	    source.deaths_lower_smoothed,
	    source.deaths_upper_smoothed,
	    source.totdea_mean_smoothed,
	    source.totdea_lower_smoothed,
	    source.totdea_upper_smoothed,
	    source.mobility_data_type,
	    source.mobility_composite,
	    source.total_tests_data_type,
	    source.total_tests,
	    source.confirmed_infections,
	    source.est_infections_mean,
	    source.est_infections_lower,
	    source.est_infections_upper,
	    source.REC_INS_TS,
	    source.REC_UPD_TS,
		source.Path_Update_Val);
	    
	----------------------------------------------------------- 
	SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
	----------------------------------------------------------- 

	delete from TRNG_COVID19.FACT_Covid_Model_Data_UNPIVOT;
	insert into TRNG_COVID19.FACT_Covid_Model_Data_UNPIVOT
	SELECT 
		MODEL_KEY,
	    DATE_KEY,
	    DATE_GRANULARITY,
	    GEO_KEY,
	    GEO_GRANULARITY,
	    MODELED_DATE,
	    MODEL_VERSION,
	    location_name,
	    mobility_data_type,
	    total_tests_data_type,
	    Metric_name,
	    Metric_value,
	    REC_INS_TS,
	    REC_UPD_TS 
		--
	    FROM TRNG_COVID19.FACT_Covid_Model_Data 
	    UNPIVOT ((metric_value)  FOR  metric_name 
	    IN ((allbed_mean) as'allbed_mean',
			(allbed_lower) as'allbed_lower',
			(allbed_upper) as'allbed_upper',
			(ICUbed_mean) as'ICUbed_mean',
			(ICUbed_lower) as'ICUbed_lower',
			(ICUbed_upper) as'ICUbed_upper',
			(InvVen_mean) as'InvVen_mean',
			(InvVen_lower) as'InvVen_lower',
			(InvVen_upper) as'InvVen_upper',
			(deaths_mean) as'deaths_mean',
			(deaths_lower) as'deaths_lower',
			(deaths_upper) as'deaths_upper',
			(admis_mean) as'admis_mean',
			(admis_lower) as'admis_lower',
			(admis_upper) as'admis_upper',
			(newICU_mean) as'newICU_mean',
			(newICU_lower) as'newICU_lower',
			(newICU_upper) as'newICU_upper',
			(totdea_mean) as'totdea_mean',
			(totdea_lower) as'totdea_lower',
			(totdea_upper) as'totdea_upper',
			(bedover_mean) as'bedover_mean',
			(bedover_lower) as'bedover_lower',
			(bedover_upper) as'bedover_upper',
			(icuover_mean) as'icuover_mean',
			(icuover_lower) as'icuover_lower',
			(icuover_upper) as'icuover_upper',
			(deaths_mean_smoothed) as'deaths_mean_smoothed',
			(deaths_lower_smoothed) as'deaths_lower_smoothed',
			(deaths_upper_smoothed) as'deaths_upper_smoothed',
			(totdea_mean_smoothed) as'totdea_mean_smoothed',
			(totdea_lower_smoothed) as'totdea_lower_smoothed',
			(totdea_upper_smoothed) as'totdea_upper_smoothed',
			 --(mobility_data_type) as'mobility_data_type',
			 (mobility_composite) as'mobility_composite',
			--(total_tests_data_type) as'total_tests_data_type',
			 (total_tests) as'total_tests',
			(confirmed_infections) as'confirmed_infections',
			(est_infections_mean) as'est_infections_mean',
			(est_infections_lower) as'est_infections_lower',
			(est_infections_upper) as'est_infections_upper'
			) )  a
	--07/25/2020 Changes
	where a.date_key = v_Date_Key_Val;

	----------------------------------------------------------- 
	SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
	----------------------------------------------------------- 
	-- Added 07/11/20
	MERGE INTO TRNG_COVID19.FACT_Covid_Model_Data_SUM as target
	USING  
	  (   
	   select          
	   	x.PROCESS_TYPE,     
	    x.DATE_KEY,
	    x.DATE_GRANULARITY,
	    x.GEO_KEY,
	    x.GEO_GRANULARITY,
	    x.peak_bed_day_mean,
	    x.peak_bed_day_lower,
	    x.peak_bed_day_upper,
	    x.peak_icu_bed_day_mean,
	    x.peak_icu_bed_day_lower,
	    x.peak_icu_bed_day_upper,
	    x.peak_vent_day_mean,
	    x.peak_vent_day_lower,
	    x.peak_vent_day_upper,
	    x.all_bed_capacity,
	    x.icu_bed_capacity,
	    x.all_bed_usage,
	    x.icu_bed_usage,
	    x.available_all_nbr,
	    x.available_icu_nbr,
	    x.travel_limit_start_date,
	    x.travel_limit_end_date,
	    x.stay_home_start_date,
	    x.stay_home_end_date,
	    x.educational_fac_start_date,
	    x.educational_fac_end_date,
	    x.any_gathering_restrict_start_date,
	    x.any_gathering_restrict_end_date,
	    x.any_business_start_date,
	    x.any_business_end_date,
	    x.all_non_ess_business_start_date,
	    x.all_non_ess_business_end_date,
	    x.REC_INS_TS,
	    x.REC_UPD_TS
		-- 
	from (
	 	select   
	  	a.DATE_KEY,
	    a.DATE_GRANULARITY,
	    a.GEO_KEY,
	    a.GEO_GRANULARITY,
	    a.peak_bed_day_mean,
	    a.peak_bed_day_lower,
	    a.peak_bed_day_upper,
	    a.peak_icu_bed_day_mean,
	    a.peak_icu_bed_day_lower,
	    a.peak_icu_bed_day_upper,
	    a.peak_vent_day_mean,
	    a.peak_vent_day_lower,
	    a.peak_vent_day_upper,
	    a.all_bed_capacity,
	    a.icu_bed_capacity,
	    a.all_bed_usage,
	    a.icu_bed_usage,
	    a.available_all_nbr,
	    a.available_icu_nbr,
	    a.travel_limit_start_date,
	    a.travel_limit_end_date,
	    a.stay_home_start_date,
	    a.stay_home_end_date,
	    a.educational_fac_start_date,
	    a.educational_fac_end_date,
	    a.any_gathering_restrict_start_date,
	    a.any_gathering_restrict_end_date,
	    a.any_business_start_date,
	    a.any_business_end_date,
	    a.all_non_ess_business_start_date,
	    a.all_non_ess_business_end_date,
	    coalesce(b.REC_INS_TS,current_timestamp(0)) REC_INS_TS,
	    current_timestamp REC_UPD_TS,
	    CASE WHEN b.date_KEY IS NULL THEN 'I'
	         ELSE NULL END AS PROCESS_TYPE
	    from  ( 
	 	select 
		--cast(  Path_Update_Dt  as date) date_key,
		v_Date_Key_Val as date_key,
		'Daily' date_granularity, 
	 	coalesce(l.uid,-1) geo_key,
	 	coalesce(l.geo_granularity, (select geo_granularity from TRNG_COVID19.DIM_GEO_LOCATION_V where uid = -1) ) geo_granularity,
	    a.peak_bed_day_mean,
	    a.peak_bed_day_lower,
	    a.peak_bed_day_upper,
	    a.peak_icu_bed_day_mean,
	    a.peak_icu_bed_day_lower,
	    a.peak_icu_bed_day_upper,
	    a.peak_vent_day_mean,
	    a.peak_vent_day_lower,
	    a.peak_vent_day_upper,
	    a.all_bed_capacity,
	    a.icu_bed_capacity,
	    a.all_bed_usage,
	    a.icu_bed_usage,
	    a.available_all_nbr,
	    a.available_icu_nbr,
	    a.travel_limit_start_date,
	    a.travel_limit_end_date,
	    a.stay_home_start_date,
	    a.stay_home_end_date,
	    a.educational_fac_start_date,
	    a.educational_fac_end_date,
	    a.any_gathering_restrict_start_date,
	    a.any_gathering_restrict_end_date,
	    a.any_business_start_date,
	    a.any_business_end_date,
	    a."ALL_NON-ESS_BUSINESS_START_DATE" ALL_NON_ESS_BUSINESS_START_DATE,
	    a."ALL_NON-ESS_BUSINESS_END_DATE" ALL_NON_ESS_BUSINESS_END_DATE 
		--
	    from TRNG_COVID19.STG_Summary_stats_all_locs a
	    left outer join TRNG_COVID19.DIM_GEO_LOCATION_V l 
	      	on (a.location_name = l.state_name
			-- 07.29.20 Changes
	       	and l.geo_granularity = 'State' and location_id  between 500 and 599) -- handle Georgia
	       	or (a.location_name = l.country_name
	       	and l.geo_granularity = 'country')
	    --where date_key >= coalesce((select max(date_key) from TRNG_COVID19.FACT_Covid_Model_Data_SUM),date_key)
	        ) a     
	        LEFT OUTER JOIN TRNG_COVID19.FACT_Covid_Model_Data_SUM b
	        on a.geo_key =  b.geo_key 
			and a.date_key = b.date_key         
	        ) AS x
	  
	        WHERE x.PROCESS_TYPE IS NOT NULL 
	             
	)  as source
	--
	ON source.date_key = target.date_key
	AND source.geo_key = target.geo_key
	--
	WHEN NOT MATCHED THEN 
	insert  
	(   	
	 	DATE_KEY,
	    DATE_GRANULARITY,
	    GEO_KEY,
	    GEO_GRANULARITY,
	    peak_bed_day_mean,
	    peak_bed_day_lower,
	    peak_bed_day_upper,
	    peak_icu_bed_day_mean,
	    peak_icu_bed_day_lower,
	    peak_icu_bed_day_upper,
	    peak_vent_day_mean,
	    peak_vent_day_lower,
	    peak_vent_day_upper,
	    all_bed_capacity,
	    icu_bed_capacity,
	    all_bed_usage,
	    icu_bed_usage,
	    available_all_nbr,
	    available_icu_nbr,
	    travel_limit_start_date,
	    travel_limit_end_date,
	    stay_home_start_date,
	    stay_home_end_date,
	    educational_fac_start_date,
	    educational_fac_end_date,
	    any_gathering_restrict_start_date,
	    any_gathering_restrict_end_date,
	    any_business_start_date,
	    any_business_end_date,
	    all_non_ess_business_start_date,
	    all_non_ess_business_end_date,
	    REC_INS_TS,
	    REC_UPD_TS  ) 
	values ( 
	  	source.DATE_KEY,
	    source.DATE_GRANULARITY,
	    source.GEO_KEY,
	    source.GEO_GRANULARITY,
	    source.peak_bed_day_mean,
	    source.peak_bed_day_lower,
	    source.peak_bed_day_upper,
	    source.peak_icu_bed_day_mean,
	    source.peak_icu_bed_day_lower,
	    source.peak_icu_bed_day_upper,
	    source.peak_vent_day_mean,
	    source.peak_vent_day_lower,
	    source.peak_vent_day_upper,
	    source.all_bed_capacity,
	    source.icu_bed_capacity,
	    source.all_bed_usage,
	    source.icu_bed_usage,
	    source.available_all_nbr,
	    source.available_icu_nbr,
	    source.travel_limit_start_date,
	    source.travel_limit_end_date,
	    source.stay_home_start_date,
	    source.stay_home_end_date,
	    source.educational_fac_start_date,
	    source.educational_fac_end_date,
	    source.any_gathering_restrict_start_date,
	    source.any_gathering_restrict_end_date,
	    source.any_business_start_date,
	    source.any_business_end_date,
	    source.all_non_ess_business_start_date,
	    source.all_non_ess_business_end_date,
	    source.REC_INS_TS,
	    null  );
		--
END IF;

 -- 10/02/20 Changes
----------------------------------------------------------- 
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
----------------------------------------------------------- 

INSERT INTO TRNG_COVID19.F_IND_DASH_EST_HOSP_ICU
SELECT "state",
    "collection_date",
    "Staffed Adult ICU Beds Occupied Estimated",
  "Count LL",
    "Count UL",
    "Percentage of Staffed Adult ICU Beds Occupied Estimated",
    "Percentage LL",
    "Percentage UL",
    "Total Staffed Adult ICU Beds",
    "Total LL",
    "Total UL",
    CURRENT_TIMESTAMP(0)
    FROM TRNG_COVID19.STG_Estimated_Icu
    WHERE (state, collection_date) not in (SELECT STATE_CD, COLLECTION_DATE_KEY FROM TRNG_COVID19.F_IND_DASH_EST_HOSP_ICU);
	
	----------------------------------------------------------- 
	SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
	----------------------------------------------------------- 
	
INSERT INTO TRNG_COVID19.F_IND_DASH_EST_HOSP_INPATIENT
SELECT "state",
    "collection_date",
    "Inpatient Beds Occupied Estimated",
    "Count LL",
    "Count UL",
    "Percentage of Inpatient Beds Occupied Estimated",
    "Percentage LL",
    "Percentage UL",
    "Total Inpatient Beds",
    "Total LL",
    "Total UL",
    CURRENT_TIMESTAMP(0)
    FROM TRNG_COVID19.STG_Estimated_Inpatient_All
    WHERE (state, collection_date) not in (SELECT STATE_CD, COLLECTION_DATE_KEY FROM TRNG_COVID19.F_IND_DASH_EST_HOSP_INPATIENT);
	
	----------------------------------------------------------- 
	SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
	----------------------------------------------------------- 
	
INSERT INTO TRNG_COVID19.F_IND_DASH_EST_HOSP_COVID_INPATIENT
SELECT "state",
    "collection_date",
    "Inpatient Beds Occupied by COVID-19 Patients Estimated",
    "Count LL",
    "Count UL",
    "Percentage of Inpatient Beds Occupied by COVID-19 Patients Estimated",
    "Percentage LL",
    "Percentage UL",
    "Total Inpatient Beds",
    "Total LL",
    "Total UL",
    CURRENT_TIMESTAMP(0)
    FROM TRNG_COVID19.STG_Estimated_Inpatient_Covid
     WHERE (state, collection_date) not in (SELECT STATE_CD, COLLECTION_DATE_KEY FROM TRNG_COVID19.F_IND_DASH_EST_HOSP_COVID_INPATIENT);
	 
 -- 10/02/20 End of Changes 
 
/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;


/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));
	
END;

REPLACE PROCEDURE TRNG_COVID19.ETL_CUST_DATA_CORE (OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_CUST_DATA_CORE                                              		
Developed By      : Teradata Team                                                                            			  
Created           : July 27, 2020 			                                                                           		     
Description       : This Procecdure is used to upcert customer specific metrics into the data model									 
Procedure syntax  : CALL ETL_CUST_DATA_CORE (v_MsgTxt,v_RowCnt,v_ResultSet) ;      

1 - Represnts Failure
Null - Represnts Success   
                                                                                                                                  
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
07/27/2020      1.0         Teradata DW              	Initial
*/
/*****************************************************************************************************/
SQL SECURITY INVOKER
BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'TRNG_COVID19';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_CUST_DATA_CORE';
DECLARE v_Message VARCHAR(200);

/* Exception Handling when when SQL Exception occurs */
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS EXCEPTION 1
	v_Message = MESSAGE_TEXT;
	INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs (Sql_Code,Logged_Time,Sql_State,Error_Text,Procedure_Name)
	VALUES(:SQLCODE,CURRENT_TIMESTAMP(0),:SQLSTATE,v_Message,v_ProcName);
	--
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;

/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/


 
/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;


/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));
	
END;

REPLACE PROCEDURE TRNG_COVID19.ETL_FUEL_PROD_CORE(OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_FUEL_PROD_CORE                                              		
Developed By      : Teradata Team                                                                            			  
Created           : July 6, 2020 			                                                                           		     
Description       : This Procecdure is used to Upcert F_IND_DASH_GOOGLE_TRENDS Table									 
Procedure syntax  : CALL ETL_FUEDL_PROD_CORE (v_MsgTxt,v_RowCnt,v_ResultSet) ;      

1 - Represnts Failure
Null - Represnts Success   
                                                                                                                                  
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
07/06/2020      1.0         Teradata DW              	Initial
07/15/2020		2.0			Teradata DW					Adding 1000 to the metric value to get real number
*/
/*****************************************************************************************************/
SQL SECURITY INVOKER
BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'FACT_INDICATOR_DASHBOARD_T2_p';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_FUEL_PROD_CORE';
DECLARE v_Message VARCHAR(200);

/* Exception Handling when when SQL Exception occurs */
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS EXCEPTION 1
	v_Message = MESSAGE_TEXT;
	INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs (Sql_Code,Logged_Time,Sql_State,Error_Text,Procedure_Name)
	VALUES(:SQLCODE,CURRENT_TIMESTAMP(0),:SQLSTATE,v_Message,v_ProcName);
	--
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;

/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/

MERGE INTO TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_p as target
USING  
  ( 
 
  select x.PROCESS_TYPE,     
    CASE
         WHEN x.PROCESS_TYPE = 'I'
         THEN y.MAX_ID + ROW_NUMBER() OVER(
         ORDER BY x.METRIC_NAME,
           x.DATE_KEY ,
           x.GEO_GRANULARITY ,
           x.DATE_KEY ,
           x.DOMAIN_NAME ,
           x.SUBDOMAIN_1_NAME,
           x.SUBDOMAIN_2_NAME,
           x.SUBDOMAIN_3_NAME 
             )
         ELSE x.INDICATOR_KEY
         END AS INDICATOR_KEY,  	
    x.Date_key,
    x.DATE_GRANULARITY,
    x.GEO_KEY, 
    x.GEO_GRANULARITY,
    x.DOMAIN_NAME,
    x.SUBDOMAIN_1_NAME,
    x.SUBDOMAIN_2_NAME,
    x.SUBDOMAIN_3_NAME,
    x.METRIC_NAME,
    x.METRIC_VALUE,
    x.METRIC_INDEX,
    x.DATA_SOURCE_NAME,
    x.DATA_SOURCE_DESC,
    x.REC_INS_TS,
    x.REC_UPD_TS
   --select *  


from  ( 
      
     
SELECT   CASE
          WHEN b.INDICATOR_KEY IS NULL
                 THEN 'I'
          WHEN b.INDICATOR_KEY is not null  
          and (a.METRIC_VALUE <> b.METRIC_VALUE or
               a. METRIC_INDEX <> b.METRIC_INDEX) -- put weird logic here
                 THEN 'U'
          ELSE NULL
                     END AS PROCESS_TYPE,
                     b.INDICATOR_KEY,
   a.DATE_KEY,
    a.DATE_GRANULARITY,
   a.GEO_KEY,
   a.GEO_GRANULARITY,
   a.DOMAIN_NAME,
   a.SUBDOMAIN_1_NAME,
   a.SUBDOMAIN_2_NAME,
   a.SUBDOMAIN_3_NAME,
   a.METRIC_NAME,
    a.METRIC_VALUE,
    a.METRIC_INDEX,
   a.DATA_SOURCE_NAME,
    a.DATA_SOURCE_DESC,
    coalesce(b.REC_INS_TS,CURRENT_TIMESTAMP(0)) REC_INS_TS ,
    CURRENT_TIMESTAMP(0) REC_UPD_TS 
   -- SELECT min(date_key) from TRNG_COVID19.FACT_INDICATOR_DASHBOARD_v where data_source_name like '%eia%' and date_key = '2003-11-07'  
FROM 
   (
   SELECT cast(tmp.date_key as date) AS DATE_KEY,
   'WEEKLY' AS DATE_GRANULARITY,
   840 AS GEO_KEY,
   'COUNTRY' AS GEO_GRANULARITY,
   'Fuel Supply' AS DOMAIN_NAME,
   CASE WHEN tmp.METRIC_NAME = 'Finished Motor Gasoline 4wkavg' --'WGFUPUS2'
        THEN 'Motor Gasoline'
        WHEN tmp.METRIC_NAME = 'Jet Fuel 4wkavg' --'WKJUPUS2'
        THEN 'Jet Fuel'
        WHEN tmp.METRIC_NAME = 'Petroleum Products 4wkavg' --'WRPUPUS2'
        THEN 'All Petro-Products'
   END AS SUBDOMAIN_1_NAME,
   'Total' AS SUBDOMAIN_2_NAME,
   'Total' AS SUBDOMAIN_3_NAME,
   'US Product Supplied 4WKAVG' AS METRIC_NAME,
    tmp.METRIC_VALUE * 1000 METRIC_VALUE,
    0 METRIC_INDEX,
   'US-EIA' AS DATA_SOURCE_NAME,
   'US Energy Information Administration' AS DATA_SOURCE_DESC 
        FROM TRNG_COVID19."STG_Fuel_Production" 
        UNPIVOT ((metric_value)  FOR  metric_name 
        IN (("4-Week Avg U.S. Product Supplied of Petroleum Products  (Thousand Barrels per Day)") AS'Petroleum Products 4wkavg', --'WRPUPUS2'
        ("4-Week Avg U.S. Product Supplied of Finished Motor Gasoline  (Thousand Barrels per Day)") AS'Finished Motor Gasoline 4wkavg', --'WGFUPUS2',
        ("4-Week Avg U.S. Product Supplied of Kerosene-Type Jet Fuel  (Thousand Barrels per Day)") AS'Jet Fuel 4wkavg',  -- 'WKJUPUS2'
        ("4-Week Avg U.S. Product Supplied of Distillate Fuel Oil  (Thousand Barrels per Day)") AS'Distillate Fuel Oil 4wkavg',
        ("4-Week Avg U.S. Product Supplied of Residual Fuel Oil  (Thousand Barrels per Day)") AS'Residual Fuel Oil 4wkavg',
        ("4-Week Avg U.S. Product Supplied of Propane and Propylene  (Thousand Barrels per Day)") AS'Propane and Propylene 4wkavg', 
        ("4-Week Avg U.S. Product Supplied of Other Oils  (Thousand Barrels per Day)") AS'Other Oils 4wkavg' )) tmp 
        where metric_name in ('Petroleum Products 4wkavg','Finished Motor Gasoline 4wkavg','Jet Fuel 4wkavg') ) a  
       


        LEFT OUTER JOIN TRNG_COVID19.FACT_INDICATOR_DASHBOARD_v b
           ON  a.METRIC_NAME = b.METRIC_NAME
           and a.DATE_KEY = b.DATE_KEY
           and a.GEO_GRANULARITY = b.GEO_GRANULARITY
           and a.DATE_KEY = b.DATE_KEY
           and a.DOMAIN_NAME = b.DOMAIN_NAME
           and a.SUBDOMAIN_1_NAME = b.SUBDOMAIN_1_NAME
           and a.SUBDOMAIN_2_NAME = b.SUBDOMAIN_2_NAME
           and a.SUBDOMAIN_3_NAME = b.SUBDOMAIN_3_NAME
          
                ) AS x

        
          CROSS JOIN
                (SELECT
                                ZEROIFNULL(MAX(INDICATOR_KEY)) AS MAX_ID
                 FROM
                                TRNG_COVID19.FACT_INDICATOR_DASHBOARD_v
                ) AS y  
           WHERE x.PROCESS_TYPE IS NOT NULL 
         
)  as source
  

-- join on primary key is obligatory

ON  source.INDICATOR_KEY = target.INDICATOR_KEY
and source.date_key = target.date_key
 
--WHEN MATCHED THEN UPDATE
--SET product_status  = source.product_status
WHEN NOT MATCHED THEN 
INSERT  
(   	
    INDICATOR_KEY,  	
    Date_key,
    DATE_GRANULARITY,
    GEO_KEY, 
    GEO_GRANULARITY,
    DOMAIN_NAME,
    SUBDOMAIN_1_NAME,
    SUBDOMAIN_2_NAME,
    SUBDOMAIN_3_NAME,
    METRIC_NAME,
    METRIC_VALUE,
    METRIC_INDEX,
    DATA_SOURCE_NAME,
    DATA_SOURCE_DESC,
    REC_INS_TS,
    REC_UPD_TS 
) 
VALUES 
(
    source.INDICATOR_KEY,  	
    source.Date_key,
    source.DATE_GRANULARITY,
    source.GEO_KEY, 
    source.GEO_GRANULARITY,
    source.DOMAIN_NAME,
    source.SUBDOMAIN_1_NAME,
    source.SUBDOMAIN_2_NAME,
    source.SUBDOMAIN_3_NAME,
    source.METRIC_NAME,
    source.METRIC_VALUE,
    source.METRIC_INDEX,
    source.DATA_SOURCE_NAME,
    source.DATA_SOURCE_DESC,
    source.REC_INS_TS,
    source.REC_UPD_TS   
)   
when matched then
update 
 set  METRIC_VALUE = source.METRIC_VALUE
 , METRIC_INDEX = source.METRIC_INDEX
 , REC_UPD_TS = source.REC_UPD_TS;
     

/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;


/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));
	
END;

REPLACE PROCEDURE TRNG_COVID19.ETL_GOOGLE_MOBILITY_CORE (OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_GOOGLE_MOBILITY_CORE                                              		
Developed By      : Teradata Team                                                                            			  
Created           : June 26, 2020 			                                                                           		     
Description       : This Procecdure is used to Upcert FACT_INDICATOR_DASHBOARD_T2_p Table									 
Procedure syntax  : CALL ETL_GOOGLE_MOBILITY_CORE (v_MsgTxt,v_RowCnt,v_ResultSet) ;      

1 - Represnts Failure
Null - Represnts Success   
                                                                                                                                  
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
06/26/2020      1.0         Teradata DW              	Initial
07/08/2020		2.0			Teradata DW              	Translation table to swap values from the input files
07/09/2020		3.0			Teradata DW					Code Changed to address Null value insert
*/
/*****************************************************************************************************/
SQL SECURITY INVOKER
BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'FACT_INDICATOR_DASHBOARD_T2_P';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_GOOGLE_MOBILITY_CORE';
DECLARE v_Message VARCHAR(200);

/* Exception Handling when when SQL Exception occurs */
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS EXCEPTION 1
	v_Message = MESSAGE_TEXT;
	INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs (Sql_Code,Logged_Time,Sql_State,Error_Text,Procedure_Name)
	VALUES(:SQLCODE,CURRENT_TIMESTAMP(0),:SQLSTATE,v_Message,v_ProcName);
	--
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;

/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/

delete from TRNG_COVID19.gm_step1;
delete from TRNG_COVID19.gm_step2;

INSERT INTO TRNG_COVID19.gm_step1
    SELECT date_key,
        country_region_code,
        country_region,
        sub_region_1,
        sub_region_2,
        METRIC_INDEX,
        METRIC_NAME,
        
        CASE
            WHEN sub_region_1 IS NULL AND sub_region_2 IS NULL THEN 'Country'
            WHEN sub_region_1 IS NOT NULL AND sub_region_2 IS NULL THEN 'State'
            WHEN sub_region_1 IS NOT NULL AND sub_region_2 IS NOT NULL THEN 'County'
        ELSE 'n/a'
        END   geo_granularity --select distinct retail_and_recreation, grocery_and_pharmacy, parks, transit_stations, workplaces , residential
         --select *
        
        FROM TRNG_COVID19.STG_Google_Mobility
          
        UNPIVOT ((METRIC_INDEX)  FOR  METRIC_NAME
        IN (retail_and_recreation_percent_change_from_baseline  AS 'Retail & recreation', 
        (grocery_and_pharmacy_percent_change_from_baseline) AS 'Grocery & pharmacy',
        (parks_percent_change_from_baseline) AS 'Parks',
        (transit_stations_percent_change_from_baseline) AS 'Transit Stations',
        (workplaces_percent_change_from_baseline) AS 'Workplace',
        (residential_percent_change_from_baseline) AS 'Residential')
        ) gm
        WHERE country_region  = 'United States';


INSERT INTO TRNG_COVID19.gm_step2
    SELECT *
        FROM (
        SELECT 
            date_key,
            'Day' date_granularity,
            
            CASE
                WHEN uid IS NULL THEN
            CASE
                WHEN sub_region_1 IS NULL THEN 'country'
            ELSE 'STATE'
            END
                WHEN sub_region_2  IS NULL THEN
            CASE
                WHEN sub_region_1 IS NULL THEN  'Country'
            ELSE 'State'
            END
            ELSE 'County'
            END geo_granularity,
                uid geo_key,
                'Mobility' DOMAIN_NAME,
                'Google Mobility' SUBDOMAIN_1_NAME,
                ' ' SUBDOMAIN_2_NAME,
                ' ' SUBDOMAIN_3_NAME,
                '%Mobility_Change_Baseline for '||METRIC_NAME METRIC_NAME,
                0 METRIC_VALUE,
                CAST(METRIC_INDEX AS DECIMAL(32,6)) METRIC_INDEX,
                'Google Mobility Report' DATA_SOURCE_NAME,
                'Google Mobility Report' DATA_SOURCE_DESC,
                CURRENT_TIMESTAMP(0) REC_INS_TS,
                CURRENT_TIMESTAMP(0) REC_UPD_TS --select *
            
            FROM TRNG_COVID19.gm_step1 gm
            JOIN  TRNG_COVID19.DIM_GEO_LOCATION_V gl 
            ON gm.country_region_code = gl.country_code 
            AND gm.geo_granularity = gl.geo_granularity
            AND gm.geo_granularity = 'Country'
             where uid is not null
            
        UNION ALL
        SELECT 
            date_key,
            'Day' date_granularity,
            
            CASE
                WHEN uid IS NULL THEN
            CASE
                WHEN sub_region_1 IS NULL THEN 'country'
            ELSE 'STATE'
            END
                WHEN sub_region_2  IS NULL THEN
            CASE
                WHEN sub_region_1 IS NULL THEN  'Country'
            ELSE 'State'
            END
            ELSE 'County'
            END geo_granularity,
                uid geo_key,
                'Mobility' DOMAIN_NAME,
                'Google Mobility' SUBDOMAIN_1_NAME,
                ' ' SUBDOMAIN_2_NAME,
                ' ' SUBDOMAIN_3_NAME,
                '%Mobility_Change_Baseline for '||METRIC_NAME METRIC_NAME,
                0 METRIC_VALUE,
                CAST(METRIC_INDEX AS DECIMAL(32,6)) METRIC_INDEX,
                'Google Mobility Report' DATA_SOURCE_NAME,
                'Google Mobility Report' DATA_SOURCE_DESC,
                CURRENT_TIMESTAMP(0) REC_INS_TS,
                CURRENT_TIMESTAMP(0) REC_UPD_TS --select *
            
            FROM TRNG_COVID19.gm_step1 gm
            JOIN  TRNG_COVID19.DIM_GEO_LOCATION_V gl 
            ON gm.country_region_code = gl.country_code 
            AND gm.sub_region_1 = gl.state_name
            AND gm.geo_granularity = gl.geo_granularity
            AND gm.geo_granularity = 'State'
            where uid is not null
        UNION ALL
        SELECT 
            date_key,
            'Day' date_granularity,
            
    
            CASE
                WHEN sub_region_1 IS NULL THEN 'country'
                WHEN sub_region_2  IS NULL THEN  'State'
                else  'County'  
            END  geo_granularity,
                uid geo_key,
                'Mobility' DOMAIN_NAME,
                'Google Mobility' SUBDOMAIN_1_NAME,
                ' ' SUBDOMAIN_2_NAME,
                ' ' SUBDOMAIN_3_NAME,
                '%Mobility_Change_Baseline for '||METRIC_NAME METRIC_NAME,
                0 METRIC_VALUE,
                CAST(METRIC_INDEX AS DECIMAL(32,6)) METRIC_INDEX,
                'Google Mobility Report' DATA_SOURCE_NAME,
                'Google Mobility Report' DATA_SOURCE_DESC,
                CURRENT_TIMESTAMP(0) REC_INS_TS,
                CURRENT_TIMESTAMP(0) REC_UPD_TS --select * 
			-- Changed 070820
			--select * 
			FROM TRNG_COVID19.gm_step1 gm
            left outer join TRNG_COVID19.Transaltion_Table tt
            on tt.clnsng_cd = 'County'
            and tt.clnsng_src = gm.sub_region_2
			-- End of Change 070820
            JOIN  TRNG_COVID19.DIM_GEO_LOCATION_V gl 
            ON gm.country_region_code = gl.country_code 
            AND gm.sub_region_1 = gl.state_name
            AND coalesce(tt.clnsng_trgt,gm.sub_region_2) in (  gl.county, gl.county_long )
            AND gm.geo_granularity = gl.geo_granularity          
            where  gl.geo_granularity = 'County'
            and uid is not null
            
        ) a;



MERGE INTO TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P as target
USING  
  ( select          x.PROCESS_TYPE,     
    CASE
             WHEN x.PROCESS_TYPE = 'I'
         THEN y.MAX_ID + ROW_NUMBER() OVER(
         ORDER BY x.METRIC_NAME,
           x.DATE_KEY ,
           x.GEO_GRANULARITY ,
           x.DATE_KEY ,
           x.DOMAIN_NAME ,
           x.SUBDOMAIN_1_NAME,
           x.SUBDOMAIN_2_NAME,
           x.SUBDOMAIN_3_NAME 
             )

         ELSE x.INDICATOR_KEY
         END AS INDICATOR_KEY,  	
   	x.Date_key,
    x.DATE_GRANULARITY,
    x.GEO_KEY, 
    x.GEO_GRANULARITY,
    x.DOMAIN_NAME,
    x.SUBDOMAIN_1_NAME,
    x.SUBDOMAIN_2_NAME,
    x.SUBDOMAIN_3_NAME,
    x.METRIC_NAME,
    x.METRIC_VALUE,
    x.METRIC_INDEX,
    x.DATA_SOURCE_NAME,
    x.DATA_SOURCE_DESC,
    x.REC_INS_TS,
    x.REC_UPD_TS
   --select *  
from ( 
SELECT 
	PROCESS_TYPE,
-- a. contains the source data
-- b. contains the target data that matches the nkey of the source data
	a.INDICATOR_KEY,  	
   	a.Date_key,
    a.DATE_GRANULARITY,
    a.GEO_KEY, 
    a.GEO_GRANULARITY,
    a.DOMAIN_NAME,
    a.SUBDOMAIN_1_NAME,
    a.SUBDOMAIN_2_NAME,
    a.SUBDOMAIN_3_NAME,
    a.METRIC_NAME,
    a.METRIC_VALUE,
    a.METRIC_INDEX,
    a.DATA_SOURCE_NAME,
    a.DATA_SOURCE_DESC,
    a.REC_INS_TS,
    a.REC_upd_TS
     
-- if b. is null that means there was no match so set the process type to insert
-- if b. is not null then compare source to target data of updatable columns to determin if there should be an update       
     
      
      FROM
  
  (
  select b.INDICATOR_KEY,
     	aa.Date_key,
    aa.DATE_GRANULARITY,
    aa.GEO_KEY, 
    aa.GEO_GRANULARITY,
    aa.DOMAIN_NAME,
    aa.SUBDOMAIN_1_NAME,
    aa.SUBDOMAIN_2_NAME,
    aa.SUBDOMAIN_3_NAME,
    aa.METRIC_NAME,
    aa.METRIC_VALUE,
    aa.METRIC_INDEX,
    aa.DATA_SOURCE_NAME,
    aa.DATA_SOURCE_DESC,
    aa.REC_INS_TS,
    aa.REC_UPD_TS,
     CASE
          WHEN b.INDICATOR_KEY IS NULL
                 THEN 'I'
          WHEN b.INDICATOR_KEY is not null  
          and (aa.METRIC_VALUE <> b.METRIC_VALUE or
               aa. METRIC_INDEX <> b.METRIC_INDEX) -- put weird logic here
                 THEN 'U'
          ELSE NULL
                     END AS PROCESS_TYPE
                     --select *
        from   TRNG_COVID19.gm_step2 aa 
            
        LEFT OUTER JOIN  TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V  b
           ON  aa.METRIC_NAME = b.METRIC_NAME
           and aa.DATE_KEY = b.DATE_KEY
           and aa.geo_key = b.geo_key
           and aa.GEO_GRANULARITY = b.GEO_GRANULARITY 
           and aa.DOMAIN_NAME = b.DOMAIN_NAME
           and aa.SUBDOMAIN_1_NAME = b.SUBDOMAIN_1_NAME
           and aa.SUBDOMAIN_2_NAME = b.SUBDOMAIN_2_NAME
           and aa.SUBDOMAIN_3_NAME = b.SUBDOMAIN_3_NAME
           and   b.DATA_SOURCE_NAME = 'Google Mobility Report'
           )  a
                ) AS x

        
          CROSS JOIN
                (SELECT
                                ZEROIFNULL(MAX(INDICATOR_KEY)) AS MAX_ID
                 FROM
                                TRNG_COVID19.FACT_INDICATOR_DASHBOARD_V
                ) AS y  
           WHERE x.PROCESS_TYPE is  NOT  NULL and x.PROCESS_TYPE <> 'U' 
            
)  as source
  

-- join on primary key is obligatory

ON  source.INDICATOR_KEY = target.INDICATOR_KEY
and source.geo_key = target.geo_key
and source.date_key = target.date_key
 
--WHEN MATCHED THEN UPDATE
--SET product_status  = source.product_status
WHEN NOT MATCHED THEN 
INSERT  
(   	
     INDICATOR_KEY,  	
   	Date_key,
    DATE_GRANULARITY,
    GEO_KEY, 
    GEO_GRANULARITY,
    DOMAIN_NAME,
    SUBDOMAIN_1_NAME,
    SUBDOMAIN_2_NAME,
    SUBDOMAIN_3_NAME,
    METRIC_NAME,
    METRIC_VALUE,
    METRIC_INDEX,
    DATA_SOURCE_NAME,
    DATA_SOURCE_DESC,
    REC_INS_TS,
    REC_UPD_TS  
) 
VALUES 
( 		
    source.INDICATOR_KEY,  	
    source.Date_key,
    source.DATE_GRANULARITY,
    source.GEO_KEY, 
    source.GEO_GRANULARITY,
    source.DOMAIN_NAME,
    source.SUBDOMAIN_1_NAME,
    source.SUBDOMAIN_2_NAME,
    source.SUBDOMAIN_3_NAME,
    source.METRIC_NAME,
    source.METRIC_VALUE,
    source.METRIC_INDEX,
    source.DATA_SOURCE_NAME,
    source.DATA_SOURCE_DESC,
    source.REC_INS_TS,
    source.REC_UPD_TS )
    ;
 
/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;


/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));

END;

REPLACE PROCEDURE TRNG_COVID19.ETL_GOOGLE_TREND_CORE(OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_GOOGLE_TREND_CORE                                              		
Developed By      : Teradata Team                                                                            			  
Created           : July 5, 2020 			                                                                           		     
Description       : This Procecdure is used to Upcert F_IND_DASH_GOOGLE_TRENDS Table									 
Procedure syntax  : CALL ETL_GOOGLE_TREND_CORE (v_MsgTxt,v_RowCnt,v_ResultSet) ;      

1 - Represnts Failure
Null - Represnts Success   
                                                                                                                                  
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
07/05/2020      1.0         Teradata DW              	Initial                                         					
*/
/*****************************************************************************************************/
SQL SECURITY INVOKER
BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'F_IND_DASH_GOOGLE_TRENDS';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_GOOGLE_TREND_CORE';
DECLARE v_Message VARCHAR(200);

/* Exception Handling when when SQL Exception occurs */
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS EXCEPTION 1
	v_Message = MESSAGE_TEXT;
	INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs (Sql_Code,Logged_Time,Sql_State,Error_Text,Procedure_Name)
	VALUES(:SQLCODE,CURRENT_TIMESTAMP(0),:SQLSTATE,v_Message,v_ProcName);
	--
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;

/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/

DELETE FROM TRNG_COVID19.F_IND_DASH_GOOGLE_TRENDS;

INSERT INTO  TRNG_COVID19.F_IND_DASH_GOOGLE_TRENDS
SELECT  DATE_KEY,
    TREND_NAME,
    GEO_KEY,
    GEO_GRANULARITY,
    METRIC_INDEX,
    DATA_SOURCE_NAME,
    DATA_SOURCE_DESC,
    SNAPSHOT_DATE,
    REC_INS_TS,
    REC_UPD_TS from (
SELECT substring(cast("date" as varchar(30)) from 1 for 10) DATE_KEY,
    Trend_Name TREND_NAME,
    840 GEO_KEY,
    'Country' GEO_GRANULARITY,
    Metric_value METRIC_INDEX,
    'Google Trends' DATA_SOURCE_NAME,
    'Google Trends - search '|| trend_name DATA_SOURCE_DESC,
   	Keyword_list,
   	cat_cd,
   	current_timestamp(0) REC_INS_TS,
   	current_timestamp(0) REC_UPD_TS
	FROM TRNG_COVID19.STG_Google_Search_IOT ) f
                JOIN (
            SELECT cal_week_year,
                MAX(WEEK_END_DATE) SNAPSHOT_DATE,
                MAX(CAL_WEEK_YEAR)  SNAPSHOT_WEEK,
                MIN(WEEK_START_DATE)   FIL_START_DATE_KEY,
                MAX(WEEK_END_DATE)   FIL_END_DATE_KEY 
                FROM TRNG_COVID19.DIM_CALENDAR_V DT
                LEFT JOIN ( 
                SELECT MAX("DATE") MAX_DT
                    FROM TRNG_COVID19.STG_Google_Search_IOT  F  
                ) MAXDT ON 1=1
                group by 1
                --WHERE CAL_DATE_KEY IN (MAX_DT-7,MAX_DT-14,MAX_DT-21,MAX_DT-28, MAX_DT-35)
            ) DT ON
            F.date_key BETWEEN DT.FIL_START_DATE_KEY AND DT.FIL_END_DATE_KEY;
     

/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;


/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));
	
END;

REPLACE PROCEDURE TRNG_COVID19.ETL_LABOR_STATS_CORE (OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_LABOR_STATS_CORE                                              		
Developed By      : Teradata Team                                                                            			  
Created           : June 26, 2020 			                                                                           		     
Description       : This Procecdure is used to Upcert FACT_INDICATOR_DASHBOARD_T2_p Table									 
Procedure syntax  : CALL ETL_LABOR_STATS_CORE (v_MsgTxt,v_RowCnt,v_ResultSet) ;      

1 - Represnts Failure
Null - Represnts Success   
                                                                                                                                  
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
06/26/2020      1.0         Teradata DW              	Initial
07/19/2020		2.0			Teradata DW              	Code was changed to include CPI data
*/
/*****************************************************************************************************/
SQL SECURITY INVOKER
BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'FACT_INDICATOR_DASHBOARD_T2_P';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_LABOR_STATS_CORE';
DECLARE v_Message VARCHAR(200);

/* Exception Handling when when SQL Exception occurs */
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS EXCEPTION 1
	v_Message = MESSAGE_TEXT;
	INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs (Sql_Code,Logged_Time,Sql_State,Error_Text,Procedure_Name)
	VALUES(:SQLCODE,CURRENT_TIMESTAMP(0),:SQLSTATE,v_Message,v_ProcName);
	--
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;

/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/

MERGE INTO TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_p as target
USING  
  ( select          x.PROCESS_TYPE,     
    CASE
             WHEN x.PROCESS_TYPE = 'I'
         THEN y.MAX_ID + ROW_NUMBER() OVER(
         ORDER BY x.METRIC_NAME,
           x.DATE_KEY ,
           x.GEO_GRANULARITY ,
           x.DATE_KEY ,
           x.DOMAIN_NAME ,
           x.SUBDOMAIN_1_NAME,
           x.SUBDOMAIN_2_NAME,
           x.SUBDOMAIN_3_NAME 
             )

         ELSE x.INDICATOR_KEY
         END AS INDICATOR_KEY,  	
   	x.Date_key,
    x.DATE_GRANULARITY,
    x.GEO_KEY, 
    x.GEO_GRANULARITY,
    x.DOMAIN_NAME,
    x.SUBDOMAIN_1_NAME,
    x.SUBDOMAIN_2_NAME,
    x.SUBDOMAIN_3_NAME,
    x.METRIC_NAME,
    x.METRIC_VALUE,
    x.METRIC_INDEX,
    x.DATA_SOURCE_NAME,
    x.DATA_SOURCE_DESC,
    x.REC_INS_TS,
    x.REC_UPD_TS
   --select *  
from ( 
SELECT 
	PROCESS_TYPE,
-- a. contains the source data
-- b. contains the target data that matches the nkey of the source data
	a.INDICATOR_KEY,  	
   	a.Date_key,
    a.DATE_GRANULARITY,
    a.GEO_KEY, 
    a.GEO_GRANULARITY,
    a.DOMAIN_NAME,
    a.SUBDOMAIN_1_NAME,
    a.SUBDOMAIN_2_NAME,
    a.SUBDOMAIN_3_NAME,
    a.METRIC_NAME,
    a.METRIC_VALUE,
    a.METRIC_INDEX,
    a.DATA_SOURCE_NAME,
    a.DATA_SOURCE_DESC,
    a.REC_INS_TS,
    a.REC_upd_TS
     
-- if b. is null that means there was no match so set the process type to insert
-- if b. is not null then compare source to target data of updatable columns to determin if there should be an update       
     
      
      FROM
  
  (
  select b.INDICATOR_KEY,
     	aa.Date_key,
    aa.DATE_GRANULARITY,
    aa.GEO_KEY, 
    aa.GEO_GRANULARITY,
    aa.DOMAIN_NAME,
    aa.SUBDOMAIN_1_NAME,
    aa.SUBDOMAIN_2_NAME,
    aa.SUBDOMAIN_3_NAME,
    aa.METRIC_NAME,
    aa.METRIC_VALUE,
    aa.METRIC_INDEX,
    aa.DATA_SOURCE_NAME,
    aa.DATA_SOURCE_DESC,
    aa.REC_INS_TS,
    aa.REC_UPD_TS,
     CASE
          WHEN b.INDICATOR_KEY IS NULL
                 THEN 'I'
          WHEN b.INDICATOR_KEY is not null  
          and (aa.METRIC_VALUE <> b.METRIC_VALUE or
               aa. METRIC_INDEX <> b.METRIC_INDEX) -- put weird logic here
                 THEN 'U'
          ELSE NULL
                     END AS PROCESS_TYPE
        from  ( 
      
  SELECT   'Monthly' date_granularity,
           840 GEO_KEY, 
    'Country' GEO_GRANULARITY,
    cast(year_key||'-'||substring(period_key from 2 for 2)||'-01' as date) date_key,
    CASE 
    	WHEN series_id = 'LNS13000000'  
    		THEN cast(metric_Val as decimal(32,6)) * 1000    
    	else  cast(metric_Val as decimal(32,6))  end METRIC_VALUE ,
    0   METRIC_index,
    'BLS' DATA_SOURCE_NAME, 
    'BLS - CPI - Unemployment level/rate' DATA_SOURCE_DESC,
    
    CASE
    	WHEN series_id = 'CUSR0000SA0' THEN 'Consumer Price Index'
        WHEN series_id = 'LNS13000000' THEN 'Unemployment Level'
        WHEN series_id = 'LNS14000000' THEN 'Unemployment Rate'
    END DOMAIN_NAME,
        'Total' SUBDOMAIN_1_NAME,
        'Total' SUBDOMAIN_2_NAME,
        'Total' SUBDOMAIN_3_NAME,
        
    CASE
        WHEN series_id = 'CUSR0000SA0' THEN 'CPI'
        WHEN series_id = 'LNS13000000' THEN 'Unemployment Level'
        WHEN series_id = 'LNS14000000' THEN 'Unemployment Rate'
    END METRIC_NAME,
        CURRENT_TIMESTAMP(0) REC_INS_TS,
        CURRENT_TIMESTAMP(0) REC_UPD_TS --select * 
    
    FROM  /* creates separte tables due to a bug in the BLS.GOV API */
		(select * from  TRNG_COVID19.STG_Labor_Stats_CUSR0000SA0
		union all
		select * from TRNG_COVID19.STG_Labor_Stats_LNS13000000
		union all
		select * from TRNG_COVID19.STG_Labor_Stats_LNS14000000) all_bls
        ) aa     
        LEFT OUTER JOIN TRNG_COVID19.FACT_INDICATOR_DASHBOARD_v b
           ON  aa.METRIC_NAME = b.METRIC_NAME
           and aa.DATE_KEY = b.DATE_KEY
           and aa.GEO_GRANULARITY = b.GEO_GRANULARITY
           and aa.DATE_KEY = b.DATE_KEY
           and aa.DOMAIN_NAME = b.DOMAIN_NAME
           and aa.SUBDOMAIN_1_NAME = b.SUBDOMAIN_1_NAME
           and aa.SUBDOMAIN_2_NAME = b.SUBDOMAIN_2_NAME
           and aa.SUBDOMAIN_3_NAME = b.SUBDOMAIN_3_NAME
           )  a
                ) AS x

        
          CROSS JOIN
                (SELECT
                                ZEROIFNULL(MAX(INDICATOR_KEY)) AS MAX_ID
                            
                 FROM
                                TRNG_COVID19.FACT_INDICATOR_DASHBOARD_v  
                ) AS y  
           WHERE x.PROCESS_TYPE IS NOT NULL 
            
)  as source
  

-- join on primary key is obligatory

ON  source.INDICATOR_KEY = target.INDICATOR_KEY
and source.date_key = target.date_key
 
--WHEN MATCHED THEN UPDATE
--SET product_status  = source.product_status
WHEN NOT MATCHED THEN 
INSERT 
(   	
    INDICATOR_KEY,  	
    Date_key,
    DATE_GRANULARITY,
    GEO_KEY, 
    GEO_GRANULARITY,
    DOMAIN_NAME,
    SUBDOMAIN_1_NAME,
    SUBDOMAIN_2_NAME,
    SUBDOMAIN_3_NAME,
    METRIC_NAME,
    METRIC_VALUE,
    METRIC_INDEX,
    DATA_SOURCE_NAME,
    DATA_SOURCE_DESC,
    REC_INS_TS,
    REC_UPD_TS  
) 
VALUES 
( 
    source.INDICATOR_KEY,  	
    source.Date_key,
    source.DATE_GRANULARITY,
    source.GEO_KEY, 
    source.GEO_GRANULARITY,
    source.DOMAIN_NAME,
    source.SUBDOMAIN_1_NAME,
    source.SUBDOMAIN_2_NAME,
    source.SUBDOMAIN_3_NAME,
    source.METRIC_NAME,
    source.METRIC_VALUE,
    source.METRIC_INDEX,
    source.DATA_SOURCE_NAME,
    source.DATA_SOURCE_DESC,
    source.REC_INS_TS,
    source.REC_UPD_TS   )
     when matched then
 update 
 set  METRIC_VALUE = source.METRIC_VALUE
 , METRIC_INDEX = source.METRIC_INDEX
 , REC_UPD_TS = source.REC_UPD_TS ;
	
	
 
/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;


/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));
	
END;

REPLACE PROCEDURE TRNG_COVID19.ETL_LOOKUP_CORE (OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_LOOKUP_CORE                                              		
Developed By      : Teradata Team                                                                            			  
Created           : July 16, 2020 			                                                                           		     
Description       : This Procecdure is used to Upcert ETL_LOOKUP_CORE Table									 
Procedure syntax  : CALL ETL_LOOKUP_CORE (v_MsgTxt,v_RowCnt,v_ResultSet) ;      

1 - Represnts Failure
Null - Represnts Success   
                                                                                                                                  
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
07/16/2020      1.0         Teradata DW              	Initial
07/29/2020		2.0			Teradata DW              	Modififed per additional COUNTY_FIPS addition
*/
/*****************************************************************************************************/
SQL SECURITY INVOKER
BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'FACT_LOOKUP_TABLES';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_LOOKUP_CORE';
DECLARE v_Message VARCHAR(200);

/* Exception Handling when when SQL Exception occurs */
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS EXCEPTION 1
	v_Message = MESSAGE_TEXT;
	INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs (Sql_Code,Logged_Time,Sql_State,Error_Text,Procedure_Name)
	VALUES(:SQLCODE,CURRENT_TIMESTAMP(0),:SQLSTATE,v_Message,v_ProcName);
	--
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;

/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/
DELETE FROM TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP;
INSERT INTO TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP
SELECT 
   ZIPCODE, 
   STATE_NAME,
   COUNTY_FIPS,
   COUNTY_NAME,
   MSA_NAME
FROM
   TRNG_COVID19.DIM_ZIP_COUNTY_MSA_MAP_RAW T
 WHERE ZIPCODE NOT IN (
'51603',
'54120',
'57256',
'59260',
'62985',
'98068')
QUALIFY RANK() OVER (PARTITION BY ZIPCODE ORDER BY COUNTY_TOT_RATIO DESC) = 1;


INSERT INTO TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP
SELECT 
   ZIPCODE, 
   STATE_NAME,
   COUNTY_FIPS,
   COUNTY_NAME,
   MSA_NAME
FROM
   TRNG_COVID19.DIM_ZIP_COUNTY_MSA_MAP_RAW T
 WHERE ZIPCODE  IN (
'51603',
'54120',
'57256',
'59260',
'62985',
'98068')
QUALIFY RANK() OVER (PARTITION BY ZIPCODE ORDER BY COUNTY_TOT_RATIO DESC, MSA_NAME DESC, CBSA_NAME DESC, COUNTY_FIPS) = 1;


UPDATE TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP
FROM
(
 SELECT 
    L.COUNTY_FIPS, 
    L.COUNTY_NAME AS COUNTY_NAME_ORIG, 
    L.STATE_NAME, 
    G.FIPS, 
    G.COUNTY AS COUNTY_NAME_STD, 
    G.STATE_CODE
 FROM 
    TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP_V L
    LEFT JOIN TRNG_COVID19.DIM_GEO_LOCATION_V G ON
      L.COUNTY_FIPS = G.FIPS AND 
      L.STATE_NAME = G.STATE_NAME AND
      G.GEO_GRANULARITY = 'COUNTY' AND
      G.COUNTRY_NAME = 'United States'
 WHERE
      TRIM(L.COUNTY_NAME) <> TRIM(G.COUNTY)
 GROUP BY 1,2,3,4,5,6
) SRC
SET 
 COUNTY_NAME = SRC.COUNTY_NAME_STD
WHERE
 DIM_ZIPCODE_COUNTY_MSA_LKUP.COUNTY_FIPS = SRC.COUNTY_FIPS AND
 DIM_ZIPCODE_COUNTY_MSA_LKUP.STATE_NAME  = SRC.STATE_NAME;
	
 
/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;


/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));
	
END;

REPLACE PROCEDURE TRNG_COVID19.ETL_POST_LOAD_CORE (OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_POST_LOAD_CORE                                              		
Developed By      : Teradata Team                                                                            			  
Created           : July 9, 2020 			                                                                           		     
Description       : This Procecdure is used to insert any post load activities such as stats collection or etc,									 
Procedure syntax  : CALL ETL_POST_LOAD_CORE (v_MsgTxt,v_RowCnt,v_ResultSet);      

1 - Represnts Failure
Null - Represnts Success
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
07/09/2020      1.0         Teradata DW              	Initial
10/05/2020		2.0			Teradata DW              	Added more stats collection for hospitalization data
*/
/*****************************************************************************************************/

BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'NA';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_POST_LOAD_CORE';
DECLARE sqlstr VARCHAR(10000);


/* Exception Handling when when SQL Exception occurs */
DECLARE   EXIT HANDLER FOR SQLEXCEPTION
BEGIN  
		INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs
		( Sql_Code
		  ,Logged_Time
		  ,Sql_State
		  ,Error_Text
		  ,Procedure_Name
		)
		SELECT
		        :SQLCODE
		        ,CURRENT_TIMESTAMP(0) 
		        ,:SQLSTATE
		        ,ErrorText || 'while executing proc' ||Procedure_Name
		        ,v_ProcName AS Procedure_Name
		FROM DBC.ERRORMSGS 
		WHERE ERRORCODE= :SQLCODE;
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;

/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/

COLLECT STATISTICS ON TRNG_COVID19.DIM_People_location COLUMN (Zipcode);
COLLECT STATISTICS ON TRNG_COVID19.F_IND_DASH_NYT_COVID19_COUNTY_7MAVG COLUMN (COUNTY,STATE_NAME);
COLLECT STATISTICS ON TRNG_COVID19.F_IND_DASH_NYT_COVID19_COUNTY_7MAVG COLUMN (COUNTY,STATE_NAME);
COLLECT STATISTICS ON TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT COLUMN (SNAPSHOT_DATE,CURR_PREV_FLAG,GEO_KEY);
COLLECT STATISTICS ON TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P COLUMN (DATA_SOURCE_NAME,DATE_KEY);
COLLECT STATISTICS ON TRNG_COVID19.DIM_Site_addresses COLUMN (Zipcode);
COLLECT STATISTICS ON TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP COLUMN (ZIPCODE);
-- COLLECT STATISTICS ON TRNG_COVID19.STG_covid19_stats COLUMN (date_key);
COLLECT STATISTICS ON TRNG_COVID19.DIM_GEO_LOCATION_T COLUMN (Country_code,GEO_GRANULARITY);
COLLECT STATISTICS ON TRNG_COVID19.F_IND_DASH_NYT_COVID19_COUNTY_7MAVG COLUMN (DATE_KEY,GEO_KEY);
COLLECT STATISTICS ON TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT COLUMN (COUNTRY_NAME);
COLLECT STATISTICS ON TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P COLUMN (DATE_KEY,GEO_KEY,DATA_SOURCE_NAME);
COLLECT STATISTICS ON TRNG_COVID19.DIM_Site_addresses COLUMN (Client_name);
COLLECT STATISTICS ON TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP COLUMN (COUNTY_NAME,STATE_NAME);
COLLECT STATISTICS ON TRNG_COVID19.DIM_GEO_LOCATION_T COLUMN (County,STATE_NAME,STATE_CODE,COUNTRY_NAME,Population);
COLLECT STATISTICS ON TRNG_COVID19.F_IND_DASH_NYT_COVID19_COUNTY_7MAVG COLUMN (DATE_KEY);
COLLECT STATISTICS ON TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT COLUMN (DATE_KEY);
COLLECT STATISTICS ON TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P COLUMN (DATE_KEY,GEO_KEY);
COLLECT STATISTICS ON TRNG_COVID19.DIM_Site_addresses COLUMN (Country_cd);
COLLECT STATISTICS ON TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP COLUMN (MSA_NAME);
COLLECT STATISTICS ON TRNG_COVID19.DIM_GEO_LOCATION_T COLUMN (UID);
COLLECT STATISTICS ON TRNG_COVID19.F_IND_DASH_NYT_COVID19_COUNTY_7MAVG COLUMN (PARTITION);
COLLECT STATISTICS ON TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT COLUMN (SNAPSHOT_DATE);
COLLECT STATISTICS ON TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P COLUMN (PARTITION);
COLLECT STATISTICS ON TRNG_COVID19.DIM_ZIPCODE_COUNTY_MSA_LKUP COLUMN (STATE_NAME,COUNTY_NAME,MSA_NAME);
COLLECT STATISTICS ON TRNG_COVID19.DIM_GEO_LOCATION_T COLUMN (COUNTRY_NAME);
COLLECT STATISTICS ON TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT COLUMN (SNAPSHOT_DATE,GEO_KEY,DATE_KEY);
COLLECT STATISTICS ON TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P COLUMN (DATE_KEY);
COLLECT STATISTICS ON TRNG_COVID19.DIM_GEO_LOCATION_T COLUMN (GEO_GRANULARITY);
COLLECT STATISTICS ON TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT COLUMN (GEO_KEY,DATE_KEY);
COLLECT STATISTICS ON TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P COLUMN (GEO_KEY);
COLLECT STATISTICS ON TRNG_COVID19.DIM_GEO_LOCATION_T COLUMN (County,STATE_NAME);
COLLECT STATISTICS ON TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT COLUMN (PARTITION);
COLLECT STATISTICS ON TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P COLUMN (DATA_SOURCE_NAME);
COLLECT STATISTICS ON TRNG_COVID19.DIM_GEO_LOCATION_T COLUMN (County);
COLLECT STATISTICS ON TRNG_COVID19.F_IND_DASH_NYT_COVID19_GEO_7MAVG_WEEKLY_SNPSHT COLUMN (GEO_KEY);
COLLECT STATISTICS ON TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P COLUMN (DATA_SOURCE_NAME,GEO_KEY);
COLLECT STATISTICS ON TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P COLUMN (DOMAIN_NAME);
COLLECT STATISTICS ON TRNG_COVID19.FACT_COVID19_DATAHUB COLUMN (GEO_KEY);
COLLECT STATISTICS COLUMN (STATE_CD, COLLECTION_DATE_KEY) ON TRNG_COVID19.F_IND_DASH_EST_HOSP_ICU;
COLLECT STATISTICS COLUMN (STATE_CD, COLLECTION_DATE_KEY) ON TRNG_COVID19.F_IND_DASH_EST_HOSP_INPATIENT;
COLLECT STATISTICS COLUMN (STATE_CD, COLLECTION_DATE_KEY) ON TRNG_COVID19.F_IND_DASH_EST_HOSP_COVID_INPATIENT;
COLLECT STATISTICS COLUMN (DATE_KEY) ON TRNG_COVID19.FACT_Covid_Model_Data;
COLLECT STATISTICS COLUMN (GEO_KEY) ON TRNG_COVID19.FACT_Covid_Model_Data;
-- Extra collect stats statements that are required
COLLECT STATISTICS COLUMN (DATE_KEY, GEO_KEY) ON TRNG_COVID19.FACT_COVID_MODEL_DATA_SUM;

/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;

/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));

	
END;

REPLACE PROCEDURE TRNG_COVID19.ETL_TSA_TRAVEL_CORE (OUT v_MsgTxt VARCHAR(100), OUT v_RowCnt INT,OUT v_ResultSet INT)
/*********************************************************************************************************/
/* 
Procedure Name    : ETL_TSA_TRAVEL_CORE                                              		
Developed By      : Teradata Team                                                                            			  
Created           : July 19, 2020 			                                                                           		     
Description       : This Procecdure is used to Upcert  Table									 
Procedure syntax  : CALL ETL_TSA_TRAVEL_CORE (v_MsgTxt,v_RowCnt,v_ResultSet) ;      

1 - Represnts Failure
Null - Represnts Success   FACT_INDICATOR_DASHBOARD_T2_P
                                                                                                                                  
Date           	Ver#		Modified By(Name)       	Version Comments                   
-----------   	-------     -------------------------	----------------------------                       
07/19/2020      1.0         Teradata DW              	Initial
07/22/2020		2.0			Teradata DW              	Changed the date format due to error from Disney
*/
/*****************************************************************************************************/
SQL SECURITY INVOKER
BEGIN

 /* Local Variable Declaration */ 
DECLARE v_CoreTable VARCHAR(100) DEFAULT 'FACT_INDICATOR_DASHBOARD_T2_P';
DECLARE v_RecordsAffected INTEGER DEFAULT 0;
DECLARE v_ProcName VARCHAR(100) DEFAULT 'ETL_TSA_TRAVEL_CORE';
DECLARE v_Message VARCHAR(200);

/* Exception Handling when when SQL Exception occurs */
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS EXCEPTION 1
	v_Message = MESSAGE_TEXT;
	INSERT INTO TRNG_COVID19.ETL_Proc_Error_Logs (Sql_Code,Logged_Time,Sql_State,Error_Text,Procedure_Name)
	VALUES(:SQLCODE,CURRENT_TIMESTAMP(0),:SQLSTATE,v_Message,v_ProcName);
	--
	SET v_ResultSet=1;
	SET v_MsgTxt='Error,refer to ETL_Proc_Error_Logs';
END;

/******************************************************************/
--Put Your Transformation Logic Here
/******************************************************************/

--travel tsa
MERGE INTO TRNG_COVID19.FACT_INDICATOR_DASHBOARD_T2_P as target
USING  
  ( select x.PROCESS_TYPE,     
        CASE
         WHEN x.PROCESS_TYPE = 'I'
         THEN y.MAX_ID + ROW_NUMBER() OVER(
         ORDER BY x.METRIC_NAME,
           x.DATE_KEY ,
           x.GEO_GRANULARITY ,
           x.DATE_KEY ,
           x.DOMAIN_NAME ,
           x.SUBDOMAIN_1_NAME,
           x.SUBDOMAIN_2_NAME,
           x.SUBDOMAIN_3_NAME 
             )
         ELSE x.INDICATOR_KEY
         END AS INDICATOR_KEY,  	
   	x.Date_key,
    x.DATE_GRANULARITY,
    x.GEO_KEY, 
    x.GEO_GRANULARITY,
    x.DOMAIN_NAME,
    x.SUBDOMAIN_1_NAME,
    x.SUBDOMAIN_2_NAME,
    x.SUBDOMAIN_3_NAME,
    x.METRIC_NAME,
    x.METRIC_VALUE,
    x.METRIC_INDEX,
    x.DATA_SOURCE_NAME,
    x.DATA_SOURCE_DESC,
    x.REC_INS_TS,
    x.REC_UPD_TS
   --select *  
from ( 
SELECT 
	PROCESS_TYPE,
-- a. contains the source data
-- b. contains the target data that matches the nkey of the source data
	a.INDICATOR_KEY,  	
   	a.Date_key,
    a.DATE_GRANULARITY,
    a.GEO_KEY, 
    a.GEO_GRANULARITY,
    a.DOMAIN_NAME,
    a.SUBDOMAIN_1_NAME,
    a.SUBDOMAIN_2_NAME,
    a.SUBDOMAIN_3_NAME,
    a.METRIC_NAME,
    a.METRIC_VALUE,
    a.METRIC_INDEX,
    a.DATA_SOURCE_NAME,
    a.DATA_SOURCE_DESC,
    a.REC_INS_TS,
    a.REC_upd_TS
     
-- if b. is null that means there was no match so set the process type to insert
-- if b. is not null then compare source to target data of updatable columns to determin if there should be an update       
     
      
      FROM
  
  (
  select b.INDICATOR_KEY,
     	aa.Date_key,
    aa.DATE_GRANULARITY,
    aa.GEO_KEY, 
    aa.GEO_GRANULARITY,
    aa.DOMAIN_NAME,
    aa.SUBDOMAIN_1_NAME,
    aa.SUBDOMAIN_2_NAME,
    aa.SUBDOMAIN_3_NAME,
    aa.METRIC_NAME,
    aa.METRIC_VALUE,
    aa.METRIC_INDEX,
    aa.DATA_SOURCE_NAME,
    aa.DATA_SOURCE_DESC,
    aa.REC_INS_TS,
    aa.REC_UPD_TS,
     CASE
          WHEN b.INDICATOR_KEY IS NULL
                 THEN 'I'
          WHEN b.INDICATOR_KEY is not null  
          and (aa.METRIC_VALUE <> b.METRIC_VALUE or
               aa. METRIC_INDEX <> b.METRIC_INDEX) -- put weird logic here
                 THEN 'U'
          ELSE NULL
                     END AS PROCESS_TYPE
        from  ( 
        
        
      select
	  -- 10/08/21 Change
	 cast(TO_DATE((lpad(STRTOK(cast(cast(travel_date as date format 'MM/DD/YYYY') as VARCHAR(1024)),'/',1),2,'0')||'/'||
         lpad(STRTOK(cast(cast(travel_date as date format 'MM/DD/YYYY') as VARCHAR(1024)),'/',1),2,'0')|| '/'||
              STRTOK(cast(cast(travel_date as date format 'MM/DD/YYYY') as VARCHAR(1024)),'/',3)),'MM/DD/YYYY') as date) DATE_KEY,
 	'Daily' DATE_GRANULARITY , 
    	'840' GEO_KEY  ,
    	 'Country' GEO_GRANULARITY,  
    	 'TSA Travel'  DOMAIN_NAME ,  
    	 ' ' SUBDOMAIN_1_NAME	,
	 ' ' SUBDOMAIN_2_NAME	,
	 ' ' SUBDOMAIN_3_NAME	,
	 'Traffic Volume' METRIC_NAME,
	 TravelThroughPut   METRIC_VALUE	 ,
	 0  METRIC_index ,
	 'TSA Travel' DATA_SOURCE_NAME ,
	 'TSA Travel' DATA_SOURCE_DESC ,
	 current_timestamp(0) REC_INS_TS, 	 
	 current_timestamp(0) REC_UPD_TS
        FROM  TRNG_COVID19.STG_TSA_TRAVEL
        where travel_date is not null 
        --
        union all 
        select
	cast(TO_DATE((lpad(STRTOK(cast(cast(travel_date as date format 'MM/DD/YYYY') as VARCHAR(1024)),'/',1),2,'0')||'/'||
        lpad(STRTOK(cast(cast(travel_date as date format 'MM/DD/YYYY') as VARCHAR(1024)),'/',1),2,'0')|| '/'||
             STRTOK(cast(cast(travel_date as date format 'MM/DD/YYYY') as VARCHAR(1024)),'/',3)),'MM/DD/YYYY') as date) -365 DATE_KEY,
 	'Daily' DATE_GRANULARITY , 
    	'840' GEO_KEY  ,
     	'Country' GEO_GRANULARITY,  
      	'TSA Travel'  DOMAIN_NAME ,  
     	' ' SUBDOMAIN_1_NAME	,
	 	' ' SUBDOMAIN_2_NAME	,
	 	' ' SUBDOMAIN_3_NAME	,
	    'Traffic Volume' METRIC_NAME,
	    TravelThroughPutLastYear   METRIC_VALUE	 ,
	    0  METRIC_index ,
	  	'TSA Travel' DATA_SOURCE_NAME ,
	 	'TSA Travel' DATA_SOURCE_DESC ,
	 	current_timestamp(0) REC_INS_TS, 	 
	 	current_timestamp(0) REC_UPD_TS 
        FROM  TRNG_COVID19.STG_TSA_TRAVEL 
        where travel_date is not null 
        ) aa     
        LEFT OUTER JOIN TRNG_COVID19.FACT_INDICATOR_DASHBOARD_v b
           ON  aa.METRIC_NAME = b.METRIC_NAME
           and aa.DATE_KEY = b.DATE_KEY
           and aa.GEO_GRANULARITY = b.GEO_GRANULARITY
           and aa.geo_key = b.geo_key
           and aa.DATE_KEY = b.DATE_KEY
           and aa.DOMAIN_NAME = b.DOMAIN_NAME
           and aa.SUBDOMAIN_1_NAME = b.SUBDOMAIN_1_NAME
           and aa.SUBDOMAIN_2_NAME = b.SUBDOMAIN_2_NAME
           and aa.SUBDOMAIN_3_NAME = b.SUBDOMAIN_3_NAME
           )  a
                ) AS x

        
          CROSS JOIN
                (SELECT
                                ZEROIFNULL(MAX(INDICATOR_KEY)) AS MAX_ID
                 FROM
                                TRNG_COVID19.FACT_INDICATOR_DASHBOARD_v
                ) AS y  
           WHERE x.PROCESS_TYPE IS NOT NULL 
            
)  as source
  

-- join on primary key is obligatory

ON  source.INDICATOR_KEY = target.INDICATOR_KEY
and source.date_key = target.date_key
 
--WHEN MATCHED THEN UPDATE
--SET product_status  = source.product_status
WHEN NOT MATCHED THEN 
INSERT  
(   	
    INDICATOR_KEY,  	
    Date_key,
    DATE_GRANULARITY,
    GEO_KEY, 
    GEO_GRANULARITY,
    DOMAIN_NAME,
    SUBDOMAIN_1_NAME,
    SUBDOMAIN_2_NAME,
    SUBDOMAIN_3_NAME,
    METRIC_NAME,
    METRIC_VALUE,
    METRIC_INDEX,
    DATA_SOURCE_NAME,
    DATA_SOURCE_DESC,
    REC_INS_TS,
    REC_UPD_TS  
) 
VALUES 
( 		
    source.INDICATOR_KEY,  	
    source.Date_key,
    source.DATE_GRANULARITY,
    source.GEO_KEY, 
    source.GEO_GRANULARITY,
    source.DOMAIN_NAME,
    source.SUBDOMAIN_1_NAME,
    source.SUBDOMAIN_2_NAME,
    source.SUBDOMAIN_3_NAME,
    source.METRIC_NAME,
    source.METRIC_VALUE,
    source.METRIC_INDEX,
    source.DATA_SOURCE_NAME,
    source.DATA_SOURCE_DESC,
    source.REC_INS_TS,
    source.REC_UPD_TS   
);
 
/******************************************************************/
--End of Transformation Logic
/******************************************************************/	


/*Getting Number of rows affected*/
SET v_RecordsAffected = v_RecordsAffected + ACTIVITY_COUNT;
SET v_RowCnt = v_RecordsAffected;


/*Insert Into Core Job Log*/
INSERT INTO TRNG_COVID19.ETL_Indicator_Proj_Audit VALUES (v_ProcName,'Core',v_CoreTable,v_RecordsAffected,current_timestamp(0));
	
END;

