create database TRNG_BustOutFraud from demonow as perm=0;
create foreign table gs_tables_db."TRNG_BustOutFraud_trans_feature_month_derived", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/trans-feature-month-derived/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_acct_statement", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/acct-statement/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_party", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/party/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_acct_bustouts", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/acct-bustouts/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_trans_feature_day_derived", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/trans-feature-day-derived/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_credit_bureau_data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/credit-bureau-data/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_all_dates", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/all-dates/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_trans_feature", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/trans-feature/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_merchant", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/merchant/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_transaction_daily_counts", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/transaction-daily-counts/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_acct_predict", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/acct-predict/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_acct_feature", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/acct-feature/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_transaction_detail", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/transaction-detail/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_transaction_detail_staging", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/transaction-detail-staging/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_party_acct", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/party-acct/'));
replace view TRNG_BustOutFraud.acct_bustouts as locking row for access select
"acct_no"
,"as_of_dt_day"
,"bustout_flag"
from gs_tables_db.TRNG_BustOutFraud_acct_bustouts;
replace view TRNG_BustOutFraud.acct_feature as locking row for access select
"acct_no"
,"as_of_dt_day"
,"accts_clsd_by_grantor_ct"
,"accts_open_12m_ct"
,"accts_utlz_ge95_ct"
,"credit_score"
,"inq_bank_6m_ct"
,"accts_avg_age_mth_ct"
,"msa_flag"
,"acq_chnl"
,"acq_ecom_flag"
,"mth_on_book"
,"credit_limit"
,"eom_bal_amount"
from gs_tables_db.TRNG_BustOutFraud_acct_feature;
replace view TRNG_BustOutFraud.acct_predict as locking row for access select
"acct_no"
,"as_of_dt_day"
,"prediction"
,"confidence_lower"
,"confidence_upper"
from gs_tables_db.TRNG_BustOutFraud_acct_predict;
replace view TRNG_BustOutFraud.acct_statement as locking row for access select
"acct_no"
,"as_of_dt_day"
,"credit_limit"
,"acq_chnl"
,"acq_ecom_flag"
,"mth_on_book"
,"eom_bal_amount"
from gs_tables_db.TRNG_BustOutFraud_acct_statement;
replace view TRNG_BustOutFraud.all_dates as locking row for access select
"acct_no"
,"date_range"
,"in_flag"
from gs_tables_db.TRNG_BustOutFraud_all_dates;
replace view TRNG_BustOutFraud.credit_bureau_data as locking row for access select
"acct_no"
,"as_of_dt"
,"accts_clsd_by_grantor_ct"
,"accts_open_12m_ct"
,"avbl_cr_am"
,"avg_bal_am"
,"accts_utlz_ge95_ct"
,"credit_score"
,"accts_30dlq_ct"
,"accts_60dlq_ct"
,"accts_90dlq_ct"
,"inq_bank_6m_ct"
,"msa_cd"
,"prev_credit_score"
,"accts_avg_age_mth_ct"
,"accts_utlz_pct"
from gs_tables_db.TRNG_BustOutFraud_credit_bureau_data;
replace view TRNG_BustOutFraud.merchant as locking row for access select
"merchant_id"
,"merchant_name"
,"streetaddress"
,"city"
,"state"
,"state_full"
,"postcode"
,"country"
,"country_full"
,"phone"
,"phone_country_code"
,"latitude"
,"longitude"
from gs_tables_db.TRNG_BustOutFraud_merchant;
replace view TRNG_BustOutFraud.party as locking row for access select
"partyid"
,"gender"
,"nameset"
,"firstname"
,"lastname"
,"streetaddress"
,"city"
,"state"
,"statefull"
,"postcode"
,"country"
,"countryfull"
,"email"
,"username"
,"browseruseragent"
,"phone"
,"telephonecountrycode"
,"mothersmaiden"
,"birthday"
,"age"
,"nationalid"
,"occupation"
,"company"
,"guid"
,"latitude"
,"longitude"
from gs_tables_db.TRNG_BustOutFraud_party;
replace view TRNG_BustOutFraud.party_acct as locking row for access select
"partyid"
,"acct_no"
from gs_tables_db.TRNG_BustOutFraud_party_acct;
replace view TRNG_BustOutFraud.transaction_daily_counts as locking row for access select
"acct_no"
,"tran_post_dt"
,"trans_type"
,"payment_chnl"
,"sum_amt"
,"trans_cnt"
from gs_tables_db.TRNG_BustOutFraud_transaction_daily_counts;
replace view TRNG_BustOutFraud.transaction_detail as locking row for access select
"acct_no"
,"tran_post_dt"
,"tran_cat_cd"
,"trans_chnl"
,"merchant_name"
,"trans_amt"
from gs_tables_db.TRNG_BustOutFraud_transaction_detail;
replace view TRNG_BustOutFraud.transaction_detail_staging as locking row for access select
"acct_no"
,"tran_post_dt"
,"tran_cat_cd"
,"trans_chnl"
,"merchant_id"
,"trans_amt"
from gs_tables_db.TRNG_BustOutFraud_transaction_detail_staging;
replace view TRNG_BustOutFraud.trans_feature as locking row for access select
"acct_no"
,"as_of_dt_day"
,"avg_pmt_05_mth"
,"days_since_lstcash"
,"max_utilization_05_mth"
,"maxamt_epmt_v7day"
,"times_nsf"
,"totcash_to_line_v7day"
,"totpmt_to_line_v7day"
,"totpur_to_line_v7day"
,"totpurcash_to_line_v7day"
,"credit_util_cur_mth"
,"credit_util_prior_5_mth"
,"credit_util_cur_to_prior_ratio"
,"days_since_lst_pymnt"
,"num_pymnt_lst_7_days"
,"num_pymnt_lst_60_days"
,"pct_line_paid_lst_7_days"
,"pct_line_paid_lst_30_days"
,"num_pur_lst_7_days"
,"num_pur_lst_60_days"
,"pct_line_pur_lst_7_days"
,"pct_line_pur_lst_30_days"
,"tot_pymnt_chnl"
,"tot_pymnt"
,"tot_pymnt_am"
,"pay_by_phone"
,"elec_pymnt"
,"pay_in_bank"
,"pay_by_check"
,"pay_by_othr"
,"last_12m_trans_ct"
from gs_tables_db.TRNG_BustOutFraud_trans_feature;
replace view TRNG_BustOutFraud.trans_feature_day_derived as locking row for access select
"acct_no"
,"as_of_dt"
,"PMT_AMT"
,"PMT_CNT"
,"PMT_SUM_7DAY"
,"PMT_SUM_30DAY"
,"PMT_SUM_60DAY"
,"DAVG_PMT_05"
,"PMT_CNT_7DAY"
,"PMT_CNT_30DAY"
,"PMT_CNT_60DAY"
,"DAYS_SINCE_LSTPMT"
,"MAXAMT_EPMT_V7DAY"
,"PAYCHNL_CNT"
,"EPMT_FLAG"
,"CPMT_FLAG"
,"CKPMT_FLAG"
,"PPMT_FLAG"
,"OTHERPMT_FLAG"
,"CASH_SUM_7DAY"
,"DAYS_SINCE_LSTCASH"
,"LAST_12_MTH_RTL_TRAN_CT2"
,"PURCH_CNT_7DAY"
,"PURCH_CNT_60DAY"
,"PURCH_SUM_7DAY"
,"PURCH_SUM_30DAY"
,"PURCH_SUM_60DAY"
,"NSF_CNT_30DAY"
,"NSF_CNT_90DAY"
,"PURCASH_SUM_7DAY"
from gs_tables_db.TRNG_BustOutFraud_trans_feature_day_derived;
replace view TRNG_BustOutFraud.trans_feature_month_derived as locking row for access select
"acct_no"
,"as_of_dt_day"
,"credit_limit"
,"eom_bal_amount"
,"CREDIT_UTIL_CUR_MONTH"
,"CREDIT_UTIL_PRIOR_5_MTH"
,"AVGLINE_UTIL_L6M"
,"CREDIT_UTIL_CUR_TO_PRIOR_RATIO"
,"MAX_UTILIZATION_05_MTH"
from gs_tables_db.TRNG_BustOutFraud_trans_feature_month_derived;

