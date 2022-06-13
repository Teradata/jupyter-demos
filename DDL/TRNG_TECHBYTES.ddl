create database TRNG_TECHBYTES from demonow as perm=0;
create foreign table gs_tables_db."TRNG_TECHBYTES_Acct_Ind", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/Acct-Ind/'));
create foreign table gs_tables_db."TRNG_TECHBYTES_Customer", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/Customer/'));
create foreign table gs_tables_db."TRNG_TECHBYTES_Cust_Ind", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/Cust-Ind/'));
create foreign table gs_tables_db."TRNG_TECHBYTES_ADS_Py", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/ADS-Py/'));
create foreign table gs_tables_db."TRNG_TECHBYTES_ml__valib_transform_1614366667898948", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/ml--valib-transform-1614366667898948/'));
create foreign table gs_tables_db."TRNG_TECHBYTES_Accounts", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/Accounts/'));
create foreign table gs_tables_db."TRNG_TECHBYTES_ml__valib_transform_1614360874535970", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/ml--valib-transform-1614360874535970/'));
create foreign table gs_tables_db."TRNG_TECHBYTES_Transactions", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/Transactions/'));
replace view TRNG_TECHBYTES.Accounts as locking row for access select
"acct_nbr"
,"cust_id"
,"acct_type"
,"account_active"
,"acct_start_date"
,"starting_balance"
,"ending_balance"
from gs_tables_db.TRNG_TECHBYTES_Accounts;
replace view TRNG_TECHBYTES.Acct_Ind as locking row for access select
"acct_nbr"
,"cc_acct_ind"
,"ck_acct_ind"
,"sv_acct_ind"
,"cust_id"
,"starting_balance"
,"ending_balance"
,"cc_bal"
,"ck_bal"
,"sv_bal"
from gs_tables_db.TRNG_TECHBYTES_Acct_Ind;
replace view TRNG_TECHBYTES.ADS_Py as locking row for access select
"cust_id"
,"income_bins"
,"age_bins"
,"tot_cust_years"
,"tot_children"
,"female_ind"
,"single_ind"
,"married_ind"
,"separated_ind"
,"state_code"
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
from gs_tables_db.TRNG_TECHBYTES_ADS_Py;
replace view TRNG_TECHBYTES.Customer as locking row for access select
"cust_id"
,"income"
,"age"
,"years_with_bank"
,"nbr_children"
,"gender"
,"marital_status"
,"postal_code"
,"state_code"
from gs_tables_db.TRNG_TECHBYTES_Customer;
replace view TRNG_TECHBYTES.Cust_Ind as locking row for access select
"cust_id"
,"income_bins"
,"age_bins"
,"male_ind"
,"female_ind"
,"single_ind"
,"married_ind"
,"separated_ind"
,"widower_ind"
,"ca_resident_ind"
,"ny_resident_ind"
,"tx_resident_ind"
,"il_resident_ind"
,"az_resident_ind"
,"oh_resident_ind"
,"tot_cust_years"
,"tot_children"
,"state_code"
from gs_tables_db.TRNG_TECHBYTES_Cust_Ind;
replace view TRNG_TECHBYTES.ml__valib_transform_1614360874535970 as locking row for access select
"acct_nbr"
,"cc_acct_ind"
,"ck_acct_ind"
,"sv_acct_ind"
,"cust_id"
,"starting_balance"
,"ending_balance"
from gs_tables_db.TRNG_TECHBYTES_ml__valib_transform_1614360874535970;
replace view TRNG_TECHBYTES.ml__valib_transform_1614366667898948 as locking row for access select
"cust_id"
,"income_bins"
,"age_bins"
,"male_ind"
,"female_ind"
,"single_ind"
,"married_ind"
,"separated_ind"
,"widower_ind"
,"ca_resident_ind"
,"ny_resident_ind"
,"tx_resident_ind"
,"il_resident_ind"
,"az_resident_ind"
,"oh_resident_ind"
,"tot_cust_years"
,"tot_children"
,"state_code"
from gs_tables_db.TRNG_TECHBYTES_ml__valib_transform_1614366667898948;
replace view TRNG_TECHBYTES.Transactions as locking row for access select
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
from gs_tables_db.TRNG_TECHBYTES_Transactions;
 CREATE VIEW "TRNG_TECHBYTES"."ml__aggregate_agg__1614362535865141" AS select "cust_cust_id", min(income_bins) AS min_income_bins, min(age_bins) AS min_age_bins, min(tot_cust_years) AS min_tot_cust_years, min(tot_children) AS min_tot_children, min(female_ind) AS min_female_ind, min(single_ind) AS min_single_ind, min(married_ind) AS min_married_ind, min(separated_ind) AS min_separated_ind, min(ca_resident_ind) AS min_ca_resident_ind, min(ny_resident_ind) AS min_ny_resident_ind, min(tx_resident_ind) AS min_tx
