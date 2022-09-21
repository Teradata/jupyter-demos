create database TRNG_HEALTHCARE from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_HEALTHCARE_CARRIER_CLAIMS_CUST", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/CARRIER-CLAIMS-CUST/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_PRESCRIPTION_DRUG_EVENTS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/PRESCRIPTION-DRUG-EVENTS/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_INPATIENT_CLAIMS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/INPATIENT-CLAIMS/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_va_conditions", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/va-conditions/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_CARRIER_CLAIMS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/CARRIER-CLAIMS/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_RJ_HEALTH_MEASURES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/RJ-HEALTH-MEASURES/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_patient_sel_cond", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/patient-sel-cond/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_ICD_ORDER", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/ICD-ORDER/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_MI_HEALTH_MEASURES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/MI-HEALTH-MEASURES/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_CCS_PR", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/CCS-PR/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_va_observations_full", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/va-observations-full/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_GEORGIA_County_Score2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/GEORGIA-County-Score2/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_va_patients", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/va-patients/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_va_observations", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/va-observations/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_GEORGIA_HEALTH_MEASURES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/GEORGIA-HEALTH-MEASURES/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_facility_Correlation_State", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/facility-Correlation-State/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_cs_norms", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/cs-norms/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_state_abbrv", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/state-abbrv/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_US_NCASES_cluster", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/US-NCASES-cluster/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_COVID_19_cases_US_load", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/COVID-19-cases-US-load/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_breast_cancer_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/breast-cancer-test/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_US_HOPITALS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/US-HOPITALS/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_CARRIER_CLAIMS_OLD", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/CARRIER-CLAIMS-OLD/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_va_procedures", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/va-procedures/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_va_encounters", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/va-encounters/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_COVID_19_pop", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/COVID-19-pop/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_zipcodes", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/zipcodes/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_US_Hospital_bed_res", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/US-Hospital-bed-res/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_US_County_Score", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/US-County-Score/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_breast_cancer_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/breast-cancer-train/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_IPPS_Provider_Smry", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/IPPS-Provider-Smry/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_patient_survey", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/patient-survey/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_DRG_CODES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/DRG-CODES/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_RXNSAT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/RXNSAT/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_va_medications", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/va-medications/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_US_NCASES_cluster_state", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/US-NCASES-cluster-state/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_Facility_Score", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/Facility-Score/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_Hospital_Readmissions", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/Hospital-Readmissions/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_facility_Correlation", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/facility-Correlation/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_US_Hospital_bed_model", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/US-Hospital-bed-model/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_hospital_beds_TS_order", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/hospital-beds-TS-order/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_facility_info", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/facility-info/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_US_Hospital_bed_fcst", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/US-Hospital-bed-fcst/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_OUTPATIENT_CLAIMS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/OUTPATIENT-CLAIMS/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_breast_cancer_mle_monitor", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/breast-cancer-mle-monitor/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_BENEFICIARY_SUMMARY_latest", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/BENEFICIARY-SUMMARY-latest/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_COVID_19_cases_US", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/COVID-19-cases-US/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_CCS_DX", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/CCS-DX/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_US_Hospital_bed", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/US-Hospital-bed/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_SSA_COUNTY_CD", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/SSA-COUNTY-CD/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_BENEFICIARY_SUMMARY", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/BENEFICIARY-SUMMARY/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_US_Nursing_Facility", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/US-Nursing-Facility/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_va_providers", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/va-providers/'));
create foreign table gs_tables_db."TRNG_HEALTHCARE_COVID_19_US_State_pivot", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-HEALTHCARE/COVID-19-US-State-pivot/'));
replace view TRNG_HEALTHCARE.BENEFICIARY_SUMMARY as locking row for access select
"DESYNPUF_ID"
,"BENE_BIRTH_DT"
,"BENE_DEATH_DT"
,"BENE_SEX_IDENT_CD"
,"BENE_RACE_CD"
,"BENE_ESRD_IND"
,"SP_STATE_CODE"
,"BENE_COUNTY_CD"
,"BENE_HI_CVRAGE_TOT_MONS"
,"BENE_SMI_CVRAGE_TOT_MONS"
,"BENE_HMO_CVRAGE_TOT_MONS"
,"PLAN_CVRG_MOS_NUM"
,"SP_ALZHDMTA"
,"SP_CHF"
,"SP_CHRNKIDN"
,"SP_CNCR"
,"SP_COPD"
,"SP_DEPRESSN"
,"SP_DIABETES"
,"SP_ISCHMCHT"
,"SP_OSTEOPRS"
,"SP_RA_OA"
,"SP_STRKETIA"
,"MEDREIMB_IP"
,"BENRES_IP"
,"PPPYMT_IP"
,"MEDREIMB_OP"
,"BENRES_OP"
,"PPPYMT_OP"
,"MEDREIMB_CAR"
,"BENRES_CAR"
,"PPPYMT_CAR"
,"SOURCE_FILE_NAME"
,"source_yr"
from gs_tables_db.TRNG_HEALTHCARE_BENEFICIARY_SUMMARY;
replace view TRNG_HEALTHCARE.BENEFICIARY_SUMMARY_latest as locking row for access select
"DESYNPUF_ID"
,"BENE_Age"
,"BENE_BIRTH_DT"
,"BENE_DEATH_DT"
,"BENE_SEX_IDENT_CD"
,"BENE_RACE_CD"
,"BENE_ESRD_IND"
,"SP_STATE_CODE"
,"BENE_COUNTY_CD"
,"SSA_CD"
,"BENE_HI_CVRAGE_TOT_MONS"
,"BENE_SMI_CVRAGE_TOT_MONS"
,"BENE_HMO_CVRAGE_TOT_MONS"
,"PLAN_CVRG_MOS_NUM"
,"MEDREIMB_IP"
,"BENRES_IP"
,"PPPYMT_IP"
,"MEDREIMB_OP"
,"BENRES_OP"
,"PPPYMT_OP"
,"MEDREIMB_CAR"
,"BENRES_CAR"
,"PPPYMT_CAR"
from gs_tables_db.TRNG_HEALTHCARE_BENEFICIARY_SUMMARY_latest;
replace view TRNG_HEALTHCARE.breast_cancer_mle_monitor as locking row for access select
"message"
from gs_tables_db.TRNG_HEALTHCARE_breast_cancer_mle_monitor;
replace view TRNG_HEALTHCARE.breast_cancer_test as locking row for access select
"id"
,"diagnosis"
,"radius_mean"
,"texture_mean"
,"perimeter_mean"
,"area_mean"
,"smoothness_mean"
,"compactness_mean"
,"concavity_mean"
,"concave_points_mean"
,"symmetry_mean"
,"fractal_dimension_mean"
,"radius_se"
,"texture_se"
,"perimeter_se"
,"area_se"
,"smoothness_se"
,"compactness_se"
,"concavity_se"
,"concave_points_se"
,"symmetry_se"
,"fractal_dimension_se"
,"radius_worst"
,"texture_worst"
,"perimeter_worst"
,"area_worst"
,"smoothness_worst"
,"compactness_worst"
,"concavity_worst"
,"concave_points_worst"
,"symmetry_worst"
,"fractal_dimension_worst"
from gs_tables_db.TRNG_HEALTHCARE_breast_cancer_test;
replace view TRNG_HEALTHCARE.breast_cancer_train as locking row for access select
"id"
,"diagnosis"
,"radius_mean"
,"texture_mean"
,"perimeter_mean"
,"area_mean"
,"smoothness_mean"
,"compactness_mean"
,"concavity_mean"
,"concave_points_mean"
,"symmetry_mean"
,"fractal_dimension_mean"
,"radius_se"
,"texture_se"
,"perimeter_se"
,"area_se"
,"smoothness_se"
,"compactness_se"
,"concavity_se"
,"concave_points_se"
,"symmetry_se"
,"fractal_dimension_se"
,"radius_worst"
,"texture_worst"
,"perimeter_worst"
,"area_worst"
,"smoothness_worst"
,"compactness_worst"
,"concavity_worst"
,"concave_points_worst"
,"symmetry_worst"
,"fractal_dimension_worst"
from gs_tables_db.TRNG_HEALTHCARE_breast_cancer_train;
replace view TRNG_HEALTHCARE.CARRIER_CLAIMS as locking row for access select
"DESYNPUF_ID"
,"CLM_ID"
,"CLM_FROM_DT"
,"CLM_THRU_DT"
,"ICD9_DGNS_CD_1"
,"ICD9_DGNS_CD_2"
,"ICD9_DGNS_CD_3"
,"ICD9_DGNS_CD_4"
,"ICD9_DGNS_CD_5"
,"ICD9_DGNS_CD_6"
,"ICD9_DGNS_CD_7"
,"ICD9_DGNS_CD_8"
,"PRF_PHYSN_NPI_1"
,"PRF_PHYSN_NPI_2"
,"PRF_PHYSN_NPI_3"
,"PRF_PHYSN_NPI_4"
,"PRF_PHYSN_NPI_5"
,"PRF_PHYSN_NPI_6"
,"PRF_PHYSN_NPI_7"
,"PRF_PHYSN_NPI_8"
,"PRF_PHYSN_NPI_9"
,"PRF_PHYSN_NPI_10"
,"PRF_PHYSN_NPI_11"
,"PRF_PHYSN_NPI_12"
,"PRF_PHYSN_NPI_13"
,"TAX_NUM_1"
,"TAX_NUM_2"
,"TAX_NUM_3"
,"TAX_NUM_4"
,"TAX_NUM_5"
,"TAX_NUM_6"
,"TAX_NUM_7"
,"TAX_NUM_8"
,"TAX_NUM_9"
,"TAX_NUM_10"
,"TAX_NUM_11"
,"TAX_NUM_12"
,"TAX_NUM_13"
,"HCPCS_CD_1"
,"HCPCS_CD_2"
,"HCPCS_CD_3"
,"HCPCS_CD_4"
,"HCPCS_CD_5"
,"HCPCS_CD_6"
,"HCPCS_CD_7"
,"HCPCS_CD_8"
,"HCPCS_CD_9"
,"HCPCS_CD_10"
,"HCPCS_CD_11"
,"HCPCS_CD_12"
,"HCPCS_CD_13"
,"LINE_NCH_PMT_AMT_1"
,"LINE_NCH_PMT_AMT_2"
,"LINE_NCH_PMT_AMT_3"
,"LINE_NCH_PMT_AMT_4"
,"LINE_NCH_PMT_AMT_5"
,"LINE_NCH_PMT_AMT_6"
,"LINE_NCH_PMT_AMT_7"
,"LINE_NCH_PMT_AMT_8"
,"LINE_NCH_PMT_AMT_9"
,"LINE_NCH_PMT_AMT_10"
,"LINE_NCH_PMT_AMT_11"
,"LINE_NCH_PMT_AMT_12"
,"LINE_NCH_PMT_AMT_13"
,"LINE_BENE_PTB_DDCTBL_AMT_1"
,"LINE_BENE_PTB_DDCTBL_AMT_2"
,"LINE_BENE_PTB_DDCTBL_AMT_3"
,"LINE_BENE_PTB_DDCTBL_AMT_4"
,"LINE_BENE_PTB_DDCTBL_AMT_5"
,"LINE_BENE_PTB_DDCTBL_AMT_6"
,"LINE_BENE_PTB_DDCTBL_AMT_7"
,"LINE_BENE_PTB_DDCTBL_AMT_8"
,"LINE_BENE_PTB_DDCTBL_AMT_9"
,"LINE_BENE_PTB_DDCTBL_AMT_10"
,"LINE_BENE_PTB_DDCTBL_AMT_11"
,"LINE_BENE_PTB_DDCTBL_AMT_12"
,"LINE_BENE_PTB_DDCTBL_AMT_13"
,"LINE_BENE_PRMRY_PYR_PD_AMT_1"
,"LINE_BENE_PRMRY_PYR_PD_AMT_2"
,"LINE_BENE_PRMRY_PYR_PD_AMT_3"
,"LINE_BENE_PRMRY_PYR_PD_AMT_4"
,"LINE_BENE_PRMRY_PYR_PD_AMT_5"
,"LINE_BENE_PRMRY_PYR_PD_AMT_6"
,"LINE_BENE_PRMRY_PYR_PD_AMT_7"
,"LINE_BENE_PRMRY_PYR_PD_AMT_8"
,"LINE_BENE_PRMRY_PYR_PD_AMT_9"
,"LINE_BENE_PRMRY_PYR_PD_AMT_10"
,"LINE_BENE_PRMRY_PYR_PD_AMT_11"
,"LINE_BENE_PRMRY_PYR_PD_AMT_12"
,"LINE_BENE_PRMRY_PYR_PD_AMT_13"
,"LINE_COINSRNC_AMT_1"
,"LINE_COINSRNC_AMT_2"
,"LINE_COINSRNC_AMT_3"
,"LINE_COINSRNC_AMT_4"
,"LINE_COINSRNC_AMT_5"
,"LINE_COINSRNC_AMT_6"
,"LINE_COINSRNC_AMT_7"
,"LINE_COINSRNC_AMT_8"
,"LINE_COINSRNC_AMT_9"
,"LINE_COINSRNC_AMT_10"
,"LINE_COINSRNC_AMT_11"
,"LINE_COINSRNC_AMT_12"
,"LINE_COINSRNC_AMT_13"
,"LINE_ALOWD_CHRG_AMT_1"
,"LINE_ALOWD_CHRG_AMT_2"
,"LINE_ALOWD_CHRG_AMT_3"
,"LINE_ALOWD_CHRG_AMT_4"
,"LINE_ALOWD_CHRG_AMT_5"
,"LINE_ALOWD_CHRG_AMT_6"
,"LINE_ALOWD_CHRG_AMT_7"
,"LINE_ALOWD_CHRG_AMT_8"
,"LINE_ALOWD_CHRG_AMT_9"
,"LINE_ALOWD_CHRG_AMT_10"
,"LINE_ALOWD_CHRG_AMT_11"
,"LINE_ALOWD_CHRG_AMT_12"
,"LINE_ALOWD_CHRG_AMT_13"
,"LINE_PRCSG_IND_CD_1"
,"LINE_PRCSG_IND_CD_2"
,"LINE_PRCSG_IND_CD_3"
,"LINE_PRCSG_IND_CD_4"
,"LINE_PRCSG_IND_CD_5"
,"LINE_PRCSG_IND_CD_6"
,"LINE_PRCSG_IND_CD_7"
,"LINE_PRCSG_IND_CD_8"
,"LINE_PRCSG_IND_CD_9"
,"LINE_PRCSG_IND_CD_10"
,"LINE_PRCSG_IND_CD_11"
,"LINE_PRCSG_IND_CD_12"
,"LINE_PRCSG_IND_CD_13"
,"LINE_ICD9_DGNS_CD_1"
,"LINE_ICD9_DGNS_CD_2"
,"LINE_ICD9_DGNS_CD_3"
,"LINE_ICD9_DGNS_CD_4"
,"LINE_ICD9_DGNS_CD_5"
,"LINE_ICD9_DGNS_CD_6"
,"LINE_ICD9_DGNS_CD_7"
,"LINE_ICD9_DGNS_CD_8"
,"LINE_ICD9_DGNS_CD_9"
,"LINE_ICD9_DGNS_CD_10"
,"LINE_ICD9_DGNS_CD_11"
,"LINE_ICD9_DGNS_CD_12"
,"LINE_ICD9_DGNS_CD_13"
,"SOURCE_FILE_NAME"
from gs_tables_db.TRNG_HEALTHCARE_CARRIER_CLAIMS;
replace view TRNG_HEALTHCARE.CARRIER_CLAIMS_CUST as locking row for access select
"PATIENT_ID"
,"DESYNPUF_ID"
from gs_tables_db.TRNG_HEALTHCARE_CARRIER_CLAIMS_CUST;
replace view TRNG_HEALTHCARE.CARRIER_CLAIMS_OLD as locking row for access select
"DESYNPUF_ID"
,"CLM_ID"
,"CLM_FROM_DT"
,"CLM_THRU_DT"
,"ICD9_DGNS_CD_1"
,"ICD9_DGNS_CD_2"
,"ICD9_DGNS_CD_3"
,"ICD9_DGNS_CD_4"
,"ICD9_DGNS_CD_5"
,"ICD9_DGNS_CD_6"
,"ICD9_DGNS_CD_7"
,"ICD9_DGNS_CD_8"
,"PRF_PHYSN_NPI_1"
,"PRF_PHYSN_NPI_2"
,"PRF_PHYSN_NPI_3"
,"PRF_PHYSN_NPI_4"
,"PRF_PHYSN_NPI_5"
,"PRF_PHYSN_NPI_6"
,"PRF_PHYSN_NPI_7"
,"PRF_PHYSN_NPI_8"
,"PRF_PHYSN_NPI_9"
,"PRF_PHYSN_NPI_10"
,"PRF_PHYSN_NPI_11"
,"PRF_PHYSN_NPI_12"
,"PRF_PHYSN_NPI_13"
,"TAX_NUM_1"
,"TAX_NUM_2"
,"TAX_NUM_3"
,"TAX_NUM_4"
,"TAX_NUM_5"
,"TAX_NUM_6"
,"TAX_NUM_7"
,"TAX_NUM_8"
,"TAX_NUM_9"
,"TAX_NUM_10"
,"TAX_NUM_11"
,"TAX_NUM_12"
,"TAX_NUM_13"
,"HCPCS_CD_1"
,"HCPCS_CD_2"
,"HCPCS_CD_3"
,"HCPCS_CD_4"
,"HCPCS_CD_5"
,"HCPCS_CD_6"
,"HCPCS_CD_7"
,"HCPCS_CD_8"
,"HCPCS_CD_9"
,"HCPCS_CD_10"
,"HCPCS_CD_11"
,"HCPCS_CD_12"
,"HCPCS_CD_13"
,"LINE_NCH_PMT_AMT_1"
,"LINE_NCH_PMT_AMT_2"
,"LINE_NCH_PMT_AMT_3"
,"LINE_NCH_PMT_AMT_4"
,"LINE_NCH_PMT_AMT_5"
,"LINE_NCH_PMT_AMT_6"
,"LINE_NCH_PMT_AMT_7"
,"LINE_NCH_PMT_AMT_8"
,"LINE_NCH_PMT_AMT_9"
,"LINE_NCH_PMT_AMT_10"
,"LINE_NCH_PMT_AMT_11"
,"LINE_NCH_PMT_AMT_12"
,"LINE_NCH_PMT_AMT_13"
,"LINE_BENE_PTB_DDCTBL_AMT_1"
,"LINE_BENE_PTB_DDCTBL_AMT_2"
,"LINE_BENE_PTB_DDCTBL_AMT_3"
,"LINE_BENE_PTB_DDCTBL_AMT_4"
,"LINE_BENE_PTB_DDCTBL_AMT_5"
,"LINE_BENE_PTB_DDCTBL_AMT_6"
,"LINE_BENE_PTB_DDCTBL_AMT_7"
,"LINE_BENE_PTB_DDCTBL_AMT_8"
,"LINE_BENE_PTB_DDCTBL_AMT_9"
,"LINE_BENE_PTB_DDCTBL_AMT_10"
,"LINE_BENE_PTB_DDCTBL_AMT_11"
,"LINE_BENE_PTB_DDCTBL_AMT_12"
,"LINE_BENE_PTB_DDCTBL_AMT_13"
,"LINE_BENE_PRMRY_PYR_PD_AMT_1"
,"LINE_BENE_PRMRY_PYR_PD_AMT_2"
,"LINE_BENE_PRMRY_PYR_PD_AMT_3"
,"LINE_BENE_PRMRY_PYR_PD_AMT_4"
,"LINE_BENE_PRMRY_PYR_PD_AMT_5"
,"LINE_BENE_PRMRY_PYR_PD_AMT_6"
,"LINE_BENE_PRMRY_PYR_PD_AMT_7"
,"LINE_BENE_PRMRY_PYR_PD_AMT_8"
,"LINE_BENE_PRMRY_PYR_PD_AMT_9"
,"LINE_BENE_PRMRY_PYR_PD_AMT_10"
,"LINE_BENE_PRMRY_PYR_PD_AMT_11"
,"LINE_BENE_PRMRY_PYR_PD_AMT_12"
,"LINE_BENE_PRMRY_PYR_PD_AMT_13"
,"LINE_COINSRNC_AMT_1"
,"LINE_COINSRNC_AMT_2"
,"LINE_COINSRNC_AMT_3"
,"LINE_COINSRNC_AMT_4"
,"LINE_COINSRNC_AMT_5"
,"LINE_COINSRNC_AMT_6"
,"LINE_COINSRNC_AMT_7"
,"LINE_COINSRNC_AMT_8"
,"LINE_COINSRNC_AMT_9"
,"LINE_COINSRNC_AMT_10"
,"LINE_COINSRNC_AMT_11"
,"LINE_COINSRNC_AMT_12"
,"LINE_COINSRNC_AMT_13"
,"LINE_ALOWD_CHRG_AMT_1"
,"LINE_ALOWD_CHRG_AMT_2"
,"LINE_ALOWD_CHRG_AMT_3"
,"LINE_ALOWD_CHRG_AMT_4"
,"LINE_ALOWD_CHRG_AMT_5"
,"LINE_ALOWD_CHRG_AMT_6"
,"LINE_ALOWD_CHRG_AMT_7"
,"LINE_ALOWD_CHRG_AMT_8"
,"LINE_ALOWD_CHRG_AMT_9"
,"LINE_ALOWD_CHRG_AMT_10"
,"LINE_ALOWD_CHRG_AMT_11"
,"LINE_ALOWD_CHRG_AMT_12"
,"LINE_ALOWD_CHRG_AMT_13"
,"LINE_PRCSG_IND_CD_1"
,"LINE_PRCSG_IND_CD_2"
,"LINE_PRCSG_IND_CD_3"
,"LINE_PRCSG_IND_CD_4"
,"LINE_PRCSG_IND_CD_5"
,"LINE_PRCSG_IND_CD_6"
,"LINE_PRCSG_IND_CD_7"
,"LINE_PRCSG_IND_CD_8"
,"LINE_PRCSG_IND_CD_9"
,"LINE_PRCSG_IND_CD_10"
,"LINE_PRCSG_IND_CD_11"
,"LINE_PRCSG_IND_CD_12"
,"LINE_PRCSG_IND_CD_13"
,"LINE_ICD9_DGNS_CD_1"
,"LINE_ICD9_DGNS_CD_2"
,"LINE_ICD9_DGNS_CD_3"
,"LINE_ICD9_DGNS_CD_4"
,"LINE_ICD9_DGNS_CD_5"
,"LINE_ICD9_DGNS_CD_6"
,"LINE_ICD9_DGNS_CD_7"
,"LINE_ICD9_DGNS_CD_8"
,"LINE_ICD9_DGNS_CD_9"
,"LINE_ICD9_DGNS_CD_10"
,"LINE_ICD9_DGNS_CD_11"
,"LINE_ICD9_DGNS_CD_12"
,"LINE_ICD9_DGNS_CD_13"
,"SOURCE_FILE_NAME"
from gs_tables_db.TRNG_HEALTHCARE_CARRIER_CLAIMS_OLD;
replace view TRNG_HEALTHCARE.CCS_DX as locking row for access select
"ICD_9_CM_CODE"
,"CCS_LVL_1"
,"CCS_LVL_1_LABEL"
,"CCS_LVL_2"
,"CCS_LVL_2_LABEL"
,"CCS_LVL_3"
,"CCS_LVL_3_LABEL"
,"CCS_LVL_4"
,"CCS_LVL_4_LABEL"
from gs_tables_db.TRNG_HEALTHCARE_CCS_DX;
replace view TRNG_HEALTHCARE.CCS_PR as locking row for access select
"ICD_9_CM_CODE"
,"CCS_LVL_1"
,"CCS_LVL_1_LABEL"
,"CCS_LVL_2"
,"CCS_LVL_2_LABEL"
,"CCS_LVL_3"
,"CCS_LVL_3_LABEL"
from gs_tables_db.TRNG_HEALTHCARE_CCS_PR;
replace view TRNG_HEALTHCARE.COVID_19_cases_US as locking row for access select
"UID"
,"iso2"
,"iso3"
,"code3"
,"FIPS"
,"Admin2"
,"Province_State"
,"Country_Region"
,"Lat"
,"Long_"
,"case_type"
,"data_dt"
,"accum_cases"
,"no_cases"
from gs_tables_db.TRNG_HEALTHCARE_COVID_19_cases_US;
replace view TRNG_HEALTHCARE.COVID_19_cases_US_load as locking row for access select
"UID"
,"iso2"
,"iso3"
,"code3"
,"FIPS"
,"Admin2"
,"Province_State"
,"Country_Region"
,"Lat"
,"Long_"
,"case_type"
,"data_dt"
,"no_cases"
from gs_tables_db.TRNG_HEALTHCARE_COVID_19_cases_US_load;
replace view TRNG_HEALTHCARE.COVID_19_pop as locking row for access select
"UID"
,"iso2"
,"iso3"
,"code3"
,"FIPS"
,"Admin2"
,"Province_State"
,"Country_Region"
,"Lat"
,"Long_"
,"Population"
from gs_tables_db.TRNG_HEALTHCARE_COVID_19_pop;
replace view TRNG_HEALTHCARE.COVID_19_US_State_pivot as locking row for access select
"state"
,"ncase_0"
,"ncase_1"
,"ncase_2"
,"ncase_3"
,"ncase_4"
,"ncase_5"
,"ncase_6"
,"ncase_7"
,"ncase_8"
,"ncase_9"
,"ncase_10"
,"ncase_11"
,"ncase_12"
,"ncase_13"
,"ncase_14"
,"ncase_15"
,"ncase_16"
,"ncase_17"
,"ncase_18"
,"ncase_19"
,"ncase_20"
,"ncase_21"
,"ncase_22"
,"ncase_23"
,"ncase_24"
,"ncase_25"
,"ncase_26"
,"ncase_27"
,"ncase_28"
,"ncase_29"
from gs_tables_db.TRNG_HEALTHCARE_COVID_19_US_State_pivot;
replace view TRNG_HEALTHCARE.cs_norms as locking row for access select
"cs_label"
,"min_norm"
,"max_norm"
,"units_norm"
from gs_tables_db.TRNG_HEALTHCARE_cs_norms;
replace view TRNG_HEALTHCARE.DRG_CODES as locking row for access select
"MS_DRG"
,"FY_2010_FINAL_RULE_POST_ACUTE_DRG"
,"FY_2010_FINAL_RULE_SPECIAL_PAY_DRG"
,"MDC"
,"TYPE_TXT"
,"MS_DRG_TITLE"
,"WEIGHTS"
,"GEOMETRIC_MEAN_LOS"
,"ARITHMETIC_MEAN_LOS"
,"SOURCE_FILE_NAME"
from gs_tables_db.TRNG_HEALTHCARE_DRG_CODES;
replace view TRNG_HEALTHCARE.facility_Correlation as locking row for access select
"corr_item1"
,"corr_item2"
,"value_col"
from gs_tables_db.TRNG_HEALTHCARE_facility_Correlation;
replace view TRNG_HEALTHCARE.facility_Correlation_State as locking row for access select
"state"
,"corr_item1"
,"corr_item2"
,"value_col"
from gs_tables_db.TRNG_HEALTHCARE_facility_Correlation_State;
replace view TRNG_HEALTHCARE.facility_info as locking row for access select
"Facility_ID"
,"Facility_Nm"
,"Address"
,"City"
,"State"
,"ZIP"
,"County"
from gs_tables_db.TRNG_HEALTHCARE_facility_info;
replace view TRNG_HEALTHCARE.Facility_Score as locking row for access select
"Facility_ID"
,"Facility_Nm"
,"Address"
,"City"
,"State"
,"ZIP"
,"County"
,"Unw_NormClinicalOutcomesScore"
,"Wght_NormClinicalOutcomesScore"
,"Unw_PersonCommEngScore"
,"Wght_PersonCommEngScore"
,"Unw_NormSafetyScore"
,"Wght_NormSafetyScore"
,"Unw_NormEffCostRedScore"
,"Wght_NormEffCostRedScore"
,"TotalPerfScore"
,"Location"
from gs_tables_db.TRNG_HEALTHCARE_Facility_Score;
replace view TRNG_HEALTHCARE.GEORGIA_County_Score2 as locking row for access select
"County_ID"
,"State"
,"County"
,"Health_Outcomes_zscore"
,"Health_Outcomes_rank"
,"Health_Factors_zscore"
,"Health_Factors_rank"
from gs_tables_db.TRNG_HEALTHCARE_GEORGIA_County_Score2;
replace view TRNG_HEALTHCARE.GEORGIA_HEALTH_MEASURES as locking row for access select
"FIPS"
,"STATE"
,"COUNTY"
,"PD_DEATHS"
,"PD_YEARS_OF_POTENTIAL_LIFE_LOST_RATE"
,"PD_95PCT_CI_LOW"
,"PD_95PCT_CI_HIGH"
,"PD_ZSCORE"
,"PD_YPLL_RATE_(AIAN)"
,"PD_YPLL_RATE_(AIAN)_95PCT_CI_LOW"
,"PD_YPLL_RATE_(AIAN)_95PCT_CI_HIGH"
,"PD_YPLL_RATE_(ASIAN)"
,"PD_YPLL_RATE_(ASIAN)_95PCT_CI_LOW"
,"PD_YPLL_RATE_(ASIAN)_95PCT_CI_HIGH"
,"PD_YPLL_RATE_(BLACK)"
,"PD_YPLL_RATE_(BLACK)_95PCT_CI_LOW"
,"PD_YPLL_RATE_(BLACK)_95PCT_CI_HIGH"
,"PD_YPLL_RATE_(HISPANIC)"
,"PD_YPLL_RATE_(HISPANIC)_95PCT_CI_LOW"
,"PD_YPLL_RATE_(HISPANIC)_95PCT_CI_HIGH"
,"PD_YPLL_RATE_(WHITE)"
,"PD_YPLL_RATE_(WHITE)_95PCT_CI_LOW"
,"PD_YPLL_RATE_(WHITE)_95PCT_CI_HIGH"
,"PCT_FAIR_OR_POOR_HEALTH"
,"POOR_HEALTH_95PCT_CI_LOW"
,"POOR_HEALTH_95PCT_CI_HIGH"
,"POOR_HEALTH_ZSCORE"
,"AVERAGE_NUMBER_OF_PHYSICALLY_UNHEALTHY_DAYS"
,"PPH_DAYS_95PCT_CI_LOW"
,"PPH_DAYS_95PCT_CI_HIGH"
,"PPH_DAYS_ZSCORE"
,"AVERAGE_NUMBER_OF_MENTALLY_UNHEALTHY_DAYS"
,"PMH_DAYS_95PCT_CI_LOW"
,"PMH_DAYS_95PCT_CI_HIGH"
,"PMH_DAYS_ZSCORE"
,"LOW_BRTHWGHT_UNRELIABLE"
,"LOW_BRTHWGHT_PCT_LOW_BIRTHWEIGHT"
,"LOW_BRTHWGHT_95PCT_CI_LOW"
,"LOW_BRTHWGHT_95PCT_CI_HIGH"
,"LOW_BRTHWGHT_ZSCORE"
,"LOW_BRTHWGHT_PCT_LBW_(AIAN)"
,"LOW_BRTHWGHT_PCT_LBW_(AIAN)_95PCT_CI_LOW"
,"LOW_BRTHWGHT_PCT_LBW_(AIAN)_95PCT_CI_HIGH"
,"LOW_BRTHWGHT_PCT_LBW_(ASIAN)"
,"LOW_BRTHWGHT_PCT_LBW_(ASIAN)_95PCT_CI_LOW"
,"LOW_BRTHWGHT_PCT_LBW_(ASIAN)_95PCT_CI_HIGH"
,"LOW_BRTHWGHT_PCT_LBW_(BLACK)"
,"LOW_BRTHWGHT_PCT_LBW_(BLACK)_95PCT_CI_LOW"
,"LOW_BRTHWGHT_PCT_LBW_(BLACK)_95PCT_CI_HIGH"
,"LOW_BRTHWGHT_PCT_LBW_(HISPANIC)"
,"LOW_BRTHWGHT_PCT_LBW_(HISPANIC)_95PCT_CI_LOW"
,"LOW_BRTHWGHT_PCT_LBW_(HISPANIC)_95PCT_CI_HIGH"
,"LOW_BRTHWGHT_PCT_LBW_(WHITE)"
,"LOW_BRTHWGHT_PCT_LBW_(WHITE)_95PCT_CI_LOW"
,"LOW_BRTHWGHT_PCT_LBW_(WHITE)_95PCT_CI_HIGH"
,"PCT_SMOKERS"
,"ADLT_SMKNG_95PCT_CI_LOW"
,"ADLT_SMKNG_95PCT_CI_HIGH"
,"ADLT_SMKNG_ZSCORE"
,"PCT_ADULTS_WITH_OBESITY"
,"ADLT_OBSTY_95PCT_CI_LOW"
,"ADLT_OBSTY_95PCT_CI_HIGH"
,"ADLT_OBSTY_ZSCORE"
,"FOOD_ENVIRONMENT_INDEX"
,"FOOD_ENV_INDX_ZSCORE"
,"PCT_PHYSICALLY_INACTIVE"
,"PHYSCL_INCTVTY_95PCT_CI_LOW"
,"PHYSCL_INCTVTY_95PCT_CI_HIGH"
,"PHYSCL_INCTVTY_ZSCORE"
,"PCT_WITH_ACCESS_TO_EXERCISE_OPPORTUNITIES"
,"EXERCISE_ACCESS_ZSCORE"
,"PCT_EXCESSIVE_DRINKING"
,"EXCSS_DRNKNG_95PCT_CI_LOW"
,"EXCSS_DRNKNG_95PCT_CI_HIGH"
,"EXCSS_DRNKNG_ZSCORE"
,"NUM_ALCOHOLIMPAIRED_DRIVING_DEATHS"
,"NUM_DRIVING_DEATHS"
,"PCT_DRIVING_DEATHS_WITH_ALCOHOL_INVOLVEMENT"
,"ALCHL_IMPRD_DRVNG_DEATHS_95PCT_CI_LOW"
,"ALCHL_IMPRD_DRVNG_DEATHS_95PCT_CI_HIGH"
,"ALCHL_IMPRD_DRVNG_DEATHS_ZSCORE"
,"NUM_CHLAMYDIA_CASES"
,"CHLAMYDIA_RATE"
,"STI_ZSCORE"
,"TEEN_BIRTH_RATE"
,"TEEN_BRTHS_95PCT_CI_LOW"
,"TEEN_BRTHS_95PCT_CI_HIGH"
,"TEEN_BRTHS_ZSCORE"
,"TEEN_BIRTH_RATE_(AIAN)"
,"TEEN_BIRTH_RATE_(AIAN)_95PCT_CI_LOW"
,"TEEN_BIRTH_RATE_(AIAN)_95PCT_CI_HIGH"
,"TEEN_BIRTH_RATE_(ASIAN)"
,"TEEN_BIRTH_RATE_(ASIAN)_95PCT_CI_LOW"
,"TEEN_BIRTH_RATE_(ASIAN)_95PCT_CI_HIGH"
,"TEEN_BIRTH_RATE_(BLACK)"
,"TEEN_BIRTH_RATE_(BLACK)_95PCT_CI_LOW"
,"TEEN_BIRTH_RATE_(BLACK)_95PCT_CI_HIGH"
,"TEEN_BIRTH_RATE_(HISPANIC)"
,"TEEN_BIRTH_RATE_(HISPANIC)_95PCT_CI_LOW"
,"TEEN_BIRTH_RATE_(HISPANIC)_95PCT_CI_HIGH"
,"TEEN_BIRTH_RATE_(WHITE)"
,"TEEN_BIRTH_RATE_(WHITE)_95PCT_CI_LOW"
,"TEEN_BIRTH_RATE_(WHITE)_95PCT_CI_HIGH"
,"NUM_UNINSURED"
,"PCT_UNINSURED"
,"UNINSURED_95PCT_CI_LOW"
,"UNINSURED_95PCT_CI_HIGH"
,"UNINSURED_ZSCORE"
,"NUM_PRIMARY_CARE_PHYSICIANS"
,"PRIMARY_CARE_PHYSICIANS_RATE"
,"PRIMARY_CARE_PHYSICIANS_RATIO"
,"PCP_ZSCORE"
,"NUM_DENTISTS"
,"DENTIST_RATE"
,"DENTIST_RATIO"
,"DENTISTS_ZSCORE"
,"NUM_MENTAL_HEALTH_PROVIDERS"
,"MENTAL_HEALTH_PROVIDER_RATE"
,"MENTAL_HEALTH_PROVIDER_RATIO"
,"MH_PROV_ZSCORE"
,"PREVENTABLE_HOSPITALIZATION_RATE"
,"PREVENT_HOSP_STYS_ZSCORE"
,"PREVENTABLE_HOSP._RATE_(AIAN)"
,"PREVENTABLE_HOSP._RATE_(ASIAN)"
,"PREVENTABLE_HOSP._RATE_(BLACK)"
,"PREVENTABLE_HOSP._RATE_(HISPANIC)"
,"PREVENTABLE_HOSP._RATE_(WHITE)"
,"PCT_WITH_ANNUAL_MAMMOGRAM"
,"MMMGRPHY_SCRNNG_ZSCORE"
,"MMMGRPHY_SCRNNG_PCT_SCREENED_(AIAN)"
,"MMMGRPHY_SCRNNG_PCT_SCREENED_(ASIAN)"
,"MMMGRPHY_SCRNNG_PCT_SCREENED_(BLACK)"
,"MMMGRPHY_SCRNNG_PCT_SCREENED_(HISPANIC)"
,"MMMGRPHY_SCRNNG_PCT_SCREENED_(WHITE)"
,"FLU_VACC_PCT_VACCINATED"
,"FLU_VACC_ZSCORE"
,"FLU_VACC_PCT_VACCINATED_(AIAN)"
,"FLU_VACC_PCT_VACCINATED_(ASIAN)"
,"FLU_VACC_PCT_VACCINATED_(BLACK)"
,"FLU_VACC_PCT_VACCINATED_(HISPANIC)"
,"FLU_VACC_PCT_VACCINATED_(WHITE)"
,"HIGH_SCHL_GRAD_COHORT_SIZE"
,"HIGH_SCHL_GRAD_HIGH_SCHOOL_GRADUATION_RATE"
,"HIGH_SCHL_GRAD_ZSCORE"
,"SOME_COLLEGE_NUM_SOME_COLLEGE"
,"SOME_COLLEGE_POPULATION"
,"SOME_COLLEGE_PCT_SOME_COLLEGE"
,"SOME_COLLEGE_95PCT_CI_LOW"
,"SOME_COLLEGE_95PCT_CI_HIGH"
,"SOME_COLLEGE_ZSCORE"
,"NUM_UNEMPLOYED"
,"LABOR_FORCE"
,"PCT_UNEMPLOYED"
,"UNEMPLOYMENT_ZSCORE"
,"PCT_CHILDREN_IN_POVERTY"
,"CHLDRN_IN_PVRTY_95PCT_CI_LOW"
,"CHLDRN_IN_PVRTY_95PCT_CI_HIGH"
,"CHLDRN_IN_PVRTY_ZSCORE"
,"PCT_CHILDREN_IN_POVERTY_(AIAN)"
,"PCT_CHILDREN_IN_POVERTY_(ASIAN)"
,"PCT_CHILDREN_IN_POVERTY_(BLACK)"
,"PCT_CHILDREN_IN_POVERTY_(HISPANIC)"
,"PCT_CHILDREN_IN_POVERTY_(WHITE)"
,"INCOME_INQLITY_80TH_PERCENTILE_INCOME"
,"INCOME_INQLITY_20TH_PERCENTILE_INCOME"
,"INCOME_INQLITY_INCOME_RATIO"
,"INCOME_INQLITY_ZSCORE"
,"NUM_SINGLEPARENT_HOUSEHOLDS"
,"SINGLE_PRNT_HMS_NUM_HOUSEHOLDS"
,"PCT_SINGLEPARENT_HOUSEHOLDS"
,"SINGLE_PRNT_HMS_95PCT_CI_LOW"
,"SINGLE_PRNT_HMS_95PCT_CI_HIGH"
,"SINGLE_PRNT_HMS_ZSCORE"
,"NUM_ASSOCIATIONS"
,"SOCIAL_ASSOCIATION_RATE"
,"SOCIAL_ASSOCIATIONS_ZSCORE"
,"ANNUAL_AVERAGE_VIOLENT_CRIMES"
,"VIOLENT_CRIME_RATE"
,"VIOLENT_CRIME_ZSCORE"
,"NUM_INJURY_DEATHS"
,"INJURY_DEATH_RATE"
,"INJURY_DEATHS_95PCT_CI_LOW"
,"INJURY_DEATHS_95PCT_CI_HIGH"
,"INJURY_DEATHS_ZSCORE"
,"INJURY_DEATH_RATE_(AIAN)"
,"INJURY_DEATH_RATE_(AIAN)_95PCT_CI_LOW"
,"INJURY_DEATH_RATE_(AIAN)_95PCT_CI_HIGH"
,"INJURY_DEATH_RATE_(ASIAN)"
,"INJURY_DEATH_RATE_(ASIAN)_95PCT_CI_LOW"
,"INJURY_DEATH_RATE_(ASIAN)_95PCT_CI_HIGH"
,"INJURY_DEATH_RATE_(BLACK)"
,"INJURY_DEATH_RATE_(BLACK)_95PCT_CI_LOW"
,"INJURY_DEATH_RATE_(BLACK)_95PCT_CI_HIGH"
,"INJURY_DEATH_RATE_(HISPANIC)"
,"INJURY_DEATH_RATE_(HISPANIC)_95PCT_CI_LOW"
,"INJURY_DEATH_RATE_(HISPANIC)_95PCT_CI_HIGH"
,"INJURY_DEATH_RATE_(WHITE)"
,"INJURY_DEATH_RATE_(WHITE)_95PCT_CI_LOW"
,"INJURY_DEATH_RATE_(WHITE)_95PCT_CI_HIGH"
,"AIR_PLLTN_AVERAGE_DAILY_PM2.5"
,"AIR_PLLTN_ZSCORE"
,"PRESENCE_OF_WATER_VIOLATION"
,"DRNKNG_WTR_VLTNS_ZSCORE"
,"PCT_SEVERE_HOUSING_PROBLEMS"
,"SVR_HSNG_PRBLMS_95PCT_CI_LOW"
,"SVR_HSNG_PRBLMS_95PCT_CI_HIGH"
,"SEVERE_HOUSING_COST_BURDEN"
,"SEVERE_HOUSING_COST_BURDEN_95PCT_CI_LOW"
,"SEVERE_HOUSING_COST_BURDEN_95PCT_CI_HIGH"
,"OVERCROWDING"
,"OVERCROWDING_95PCT_CI_LOW"
,"OVERCROWDING_95PCT_CI_HIGH"
,"INADEQUATE_FACILITIES"
,"INADEQUATE_FACILITIES_95PCT_CI_LOW"
,"INADEQUATE_FACILITIES_95PCT_CI_HIGH"
,"SVR_HSNG_PRBLMS_ZSCORE"
,"PCT_DRIVE_ALONE_TO_WORK"
,"DRIVING_ALONE_TO_WORK_95PCT_CI_LOW"
,"DRIVING_ALONE_TO_WORK_95PCT_CI_HIGH"
,"DRIVING_ALONE_TO_WORK_ZSCORE"
,"PCT_DRIVE_ALONE_(AIAN)"
,"PCT_DRIVE_ALONE_(AIAN)_95PCT_CI_LOW"
,"PCT_DRIVE_ALONE_(AIAN)_95PCT_CI_HIGH"
,"PCT_DRIVE_ALONE_(ASIAN)"
,"PCT_DRIVE_ALONE_(ASIAN)_95PCT_CI_LOW"
,"PCT_DRIVE_ALONE_(ASIAN)_95PCT_CI_HIGH"
,"PCT_DRIVE_ALONE_(BLACK)"
,"PCT_DRIVE_ALONE_(BLACK)_95PCT_CI_LOW"
,"PCT_DRIVE_ALONE_(BLACK)_95PCT_CI_HIGH"
,"PCT_DRIVE_ALONE_(HISPANIC)"
,"PCT_DRIVE_ALONE_(HISPANIC)_95PCT_CI_LOW"
,"PCT_DRIVE_ALONE_(HISPANIC)_95PCT_CI_HIGH"
,"PCT_DRIVE_ALONE_(WHITE)"
,"PCT_DRIVE_ALONE_(WHITE)_95PCT_CI_LOW"
,"PCT_DRIVE_ALONE_(WHITE)_95PCT_CI_HIGH"
,"NUM_WORKERS_WHO_DRIVE_ALONE"
,"PCT_LONG_COMMUTE_DRIVES_ALONE"
,"LONG_DRIVING_ALONE_95PCT_CI_LOW"
,"LONG_DRIVING_ALONE_95PCT_CI_HIGH"
,"LONG_DRIVING_ALONE_ZSCORE"
from gs_tables_db.TRNG_HEALTHCARE_GEORGIA_HEALTH_MEASURES;
replace view TRNG_HEALTHCARE.hospital_beds_TS_order as locking row for access select
"attr_name"
,"p"
,"d"
,"q"
,"include_drift"
,"include_mean"
from gs_tables_db.TRNG_HEALTHCARE_hospital_beds_TS_order;
replace view TRNG_HEALTHCARE.Hospital_Readmissions as locking row for access select
"Facility_Nm"
,"Facility_Id"
,"Facility_State"
,"Measure_nm"
,"No_Discharge"
,"Footnote"
,"Excess_Readmssn_Rate"
,"Predict_Readmssn_Rate"
,"Expected_Readmssn_Rate"
,"No_Readmssn"
,"Start_Date"
,"End_Date"
from gs_tables_db.TRNG_HEALTHCARE_Hospital_Readmissions;
replace view TRNG_HEALTHCARE.ICD_ORDER as locking row for access select
"Order_nb"
,"ICD_10"
,"code_ind"
,"short_desc"
,"long_desc"
from gs_tables_db.TRNG_HEALTHCARE_ICD_ORDER;
replace view TRNG_HEALTHCARE.INPATIENT_CLAIMS as locking row for access select
"DESYNPUF_ID"
,"CLM_ID"
,"SEGMENT"
,"CLM_FROM_DT"
,"CLM_THRU_DT"
,"PRVDR_NUM"
,"CLM_PMT_AMT"
,"NCH_PRMRY_PYR_CLM_PD_AMT"
,"AT_PHYSN_NPI"
,"OP_PHYSN_NPI"
,"OT_PHYSN_NPI"
,"CLM_ADMSN_DT"
,"ADMTNG_ICD9_DGNS_CD"
,"CLM_PASS_THRU_PER_DIEM_AMT"
,"NCH_BENE_IP_DDCTBL_AMT"
,"NCH_BENE_PTA_COINSRNC_LBLTY_AM"
,"NCH_BENE_BLOOD_DDCTBL_LBLTY_AM"
,"CLM_UTLZTN_DAY_CNT"
,"NCH_BENE_DSCHRG_DT"
,"CLM_DRG_CD"
,"ICD9_DGNS_CD_1"
,"ICD9_DGNS_CD_2"
,"ICD9_DGNS_CD_3"
,"ICD9_DGNS_CD_4"
,"ICD9_DGNS_CD_5"
,"ICD9_DGNS_CD_6"
,"ICD9_DGNS_CD_7"
,"ICD9_DGNS_CD_8"
,"ICD9_DGNS_CD_9"
,"ICD9_DGNS_CD_10"
,"ICD9_PRCDR_CD_1"
,"ICD9_PRCDR_CD_2"
,"ICD9_PRCDR_CD_3"
,"ICD9_PRCDR_CD_4"
,"ICD9_PRCDR_CD_5"
,"ICD9_PRCDR_CD_6"
,"HCPCS_CD_1"
,"HCPCS_CD_2"
,"HCPCS_CD_3"
,"HCPCS_CD_4"
,"HCPCS_CD_5"
,"HCPCS_CD_6"
,"HCPCS_CD_7"
,"HCPCS_CD_8"
,"HCPCS_CD_9"
,"HCPCS_CD_10"
,"HCPCS_CD_11"
,"HCPCS_CD_12"
,"HCPCS_CD_13"
,"HCPCS_CD_14"
,"HCPCS_CD_15"
,"HCPCS_CD_16"
,"HCPCS_CD_17"
,"HCPCS_CD_18"
,"HCPCS_CD_19"
,"HCPCS_CD_20"
,"HCPCS_CD_21"
,"HCPCS_CD_22"
,"HCPCS_CD_23"
,"HCPCS_CD_24"
,"HCPCS_CD_25"
,"HCPCS_CD_26"
,"HCPCS_CD_27"
,"HCPCS_CD_28"
,"HCPCS_CD_29"
,"HCPCS_CD_30"
,"HCPCS_CD_31"
,"HCPCS_CD_32"
,"HCPCS_CD_33"
,"HCPCS_CD_34"
,"HCPCS_CD_35"
,"HCPCS_CD_36"
,"HCPCS_CD_37"
,"HCPCS_CD_38"
,"HCPCS_CD_39"
,"HCPCS_CD_40"
,"HCPCS_CD_41"
,"HCPCS_CD_42"
,"HCPCS_CD_43"
,"HCPCS_CD_44"
,"HCPCS_CD_45"
,"SOURCE_FILE_NAME"
from gs_tables_db.TRNG_HEALTHCARE_INPATIENT_CLAIMS;
replace view TRNG_HEALTHCARE.IPPS_Provider_Smry as locking row for access select
"DRG_Def"
,"Prvdr_Nm"
,"Prvdr_Addr"
,"Prvdr_City"
,"Prvdr_State"
,"Prvdr_Zip"
,"Host_Ref_Reg_Desc"
,"Total_Discharge"
,"Avg_Cov_Chrg"
,"Avg_Ttl_Pymnt"
,"Avg_Medcr_Pymnt"
,"Total_Charge_rnk"
,"Avg_Cov_Chrg_rnk"
,"Avg_Ttl_Pymnt_rnk"
,"Avg_Medcr_Pymnt_rnk"
,"Prvdr_ID"
from gs_tables_db.TRNG_HEALTHCARE_IPPS_Provider_Smry;
replace view TRNG_HEALTHCARE.MI_HEALTH_MEASURES as locking row for access select
"FIPS"
,"STATE"
,"COUNTY"
,"PD_DEATHS"
,"PD_YEARS_OF_POTENTIAL_LIFE_LOST_RATE"
,"PD_95PCT_CI_LOW"
,"PD_95PCT_CI_HIGH"
,"PD_ZSCORE"
,"PD_YPLL_RATE_AIAN"
,"PD_YPLL_RATE_AIAN_95PCT_CI_LOW"
,"PD_YPLL_RATE_AIAN_95PCT_CI_HIGH"
,"PD_YPLL_RATE_ASIAN"
,"PD_YPLL_RATE_ASIAN_95PCT_CI_LOW"
,"PD_YPLL_RATE_ASIAN_95PCT_CI_HIGH"
,"PD_YPLL_RATE_BLACK"
,"PD_YPLL_RATE_BLACK_95PCT_CI_LOW"
,"PD_YPLL_RATE_BLACK_95PCT_CI_HIGH"
,"PD_YPLL_RATE_HISPANIC"
,"PD_YPLL_RATE_HISPANIC_95PCT_CI_LOW"
,"PD_YPLL_RATE_HISPANIC_95PCT_CI_HIGH"
,"PD_YPLL_RATE_WHITE"
,"PD_YPLL_RATE_WHITE_95PCT_CI_LOW"
,"PD_YPLL_RATE_WHITE_95PCT_CI_HIGH"
,"PCT_FAIR_OR_POOR_HEALTH"
,"POOR_HEALTH_95PCT_CI_LOW"
,"POOR_HEALTH_95PCT_CI_HIGH"
,"POOR_HEALTH_ZSCORE"
,"AVERAGE_NUMBER_OF_PHYSICALLY_UNHEALTHY_DAYS"
,"PPH_DAYS_95PCT_CI_LOW"
,"PPH_DAYS_95PCT_CI_HIGH"
,"PPH_DAYS_ZSCORE"
,"AVERAGE_NUMBER_OF_MENTALLY_UNHEALTHY_DAYS"
,"PMH_DAYS_95PCT_CI_LOW"
,"PMH_DAYS_95PCT_CI_HIGH"
,"PMH_DAYS_ZSCORE"
,"LOW_BRTHWGHT_UNRELIABLE"
,"LOW_BRTHWGHT_PCT_LOW_BIRTHWEIGHT"
,"LOW_BRTHWGHT_95PCT_CI_LOW"
,"LOW_BRTHWGHT_95PCT_CI_HIGH"
,"LOW_BRTHWGHT_ZSCORE"
,"LOW_BRTHWGHT_PCT_LBW_AIAN"
,"LOW_BRTHWGHT_PCT_LBW_AIAN_95PCT_CI_LOW"
,"LOW_BRTHWGHT_PCT_LBW_AIAN_95PCT_CI_HIGH"
,"LOW_BRTHWGHT_PCT_LBW_ASIAN"
,"LOW_BRTHWGHT_PCT_LBW_ASIAN_95PCT_CI_LOW"
,"LOW_BRTHWGHT_PCT_LBW_ASIAN_95PCT_CI_HIGH"
,"LOW_BRTHWGHT_PCT_LBW_BLACK"
,"LOW_BRTHWGHT_PCT_LBW_BLACK_95PCT_CI_LOW"
,"LOW_BRTHWGHT_PCT_LBW_BLACK_95PCT_CI_HIGH"
,"LOW_BRTHWGHT_PCT_LBW_HISPANIC"
,"LOW_BRTHWGHT_PCT_LBW_HISPANIC_95PCT_CI_LOW"
,"LOW_BRTHWGHT_PCT_LBW_HISPANIC_95PCT_CI_HIGH"
,"LOW_BRTHWGHT_PCT_LBW_WHITE"
,"LOW_BRTHWGHT_PCT_LBW_WHITE_95PCT_CI_LOW"
,"LOW_BRTHWGHT_PCT_LBW_WHITE_95PCT_CI_HIGH"
,"PCT_SMOKERS"
,"ADLT_SMKNG_95PCT_CI_LOW"
,"ADLT_SMKNG_95PCT_CI_HIGH"
,"ADLT_SMKNG_ZSCORE"
,"PCT_ADULTS_WITH_OBESITY"
,"ADLT_OBSTY_95PCT_CI_LOW"
,"ADLT_OBSTY_95PCT_CI_HIGH"
,"ADLT_OBSTY_ZSCORE"
,"FOOD_ENVIRONMENT_INDEX"
,"FOOD_ENV_INDX_ZSCORE"
,"PCT_PHYSICALLY_INACTIVE"
,"PHYSCL_INCTVTY_95PCT_CI_LOW"
,"PHYSCL_INCTVTY_95PCT_CI_HIGH"
,"PHYSCL_INCTVTY_ZSCORE"
,"PCT_WITH_ACCESS_TO_EXERCISE_OPPORTUNITIES"
,"EXERCISE_ACCESS_ZSCORE"
,"PCT_EXCESSIVE_DRINKING"
,"EXCSS_DRNKNG_95PCT_CI_LOW"
,"EXCSS_DRNKNG_95PCT_CI_HIGH"
,"EXCSS_DRNKNG_ZSCORE"
,"NUM_ALCOHOLIMPAIRED_DRIVING_DEATHS"
,"NUM_DRIVING_DEATHS"
,"PCT_DRIVING_DEATHS_WITH_ALCOHOL_INVOLVEMENT"
,"ALCHL_IMPRD_DRVNG_DEATHS_95PCT_CI_LOW"
,"ALCHL_IMPRD_DRVNG_DEATHS_95PCT_CI_HIGH"
,"ALCHL_IMPRD_DRVNG_DEATHS_ZSCORE"
,"NUM_CHLAMYDIA_CASES"
,"CHLAMYDIA_RATE"
,"STI_ZSCORE"
,"TEEN_BIRTH_RATE"
,"TEEN_BRTHS_95PCT_CI_LOW"
,"TEEN_BRTHS_95PCT_CI_HIGH"
,"TEEN_BRTHS_ZSCORE"
,"TEEN_BIRTH_RATE_AIAN"
,"TEEN_BIRTH_RATE_AIAN_95PCT_CI_LOW"
,"TEEN_BIRTH_RATE_AIAN_95PCT_CI_HIGH"
,"TEEN_BIRTH_RATE_ASIAN"
,"TEEN_BIRTH_RATE_ASIAN_95PCT_CI_LOW"
,"TEEN_BIRTH_RATE_ASIAN_95PCT_CI_HIGH"
,"TEEN_BIRTH_RATE_BLACK"
,"TEEN_BIRTH_RATE_BLACK_95PCT_CI_LOW"
,"TEEN_BIRTH_RATE_BLACK_95PCT_CI_HIGH"
,"TEEN_BIRTH_RATE_HISPANIC"
,"TEEN_BIRTH_RATE_HISPANIC_95PCT_CI_LOW"
,"TEEN_BIRTH_RATE_HISPANIC_95PCT_CI_HIGH"
,"TEEN_BIRTH_RATE_WHITE"
,"TEEN_BIRTH_RATE_WHITE_95PCT_CI_LOW"
,"TEEN_BIRTH_RATE_WHITE_95PCT_CI_HIGH"
,"NUM_UNINSURED"
,"PCT_UNINSURED"
,"UNINSURED_95PCT_CI_LOW"
,"UNINSURED_95PCT_CI_HIGH"
,"UNINSURED_ZSCORE"
,"NUM_PRIMARY_CARE_PHYSICIANS"
,"PRIMARY_CARE_PHYSICIANS_RATE"
,"PRIMARY_CARE_PHYSICIANS_RATIO"
,"PCP_ZSCORE"
,"NUM_DENTISTS"
,"DENTIST_RATE"
,"DENTIST_RATIO"
,"DENTISTS_ZSCORE"
,"NUM_MENTAL_HEALTH_PROVIDERS"
,"MENTAL_HEALTH_PROVIDER_RATE"
,"MENTAL_HEALTH_PROVIDER_RATIO"
,"MH_PROV_ZSCORE"
,"PREVENTABLE_HOSPITALIZATION_RATE"
,"PREVENT_HOSP_STYS_ZSCORE"
,"PREVENTABLE_HOSP_RATE_AIAN"
,"PREVENTABLE_HOSP_RATE_ASIAN"
,"PREVENTABLE_HOSP_RATE_BLACK"
,"PREVENTABLE_HOSP_RATE_HISPANIC"
,"PREVENTABLE_HOSP_RATE_WHITE"
,"PCT_WITH_ANNUAL_MAMMOGRAM"
,"MMMGRPHY_SCRNNG_ZSCORE"
,"MMMGRPHY_SCRNNG_PCT_SCREENED_AIAN"
,"MMMGRPHY_SCRNNG_PCT_SCREENED_ASIAN"
,"MMMGRPHY_SCRNNG_PCT_SCREENED_BLACK"
,"MMMGRPHY_SCRNNG_PCT_SCREENED_HISPANIC"
,"MMMGRPHY_SCRNNG_PCT_SCREENED_WHITE"
,"FLU_VACC_PCT_VACCINATED"
,"FLU_VACC_ZSCORE"
,"FLU_VACC_PCT_VACCINATED_AIAN"
,"FLU_VACC_PCT_VACCINATED_ASIAN"
,"FLU_VACC_PCT_VACCINATED_BLACK"
,"FLU_VACC_PCT_VACCINATED_HISPANIC"
,"FLU_VACC_PCT_VACCINATED_WHITE"
,"HIGH_SCHL_GRAD_COHORT_SIZE"
,"HIGH_SCHL_GRAD_HIGH_SCHOOL_GRADUATION_RATE"
,"HIGH_SCHL_GRAD_ZSCORE"
,"SOME_COLLEGE_NUM_SOME_COLLEGE"
,"SOME_COLLEGE_POPULATION"
,"SOME_COLLEGE_PCT_SOME_COLLEGE"
,"SOME_COLLEGE_95PCT_CI_LOW"
,"SOME_COLLEGE_95PCT_CI_HIGH"
,"SOME_COLLEGE_ZSCORE"
,"NUM_UNEMPLOYED"
,"LABOR_FORCE"
,"PCT_UNEMPLOYED"
,"UNEMPLOYMENT_ZSCORE"
,"PCT_CHILDREN_IN_POVERTY"
,"CHLDRN_IN_PVRTY_95PCT_CI_LOW"
,"CHLDRN_IN_PVRTY_95PCT_CI_HIGH"
,"CHLDRN_IN_PVRTY_ZSCORE"
,"PCT_CHILDREN_IN_POVERTY_AIAN"
,"PCT_CHILDREN_IN_POVERTY_ASIAN"
,"PCT_CHILDREN_IN_POVERTY_BLACK"
,"PCT_CHILDREN_IN_POVERTY_HISPANIC"
,"PCT_CHILDREN_IN_POVERTY_WHITE"
,"INCOME_INQLITY_80TH_PERCENTILE_INCOME"
,"INCOME_INQLITY_20TH_PERCENTILE_INCOME"
,"INCOME_INQLITY_INCOME_RATIO"
,"INCOME_INQLITY_ZSCORE"
,"NUM_SINGLEPARENT_HOUSEHOLDS"
,"SINGLE_PRNT_HMS_NUM_HOUSEHOLDS"
,"PCT_SINGLEPARENT_HOUSEHOLDS"
,"SINGLE_PRNT_HMS_95PCT_CI_LOW"
,"SINGLE_PRNT_HMS_95PCT_CI_HIGH"
,"SINGLE_PRNT_HMS_ZSCORE"
,"NUM_ASSOCIATIONS"
,"SOCIAL_ASSOCIATION_RATE"
,"SOCIAL_ASSOCIATIONS_ZSCORE"
,"ANNUAL_AVERAGE_VIOLENT_CRIMES"
,"VIOLENT_CRIME_RATE"
,"VIOLENT_CRIME_ZSCORE"
,"NUM_INJURY_DEATHS"
,"INJURY_DEATH_RATE"
,"INJURY_DEATHS_95PCT_CI_LOW"
,"INJURY_DEATHS_95PCT_CI_HIGH"
,"INJURY_DEATHS_ZSCORE"
,"INJURY_DEATH_RATE_AIAN"
,"INJURY_DEATH_RATE_AIAN_95PCT_CI_LOW"
,"INJURY_DEATH_RATE_AIAN_95PCT_CI_HIGH"
,"INJURY_DEATH_RATE_ASIAN"
,"INJURY_DEATH_RATE_ASIAN_95PCT_CI_LOW"
,"INJURY_DEATH_RATE_ASIAN_95PCT_CI_HIGH"
,"INJURY_DEATH_RATE_BLACK"
,"INJURY_DEATH_RATE_BLACK_95PCT_CI_LOW"
,"INJURY_DEATH_RATE_BLACK_95PCT_CI_HIGH"
,"INJURY_DEATH_RATE_HISPANIC"
,"INJURY_DEATH_RATE_HISPANIC_95PCT_CI_LOW"
,"INJURY_DEATH_RATE_HISPANIC_95PCT_CI_HIGH"
,"INJURY_DEATH_RATE_WHITE"
,"INJURY_DEATH_RATE_WHITE_95PCT_CI_LOW"
,"INJURY_DEATH_RATE_WHITE_95PCT_CI_HIGH"
,"AIR_PLLTN_AVERAGE_DAILY_PM2_5"
,"AIR_PLLTN_ZSCORE"
,"PRESENCE_OF_WATER_VIOLATION"
,"DRNKNG_WTR_VLTNS_ZSCORE"
,"PCT_SEVERE_HOUSING_PROBLEMS"
,"SVR_HSNG_PRBLMS_95PCT_CI_LOW"
,"SVR_HSNG_PRBLMS_95PCT_CI_HIGH"
,"SEVERE_HOUSING_COST_BURDEN"
,"SEVERE_HOUSING_COST_BURDEN_95PCT_CI_LOW"
,"SEVERE_HOUSING_COST_BURDEN_95PCT_CI_HIGH"
,"OVERCROWDING"
,"OVERCROWDING_95PCT_CI_LOW"
,"OVERCROWDING_95PCT_CI_HIGH"
,"INADEQUATE_FACILITIES"
,"INADEQUATE_FACILITIES_95PCT_CI_LOW"
,"INADEQUATE_FACILITIES_95PCT_CI_HIGH"
,"SVR_HSNG_PRBLMS_ZSCORE"
,"PCT_DRIVE_ALONE_TO_WORK"
,"DRIVING_ALONE_TO_WORK_95PCT_CI_LOW"
,"DRIVING_ALONE_TO_WORK_95PCT_CI_HIGH"
,"DRIVING_ALONE_TO_WORK_ZSCORE"
,"PCT_DRIVE_ALONE_AIAN"
,"PCT_DRIVE_ALONE_AIAN_95PCT_CI_LOW"
,"PCT_DRIVE_ALONE_AIAN_95PCT_CI_HIGH"
,"PCT_DRIVE_ALONE_ASIAN"
,"PCT_DRIVE_ALONE_ASIAN_95PCT_CI_LOW"
,"PCT_DRIVE_ALONE_ASIAN_95PCT_CI_HIGH"
,"PCT_DRIVE_ALONE_BLACK"
,"PCT_DRIVE_ALONE_BLACK_95PCT_CI_LOW"
,"PCT_DRIVE_ALONE_BLACK_95PCT_CI_HIGH"
,"PCT_DRIVE_ALONE_HISPANIC"
,"PCT_DRIVE_ALONE_HISPANIC_95PCT_CI_LOW"
,"PCT_DRIVE_ALONE_HISPANIC_95PCT_CI_HIGH"
,"PCT_DRIVE_ALONE_WHITE"
,"PCT_DRIVE_ALONE_WHITE_95PCT_CI_LOW"
,"PCT_DRIVE_ALONE_WHITE_95PCT_CI_HIGH"
,"NUM_WORKERS_WHO_DRIVE_ALONE"
,"PCT_LONG_COMMUTE_DRIVES_ALONE"
,"LONG_DRIVING_ALONE_95PCT_CI_LOW"
,"LONG_DRIVING_ALONE_95PCT_CI_HIGH"
,"LONG_DRIVING_ALONE_ZSCORE"
from gs_tables_db.TRNG_HEALTHCARE_MI_HEALTH_MEASURES;
replace view TRNG_HEALTHCARE.OUTPATIENT_CLAIMS as locking row for access select
"DESYNPUF_ID"
,"CLM_ID"
,"SEGMENT"
,"CLM_FROM_DT"
,"CLM_THRU_DT"
,"PRVDR_NUM"
,"CLM_PMT_AMT"
,"NCH_PRMRY_PYR_CLM_PD_AMT"
,"AT_PHYSN_NPI"
,"OP_PHYSN_NPI"
,"OT_PHYSN_NPI"
,"NCH_BENE_BLOOD_DDCTBL_LBLTY_AM"
,"ICD9_DGNS_CD_1"
,"ICD9_DGNS_CD_2"
,"ICD9_DGNS_CD_3"
,"ICD9_DGNS_CD_4"
,"ICD9_DGNS_CD_5"
,"ICD9_DGNS_CD_6"
,"ICD9_DGNS_CD_7"
,"ICD9_DGNS_CD_8"
,"ICD9_DGNS_CD_9"
,"ICD9_DGNS_CD_10"
,"ICD9_PRCDR_CD_1"
,"ICD9_PRCDR_CD_2"
,"ICD9_PRCDR_CD_3"
,"ICD9_PRCDR_CD_4"
,"ICD9_PRCDR_CD_5"
,"ICD9_PRCDR_CD_6"
,"NCH_BENE_PTB_DDCTBL_AMT"
,"NCH_BENE_PTB_COINSRNC_AMT"
,"ADMTNG_ICD9_DGNS_CD"
,"HCPCS_CD_1"
,"HCPCS_CD_2"
,"HCPCS_CD_3"
,"HCPCS_CD_4"
,"HCPCS_CD_5"
,"HCPCS_CD_6"
,"HCPCS_CD_7"
,"HCPCS_CD_8"
,"HCPCS_CD_9"
,"HCPCS_CD_10"
,"HCPCS_CD_11"
,"HCPCS_CD_12"
,"HCPCS_CD_13"
,"HCPCS_CD_14"
,"HCPCS_CD_15"
,"HCPCS_CD_16"
,"HCPCS_CD_17"
,"HCPCS_CD_18"
,"HCPCS_CD_19"
,"HCPCS_CD_20"
,"HCPCS_CD_21"
,"HCPCS_CD_22"
,"HCPCS_CD_23"
,"HCPCS_CD_24"
,"HCPCS_CD_25"
,"HCPCS_CD_26"
,"HCPCS_CD_27"
,"HCPCS_CD_28"
,"HCPCS_CD_29"
,"HCPCS_CD_30"
,"HCPCS_CD_31"
,"HCPCS_CD_32"
,"HCPCS_CD_33"
,"HCPCS_CD_34"
,"HCPCS_CD_35"
,"HCPCS_CD_36"
,"HCPCS_CD_37"
,"HCPCS_CD_38"
,"HCPCS_CD_39"
,"HCPCS_CD_40"
,"HCPCS_CD_41"
,"HCPCS_CD_42"
,"HCPCS_CD_43"
,"HCPCS_CD_44"
,"HCPCS_CD_45"
,"SOURCE_FILE_NAME"
from gs_tables_db.TRNG_HEALTHCARE_OUTPATIENT_CLAIMS;
replace view TRNG_HEALTHCARE.patient_sel_cond as locking row for access select
"DESYNPUF_ID"
,"heart_failure_cnt"
,"heart_failure_clm_amt"
from gs_tables_db.TRNG_HEALTHCARE_patient_sel_cond;
replace view TRNG_HEALTHCARE.patient_survey as locking row for access select
"Facility_ID"
,"Facility_Nm"
,"Facility_Addr"
,"Facility_City"
,"Facility_State"
,"Facility_Zip"
,"Facility_County"
,"Facility_Phone"
,"HCAHPS_Measure_ID"
,"HCAHPS_Question"
,"HCAHPS_Ans"
,"Patient_Srvy_Star_Rate"
,"Patient_Srvy_Star_Rate_note"
,"HCAHPS_Ans_pct"
,"HCAHPS_Ans_pct_note"
,"HCAHPS_Lnr_Mean"
,"No_Cmpltd_Srvys"
,"No_Cmpltd_Srvys_note"
,"Srvys_Rspn_Rate_pct"
,"Srvys_Rspn_Rate_pct_note"
,"Start_Date"
,"End_Date"
,"Facility_latitude"
,"Facility_longitude"
from gs_tables_db.TRNG_HEALTHCARE_patient_survey;
replace view TRNG_HEALTHCARE.PRESCRIPTION_DRUG_EVENTS as locking row for access select
"DESYNPUF_ID"
,"PDE_ID"
,"SRVC_DT"
,"PROD_SRVC_ID"
,"QTY_DSPNSD_NUM"
,"DAYS_SUPLY_NUM"
,"PTNT_PAY_AMT"
,"TOT_RX_CST_AMT"
,"SOURCE_FILE_NAME"
from gs_tables_db.TRNG_HEALTHCARE_PRESCRIPTION_DRUG_EVENTS;
replace view TRNG_HEALTHCARE.RJ_HEALTH_MEASURES as locking row for access select
"FIPS"
,"STATE"
,"COUNTY"
,"PD_DEATHS"
,"PD_YEARS_OF_POTENTIAL_LIFE_LOST_RATE"
,"PD_95PCT_CI_LOW"
,"PD_95PCT_CI_HIGH"
,"PD_ZSCORE"
,"PD_YPLL_RATE_AIAN"
,"PD_YPLL_RATE_AIAN_95PCT_CI_LOW"
,"PD_YPLL_RATE_AIAN_95PCT_CI_HIGH"
,"PD_YPLL_RATE_ASIAN"
,"PD_YPLL_RATE_ASIAN_95PCT_CI_LOW"
,"PD_YPLL_RATE_ASIAN_95PCT_CI_HIGH"
,"PD_YPLL_RATE_BLACK"
,"PD_YPLL_RATE_BLACK_95PCT_CI_LOW"
,"PD_YPLL_RATE_BLACK_95PCT_CI_HIGH"
,"PD_YPLL_RATE_HISPANIC"
,"PD_YPLL_RATE_HISPANIC_95PCT_CI_LOW"
,"PD_YPLL_RATE_HISPANIC_95PCT_CI_HIGH"
,"PD_YPLL_RATE_WHITE"
,"PD_YPLL_RATE_WHITE_95PCT_CI_LOW"
,"PD_YPLL_RATE_WHITE_95PCT_CI_HIGH"
,"PCT_FAIR_OR_POOR_HEALTH"
,"POOR_HEALTH_95PCT_CI_LOW"
,"POOR_HEALTH_95PCT_CI_HIGH"
,"POOR_HEALTH_ZSCORE"
,"AVERAGE_NUMBER_OF_PHYSICALLY_UNHEALTHY_DAYS"
,"PPH_DAYS_95PCT_CI_LOW"
,"PPH_DAYS_95PCT_CI_HIGH"
,"PPH_DAYS_ZSCORE"
,"AVERAGE_NUMBER_OF_MENTALLY_UNHEALTHY_DAYS"
,"PMH_DAYS_95PCT_CI_LOW"
,"PMH_DAYS_95PCT_CI_HIGH"
,"PMH_DAYS_ZSCORE"
,"LOW_BRTHWGHT_UNRELIABLE"
,"LOW_BRTHWGHT_PCT_LOW_BIRTHWEIGHT"
,"LOW_BRTHWGHT_95PCT_CI_LOW"
,"LOW_BRTHWGHT_95PCT_CI_HIGH"
,"LOW_BRTHWGHT_ZSCORE"
,"LOW_BRTHWGHT_PCT_LBW_AIAN"
,"LOW_BRTHWGHT_PCT_LBW_AIAN_95PCT_CI_LOW"
,"LOW_BRTHWGHT_PCT_LBW_AIAN_95PCT_CI_HIGH"
,"LOW_BRTHWGHT_PCT_LBW_ASIAN"
,"LOW_BRTHWGHT_PCT_LBW_ASIAN_95PCT_CI_LOW"
,"LOW_BRTHWGHT_PCT_LBW_ASIAN_95PCT_CI_HIGH"
,"LOW_BRTHWGHT_PCT_LBW_BLACK"
,"LOW_BRTHWGHT_PCT_LBW_BLACK_95PCT_CI_LOW"
,"LOW_BRTHWGHT_PCT_LBW_BLACK_95PCT_CI_HIGH"
,"LOW_BRTHWGHT_PCT_LBW_HISPANIC"
,"LOW_BRTHWGHT_PCT_LBW_HISPANIC_95PCT_CI_LOW"
,"LOW_BRTHWGHT_PCT_LBW_HISPANIC_95PCT_CI_HIGH"
,"LOW_BRTHWGHT_PCT_LBW_WHITE"
,"LOW_BRTHWGHT_PCT_LBW_WHITE_95PCT_CI_LOW"
,"LOW_BRTHWGHT_PCT_LBW_WHITE_95PCT_CI_HIGH"
,"PCT_SMOKERS"
,"ADLT_SMKNG_95PCT_CI_LOW"
,"ADLT_SMKNG_95PCT_CI_HIGH"
,"ADLT_SMKNG_ZSCORE"
,"PCT_ADULTS_WITH_OBESITY"
,"ADLT_OBSTY_95PCT_CI_LOW"
,"ADLT_OBSTY_95PCT_CI_HIGH"
,"ADLT_OBSTY_ZSCORE"
,"FOOD_ENVIRONMENT_INDEX"
,"FOOD_ENV_INDX_ZSCORE"
,"PCT_PHYSICALLY_INACTIVE"
,"PHYSCL_INCTVTY_95PCT_CI_LOW"
,"PHYSCL_INCTVTY_95PCT_CI_HIGH"
,"PHYSCL_INCTVTY_ZSCORE"
,"PCT_WITH_ACCESS_TO_EXERCISE_OPPORTUNITIES"
,"EXERCISE_ACCESS_ZSCORE"
,"PCT_EXCESSIVE_DRINKING"
,"EXCSS_DRNKNG_95PCT_CI_LOW"
,"EXCSS_DRNKNG_95PCT_CI_HIGH"
,"EXCSS_DRNKNG_ZSCORE"
,"NUM_ALCOHOLIMPAIRED_DRIVING_DEATHS"
,"NUM_DRIVING_DEATHS"
,"PCT_DRIVING_DEATHS_WITH_ALCOHOL_INVOLVEMENT"
,"ALCHL_IMPRD_DRVNG_DEATHS_95PCT_CI_LOW"
,"ALCHL_IMPRD_DRVNG_DEATHS_95PCT_CI_HIGH"
,"ALCHL_IMPRD_DRVNG_DEATHS_ZSCORE"
,"NUM_CHLAMYDIA_CASES"
,"CHLAMYDIA_RATE"
,"STI_ZSCORE"
,"TEEN_BIRTH_RATE"
,"TEEN_BRTHS_95PCT_CI_LOW"
,"TEEN_BRTHS_95PCT_CI_HIGH"
,"TEEN_BRTHS_ZSCORE"
,"TEEN_BIRTH_RATE_AIAN"
,"TEEN_BIRTH_RATE_AIAN_95PCT_CI_LOW"
,"TEEN_BIRTH_RATE_AIAN_95PCT_CI_HIGH"
,"TEEN_BIRTH_RATE_ASIAN"
,"TEEN_BIRTH_RATE_ASIAN_95PCT_CI_LOW"
,"TEEN_BIRTH_RATE_ASIAN_95PCT_CI_HIGH"
,"TEEN_BIRTH_RATE_BLACK"
,"TEEN_BIRTH_RATE_BLACK_95PCT_CI_LOW"
,"TEEN_BIRTH_RATE_BLACK_95PCT_CI_HIGH"
,"TEEN_BIRTH_RATE_HISPANIC"
,"TEEN_BIRTH_RATE_HISPANIC_95PCT_CI_LOW"
,"TEEN_BIRTH_RATE_HISPANIC_95PCT_CI_HIGH"
,"TEEN_BIRTH_RATE_WHITE"
,"TEEN_BIRTH_RATE_WHITE_95PCT_CI_LOW"
,"TEEN_BIRTH_RATE_WHITE_95PCT_CI_HIGH"
,"NUM_UNINSURED"
,"PCT_UNINSURED"
,"UNINSURED_95PCT_CI_LOW"
,"UNINSURED_95PCT_CI_HIGH"
,"UNINSURED_ZSCORE"
,"NUM_PRIMARY_CARE_PHYSICIANS"
,"PRIMARY_CARE_PHYSICIANS_RATE"
,"PRIMARY_CARE_PHYSICIANS_RATIO"
,"PCP_ZSCORE"
,"NUM_DENTISTS"
,"DENTIST_RATE"
,"DENTIST_RATIO"
,"DENTISTS_ZSCORE"
,"NUM_MENTAL_HEALTH_PROVIDERS"
,"MENTAL_HEALTH_PROVIDER_RATE"
,"MENTAL_HEALTH_PROVIDER_RATIO"
,"MH_PROV_ZSCORE"
,"PREVENTABLE_HOSPITALIZATION_RATE"
,"PREVENT_HOSP_STYS_ZSCORE"
,"PREVENTABLE_HOSP_RATE_AIAN"
,"PREVENTABLE_HOSP_RATE_ASIAN"
,"PREVENTABLE_HOSP_RATE_BLACK"
,"PREVENTABLE_HOSP_RATE_HISPANIC"
,"PREVENTABLE_HOSP_RATE_WHITE"
,"PCT_WITH_ANNUAL_MAMMOGRAM"
,"MMMGRPHY_SCRNNG_ZSCORE"
,"MMMGRPHY_SCRNNG_PCT_SCREENED_AIAN"
,"MMMGRPHY_SCRNNG_PCT_SCREENED_ASIAN"
,"MMMGRPHY_SCRNNG_PCT_SCREENED_BLACK"
,"MMMGRPHY_SCRNNG_PCT_SCREENED_HISPANIC"
,"MMMGRPHY_SCRNNG_PCT_SCREENED_WHITE"
,"FLU_VACC_PCT_VACCINATED"
,"FLU_VACC_ZSCORE"
,"FLU_VACC_PCT_VACCINATED_AIAN"
,"FLU_VACC_PCT_VACCINATED_ASIAN"
,"FLU_VACC_PCT_VACCINATED_BLACK"
,"FLU_VACC_PCT_VACCINATED_HISPANIC"
,"FLU_VACC_PCT_VACCINATED_WHITE"
,"HIGH_SCHL_GRAD_COHORT_SIZE"
,"HIGH_SCHL_GRAD_HIGH_SCHOOL_GRADUATION_RATE"
,"HIGH_SCHL_GRAD_ZSCORE"
,"SOME_COLLEGE_NUM_SOME_COLLEGE"
,"SOME_COLLEGE_POPULATION"
,"SOME_COLLEGE_PCT_SOME_COLLEGE"
,"SOME_COLLEGE_95PCT_CI_LOW"
,"SOME_COLLEGE_95PCT_CI_HIGH"
,"SOME_COLLEGE_ZSCORE"
,"NUM_UNEMPLOYED"
,"LABOR_FORCE"
,"PCT_UNEMPLOYED"
,"UNEMPLOYMENT_ZSCORE"
,"PCT_CHILDREN_IN_POVERTY"
,"CHLDRN_IN_PVRTY_95PCT_CI_LOW"
,"CHLDRN_IN_PVRTY_95PCT_CI_HIGH"
,"CHLDRN_IN_PVRTY_ZSCORE"
,"PCT_CHILDREN_IN_POVERTY_AIAN"
,"PCT_CHILDREN_IN_POVERTY_ASIAN"
,"PCT_CHILDREN_IN_POVERTY_BLACK"
,"PCT_CHILDREN_IN_POVERTY_HISPANIC"
,"PCT_CHILDREN_IN_POVERTY_WHITE"
,"INCOME_INQLITY_80TH_PERCENTILE_INCOME"
,"INCOME_INQLITY_20TH_PERCENTILE_INCOME"
,"INCOME_INQLITY_INCOME_RATIO"
,"INCOME_INQLITY_ZSCORE"
,"NUM_SINGLEPARENT_HOUSEHOLDS"
,"SINGLE_PRNT_HMS_NUM_HOUSEHOLDS"
,"PCT_SINGLEPARENT_HOUSEHOLDS"
,"SINGLE_PRNT_HMS_95PCT_CI_LOW"
,"SINGLE_PRNT_HMS_95PCT_CI_HIGH"
,"SINGLE_PRNT_HMS_ZSCORE"
,"NUM_ASSOCIATIONS"
,"SOCIAL_ASSOCIATION_RATE"
,"SOCIAL_ASSOCIATIONS_ZSCORE"
,"ANNUAL_AVERAGE_VIOLENT_CRIMES"
,"VIOLENT_CRIME_RATE"
,"VIOLENT_CRIME_ZSCORE"
,"NUM_INJURY_DEATHS"
,"INJURY_DEATH_RATE"
,"INJURY_DEATHS_95PCT_CI_LOW"
,"INJURY_DEATHS_95PCT_CI_HIGH"
,"INJURY_DEATHS_ZSCORE"
,"INJURY_DEATH_RATE_AIAN"
,"INJURY_DEATH_RATE_AIAN_95PCT_CI_LOW"
,"INJURY_DEATH_RATE_AIAN_95PCT_CI_HIGH"
,"INJURY_DEATH_RATE_ASIAN"
,"INJURY_DEATH_RATE_ASIAN_95PCT_CI_LOW"
,"INJURY_DEATH_RATE_ASIAN_95PCT_CI_HIGH"
,"INJURY_DEATH_RATE_BLACK"
,"INJURY_DEATH_RATE_BLACK_95PCT_CI_LOW"
,"INJURY_DEATH_RATE_BLACK_95PCT_CI_HIGH"
,"INJURY_DEATH_RATE_HISPANIC"
,"INJURY_DEATH_RATE_HISPANIC_95PCT_CI_LOW"
,"INJURY_DEATH_RATE_HISPANIC_95PCT_CI_HIGH"
,"INJURY_DEATH_RATE_WHITE"
,"INJURY_DEATH_RATE_WHITE_95PCT_CI_LOW"
,"INJURY_DEATH_RATE_WHITE_95PCT_CI_HIGH"
,"AIR_PLLTN_AVERAGE_DAILY_PM2_5"
,"AIR_PLLTN_ZSCORE"
,"PRESENCE_OF_WATER_VIOLATION"
,"DRNKNG_WTR_VLTNS_ZSCORE"
,"PCT_SEVERE_HOUSING_PROBLEMS"
,"SVR_HSNG_PRBLMS_95PCT_CI_LOW"
,"SVR_HSNG_PRBLMS_95PCT_CI_HIGH"
,"SEVERE_HOUSING_COST_BURDEN"
,"SEVERE_HOUSING_COST_BURDEN_95PCT_CI_LOW"
,"SEVERE_HOUSING_COST_BURDEN_95PCT_CI_HIGH"
,"OVERCROWDING"
,"OVERCROWDING_95PCT_CI_LOW"
,"OVERCROWDING_95PCT_CI_HIGH"
,"INADEQUATE_FACILITIES"
,"INADEQUATE_FACILITIES_95PCT_CI_LOW"
,"INADEQUATE_FACILITIES_95PCT_CI_HIGH"
,"SVR_HSNG_PRBLMS_ZSCORE"
,"PCT_DRIVE_ALONE_TO_WORK"
,"DRIVING_ALONE_TO_WORK_95PCT_CI_LOW"
,"DRIVING_ALONE_TO_WORK_95PCT_CI_HIGH"
,"DRIVING_ALONE_TO_WORK_ZSCORE"
,"PCT_DRIVE_ALONE_AIAN"
,"PCT_DRIVE_ALONE_AIAN_95PCT_CI_LOW"
,"PCT_DRIVE_ALONE_AIAN_95PCT_CI_HIGH"
,"PCT_DRIVE_ALONE_ASIAN"
,"PCT_DRIVE_ALONE_ASIAN_95PCT_CI_LOW"
,"PCT_DRIVE_ALONE_ASIAN_95PCT_CI_HIGH"
,"PCT_DRIVE_ALONE_BLACK"
,"PCT_DRIVE_ALONE_BLACK_95PCT_CI_LOW"
,"PCT_DRIVE_ALONE_BLACK_95PCT_CI_HIGH"
,"PCT_DRIVE_ALONE_HISPANIC"
,"PCT_DRIVE_ALONE_HISPANIC_95PCT_CI_LOW"
,"PCT_DRIVE_ALONE_HISPANIC_95PCT_CI_HIGH"
,"PCT_DRIVE_ALONE_WHITE"
,"PCT_DRIVE_ALONE_WHITE_95PCT_CI_LOW"
,"PCT_DRIVE_ALONE_WHITE_95PCT_CI_HIGH"
,"NUM_WORKERS_WHO_DRIVE_ALONE"
,"PCT_LONG_COMMUTE_DRIVES_ALONE"
,"LONG_DRIVING_ALONE_95PCT_CI_LOW"
,"LONG_DRIVING_ALONE_95PCT_CI_HIGH"
,"LONG_DRIVING_ALONE_ZSCORE"
from gs_tables_db.TRNG_HEALTHCARE_RJ_HEALTH_MEASURES;
replace view TRNG_HEALTHCARE.RXNSAT as locking row for access select
"RXCUI"
,"LUI"
,"SUI"
,"RXAUI"
,"STYPE"
,"CODE"
,"ATUI"
,"SATUI"
,"ATN"
,"SAB"
,"ATV"
,"SUPPRESS"
,"CVF"
,"SOURCE_FILE_NAME"
from gs_tables_db.TRNG_HEALTHCARE_RXNSAT;
replace view TRNG_HEALTHCARE.SSA_COUNTY_CD as locking row for access select
"County"
,"State"
,"SSACD"
,"FIPSCD"
,"CBSA"
,"CBSA_Name"
from gs_tables_db.TRNG_HEALTHCARE_SSA_COUNTY_CD;
replace view TRNG_HEALTHCARE.state_abbrv as locking row for access select
"State"
,"Abbrev"
,"Code"
from gs_tables_db.TRNG_HEALTHCARE_state_abbrv;
replace view TRNG_HEALTHCARE.US_County_Score as locking row for access select
"County_ID"
,"State"
,"County"
,"Length_Life_zscore"
,"Length_Life_rank"
,"Quality_Life_zscore"
,"Quality_Life_rank"
,"Health_Behavior_zscore"
,"Health_Behavior_rank"
,"Clinical_Care_zscore"
,"Clinical_Care_rank"
,"Social_Econ_Fctr_zscore"
,"Social_Econ_Fctr_rank"
,"Physical_Env_zscore"
,"Physical_Env_rank"
,"Health_Outcomes_zscore"
,"Health_Outcomes_rank"
,"Health_Factors_zscore"
,"Health_Factors_rank"
from gs_tables_db.TRNG_HEALTHCARE_US_County_Score;
replace view TRNG_HEALTHCARE.US_HOPITALS as locking row for access select
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
from gs_tables_db.TRNG_HEALTHCARE_US_HOPITALS;
replace view TRNG_HEALTHCARE.US_Hospital_bed as locking row for access select
"state"
,"data_dt"
,"ICU_Beds_Avail"
,"Total_Ventilators"
,"InUse_Ventilators"
,"Avail_Ventilators"
,"total_ICU_BED"
from gs_tables_db.TRNG_HEALTHCARE_US_Hospital_bed;
replace view TRNG_HEALTHCARE.US_Hospital_bed_fcst as locking row for access select
"attr_name"
,"stepahead"
,"predict"
from gs_tables_db.TRNG_HEALTHCARE_US_Hospital_bed_fcst;
replace view TRNG_HEALTHCARE.US_Hospital_bed_model as locking row for access select
"attr_name"
,"coef"
,"value_col"
from gs_tables_db.TRNG_HEALTHCARE_US_Hospital_bed_model;
replace view TRNG_HEALTHCARE.US_Hospital_bed_res as locking row for access select
"attr_name"
,"data_dt"
,"value_col"
,"residual"
from gs_tables_db.TRNG_HEALTHCARE_US_Hospital_bed_res;
replace view TRNG_HEALTHCARE.US_NCASES_cluster as locking row for access select
"clusterid"
,"mean"
,"size"
,"withinss"
from gs_tables_db.TRNG_HEALTHCARE_US_NCASES_cluster;
replace view TRNG_HEALTHCARE.US_NCASES_cluster_state as locking row for access select
"state"
,"clusterid"
from gs_tables_db.TRNG_HEALTHCARE_US_NCASES_cluster_state;
replace view TRNG_HEALTHCARE.US_Nursing_Facility as locking row for access select
"Facility_name"
,"Address"
,"City"
,"State"
,"zip"
,"LATITUDE"
,"LONGITUDE"
,"Bed_Capacity"
,"Res_pos_Cases"
,"Res_symp_Cases"
,"Res_life_lost"
,"Res_Recovered"
,"Personnel_pos_Cases"
,"Personnel_symp_Cases"
,"Personnel_life_lost"
,"Personnel_Recovered"
from gs_tables_db.TRNG_HEALTHCARE_US_Nursing_Facility;
replace view TRNG_HEALTHCARE.va_conditions as locking row for access select
"START"
,"STOP"
,"PATIENT"
,"ENCOUNTER"
,"CODE"
,"DESCRIPTION"
,"description2"
,"start_date"
,"stop_date"
from gs_tables_db.TRNG_HEALTHCARE_va_conditions;
replace view TRNG_HEALTHCARE.va_encounters as locking row for access select
"Id"
,"START"
,"STOP"
,"PATIENT"
,"ORGANIZATION"
,"PROVIDER"
,"PAYER"
,"ENCOUNTERCLASS"
,"CODE"
,"DESCRIPTION"
,"BASE_ENCOUNTER_COST"
,"TOTAL_CLAIM_COST"
,"PAYER_COVERAGE"
,"REASONCODE"
,"REASONDESCRIPTION"
,"encounter_start"
,"encounter_stop"
from gs_tables_db.TRNG_HEALTHCARE_va_encounters;
replace view TRNG_HEALTHCARE.va_medications as locking row for access select
"START"
,"STOP"
,"PATIENT"
,"PAYER"
,"ENCOUNTER"
,"CODE"
,"DESCRIPTION"
,"BASE_COST"
,"PAYER_COVERAGE"
,"DISPENSES"
,"TOTALCOST"
,"REASONCODE"
,"REASONDESCRIPTION"
from gs_tables_db.TRNG_HEALTHCARE_va_medications;
replace view TRNG_HEALTHCARE.va_observations as locking row for access select
"DATE"
,"PATIENT"
,"ENCOUNTER"
,"CODE"
,"DESCRIPTION"
,"VALUE"
,"UNITS"
,"TYPE"
from gs_tables_db.TRNG_HEALTHCARE_va_observations;
replace view TRNG_HEALTHCARE.va_observations_full as locking row for access select
"DATE"
,"PATIENT"
,"ENCOUNTER"
,"CODE"
,"DESCRIPTION"
,"VALUE"
,"UNITS"
,"TYPE"
from gs_tables_db.TRNG_HEALTHCARE_va_observations_full;
replace view TRNG_HEALTHCARE.va_patients as locking row for access select
"Id"
,"SSN"
,"DRIVERS"
,"PASSPORT"
,"PREFIX"
,"FIRST"
,"LAST"
,"SUFFIX"
,"MAIDEN"
,"MARITAL"
,"RACE"
,"ETHNICITY"
,"GENDER"
,"BIRTHPLACE"
,"ADDRESS"
,"CITY"
,"STATE"
,"COUNTY"
,"ZIP"
,"LAT"
,"LON"
,"HEALTHCARE_EXPENSES"
,"HEALTHCARE_COVERAGE"
,"BIRTHDATE"
,"DEATHDATE"
from gs_tables_db.TRNG_HEALTHCARE_va_patients;
replace view TRNG_HEALTHCARE.va_procedures as locking row for access select
"DATE"
,"PATIENT"
,"ENCOUNTER"
,"CODE"
,"DESCRIPTION"
,"BASE_COST"
,"REASONCODE"
,"REASONDESCRIPTION"
,"description2"
,"reasondescription2"
from gs_tables_db.TRNG_HEALTHCARE_va_procedures;
replace view TRNG_HEALTHCARE.va_providers as locking row for access select
"Id"
,"ORGANIZATION"
,"NAME"
,"GENDER"
,"SPECIALITY"
,"ADDRESS"
,"CITY"
,"STATE"
,"ZIP"
,"LAT"
,"LON"
,"UTILIZATION"
from gs_tables_db.TRNG_HEALTHCARE_va_providers;
replace view TRNG_HEALTHCARE.zipcodes as locking row for access select
"zip"
,"type"
,"decommissioned"
,"primary_city"
,"acceptable_cities"
,"unacceptable_cities"
,"state"
,"county"
,"timezone"
,"area_codes"
,"world_region"
,"country"
,"latitude"
,"longitude"
,"irs_estimated_population_2015"
from gs_tables_db.TRNG_HEALTHCARE_zipcodes;
REPLACE VIEW COVID_19_US_County_view AS
SELECT
  State, County, Country, data_dt,
  (CASE WHEN data_dt>=first_case_dt
    THEN (data_dt - first_case_dt + 1)
 ELSE 0 END) AS days_with_cases,
  County_Population,
  Confirmed_Case, Death_Case
