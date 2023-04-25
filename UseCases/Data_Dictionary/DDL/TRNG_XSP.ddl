create database TRNG_XSP from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_XSP_TWMS_T", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/TWMS-T/'));
create foreign table gs_tables_db."TRNG_XSP_TWMS_Normal", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/TWMS-Normal/'));
create foreign table gs_tables_db."TRNG_XSP_twm_transactions", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/twm-transactions/'));
create foreign table gs_tables_db."TRNG_XSP_TWMS_ChiSquare", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/TWMS-ChiSquare/'));
create foreign table gs_tables_db."TRNG_XSP_TWMS_F", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/TWMS-F/'));
create foreign table gs_tables_db."TRNG_XSP_TWMS_KolmogorovSmirnov", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/TWMS-KolmogorovSmirnov/'));
create foreign table gs_tables_db."TRNG_XSP_twm_credit_tran", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/twm-credit-tran/'));
create foreign table gs_tables_db."TRNG_XSP_twm_checking_tran", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/twm-checking-tran/'));
create foreign table gs_tables_db."TRNG_XSP_twm_customer", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/twm-customer/'));
create foreign table gs_tables_db."TRNG_XSP_TWMS_Smirnov", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/TWMS-Smirnov/'));
create foreign table gs_tables_db."TRNG_XSP_TWMS_ShapiroWilkCoefficients", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/TWMS-ShapiroWilkCoefficients/'));
create foreign table gs_tables_db."TRNG_XSP_TWMS_KruskalWallis", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/TWMS-KruskalWallis/'));
create foreign table gs_tables_db."TRNG_XSP_twm_savings_acct", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/twm-savings-acct/'));
create foreign table gs_tables_db."TRNG_XSP_TWMS_Lilliefors", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/TWMS-Lilliefors/'));
create foreign table gs_tables_db."TRNG_XSP_Accounts", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/Accounts/'));
create foreign table gs_tables_db."TRNG_XSP_Transactions", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/Transactions/'));
create foreign table gs_tables_db."TRNG_XSP_twm_customer_analysis", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/twm-customer-analysis/'));
create foreign table gs_tables_db."TRNG_XSP_twm_accounts", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/twm-accounts/'));
create foreign table gs_tables_db."TRNG_XSP_VAL_ADS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/VAL-ADS/'));
create foreign table gs_tables_db."TRNG_XSP_twm_credit_acct", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/twm-credit-acct/'));
create foreign table gs_tables_db."TRNG_XSP_TWMS_Normalshort", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/TWMS-Normalshort/'));
create foreign table gs_tables_db."TRNG_XSP_Customer", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/Customer/'));
create foreign table gs_tables_db."TRNG_XSP_twm_checking_acct", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/twm-checking-acct/'));
create foreign table gs_tables_db."TRNG_XSP_TWMS_ShapiroWilkQuantiles", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/TWMS-ShapiroWilkQuantiles/'));
create foreign table gs_tables_db."TRNG_XSP_twm_savings_tran", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/twm-savings-tran/'));
create foreign table gs_tables_db."TRNG_XSP_VAL_ADS2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/VAL-ADS2/'));
create foreign table gs_tables_db."TRNG_XSP_TWMS_Binomial", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/TWMS-Binomial/'));
create foreign table gs_tables_db."TRNG_XSP_twm_customer_dqa", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-XSP/twm-customer-dqa/'));
replace view TRNG_XSP.Accounts as locking row for access select
"acct_nbr"
,"cust_id"
,"acct_type"
,"account_active"
,"acct_start_date"
,"starting_balance"
,"ending_balance"
from gs_tables_db.TRNG_XSP_Accounts;
replace view TRNG_XSP.Customer as locking row for access select
"cust_id"
,"income"
,"age"
,"years_with_bank"
,"nbr_children"
,"gender"
,"marital_status"
,"postal_code"
,"state_code"
from gs_tables_db.TRNG_XSP_Customer;
replace view TRNG_XSP.Transactions as locking row for access select
"tran_id"
,"acct_nbr"
,"tran_amt"
,"principal_amt"
,"interest_amt"
,"new_balance"
,"tran_date"
,"tran_time"
,"channel"
,"tran_code"
from gs_tables_db.TRNG_XSP_Transactions;
replace view TRNG_XSP.TWMS_Binomial as locking row for access select
"N_Trials"
,"K"
,"Prob"
,"BinomDist"
,"CumBinomDist"
from gs_tables_db.TRNG_XSP_TWMS_Binomial;
replace view TRNG_XSP.TWMS_ChiSquare as locking row for access select
"K"
,"T1"
,"T2"
,"T3"
,"T4"
,"T5"
,"T6"
,"T7"
,"T8"
,"T9"
from gs_tables_db.TRNG_XSP_TWMS_ChiSquare;
replace view TRNG_XSP.TWMS_F as locking row for access select
"K"
,"df_1"
,"df_2"
,"T0.25"
,"T0.1"
,"T0.05"
,"T0.025"
,"T0.01"
,"T0.005"
,"T0.001"
from gs_tables_db.TRNG_XSP_TWMS_F;
replace view TRNG_XSP.TWMS_KolmogorovSmirnov as locking row for access select
"n"
,"T1"
,"T2"
,"T3"
,"T4"
,"T5"
from gs_tables_db.TRNG_XSP_TWMS_KolmogorovSmirnov;
replace view TRNG_XSP.TWMS_KruskalWallis as locking row for access select
"K1"
,"K2"
,"K3"
,"T1"
,"T2"
,"T3"
from gs_tables_db.TRNG_XSP_TWMS_KruskalWallis;
replace view TRNG_XSP.TWMS_Lilliefors as locking row for access select
"n"
,"T1"
,"T2"
,"T3"
,"T4"
,"T5"
from gs_tables_db.TRNG_XSP_TWMS_Lilliefors;
replace view TRNG_XSP.TWMS_Normal as locking row for access select
"Z"
,"P"
from gs_tables_db.TRNG_XSP_TWMS_Normal;
replace view TRNG_XSP.TWMS_Normalshort as locking row for access select
"Z"
,"P"
from gs_tables_db.TRNG_XSP_TWMS_Normalshort;
replace view TRNG_XSP.TWMS_ShapiroWilkCoefficients as locking row for access select
"N"
,"I"
,"Coeff"
from gs_tables_db.TRNG_XSP_TWMS_ShapiroWilkCoefficients;
replace view TRNG_XSP.TWMS_ShapiroWilkQuantiles as locking row for access select
"n"
,"T1"
,"T2"
,"T3"
,"T4"
,"T5"
,"T6"
,"T7"
,"T8"
,"T9"
from gs_tables_db.TRNG_XSP_TWMS_ShapiroWilkQuantiles;
replace view TRNG_XSP.TWMS_Smirnov as locking row for access select
"N"
,"M"
,"C"
,"PVal"
from gs_tables_db.TRNG_XSP_TWMS_Smirnov;
replace view TRNG_XSP.TWMS_T as locking row for access select
"df"
,"t"
,"p"
from gs_tables_db.TRNG_XSP_TWMS_T;
replace view TRNG_XSP.twm_accounts as locking row for access select
"acct_nbr"
,"cust_id"
,"acct_type"
,"account_active"
,"acct_start_date"
,"acct_end_date"
,"starting_balance"
,"ending_balance"
from gs_tables_db.TRNG_XSP_twm_accounts;
replace view TRNG_XSP.twm_checking_acct as locking row for access select
"cust_id"
,"acct_nbr"
,"minimum_balance"
,"per_check_fee"
,"account_active"
,"acct_start_date"
,"acct_end_date"
,"starting_balance"
,"ending_balance"
from gs_tables_db.TRNG_XSP_twm_checking_acct;
replace view TRNG_XSP.twm_checking_tran as locking row for access select
"cust_id"
,"tran_id"
,"tran_amt"
,"principal_amt"
,"interest_amt"
,"new_balance"
,"tran_date"
,"tran_time"
,"channel"
,"tran_code"
from gs_tables_db.TRNG_XSP_twm_checking_tran;
replace view TRNG_XSP.twm_credit_acct as locking row for access select
"cust_id"
,"acct_nbr"
,"credit_limit"
,"credit_rating"
,"account_active"
,"acct_start_date"
,"acct_end_date"
,"starting_balance"
,"ending_balance"
from gs_tables_db.TRNG_XSP_twm_credit_acct;
replace view TRNG_XSP.twm_credit_tran as locking row for access select
"cust_id"
,"tran_id"
,"tran_amt"
,"principal_amt"
,"interest_amt"
,"new_balance"
,"tran_date"
,"tran_time"
,"channel"
,"tran_code"
from gs_tables_db.TRNG_XSP_twm_credit_tran;
replace view TRNG_XSP.twm_customer as locking row for access select
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
from gs_tables_db.TRNG_XSP_twm_customer;
replace view TRNG_XSP.twm_customer_analysis as locking row for access select
"cust_id"
,"income"
,"age"
,"years_with_bank"
,"nbr_children"
,"gender"
,"marital_status"
,"city_name"
,"state_code"
,"female"
,"single"
,"married"
,"separated"
,"ccacct"
,"ckacct"
,"svacct"
,"avg_cc_bal"
,"avg_ck_bal"
,"avg_sv_bal"
,"avg_cc_tran_amt"
,"avg_cc_tran_cnt"
,"avg_ck_tran_amt"
,"avg_ck_tran_cnt"
,"avg_sv_tran_amt"
,"avg_sv_tran_cnt"
,"cc_rev"
from gs_tables_db.TRNG_XSP_twm_customer_analysis;
replace view TRNG_XSP.twm_customer_dqa as locking row for access select
"cust_id"
,"hhold_id"
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
,"acct_start_date"
,"acct_end_date"
,"sdate_str"
,"edate_str"
,"stime_str"
,"acct_start_time"
,"acct_end_time"
,"acct_start_timestamp"
,"acct_end_timestamp"
from gs_tables_db.TRNG_XSP_twm_customer_dqa;
replace view TRNG_XSP.twm_savings_acct as locking row for access select
"cust_id"
,"acct_nbr"
,"minimum_balance"
,"acct_type"
,"account_active"
,"acct_start_date"
,"acct_end_date"
,"starting_balance"
,"ending_balance"
from gs_tables_db.TRNG_XSP_twm_savings_acct;
replace view TRNG_XSP.twm_savings_tran as locking row for access select
"cust_id"
,"tran_id"
,"tran_amt"
,"principal_amt"
,"interest_amt"
,"new_balance"
,"tran_date"
,"tran_time"
,"channel"
,"tran_code"
from gs_tables_db.TRNG_XSP_twm_savings_tran;
replace view TRNG_XSP.twm_transactions as locking row for access select
"tran_id"
,"acct_nbr"
,"tran_amt"
,"principal_amt"
,"interest_amt"
,"new_balance"
,"tran_date"
,"tran_time"
,"channel"
,"tran_code"
from gs_tables_db.TRNG_XSP_twm_transactions;
replace view TRNG_XSP.VAL_ADS as locking row for access select
"cust_id"
,"tot_income"
,"tot_age"
,"tot_cust_years"
,"tot_children"
,"single_ind"
,"female_ind"
,"married_ind"
,"separated_ind"
,"ca_resident_ind"
,"ny_resident_ind"
,"tx_resident_ind"
,"il_resident_ind"
,"az_resident_ind"
,"oh_resident_ind"
,"ck_acct_ind"
,"sv_acct_ind"
,"cc_acct_ind"
,"ck_avg_bal"
,"sv_avg_bal"
,"cc_avg_bal"
,"ck_avg_tran_amt"
,"sv_avg_tran_amt"
,"cc_avg_tran_amt"
,"q1_trans_cnt"
,"q2_trans_cnt"
,"q3_trans_cnt"
,"q4_trans_cnt"
from gs_tables_db.TRNG_XSP_VAL_ADS;
replace view TRNG_XSP.VAL_ADS2 as locking row for access select
"cust_id"
,"tot_income"
,"tot_age"
,"tot_cust_years"
,"tot_children"
,"single_ind"
,"female_ind"
,"married_ind"
,"separated_ind"
,"state_code"
,"ck_acct_ind"
,"sv_acct_ind"
,"cc_acct_ind"
,"ck_avg_bal"
,"sv_avg_bal"
,"cc_avg_bal"
,"ck_avg_tran_amt"
,"sv_avg_tran_amt"
,"cc_avg_tran_amt"
,"q1_trans_cnt"
,"q2_trans_cnt"
,"q3_trans_cnt"
,"q4_trans_cnt"
from gs_tables_db.TRNG_XSP_VAL_ADS2;