_resident_ind, min(il_resident_ind) AS min_il_resident_ind, min(az_resident_ind) AS min_az_resident_ind, min(oh_resident_ind) AS min_oh_resident_ind, min(state_code) AS min_state_code, min(ck_acct_ind) AS min_ck_acct_ind, min(sv_acct_ind) AS min_sv_acct_ind, min(cc_acct_ind) AS min_cc_acct_ind, avg(ck_bal) AS mean_ck_bal, avg(sv_bal) AS mean_sv_bal, avg(cc_bal) AS mean_cc_bal, avg(ck_tran_amt) AS mean_ck_tran_amt, avg(sv_tran_amt) AS mean_sv_tran_amt, avg(cc_tran_amt) AS mean_cc_tran_amt, sum(q1_trans) AS 
sum_q1_trans, sum(q2_trans) AS sum_q2_trans, sum(q3_trans) AS sum_q3_trans, sum(q4_trans) AS sum_q4_trans from "TRNG_TECHBYTES"."ml__assign__1614361873546258" group by "cust_cust_id"

 CREATE VIEW "TRNG_TECHBYTES"."ml__assign__1614361508391562" AS select acct_nbr AS acct_nbr, cc_acct_ind AS cc_acct_ind, ck_acct_ind AS ck_acct_ind, sv_acct_ind AS sv_acct_ind, cust_id AS cust_id, starting_balance AS starting_balance, ending_balance AS ending_balance, cc_bal AS cc_bal, CASE WHEN (ck_acct_ind = 1) THEN starting_balance + ending_balance ELSE 0 END AS ck_bal from "TRNG_TECHBYTES"."ml__assign__1614361774013695"

 CREATE VIEW "TRNG_TECHBYTES"."ml__assign__1614361549807955" AS select tran_id AS tran_id, acct_nbr AS acct_nbr, tran_amt AS tran_amt, principal_amt AS principal_amt, interest_amt AS interest_amt, new_balance AS new_balance, tran_date AS tran_date, tran_time AS tran_time, channel AS channel, tran_code AS tran_code, CASE WHEN (EXTRACT(month FROM tran_date) = '1') THEN 1 WHEN (EXTRACT(month FROM tran_date) = '2') THEN 1 WHEN (EXTRACT(month FROM tran_date) = '3') THEN 1 ELSE 0 END AS q1_trans, CASE WHEN (EXTRA
CT(month FROM tran_date) = '4') THEN 1 WHEN (EXTRACT(month FROM tran_date) = '5') THEN 1 WHEN (EXTRACT(month FROM tran_date) = '6') THEN 1 ELSE 0 END AS q2_trans, CASE WHEN (EXTRACT(month FROM tran_date) = '7') THEN 1 WHEN (EXTRACT(month FROM tran_date) = '8') THEN 1 WHEN (EXTRACT(month FROM tran_date) = '9') THEN 1 ELSE 0 END AS q3_trans, CASE WHEN (EXTRACT(month FROM tran_date) = '10') THEN 1 WHEN (EXTRACT(month FROM tran_date) = '11') THEN 1 WHEN (EXTRACT(month FROM tran_date) = '12') THEN 1 ELSE 0 END 
AS q4_trans from "TRNG_TECHBYTES"."Transactions"

 CREATE VIEW "TRNG_TECHBYTES"."ml__assign__1614361774013695" AS select acct_nbr AS acct_nbr, cc_acct_ind AS cc_acct_ind, ck_acct_ind AS ck_acct_ind, sv_acct_ind AS sv_acct_ind, cust_id AS cust_id, starting_balance AS starting_balance, ending_balance AS ending_balance, CASE WHEN (cc_acct_ind = 1) THEN starting_balance + ending_balance ELSE 0 END AS cc_bal from "TRNG_TECHBYTES"."ml__valib_transform_1614360874535970"

 CREATE VIEW "TRNG_TECHBYTES"."ml__assign__1614361873546258" AS select cust_cust_id AS cust_cust_id, acct_cust_id AS acct_cust_id, income_bins AS income_bins, age_bins AS age_bins, male_ind AS male_ind, female_ind AS female_ind, single_ind AS single_ind, married_ind AS married_ind, separated_ind AS separated_ind, widower_ind AS widower_ind, ca_resident_ind AS ca_resident_ind, ny_resident_ind AS ny_resident_ind, tx_resident_ind AS tx_resident_ind, il_resident_ind AS il_resident_ind, az_resident_ind AS az_res