FROM
(--t--
SELECT
  p.Province_State AS State,  p.Admin2 AS County,
  p.Country_Region AS Country,
  c.data_dt,
  MIN(CASE WHEN c.case_type='Confirmed' AND no_cases>0 THEN c.data_dt ELSE NULL END) AS first_case_dt,
  SUM(p.Population) AS County_Population,
  SUM(CASE WHEN c.case_type='Confirmed' THEN no_cases ELSE 0 END) AS Confirmed_Case,
  SUM(CASE WHEN c.case_type='death' THEN no_cases ELSE 0 END) AS Death_Case
FROM TRNG_HEALTHCARE.COVID_19_cases_US c, TRNG_HEALTHCARE.COVID_19_pop p
WHERE c.UID = p.UID
HAVING County_Population >0
GROUP BY p.Province_State, p.Admin2, p.Country_Region, c.data_dt
) t;

REPLACE VIEW COVID_19_US_State_view AS
SELECT
  State, Country, data_dt,
  days_since_cases, days_since_cases_ftr,
  State_Population,
  Confirmed_Case, smth_Confirmed_Case,
  Death_Case, smth_Death_Case,
  total_cases_sofar, 
  state_rnk, 
  state_order,
  DENSE_RANK() OVER (ORDER BY cluster_avg_case DESC) AS clusterid