CREATE VIEW TRNG_BustOutFraud.v_acct_feature_train AS
SELECT af.*, ab.bustout_flag AS bustout
FROM TRNG_BustOutFraud.acct_feature af
RIGHT JOIN TRNG_BustOutFraud.acct_bustouts ab ON
af.acct_no = ab.acct_no;


CREATE VIEW TRNG_BustOutFraud.v_acct_predict AS
SELECT pa.partyid, ap.acct_no, ap.as_of_dt_day, ap.prediction
FROM TRNG_BustOutFraud.party_acct pa
JOIN TRNG_BustOutFraud.acct_predict ap ON
pa.acct_no = ap.acct_no
WHERE as_of_dt_day = (SELECT MAX(as_of_dt_day) FROM TRNG_BustOutFraud.acct_predict);

CREATE VIEW TRNG_BustOutFraud.v_party_acct_status AS
SELECT pa.partyid as partyid, count(tf.acct_no) as num_accts, sum(tf.times_nsf) as times_nsf, 
 sum(tf.num_pymnt_lst_60_days) as num_pymnt_lst_60_days
FROM TRNG_BustOutFraud.party_acct pa, TRNG_BustOutFraud.trans_feature tf
WHERE pa.acct_no = tf.acct_no
AND as_of_dt_day = (SELECT MAX(as_of_dt_day) FROM TRNG_BustOutFraud.trans_feature)
GROUP BY pa.partyid;


CREATE VIEW TRNG_BustOutFraud.v_party_acct_summary AS
SELECT pa.partyid, acs.acct_no, acs.credit_limit, acs.acq_chnl, acs.mth_on_book, acs.eom_bal_amount
FROM TRNG_BustOutFraud.party_acct pa
JOIN TRNG_BustOutFraud.acct_statement acs ON
pa.acct_no = acs.acct_no
WHERE as_of_dt_day = (SELECT MAX(as_of_dt_day) FROM TRNG_BustOutFraud.acct_statement);


CREATE VIEW TRNG_BustOutFraud.v_trans_feature_train AS
SELECT tf.*, ab.bustout_flag AS bustout
FROM TRNG_BustOutFraud.trans_feature tf
RIGHT JOIN TRNG_BustOutFraud.acct_bustouts ab ON
tf.acct_no = ab.acct_no;