ident_ind, oh_resident_ind AS oh_resident_ind, tot_cust_years AS tot_cust_years, tot_children AS tot_children, state_code AS state_code, cu_ac_acct_nbr AS cu_ac_acct_nbr, trans_acct_nbr AS trans_acct_nbr, cc_acct_ind AS cc_acct_ind, ck_acct_ind AS ck_acct_ind, sv_acct_ind AS sv_acct_ind, starting_balance AS starting_balance, ending_balance AS ending_balance, cc_bal AS cc_bal, ck_bal AS ck_bal, sv_bal AS sv_bal, tran_id AS tran_id, tran_amt AS tran_amt, principal_amt AS principal_amt, interest_amt AS intere
st_amt, new_balance AS new_balance, tran_date AS tran_date, tran_time AS tran_time, channel AS channel, tran_code AS tran_code, q1_trans AS q1_trans, q2_trans AS q2_trans, q3_trans AS q3_trans, q4_trans AS q4_trans, cc_tran_amt AS cc_tran_amt, ck_tran_amt AS ck_tran_amt, CASE WHEN (sv_acct_ind = 1) THEN principal_amt + interest_amt ELSE 0 END AS sv_tran_amt from "TRNG_TECHBYTES"."ml__assign__1614362700422808"

 CREATE VIEW "TRNG_TECHBYTES"."ml__assign__1614362059304839" AS select cust_cust_id AS cust_cust_id, acct_cust_id AS acct_cust_id, income_bins AS income_bins, age_bins AS age_bins, male_ind AS male_ind, female_ind AS female_ind, single_ind AS single_ind, married_ind AS married_ind, separated_ind AS separated_ind, widower_ind AS widower_ind, ca_resident_ind AS ca_resident_ind, ny_resident_ind AS ny_resident_ind, tx_resident_ind AS tx_resident_ind, il_resident_ind AS il_resident_ind, az_resident_ind AS az_res