FROM
(--v--
SELECT
  u.State, u.Country, u.data_dt,
  (CASE WHEN data_dt>=first_case_dt THEN (data_dt-first_case_dt+1) ELSE 0 END) AS days_since_cases,
  (CASE WHEN data_dt>=first_case_dt_ftr THEN (data_dt-first_case_dt_ftr+1) ELSE 0 END) AS days_since_cases_ftr,
  State_Population,
  Confirmed_Case, 
  (COALESCE(CC_p2, 0)*1.0 + COALESCE(CC_p1, 0)*4.0 + Confirmed_Case*8.0 + COALESCE(CC_n1, 0)*4.0 + COALESCE(CC_n1, 0)*1.0) / (
   (CASE WHEN CC_p2 IS NOT NULL THEN 1.0 ELSE 0.0 END) +
   (CASE WHEN CC_p1 IS NOT NULL THEN 4.0 ELSE 0.0 END) +
   (CASE WHEN CC_n1 IS NOT NULL THEN 4.0 ELSE 0.0 END) +
   (CASE WHEN CC_n2 IS NOT NULL THEN 1.0 ELSE 0.0 END) +
   8.0
  ) AS smth_Confirmed_Case,
  Death_Case,
  (COALESCE(DC_p2, 0)*1.0 + COALESCE(DC_p1, 0)*4.0 + Death_Case*8.0 + COALESCE(DC_n1, 0)*4.0 + COALESCE(DC_n1, 0)*1.0) / (
   (CASE WHEN DC_p2 IS NOT NULL THEN 1.0 ELSE 0.0 END) +
   (CASE WHEN DC_p1 IS NOT NULL THEN 4.0 ELSE 0.0 END) +
   (CASE WHEN DC_n1 IS NOT NULL THEN 4.0 ELSE 0.0 END) +
   (CASE WHEN DC_n2 IS NOT NULL THEN 1.0 ELSE 0.0 END) +
   8.0
  ) AS smth_Death_Case,
  total_cases_sofar,
  DENSE_RANK() OVER (ORDER BY total_cases_sofar DESC) AS state_rnk,
  TRIM(CAST(state_rnk AS INTEGER FORMAT '99'))||'-'||TRIM(u.State) AS state_order,
  c.clusterid,
  AVERAGE(total_cases_sofar) OVER (PARTITION BY c.clusterid) AS cluster_avg_case
FROM
(--u--
SELECT
  t.State, t.Country, t.data_dt, 
  MIN(case_dt) OVER (PARTITION BY t.State, t.Country ORDER BY data_dt) AS first_case_dt,
  MIN(CASE WHEN acc_Confirmed_Case >5 THEN t.data_dt ELSE NULL END) 
    OVER (PARTITION BY t.State, t.Country ORDER BY t.data_dt) AS first_case_dt_ftr,
  SUM(Confirmed_Case) OVER (PARTITION BY t.State, t.Country) AS total_cases_sofar,
  State_Population,
  Confirmed_Case, 
  LAG(Confirmed_Case,1) OVER
   (PARTITION BY t.State, t.Country ORDER BY data_dt) AS CC_p1,
  LAG(Confirmed_Case,2) OVER
   (PARTITION BY t.State, t.Country ORDER BY data_dt) AS CC_p2,
  LEAD(Confirmed_Case,1) OVER
   (PARTITION BY t.State, t.Country ORDER BY data_dt) AS CC_n1,
  LEAD(Confirmed_Case,1) OVER
   (PARTITION BY t.State, t.Country ORDER BY data_dt) AS CC_n2,
  Death_Case,
  LAG(Death_Case,1) OVER
   (PARTITION BY t.State, t.Country ORDER BY data_dt) AS DC_p1,
  LAG(Death_Case,2) OVER
   (PARTITION BY t.State, t.Country ORDER BY data_dt) AS DC_p2,
  LEAD(Death_Case,1) OVER
   (PARTITION BY t.State, t.Country ORDER BY data_dt) AS DC_n1,
  LEAD(Death_Case,1) OVER
   (PARTITION BY t.State, t.Country ORDER BY data_dt) AS DC_n2
FROM
(--t--
SELECT
  p.Province_State AS State,  
  p.Country_Region AS Country,
  c.data_dt,
  MIN(CASE WHEN c.case_type='Confirmed' AND no_cases>0 THEN c.data_dt ELSE NULL END) AS case_dt,
  SUM(p.Population) AS State_Population,
  SUM(CASE WHEN c.case_type='Confirmed' THEN accum_cases ELSE 0 END) AS acc_Confirmed_Case,
  SUM(CASE WHEN c.case_type='Confirmed' THEN no_cases ELSE 0 END) AS Confirmed_Case,
  SUM(CASE WHEN c.case_type='death' THEN no_cases ELSE 0 END) AS Death_Case
FROM TRNG_HEALTHCARE.COVID_19_cases_US c, TRNG_HEALTHCARE.COVID_19_pop p
WHERE c.UID = p.UID
GROUP BY p.Province_State, p.Country_Region, c.data_dt
) t
) u
LEFT JOIN TRNG_HEALTHCARE.US_NCASES_cluster_state c
ON (u.state = c.state)
) v;

REPLACE VIEW TRNG_HEALTHCARE.faculity_heart_measure_view AS
SELECT
  f.Facility_ID,
  f.Facility_Nm,
  f.Address,
  f.City,
  f.State,
  f.ZIP,
  f.County,
  drg.Total_Discharge,
  drg.Avg_Cov_Chrg,
  drg.Avg_Ttl_Pymnt,
  drg.Avg_Medcr_Pymnt,
  readmis.No_Readmssn,
  src.TotalPerfScore,
  (CASE WHEN src.TotalPerfScore<37.0 THEN 1 ELSE 0 END) AS bad_perform_ind
FROM TRNG_HEALTHCARE.facility_info f

INNER JOIN
(--drg--
SELECT
  Prvdr_ID AS Facility_Id ,
  SUM(Total_Discharge) AS Total_Discharge,
  SUM(Avg_Cov_Chrg) AS Avg_Cov_Chrg,
  SUM(Avg_Ttl_Pymnt) AS Avg_Ttl_Pymnt,
  SUM(Avg_Medcr_Pymnt) AS Avg_Medcr_Pymnt
FROM TRNG_HEALTHCARE.IPPS_Provider_Smry
WHERE DRG_Def IN (
'291 - HEART FAILURE & SHOCK W MCC',
'292 - HEART FAILURE & SHOCK W CC',
'293 - HEART FAILURE & SHOCK W/O CC/MCC')
GROUP BY Prvdr_ID
) drg
ON (f.Facility_ID = drg.Facility_Id)