ident_ind, oh_resident_ind AS oh_resident_ind, tot_cust_years AS tot_cust_years, tot_children AS tot_children, state_code AS state_code, cu_ac_acct_nbr AS cu_ac_acct_nbr, trans_acct_nbr AS trans_acct_nbr, cc_acct_ind AS cc_acct_ind, ck_acct_ind AS ck_acct_ind, sv_acct_ind AS sv_acct_ind, starting_balance AS starting_balance, ending_balance AS ending_balance, cc_bal AS cc_bal, ck_bal AS ck_bal, sv_bal AS sv_bal, tran_id AS tran_id, tran_amt AS tran_amt, principal_amt AS principal_amt, interest_amt AS intere
st_amt, new_balance AS new_balance, tran_date AS tran_date, tran_time AS tran_time, channel AS channel, tran_code AS tran_code, q1_trans AS q1_trans, q2_trans AS q2_trans, q3_trans AS q3_trans, q4_trans AS q4_trans, CASE WHEN (cc_acct_ind = 1) THEN principal_amt + interest_amt ELSE 0 END AS cc_tran_amt from "TRNG_TECHBYTES"."ml__join__1614362656835452"

 CREATE VIEW "TRNG_TECHBYTES"."ml__assign__1614362097496774" AS select acct_nbr AS acct_nbr, cc_acct_ind AS cc_acct_ind, ck_acct_ind AS ck_acct_ind, sv_acct_ind AS sv_acct_ind, cust_id AS cust_id, starting_balance AS starting_balance, ending_balance AS ending_balance, cc_bal AS cc_bal, ck_bal AS ck_bal, CASE WHEN (sv_acct_ind = 1) THEN starting_balance + ending_balance ELSE 0 END AS sv_bal from "TRNG_TECHBYTES"."ml__assign__1614361508391562"

 CREATE VIEW "TRNG_TECHBYTES"."ml__assign__1614362700422808" AS select cust_cust_id AS cust_cust_id, acct_cust_id AS acct_cust_id, income_bins AS income_bins, age_bins AS age_bins, male_ind AS male_ind, female_ind AS female_ind, single_ind AS single_ind, married_ind AS married_ind, separated_ind AS separated_ind, widower_ind AS widower_ind, ca_resident_ind AS ca_resident_ind, ny_resident_ind AS ny_resident_ind, tx_resident_ind AS tx_resident_ind, il_resident_ind AS il_resident_ind, az_resident_ind AS az_res
ident_ind, oh_resident_ind AS oh_resident_ind, tot_cust_years AS tot_cust_years, tot_children AS tot_children, state_code AS state_code, cu_ac_acct_nbr AS cu_ac_acct_nbr, trans_acct_nbr AS trans_acct_nbr, cc_acct_ind AS cc_acct_ind, ck_acct_ind AS ck_acct_ind, sv_acct_ind AS sv_acct_ind, starting_balance AS starting_balance, ending_balance AS ending_balance, cc_bal AS cc_bal, ck_bal AS ck_bal, sv_bal AS sv_bal, tran_id AS tran_id, tran_amt AS tran_amt, principal_amt AS principal_amt, interest_amt AS intere
st_amt, new_balance AS new_balance, tran_date AS tran_date, tran_time AS tran_time, channel AS channel, tran_code AS tran_code, q1_trans AS q1_trans, q2_trans AS q2_trans, q3_trans AS q3_trans, q4_trans AS q4_trans, cc_tran_amt AS cc_tran_amt, CASE WHEN (ck_acct_ind = 1) THEN principal_amt + interest_amt ELSE 0 END AS ck_tran_amt from "TRNG_TECHBYTES"."ml__assign__1614362059304839"

 CREATE VIEW "TRNG_TECHBYTES"."ml__filter__1614361961115161" AS select * from "TRNG_TECHBYTES"."ml__select__1614362341911153" where cust_id = 13624810

 CREATE VIEW "TRNG_TECHBYTES"."ml__join__1614361071320260" AS select "cust"."cust_id" as "cust_cust_id", "acct"."cust_id" as "acct_cust_id", "income_bins", "age_bins", "male_ind", "female_ind", "single_ind", "married_ind", "separated_ind", "widower_ind", "ca_resident_ind", "ny_resident_ind", "tx_resident_ind", "il_resident_ind", "az_resident_ind", "oh_resident_ind", "tot_cust_years", "tot_children", "state_code", "acct_nbr", "cc_acct_ind", "ck_acct_ind", "sv_acct_ind", "starting_balance", "ending_balance", 