INNER JOIN
(--read--
SELECT
  Facility_Id,
  SUM(CASE WHEN No_Readmssn = 99999 THEN 0 ELSE No_Readmssn END) AS No_Readmssn
FROM TRNG_HEALTHCARE.Hospital_Readmissions
WHERE Measure_nm IN (
'READM-30-AMI-HRRP',
'READM-30-HF-HRRP',
'READM-30-CABG-HRRP')
GROUP BY Facility_Id
) readmis
ON (f.Facility_ID = readmis.Facility_Id)

LEFT JOIN TRNG_HEALTHCARE.Facility_Score src
ON (f.Facility_ID = src.Facility_Id);

REPLACE VIEW TRNG_HEALTHCARE.GEORGIA_HEALTH_MEASURES_ZIP AS
SELECT ZIP.ZIP, GHM.* 
FROM TRNG_HEALTHCARE.ZIPCODES ZIP
INNER JOIN TRNG_HEALTHCARE.GEORGIA_HEALTH_MEASURES GHM
ON CASE WHEN ZIP.COUNTY IS NOT NULL THEN OREPLACE(ZIP.COUNTY, ' County', '') END = GHM.COUNTY
WHERE ZIP.STATE = 'GA';

REPLACE VIEW TRNG_HEALTHCARE.HEALTH_MEASURES_ZIP AS
SELECT ZIP.ZIP, ZIP.STATE AS ST, GHM.* 
FROM TRNG_HEALTHCARE.ZIPCODES_ST ZIP
INNER JOIN TRNG_HEALTHCARE.RJ_HEALTH_MEASURES GHM
ON CASE WHEN ZIP.COUNTY IS NOT NULL THEN OREPLACE(ZIP.COUNTY, ' County', '') END = GHM.COUNTY
AND GHM.STATE = ZIP.ST;

REPLACE VIEW TRNG_HEALTHCARE.patient_all_claim_vw AS
SELECT
  bs.source_yr+10 AS source_yr,
  bs.DESYNPUF_ID,
  bs.BENE_BIRTH_DT,
  (CAST(CAST(TRIM(bs.source_yr)||'1231' AS DATE FORMAT 'YYYYMMDD') AS INTEGER) - 
   CAST(bs.BENE_BIRTH_DT AS INTEGER))/10000 AS BENE_Age,
  bs.BENE_SEX_IDENT_CD,
  bs.BENE_RACE_CD,
  bs.BENE_ESRD_IND,
  bs.SP_STATE_CODE, 
  bs.BENE_COUNTY_CD,
  cc.State,
  cc.County,
  bs.MEDREIMB_IP,
  bs.BENRES_IP,
  bs.PPPYMT_IP,
  bs.MEDREIMB_OP,
  bs.BENRES_OP,
  bs.PPPYMT_OP,
  bs.MEDREIMB_CAR,
  bs.BENRES_CAR,
  bs.PPPYMT_CAR
FROM TRNG_HEALTHCARE.BENEFICIARY_SUMMARY bs
LEFT JOIN  TRNG_HEALTHCARE.SSA_COUNTY_CD cc
ON (TRIM(CAST(SP_STATE_CODE AS INTEGER FORMAT '9(2)'))||
    TRIM(CAST(BENE_COUNTY_CD  AS INTEGER FORMAT '9(3)'))) = cc.SSACD;