"cc_bal", "ck_bal", "sv_bal" from "Cust_Ind" as cust left outer join "Acct_Ind" as acct on "cust"."cust_id" = "acct"."cust_id"

 CREATE VIEW "TRNG_TECHBYTES"."ml__join__1614362656835452" AS select "cust_cust_id", "acct_cust_id", "income_bins", "age_bins", "male_ind", "female_ind", "single_ind", "married_ind", "separated_ind", "widower_ind", "ca_resident_ind", "ny_resident_ind", "tx_resident_ind", "il_resident_ind", "az_resident_ind", "oh_resident_ind", "tot_cust_years", "tot_children", "state_code", "cu_ac"."acct_nbr" as "cu_ac_acct_nbr", "trans"."acct_nbr" as "trans_acct_nbr", "cc_acct_ind", "ck_acct_ind", "sv_acct_ind", "starting_
balance", "ending_balance", "cc_bal", "ck_bal", "sv_bal", "tran_id", "tran_amt", "principal_amt", "interest_amt", "new_balance", "tran_date", "tran_time", "channel", "tran_code", "q1_trans", "q2_trans", "q3_trans", "q4_trans" from "TRNG_TECHBYTES"."ml__join__1614361071320260" as cu_ac left outer join "TRNG_TECHBYTES"."ml__assign__1614361549807955" as trans on "cu_ac"."acct_nbr" = "trans"."acct_nbr"

 CREATE VIEW "TRNG_TECHBYTES"."ml__select__1614362341911153" AS select cust_id,income_bins,age_bins,tot_cust_years,tot_children,female_ind,single_ind,married_ind,separated_ind,state_code,ca_resident_ind,ny_resident_ind,tx_resident_ind,il_resident_ind,az_resident_ind,oh_resident_ind,ck_acct_ind,sv_acct_ind,cc_acct_ind,ck_avg_bal,sv_avg_bal,cc_avg_bal,ck_avg_tran_amt,sv_avg_tran_amt,cc_avg_tran_amt,q1_trans_cnt,q2_trans_cnt,q3_trans_cnt,q4_trans_cnt from (select min_age_bins AS age_bins, min_az_resident_ind A
S az_resident_ind, min_ca_resident_ind AS ca_resident_ind, min_cc_acct_ind AS cc_acct_ind, mean_cc_bal AS cc_avg_bal, mean_cc_tran_amt AS cc_avg_tran_amt, min_ck_acct_ind AS ck_acct_ind, mean_ck_bal AS ck_avg_bal, mean_ck_tran_amt AS ck_avg_tran_amt, cust_cust_id AS cust_id, min_female_ind AS female_ind, min_il_resident_ind AS il_resident_ind, min_income_bins AS income_bins, min_married_ind AS married_ind, min_ny_resident_ind AS ny_resident_ind, min_oh_resident_ind AS oh_resident_ind, sum_q1_trans AS q1_tr
ans_cnt, sum_q2_trans AS q2_trans_cnt, sum_q3_trans AS q3_trans_cnt, sum_q4_trans AS q4_trans_cnt, min_separated_ind AS separated_ind, min_single_ind AS single_ind, min_state_code AS state_code, min_sv_acct_ind AS sv_acct_ind, mean_sv_bal AS sv_avg_bal, mean_sv_tran_amt AS sv_avg_tran_amt, min_tot_children AS tot_children, min_tot_cust_years AS tot_cust_years, min_tx_resident_ind AS tx_resident_ind from "TRNG_TECHBYTES"."ml__aggregate_agg__1614362535865141") as temp_table