REPLACE VIEW TRNG_HEALTHCARE.patient_all_payments_vw AS
SELECT
  bs.DESYNPUF_ID,
  bs.source_yr+10 AS source_yr,
  bs.BENE_BIRTH_DT,
  (CAST(CAST(TRIM(bs.source_yr)||'1231' AS DATE FORMAT 'YYYYMMDD') AS INTEGER) - 
   CAST(bs.BENE_BIRTH_DT AS INTEGER))/10000 AS BENE_Age,
  bs.BENE_SEX_IDENT_CD,
  bs.BENE_RACE_CD,
  bs.BENE_ESRD_IND,
  bs.SP_STATE_CODE, 
  bs.BENE_COUNTY_CD,
  cc.State,
  cc.County,
  COALESCE(dx.dx_patient_pay,0) AS dx_patient_pay,
  COALESCE(dx.dx_cost,0) AS dx_cost,
  COALESCE(ip.inpatient_claim_amt,0) AS inpatient_claim_amt,
  COALESCE(ip.inpatient_payer_amt,0) AS inpatient_payer_amt,
  COALESCE(op.outpatient_claim_amt,0) AS outpatient_claim_amt,
  COALESCE(op.outpatient_payer_amt,0) AS outpatient_payer_amt
FROM TRNG_HEALTHCARE.BENEFICIARY_SUMMARY bs
LEFT JOIN 
  (SELECT
     DESYNPUF_ID,
     EXTRACT(YEAR FROM SRVC_DT) AS dx_claim_year,
     SUM(PTNT_PAY_AMT) AS dx_patient_pay,
     SUM(TOT_RX_CST_AMT) AS dx_cost
   FROM TRNG_HEALTHCARE.PRESCRIPTION_DRUG_EVENTS
   GROUP BY DESYNPUF_ID, dx_claim_year) dx
ON (bs.DESYNPUF_ID = dx.DESYNPUF_ID
AND bs.source_yr = dx.dx_claim_year)
LEFT JOIN
  (SELECT
     DESYNPUF_ID,
     EXTRACT(YEAR FROM CLM_FROM_DT) AS inpatent_year,
     SUM(CLM_PMT_AMT) AS inpatient_claim_amt,
     SUM(NCH_PRMRY_PYR_CLM_PD_AMT) AS inpatient_payer_amt
   FROM TRNG_HEALTHCARE.INPATIENT_CLAIMS
   GROUP BY DESYNPUF_ID, inpatent_year) ip
ON (bs.DESYNPUF_ID = ip.DESYNPUF_ID
AND bs.source_yr = ip.inpatent_year)
LEFT JOIN
  (SELECT
     DESYNPUF_ID,
     EXTRACT(YEAR FROM CLM_FROM_DT) AS outpatent_year,
     SUM(CLM_PMT_AMT) AS outpatient_claim_amt,
     SUM(NCH_PRMRY_PYR_CLM_PD_AMT) AS outpatient_payer_amt
   FROM TRNG_HEALTHCARE.OUTPATIENT_CLAIMS
   GROUP BY DESYNPUF_ID, outpatent_year) op
ON (bs.DESYNPUF_ID = op.DESYNPUF_ID
AND bs.source_yr = op.outpatent_year)
LEFT JOIN  TRNG_HEALTHCARE.SSA_COUNTY_CD cc
ON (TRIM(CAST(SP_STATE_CODE AS INTEGER FORMAT '9(2)'))||
    TRIM(CAST(BENE_COUNTY_CD  AS INTEGER FORMAT '9(3)'))) = cc.SSACD
WHERE bs.source_yr BETWEEN 2008 AND 2009;

REPLACE VIEW TRNG_HEALTHCARE.patient_heartfail_all_claim_vw AS
SELECT
  ai.DESYNPUF_ID,
  bs.BENE_BIRTH_DT,
  bs.BENE_Age,
  bs.BENE_SEX_IDENT_CD,
  bs.BENE_RACE_CD,
  bs.BENE_ESRD_IND,
  bs.SP_STATE_CODE, 
  bs.BENE_COUNTY_CD,
  cc.State,
  cc.County,
  ai.heart_failure_cnt,
  ai.heart_failure_clm_amt,
  ai.non_heart_failure_clm_amt,
  ai.inpatient_clm_cnt,
  COALESCE(ao.outpatient_clm_cnt,0) AS outpatient_clm_cnt,
  ai.total_inpatent_clm_amt,
  COALESCE(ao.total_outpatent_clm_amt,0) AS total_outpatent_clm_amt,
  COALESCE(ac.NCH_PMT_AMT,0) AS NCH_PMT_AMT,
  COALESCE(ac.BENE_PTB_DDCTBL_AMT,0) AS BENE_PTB_DDCTBL_AMT,
  COALESCE(ac.BENE_PRMRY_PYR_PD_AMT,0) AS BENE_PRMRY_PYR_PD_AMT,
  COALESCE(ac.COINSRNC_AMT,0) AS COINSRNC_AMT
FROM
  (SELECT
     p.DESYNPUF_ID,
     MAX(p.heart_failure_cnt) AS heart_failure_cnt,
     MAX(p.heart_failure_clm_amt) AS heart_failure_clm_amt,
     COUNT(0) AS inpatient_clm_cnt,
     SUM(CASE WHEN i.CLM_DRG_CD NOT IN ('291', '292', '293') THEN i.CLM_PMT_AMT ELSE 0.0 END) AS non_heart_failure_clm_amt,
     SUM(i.CLM_PMT_AMT) AS total_inpatent_clm_amt
   FROM TRNG_HEALTHCARE.patient_sel_cond p
   INNER JOIN TRNG_HEALTHCARE.inpatient_claims i
   ON (p.DESYNPUF_ID = i.DESYNPUF_ID)
   WHERE p.heart_failure_cnt > 0
   GROUP BY p.DESYNPUF_ID
  ) ai
  LEFT JOIN 
  (SELECT
     p.DESYNPUF_ID,
     COUNT(0) AS outpatient_clm_cnt,
     SUM(o.CLM_PMT_AMT) AS total_outpatent_clm_amt
   FROM TRNG_HEALTHCARE.patient_sel_cond p
   INNER JOIN TRNG_HEALTHCARE.outpatient_claims o
   ON (p.DESYNPUF_ID = o.DESYNPUF_ID)
   WHERE p.heart_failure_cnt > 0
   GROUP BY p.DESYNPUF_ID
  ) ao
  ON (ai.DESYNPUF_ID = ao.DESYNPUF_ID)
  LEFT JOIN 
  (SELECT
     p.DESYNPUF_ID,
     COUNT(0) AS carrier_clm_cnt,
     SUM(
      c.LINE_NCH_PMT_AMT_1 +
      c.LINE_NCH_PMT_AMT_2 +
      c.LINE_NCH_PMT_AMT_3 +
      c.LINE_NCH_PMT_AMT_4 +
      c.LINE_NCH_PMT_AMT_5 +
      c.LINE_NCH_PMT_AMT_6 +
      c.LINE_NCH_PMT_AMT_7 +
      c.LINE_NCH_PMT_AMT_8 +
      c.LINE_NCH_PMT_AMT_9 +
      c.LINE_NCH_PMT_AMT_10 +
      c.LINE_NCH_PMT_AMT_11 +
      c.LINE_NCH_PMT_AMT_12 +
      c.LINE_NCH_PMT_AMT_13
     ) AS NCH_PMT_AMT,
     SUM(
      c.LINE_BENE_PTB_DDCTBL_AMT_1 +
      c.LINE_BENE_PTB_DDCTBL_AMT_2 +
      c.LINE_BENE_PTB_DDCTBL_AMT_3 +
      c.LINE_BENE_PTB_DDCTBL_AMT_4 +
      c.LINE_BENE_PTB_DDCTBL_AMT_5 +
      c.LINE_BENE_PTB_DDCTBL_AMT_6 +
      c.LINE_BENE_PTB_DDCTBL_AMT_7 +
      c.LINE_BENE_PTB_DDCTBL_AMT_8 +
      c.LINE_BENE_PTB_DDCTBL_AMT_9 +
      c.LINE_BENE_PTB_DDCTBL_AMT_10 +
      c.LINE_BENE_PTB_DDCTBL_AMT_11 +
      c.LINE_BENE_PTB_DDCTBL_AMT_12 +
      c.LINE_BENE_PTB_DDCTBL_AMT_13
     ) AS BENE_PTB_DDCTBL_AMT,
     SUM(
      c.LINE_BENE_PRMRY_PYR_PD_AMT_1 +
      c.LINE_BENE_PRMRY_PYR_PD_AMT_2 +
      c.LINE_BENE_PRMRY_PYR_PD_AMT_3 +
      c.LINE_BENE_PRMRY_PYR_PD_AMT_4 +
      c.LINE_BENE_PRMRY_PYR_PD_AMT_5 +
      c.LINE_BENE_PRMRY_PYR_PD_AMT_6 +
      c.LINE_BENE_PRMRY_PYR_PD_AMT_7 +
      c.LINE_BENE_PRMRY_PYR_PD_AMT_8 +
      c.LINE_BENE_PRMRY_PYR_PD_AMT_9 +
      c.LINE_BENE_PRMRY_PYR_PD_AMT_10 +
      c.LINE_BENE_PRMRY_PYR_PD_AMT_11 +
      c.LINE_BENE_PRMRY_PYR_PD_AMT_12 +
      c.LINE_BENE_PRMRY_PYR_PD_AMT_13
     ) AS BENE_PRMRY_PYR_PD_AMT,
     SUM(
      c.LINE_COINSRNC_AMT_1 +
      c.LINE_COINSRNC_AMT_2 +
      c.LINE_COINSRNC_AMT_3 +
      c.LINE_COINSRNC_AMT_4 +
      c.LINE_COINSRNC_AMT_5 +
      c.LINE_COINSRNC_AMT_6 +
      c.LINE_COINSRNC_AMT_7 +
      c.LINE_COINSRNC_AMT_8 +
      c.LINE_COINSRNC_AMT_9 +
      c.LINE_COINSRNC_AMT_10 +
      c.LINE_COINSRNC_AMT_11 +
      c.LINE_COINSRNC_AMT_12 +
      c.LINE_COINSRNC_AMT_13
     ) AS COINSRNC_AMT
   FROM TRNG_HEALTHCARE.patient_sel_cond p
   INNER JOIN TRNG_HEALTHCARE.carrier_claims c
   ON (p.DESYNPUF_ID = c.DESYNPUF_ID)
   WHERE p.heart_failure_cnt > 0
   GROUP BY p.DESYNPUF_ID
  ) ac
  ON (ai.DESYNPUF_ID = ac.DESYNPUF_ID)
  INNER JOIN TRNG_HEALTHCARE.BENEFICIARY_SUMMARY_latest bs
  ON (ai.DESYNPUF_ID = bs.DESYNPUF_ID)
  LEFT JOIN  TRNG_HEALTHCARE.SSA_COUNTY_CD cc
  ON bs.SSA_CD = cc.SSACD;

REPLACE VIEW TRNG_HEALTHCARE.patient_vw AS 
SELECT
  DESYNPUF_ID,
  SUM(CASE WHEN CLM_DRG_CD IN ('291', '292', '293') THEN 1 ELSE 0 END) AS heart_failure_cnt,
  SUM(CLM_PMT_AMT) AS heart_failure_clm_amt
FROM TRNG_HEALTHCARE.inpatient_claims
WHERE CLM_DRG_CD IN ('291', '292', '293')
GROUP BY DESYNPUF_ID;

REPLACE VIEW TRNG_HEALTHCARE.US_County_Score_view AS
SELECT
County_ID,
State,
County,
Length_Life_zscore,
Length_Life_rank,
Quality_Life_zscore,
Quality_Life_rank,
Health_Behavior_zscore,
Health_Behavior_rank,
Clinical_Care_zscore,
Clinical_Care_rank,
Social_Econ_Fctr_zscore,
Social_Econ_Fctr_rank,
Physical_Env_zscore,
Physical_Env_rank,
Health_Outcomes_zscore,
Health_Outcomes_rank,
Health_Factors_zscore,
Health_Factors_rank,
(CASE WHEN Health_Outcomes_rank<=3 THEN Health_Outcomes_rank ELSE NULL  END) AS top3_outcome_rank
FROM TRNG_HEALTHCARE.US_County_Score;

REPLACE VIEW TRNG_HEALTHCARE.US_Hospital_bed_comb_v AS
SELECT
  attr_name,
  'ACTU' AS datatype,
  data_dt, 
  attr_value
FROM TRNG_HEALTHCARE.US_Hospital_bed_v
UNION ALL
SELECT
  f.attr_name,
  'Fcst' AS datatype,
  f.stepahead + s.max_dt as data_dt, 
  f.predict AS attr_value
FROM TRNG_HEALTHCARE.US_Hospital_bed_fcst f,
(SELECT
attr_name, max(data_dt) AS max_dt
FROM TRNG_HEALTHCARE.US_Hospital_bed_v
GROUP BY 1) s
WHERE f.attr_name=s.attr_name;

REPLACE VIEW  TRNG_HEALTHCARE.US_Hospital_bed_v AS
SELECT
  'ICU_Beds_Avail' (VARCHAR(50)) AS Attr_name,
  state, data_dt,
  ICU_Beds_Avail AS Attr_value
FROM TRNG_HEALTHCARE.US_Hospital_bed 
UNION ALL
SELECT
  'Total_Ventilators' (VARCHAR(50)) AS Attr_name,
  state, data_dt,
  Total_Ventilators AS Attr_value
FROM TRNG_HEALTHCARE.US_Hospital_bed 
UNION ALL
SELECT
  'InUse_Ventilators' (VARCHAR(50)) AS Attr_name,
  state, data_dt,
  InUse_Ventilators AS Attr_value
FROM TRNG_HEALTHCARE.US_Hospital_bed 
UNION ALL
SELECT
  'Avail_Ventilators' (VARCHAR(50)) AS Attr_name,
  state, data_dt,
  Avail_Ventilators AS Attr_value
FROM TRNG_HEALTHCARE.US_Hospital_bed;

REPLACE VIEW TRNG_HEALTHCARE.va_abnormal_creatinine_vw AS
SELECT
  o.patient AS patient_id, 
  MIN(o.obs_date) AS first_creatinine_dt,
  MAX(o.obs_date) AS Last_creatinine_dt,
  MIN(CASE WHEN obs_value<min_norm OR obs_value>max_norm THEN o.obs_date ELSE NULL END) AS first_abn_creatinine_dt,
  MAX(CASE WHEN obs_value<min_norm OR obs_value>max_norm THEN o.obs_date ELSE NULL END) AS last_abn_creatinine_dt,
  COUNT(0) AS creatinine_measure_cnt,
  SUM(CASE WHEN obs_value<min_norm OR obs_value>max_norm THEN 1 ELSE 0 END) AS abn_creatinine_measure_cnt
FROM 
(SELECT
  patient, encounter, "date" AS obs_date, "value" As obs_value
FROM TRNG_HEALTHCARE.va_observations
WHERE code IN ('38483-4', '2160-0')) o,
(SELECT 
  min_norm, max_norm, units_norm
FROM TRNG_HEALTHCARE.cs_norms
WHERE cs_label = 'Creatinine') a
HAVING abn_creatinine_measure_cnt>0
GROUP BY o.patient;

REPLACE VIEW TRNG_HEALTHCARE.va_Heartfail_link AS
SELECT
  f.eventid AS fromid,
  t.eventid AS toid,
  f.eventname AS fromname,
  t.eventname AS toname,
  f.event_order AS fromorder,
  t.event_order AS toorder,
  SUM(p.freq) AS freq
FROM 
  TRNG_HEALTHCARE.va_Heartfail_path p,
  TRNG_HEALTHCARE.va_Heartfail_node f,
  TRNG_HEALTHCARE.va_Heartfail_node t
WHERE p.event_0 = f.eventname
AND   p.event_1 = t.eventname
GROUP BY 1,2,3,4,5,6
UNION ALL
SELECT
  f.eventid AS fromid,
  t.eventid AS toid,
  f.eventname AS fromname,
  t.eventname AS toname,
  f.event_order AS fromorder,
  t.event_order AS toorder,
  SUM(p.freq) AS freq
FROM 
  TRNG_HEALTHCARE.va_Heartfail_path p,
  TRNG_HEALTHCARE.va_Heartfail_node f,
  TRNG_HEALTHCARE.va_Heartfail_node t
WHERE p.event_1 = f.eventname
AND   p.event_2 = t.eventname
AND   p.event_2 IS NOT NULL
GROUP BY 1,2,3,4,5,6
UNION ALL
SELECT
  f.eventid AS fromid,
  t.eventid AS toid,
  f.eventname AS fromname,
  t.eventname AS toname,
  f.event_order AS fromorder,
  t.event_order AS toorder,
  SUM(p.freq) AS freq
FROM 
  TRNG_HEALTHCARE.va_Heartfail_path p,
  TRNG_HEALTHCARE.va_Heartfail_node f,
  TRNG_HEALTHCARE.va_Heartfail_node t
WHERE p.event_2 = f.eventname
AND   p.event_3 = t.eventname
AND   p.event_3 IS NOT NULL
GROUP BY 1,2,3,4,5,6
UNION ALL
SELECT
  f.eventid AS fromid,
  t.eventid AS toid,
  f.eventname AS fromname,
  t.eventname AS toname,
  f.event_order AS fromorder,
  t.event_order AS toorder,
  SUM(p.freq) AS freq
FROM 
  TRNG_HEALTHCARE.va_Heartfail_path p,
  TRNG_HEALTHCARE.va_Heartfail_node f,
  TRNG_HEALTHCARE.va_Heartfail_node t
WHERE p.event_3 = f.eventname
AND   p.event_4 = t.eventname
AND   p.event_4 IS NOT NULL
GROUP BY 1,2,3,4,5,6
UNION ALL
SELECT
  f.eventid AS fromid,
  t.eventid AS toid,
  f.eventname AS fromname,
  t.eventname AS toname,
  f.event_order AS fromorder,
  t.event_order AS toorder,
  SUM(p.freq) AS freq
FROM 
  TRNG_HEALTHCARE.va_Heartfail_path p,
  TRNG_HEALTHCARE.va_Heartfail_node f,
  TRNG_HEALTHCARE.va_Heartfail_node t
WHERE p.event_4 = f.eventname
AND   p.event_5 = t.eventname
AND   p.event_5 IS NOT NULL
GROUP BY 1,2,3,4,5,6;

REPLACE VIEW TRNG_HEALTHCARE.va_Heartfail_node AS
SELECT
  eventname,
  event_order,
  RANK() OVER (ORDER BY event_order, eventname)-1 AS eventid
FROM
(--u--
SELECT 
  eventname,
  MAX(event_order) AS event_order
FROM
(--t--
SELECT
  event_0 AS eventname,
  0 AS event_order
FROM TRNG_HEALTHCARE.va_Heartfail_path 
GROUP BY 1
UNION ALL
SELECT
  event_1 AS eventname,
  1 AS event_order
FROM TRNG_HEALTHCARE.va_Heartfail_path
WHERE event_1 IS NOT NULL
GROUP BY 1
UNION ALL
SELECT
  event_2 AS eventname,
  2 AS event_order
FROM TRNG_HEALTHCARE.va_Heartfail_path 
WHERE event_2 IS NOT NULL
GROUP BY 1
UNION ALL
SELECT
  event_3 AS eventname,
  3 AS event_order
FROM TRNG_HEALTHCARE.va_Heartfail_path 
WHERE event_3 IS NOT NULL
GROUP BY 1
UNION ALL
SELECT
  event_4 AS eventname,
  4 AS event_order
FROM TRNG_HEALTHCARE.va_Heartfail_path 
WHERE event_4 IS NOT NULL
GROUP BY 1
UNION ALL
SELECT
  event_5 AS eventname,
  5 AS event_order
FROM TRNG_HEALTHCARE.va_Heartfail_path 
WHERE event_5 IS NOT NULL
GROUP BY 1
) t
GROUP BY 1
) u;

REPLACE VIEW TRNG_HEALTHCARE.va_Heartfail_path1 AS
SELECT
  event_0,
  event_1,
  COUNT(0) AS freq
FROM TRNG_HEALTHCARE.va_patient_Heartfail_path 
GROUP BY 1,2;

REPLACE VIEW TRNG_HEALTHCARE.va_Heartfail_path2 AS
SELECT
  event_1,
  event_2,
  COUNT(0) AS freq
FROM TRNG_HEALTHCARE.va_patient_Heartfail_path 
GROUP BY 1,2;

REPLACE VIEW TRNG_HEALTHCARE.va_Heartfail_path AS
SELECT
  event_0, event_1, event_2, event_3, event_4, event_5,
  freq, rnk,event_len
FROM
(SELECT
  event_0, event_1, event_2, event_3, event_4, event_5,
  freq,
  (CASE
     WHEN event_5 IS NOT NULL THEN 6
     WHEN event_4 IS NOT NULL THEN 5
     WHEN event_3 IS NOT NULL THEN 4
     WHEN event_2 IS NOT NULL THEN 3
     WHEN event_1 IS NOT NULL THEN 2
   ELSE 1 END) AS event_len,
  RANK() OVER(ORDER BY freq DESC, event_len,
              event_1, event_2, event_3, event_4, event_5) AS rnk
FROM
(SELECT
  event_0, event_1, event_2, event_3, event_4, event_5,
  COUNT(0) AS freq
FROM TRNG_HEALTHCARE.va_patient_Heartfail_path 
GROUP BY 1,2,3,4,5,6) t ) u
WHERE rnk <= 10;

REPLACE VIEW TRNG_HEALTHCARE.va_Heartfail_path_bar AS
SELECT
  rnk, '0:'||event_0 AS eventname, freq, event_len,
  CAST(freq AS FLOAT) / CAST(event_len AS FLOAT) AS dist_len
FROM TRNG_HEALTHCARE.va_Heartfail_path
UNION ALL
SELECT
  rnk, '1:'||event_1 AS eventname, freq, event_len,
  CAST(freq AS FLOAT) / CAST(event_len AS FLOAT) AS dist_len
FROM TRNG_HEALTHCARE.va_Heartfail_path
WHERE event_1 IS NOT NULL
UNION ALL
SELECT
  rnk, '2:'||event_2 AS eventname, freq, event_len,
  CAST(freq AS FLOAT) / CAST(event_len AS FLOAT) AS dist_len
FROM TRNG_HEALTHCARE.va_Heartfail_path
WHERE event_2 IS NOT NULL
UNION ALL
SELECT
  rnk, '3:'||event_3 AS eventname, freq, event_len,
  CAST(freq AS FLOAT) / CAST(event_len AS FLOAT) AS dist_len
FROM TRNG_HEALTHCARE.va_Heartfail_path
WHERE event_3 IS NOT NULL
UNION ALL
SELECT
  rnk, '4:'||event_4 AS eventname, freq, event_len,
  CAST(freq AS FLOAT) / CAST(event_len AS FLOAT) AS dist_len
FROM TRNG_HEALTHCARE.va_Heartfail_path
WHERE event_4 IS NOT NULL
UNION ALL
SELECT
  rnk, '5:'||event_5 AS eventname, freq, event_len,
  CAST(freq AS FLOAT) / CAST(event_len AS FLOAT) AS dist_len
FROM TRNG_HEALTHCARE.va_Heartfail_path
WHERE event_5 IS NOT NULL;

REPLACE VIEW TRNG_HEALTHCARE.va_Heartfail_path_fromto AS
SELECT
  '0:'||event_0 AS event_from,
  '1:'||event_1 AS event_to,
  SUM(freq) AS freq
FROM TRNG_HEALTHCARE.va_Heartfail_path 
GROUP BY 1,2
UNION ALL
SELECT
  '1:'||event_1 AS event_from,
  '2:'||event_2 AS event_to,
  SUM(freq) AS freq
FROM TRNG_HEALTHCARE.va_Heartfail_path 
WHERE event_2 IS NOT NULL
GROUP BY 1,2
UNION ALL
SELECT
  '2:'||event_2 AS event_from,
  '3:'||event_3 AS event_to,
  SUM(freq) AS freq
FROM TRNG_HEALTHCARE.va_Heartfail_path 
WHERE event_3 IS NOT NULL
GROUP BY 1,2;

REPLACE VIEW TRNG_HEALTHCARE.va_Heart_catheter_journal AS
SELECT
  p.patient_id, p.full_name,
  extract(year from encounter_start) as encounter_year,
  en.encounter_start, 
  en.encounter_stop, 
  en.code AS encounter_code,
  en.ENCOUNTERCLASS, 
  en.DESCRIPTION AS encounter_desc, 
  en.BASE_ENCOUNTER_COST,
  en.TOTAL_CLAIM_COST, 
  en.PAYER_COVERAGE, 
  en.REASONCODE , 
  en.REASONDESCRIPTION, 
  pr."date" AS proc_date, 
  pr.description AS proc_desc,
  (CASE WHEN en.code IN (185349003, 162673000) THEN 'Y' ELSE 'N' END) AS general_exam
FROM  TRNG_HEALTHCARE.va_select_patieint p
INNER JOIN TRNG_HEALTHCARE.va_encounters en 
ON (p.patient_id = en.patient)
left join TRNG_HEALTHCARE.va_procedures pr
ON (en.patient = pr.patient
AND en.id = pr.encounter);

REPLACE VIEW TRNG_HEALTHCARE.va_patient_Heartfail_path AS
SELECT
  patient,
  'Heart Failure'(VARCHAR(50)) AS event_0,
  MAX(CASE WHEN encounter_order = 1 THEN description END) AS event_1,
  MAX(CASE WHEN encounter_order = 2 THEN description END) AS event_2,
  MAX(CASE WHEN encounter_order = 3 THEN description END) AS event_3,
  MAX(CASE WHEN encounter_order = 4 THEN description END) AS event_4,
  MAX(CASE WHEN encounter_order = 5 THEN description END) AS event_5
FROM
(-- u --
SELECT
  patient,
  encounter_start,
  encount_start_dt,
  description,
  RANK() OVER (PARTITION BY patient ORDER BY encounter_start,description) AS encounter_order
FROM
(-- t --
SELECT
  en.patient,
  en.encounter_start,
  CAST(en.encounter_start AS DATE FORMAT 'YYYY-MM-DD') AS encount_start_dt,
  en.code,
  en.description,
  LAG(en.code,1) OVER (PARTITION BY en.patient ORDER BY encount_start_dt) AS prev_code
FROM TRNG_HEALTHCARE.va_encounters en,
  (
  SELECT
    patient, 
    MIN(CAST("start" AS DATE FORMAT 'YYYY-MM-DD')) AS hf_start
  FROM TRNG_HEALTHCARE.va_conditions
  WHERE code IN (84114007)
  GROUP BY patient
  ) ht
 WHERE en.patient = ht.patient
 AND CAST(en.encounter_start AS DATE FORMAT 'YYYY-MM-DD')>=ht.hf_start
) t
WHERE t.code <> t.prev_code OR  t.prev_code IS NULL
) u
GROUP BY patient;

REPLACE VIEW TRNG_HEALTHCARE.va_select_patieint AS
SELECT 
  p.Id AS patient_id, 
  p.BIRTHDATE,  p.DEATHDATE, 
  ( (CAST(COALESCE(p.DEATHDATE, CURRENT_DATE) AS INTEGER) 
      - CAST(p.BIRTHDATE AS INTEGER))/10000 ) AS patient_Age,
  (CASE WHEN p.DEATHDATE IS NULL THEN 'decseaed' ELSE '' END) AS patient_Age_cond,
  p.SSN, 
  p."FIRST"||' '||p."LAST"|| 
    (CASE WHEN p.SUFFIX IS NOT NULL THEN ' ,'||p.SUFFIX ELSE '' END) AS full_name,
  (CASE p.MARITAL 
     WHEN 'S' THEN 'Single'
     WHEN 'M' THEN 'Married'
   ELSE 'Unknown' END) AS MARITAL, 
   p.RACE, p.ETHNICITY, p.GENDER,
   p."BIRTHPLACE", p.ADDRESS, p.CITY, p.STATE, p.COUNTY, p.ZIP, p.LAT, p.LON, 
   p.HEALTHCARE_EXPENSES,
   p.HEALTHCARE_COVERAGE,
   co.Coronary_Heart_Disease,
   co.Heart_failure,
   co.Heart_Injury,
   co.Chronic_congestive_heart_failure,
   (CASE 
     WHEN co.Chronic_congestive_heart_failure = 'Y' THEN 'Chronic Congestive Heart Failure'
     WHEN co.Heart_failure = 'Y' THEN 'Heart Failure'
     WHEN co.Coronary_Heart_Disease = 'Y' THEN 'Coronary Heart Disease'
     WHEN co.Heart_Injury = 'Y' THEN 'Heart Injury'
    ELSE 'NONE' END) AS prim_cond
FROM TRNG_HEALTHCARE.va_patients p
INNER JOIN
 (SELECT
    patient AS patient_id,
    MAX(CASE WHEN code = 53741008 THEN 'Y' ELSE 'N' END) AS Coronary_Heart_Disease,
    MAX(CASE WHEN code = 84114007 THEN 'Y' ELSE 'N' END) AS Heart_failure,
    MAX(CASE WHEN code = 86175003 THEN 'Y' ELSE 'N' END) AS Heart_Injury,
    MAX(CASE WHEN code = 88805009 THEN 'Y' ELSE 'N' END) AS Chronic_congestive_heart_failure
  FROM TRNG_HEALTHCARE.va_conditions
  WHERE code IN (53741008, 84114007, 86175003, 88805009)
  GROUP BY patient) co
ON (p.Id = co.patient_id);

REPLACE VIEW TRNG_HEALTHCARE.va_sel_cond_patieint AS
SELECT 
  p.Id AS patient_id, 
  p.BIRTHDATE,  p.DEATHDATE, 
  ( (CAST(COALESCE(p.DEATHDATE, CURRENT_DATE) AS INTEGER) 
      - CAST(p.BIRTHDATE AS INTEGER))/10000 ) AS patient_Age,
  (CASE WHEN p.DEATHDATE IS NULL THEN 'decseaed' ELSE '' END) AS patient_Age_cond,
  p.SSN, 
  p."FIRST"||' '||p."LAST"|| 
    (CASE WHEN p.SUFFIX IS NOT NULL THEN ' ,'||p.SUFFIX ELSE '' END) AS full_name,
  (CASE p.MARITAL 
     WHEN 'S' THEN 'Single'
     WHEN 'M' THEN 'Married'
   ELSE 'Unknown' END) AS MARITAL, 
   p.RACE, p.ETHNICITY, p.GENDER,
   p."BIRTHPLACE", p.ADDRESS, p.CITY, p.STATE, p.COUNTY, p.ZIP, p.LAT, p.LON, 
   p.HEALTHCARE_EXPENSES,
   p.HEALTHCARE_COVERAGE,
   COALESCE(heart_cond.Heart_failure, 'N') AS Heart_Failure_ind,
   (CASE WHEN abn_creatinine_measure_cnt IS NULL THEN 'N' ELSE 'Y' END) AS Abn_Creat_ind,
   COALESCE(abn_creatinine_measure_cnt,0) AS abn_creatinine_measure_cnt,
   1.000000/cnt.total_county_cnt*100.000000 AS county_distrib_pct
FROM TRNG_HEALTHCARE.va_patients p
LEFT JOIN
 (SELECT
    patient AS patient_id,
    MAX(CASE WHEN code = 84114007 THEN 'Y' ELSE 'N' END)(CHAR(1)) AS Heart_failure
  FROM TRNG_HEALTHCARE.va_conditions
  WHERE code IN (84114007)
  GROUP BY patient) heart_cond
ON (p.Id = heart_cond.patient_id)
LEFT JOIN TRNG_HEALTHCARE.va_abnormal_creatinine_vw abn_creat
ON (p.Id = abn_creat.patient_id)
INNER JOIN 
 (SELECT
    STATE, COUNTY, 
    COUNT(0)(FLOAT) AS total_county_cnt
  FROM TRNG_HEALTHCARE.va_patients 
  GROUP BY STATE, COUNTY) cnt
ON (p.STATE = cnt.STATE
ANd p.COUNTY = cnt.COUNTY);

REPLACE VIEW TRNG_HEALTHCARE.ZIPCODES_ST AS
select ZIP.*, ST.STATE AS ST 
from TRNG_HEALTHCARE.ZIPCODES ZIP
LEFT JOIN TRNG_HEALTHCARE.state_abbrv ST
ON ZIP.STATE = ST.CODE;

