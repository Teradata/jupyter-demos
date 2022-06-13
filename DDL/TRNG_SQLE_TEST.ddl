create database TRNG_SQLE_TEST from demonow as perm=0;
create foreign table gs_tables_db."TRNG_SQLE_TEST_sls_visit_web_full", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/sls-visit-web-full/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_wine_attribute_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/wine-attribute-test/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_LINE_ITEM_JUICE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/LINE-ITEM-JUICE/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_wine_quality_unpivot", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/wine-quality-unpivot/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_decision_forest_predict_indb_user_0", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/decision-forest-predict-indb-user-0/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_train_raw", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/train-raw/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_BI_SLS_LINE_JCE_SPND", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/BI-SLS-LINE-JCE-SPND/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_glm_scale_stat", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/glm-scale-stat/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_visit_inpage_event", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/visit-inpage-event/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_SLS_TRANS_LINE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/SLS-TRANS-LINE/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_wine_attribute_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/wine-attribute-train/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_wine_response_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/wine-response-test/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_visit_inpage_event_web_url", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/visit-inpage-event-web-url/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_imdb_reviews_model", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/imdb-reviews-model/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_glm_test_scaled", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/glm-test-scaled/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_decision_forest_predict_indb_user_3", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/decision-forest-predict-indb-user-3/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_suicide_risk_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/suicide-risk-test/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_WEB_PAGE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/WEB-PAGE/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_test_features", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/test-features/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_text_tokenize_imdb_reviews", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/text-tokenize-imdb-reviews/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_suicide_risk_model", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/suicide-risk-model/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_decision_forest_predict_indb_user_2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/decision-forest-predict-indb-user-2/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_wine_model", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/wine-model/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_decisiontree_predict", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/decisiontree-predict/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_decision_forest_predict_indb_user_4", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/decision-forest-predict-indb-user-4/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_glm_predict_indb_user_0", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/glm-predict-indb-user-0/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_test_raw", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/test-raw/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_sls_visit_web", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/sls-visit-web/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_visit_inpage_event_s", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/visit-inpage-event-s/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_VISIT_SLS_TRANS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/VISIT-SLS-TRANS/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_wine_train_unpivot", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/wine-train-unpivot/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_glm_model", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/glm-model/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_misspelled_words_processed", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/misspelled-words-processed/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_train_features", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/train-features/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_REVW", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/REVW/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_wine_quality", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/wine-quality/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_visit_inpage_event_s_old", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/visit-inpage-event-s-old/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_wine_quality_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/wine-quality-test/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_sls_visit_web_time", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/sls-visit-web-time/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_decision_forest_predict_indb_user_1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/decision-forest-predict-indb-user-1/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_wine_test_unpivot", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/wine-test-unpivot/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_wine_response_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/wine-response-train/'));
create foreign table gs_tables_db."TRNG_SQLE_TEST_misspelled_words", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SQLE-TEST/misspelled-words/'));
replace view TRNG_SQLE_TEST.BI_SLS_LINE_JCE_SPND as locking row for access select
"sls_trans_id"
,"sls_trans_line_id"
,"cust_acct_id"
,"invc_create_dttm"
,"sls_trans_web_orgn_id"
,"order_typ"
,"sls_trans_status_typ_cd"
,"trans_line_status_typ_cd"
,"site_id"
,"surf_typ_cd"
,"web_platform_typ_cd"
,"hdp_web_platform_typ_cd"
,"visit_mobile_device_id"
,"visit_cmpgn_id"
,"st_cmpgn_id"
,"sesn_cmpgn_id"
,"orgl_st_cmpgn_id"
,"short_sku_item_id"
,"short_sku_num"
,"full_sku_item_id"
,"full_sku_num"
,"item_qty"
,"trans_line_estd_shpg_amt"
,"trans_line_shpg_amt"
,"day_onsite_prior_to_trans_cnt"
,"intl_ind"
,"subcatg_id"
,"partner_party_id"
,"partner_num"
,"partner_comsn_amt"
,"unit_slg_price_amt"
,"line_item_first_cost"
,"trans_line_dsc_amt"
,"line_item_sale"
,"line_item_sale_75pct_fraudchk"
,"line_item_shpg_amt"
,"shpg_75pct_fraudchk"
,"gms"
,"gms_75pct_fraudchk"
,"product_juice"
,"product_juice_75pct_fraudchk"
,"frictional_first_cost"
,"frictional_inbound_cost"
,"frictional_outbound_cost"
,"frictional_handling_cost"
,"frictional_cc_cost"
,"frictional_fraud_cost"
,"frictional_csr_cost"
,"frictional_ret_hc_cost"
,"frictional_misc_cost"
,"frictional_whs_cost"
,"frictional_intl_log_cost"
,"frictional_intl_cost"
,"click_cost"
,"acquisition_cost"
,"revenueshare_cost"
,"fixedfee_cid_cost"
,"fixedfee_cmpgn_src_cost"
,"coupon_cost"
,"net_plcc_cost"
,"tot_advertising_spend"
,"promotionalshipping_cost"
,"club_point_earn_cost"
,"club_point_rdm_cost"
,"club_point_adj_cost"
,"club_point_break_adj_cost"
,"club_point_rtn_adj_cost"
,"club_point_non_sls_adj_cost"
,"club_loyal_cost"
,"frictn_club_merch_liqdt_cost"
,"dly_deal_cost"
,"avg_actl_rtn_cost"
,"carr_shpg_chrg_amt"
,"tot_loyalty_spend"
,"promotionaltaxonomy_cost"
,"mkt_partner_rev_share_spnd_amt"
,"in_store_spend_amt"
,"in_store_rdm_amt"
,"gift_card_spend_amt"
,"brnd_store_comsn_cost"
,"intgrt_chnl_fee_amt"
,"spend"
,"spend_75pct_fraudchk"
,"product_nectar"
,"product_nectar_75pct_fraudchk"
,"income_trafc_goog_adsense"
,"income_trafc_winbuyer"
,"income_trafc_simplexity"
,"income_trafc_gold_redmpt"
,"income_trafc_turbotax"
,"income_brnd_w_spend"
,"income_brnd_wo_spend"
,"income_cid_amt"
,"income_cmpgn_site_sale_amt"
,"income_dly_deal_amt"
,"income_partner_boost_amt"
,"income_partner_site_sale_amt"
,"income_pos"
,"income_pos_mdf"
,"income_pos_non_coop"
,"income_pos_w_promo"
,"income_pos_w_vol"
,"income_vchr_rbt_amt"
,"income_cobrnd_cc_amt"
,"income_coop_ad_amt"
,"spend_brnd"
,"spend_pos"
,"incnt_adj_amt"
,"net_incnt_amt"
,"rev_share_amt"
,"sls_trans_dt"
,"trans_line_back_order_dt"
,"tot_juice"
,"total_juice_75pct_fraudchk"
,"tot_nectar"
,"tot_nectar_75pct_fraudchk"
,"rtn_intt_qty"
,"rtn_cmpl_qty"
,"rtn_cmpl_cr_qty"
,"cobrand_ind"
,"cust_rll_trans_cnt"
,"day_since_prior_trans_cnt"
,"futr_cust_scr_chng_val"
,"cust_futr_val_scr_num"
,"cust_actl_30_day_val_scr_num"
,"afflt_site_id"
,"afflt_admin_acct_id"
,"afflt_merch_typ_id"
,"comsn_tier_id"
,"afflt_comsn_chkot_typ_cd"
,"comsn_item_qty"
,"afflt_comsn_amt"
,"afflt_admin_fee_amt"
,"src_item_sold_qty"
,"src_afflt_comsn_amt"
,"src_afflt_admin_fee_amt"
,"src_order_dt"
,"afflt_comsn_status_typ_cd"
,"default_comsn_tier_rsn_cd"
,"club_typ_cd"
,"club_pay_typ_cd"
,"club_mem_status_typ_cd"
,"wrnty_trans_line_id"
,"wrnty_avlbl_ind"
,"wrnty_id"
,"site_sale_incnt_id"
,"site_sale_contrct_id"
,"rbt_incnt_id"
,"rbt_contrct_id"
,"visit_id"
,"lang_cd"
,"site_promo_id"
,"guest_ind"
,"liqdt_ind"
,"new_cust_order_alloc_ratio_num"
,"sls_excls_ind"
,"partner_rtn_core_ind"
,"mktplace_ind"
,"hdp_visit_id"
,"suplr_party_id"
,"suplr_typ"
,"new_sku_ind"
,"intgrt_chnl_typ_cd"
,"item_sku_age_id"
,"item_sku_age_desc"
,"plan_src_typ_txt"
,"create_dttm"
,"last_update_dttm"
,"last_update_user"
from gs_tables_db.TRNG_SQLE_TEST_BI_SLS_LINE_JCE_SPND;
replace view TRNG_SQLE_TEST.decisiontree_predict as locking row for access select
"pid"
,"pred_label"
from gs_tables_db.TRNG_SQLE_TEST_decisiontree_predict;
replace view TRNG_SQLE_TEST.decision_forest_predict_indb_user_0 as locking row for access select
"fare_amount"
,"key_temp"
,"prediction"
,"confidence_lower"
,"confidence_upper"
from gs_tables_db.TRNG_SQLE_TEST_decision_forest_predict_indb_user_0;
replace view TRNG_SQLE_TEST.decision_forest_predict_indb_user_1 as locking row for access select
"fare_amount"
,"key_temp"
,"prediction"
,"confidence_lower"
,"confidence_upper"
from gs_tables_db.TRNG_SQLE_TEST_decision_forest_predict_indb_user_1;
replace view TRNG_SQLE_TEST.decision_forest_predict_indb_user_2 as locking row for access select
"fare_amount"
,"key_temp"
,"prediction"
,"confidence_lower"
,"confidence_upper"
from gs_tables_db.TRNG_SQLE_TEST_decision_forest_predict_indb_user_2;
replace view TRNG_SQLE_TEST.decision_forest_predict_indb_user_3 as locking row for access select
"fare_amount"
,"key_temp"
,"prediction"
,"confidence_lower"
,"confidence_upper"
from gs_tables_db.TRNG_SQLE_TEST_decision_forest_predict_indb_user_3;
replace view TRNG_SQLE_TEST.decision_forest_predict_indb_user_4 as locking row for access select
"fare_amount"
,"key_temp"
,"prediction"
,"confidence_lower"
,"confidence_upper"
from gs_tables_db.TRNG_SQLE_TEST_decision_forest_predict_indb_user_4;
replace view TRNG_SQLE_TEST.glm_model as locking row for access select
"attribute"
,"predictor"
,"category"
,"estimate"
,"std_err"
,"t_score"
,"p_value"
,"significance"
,"family"
from gs_tables_db.TRNG_SQLE_TEST_glm_model;
replace view TRNG_SQLE_TEST.glm_predict_indb_user_0 as locking row for access select
"fare_amount"
,"fitted_value"
from gs_tables_db.TRNG_SQLE_TEST_glm_predict_indb_user_0;
replace view TRNG_SQLE_TEST.glm_scale_stat as locking row for access select
"stattype"
,"pickup_longitude"
,"pickup_latitude"
,"dropoff_latitude"
,"dropoff_longitude"
,"euclidean_dist"
from gs_tables_db.TRNG_SQLE_TEST_glm_scale_stat;
replace view TRNG_SQLE_TEST.glm_test_scaled as locking row for access select
"fare_amount"
,"pickup_longitude"
,"pickup_latitude"
,"dropoff_latitude"
,"dropoff_longitude"
,"euclidean_dist"
from gs_tables_db.TRNG_SQLE_TEST_glm_test_scaled;
replace view TRNG_SQLE_TEST.imdb_reviews_model as locking row for access select
"token"
,"category"
,"prob"
from gs_tables_db.TRNG_SQLE_TEST_imdb_reviews_model;
replace view TRNG_SQLE_TEST.LINE_ITEM_JUICE as locking row for access select
"sls_trans_line_id"
,"sls_trans_id"
,"sls_trans_dt"
,"trans_line_back_order_dt"
,"sls_trans_status_typ_cd"
,"trans_line_status_typ_cd"
,"trans_line_item_3rd_id"
,"line_item_orig_3rd_id"
,"order_typ"
,"item_id"
,"subcatg_id"
,"item_qty"
,"unit_slg_price_amt"
,"trans_line_dsc_amt"
,"line_item_sale"
,"line_item_shpg_amt"
,"rev_share_amt"
,"shp_comsn_amt"
,"invc_comsn_amt"
,"partner_comsn_amt"
,"income_dly_deal_amt"
,"juice"
,"line_item_first_cost"
,"frictional_first_cost"
,"frictional_inbound_cost"
,"frictional_outbound_cost"
,"frictional_handling_cost"
,"frictional_cc_cost"
,"frictional_fraud_cost"
,"frictional_csr_cost"
,"frictional_ret_hc_cost"
,"frictional_misc_cost"
,"frictional_whs_cost"
,"frictional_intl_log_cost"
,"frictional_intl_cost"
,"frictn_club_merch_liqdt_cost"
,"dly_deal_cost"
,"avg_actl_rtn_cost"
,"carr_shpg_chrg_amt"
,"intl_ind"
,"liqdt_ind"
,"partner_rtn_core_ind"
,"invc_create_dttm"
,"mktplace_ind"
,"suplr_party_id"
,"suplr_typ"
,"new_sku_ind"
,"intgrt_chnl_typ_cd"
,"intgrt_chnl_fee_amt"
,"create_dttm"
,"last_update_dttm"
,"last_update_user"
from gs_tables_db.TRNG_SQLE_TEST_LINE_ITEM_JUICE;
replace view TRNG_SQLE_TEST.misspelled_words as locking row for access select
"revw_id"
,"item_id"
,"acct_id"
,"revw_ratg_num"
,"full_revw_url"
,"revw_txt"
,"revw_title"
,"match"
,"love"
,"excellent"
,"beautiful"
,"decent"
,"cool"
from gs_tables_db.TRNG_SQLE_TEST_misspelled_words;
replace view TRNG_SQLE_TEST.misspelled_words_processed as locking row for access select
"item_id"
,"acct_id"
,"revw_ratg_num"
,"full_revw_url"
,"revw_txt"
,"revw_title"
,"match"
,"love"
,"excellent"
,"beautiful"
,"cool"
,"decent"
,"revw_id"
from gs_tables_db.TRNG_SQLE_TEST_misspelled_words_processed;
replace view TRNG_SQLE_TEST.REVW as locking row for access select
"revw_id"
,"item_id"
,"acct_id"
,"contnt_provdr_typ_cd"
,"revw_del_dt"
,"revw_ratg_num"
,"revw_pstv_feedbk_cnt"
,"revw_ngtv_feedbk_cnt"
,"revw_dttm"
,"full_revw_url"
,"revw_rcmd_ind"
,"revw_featd_item_ind"
,"revw_txt"
,"revw_title"
,"create_dttm"
,"last_update_dttm"
,"last_update_user"
from gs_tables_db.TRNG_SQLE_TEST_REVW;
replace view TRNG_SQLE_TEST.SLS_TRANS_LINE as locking row for access select
"sls_trans_line_id"
,"sls_trans_id"
,"orgl_sls_trans_line_id"
,"item_id"
,"partner_trans_id"
,"site_id"
,"item_qty"
,"unit_slg_price_amt"
,"unit_cost_amt"
,"trans_line_tax_amt"
,"trans_line_status_typ_cd"
,"trans_line_dsc_amt"
,"sls_trans_dt"
,"sls_trans_line_dt"
,"trans_line_back_order_dt"
,"trans_line_instr_cr_amt"
,"trans_line_cpn_ovrd_ind"
,"trans_line_shpg_amt"
,"trans_line_jce_amt"
,"trans_line_jce_merch_amt"
,"trans_line_jce_ship_in_amt"
,"trans_line_jce_rtn_hc_amt"
,"trans_line_jce_cc_amt"
,"trans_line_jce_hdlg_amt"
,"trans_line_jce_ship_out_amt"
,"trans_line_jce_csr_amt"
,"trans_line_jce_ship_rev_amt"
,"trans_line_item_3rd_id"
,"trans_line_whs_dt"
,"trans_line_co_dsc_amt"
,"trans_line_cog_dsc_amt"
,"trans_line_wrnty_item_txt"
,"trans_line_gift_card_ind"
,"b2b_po_num"
,"trans_line_estd_shpg_amt"
,"create_dttm"
,"last_update_dttm"
,"last_update_user"
from gs_tables_db.TRNG_SQLE_TEST_SLS_TRANS_LINE;
replace view TRNG_SQLE_TEST.sls_visit_web as locking row for access select
"visit_id"
,"event_web_page_id"
,"visit_dt"
,"web_page_url_txt"
,"web_page_typ_cd"
,"sls_trans_id"
,"cust_acct_id"
,"sls_trans_status_typ_cd"
from gs_tables_db.TRNG_SQLE_TEST_sls_visit_web;
replace view TRNG_SQLE_TEST.sls_visit_web_full as locking row for access select
"visit_id"
,"event_web_page_id"
,"visit_dt"
,"web_page_url_txt"
,"web_page_typ_cd"
,"sls_trans_id"
,"cust_acct_id"
,"sls_trans_status_typ_cd"
from gs_tables_db.TRNG_SQLE_TEST_sls_visit_web_full;
replace view TRNG_SQLE_TEST.sls_visit_web_time as locking row for access select
"visit_id"
,"event_web_page_id"
,"visit_dt"
,"web_page_url_txt"
,"web_page_typ_cd"
,"sls_trans_id"
,"cust_acct_id"
,"sls_trans_status_typ_cd"
from gs_tables_db.TRNG_SQLE_TEST_sls_visit_web_time;
replace view TRNG_SQLE_TEST.suicide_risk_model as locking row for access select
"class_nb"
,"variable_nb"
,"type_nb"
,"category"
,"cnt"
,"sum_nb"
,"sum_sq"
,"total_cnt"
from gs_tables_db.TRNG_SQLE_TEST_suicide_risk_model;
replace view TRNG_SQLE_TEST.suicide_risk_test as locking row for access select
"id"
,"country"
,"year"
,"sex"
,"age"
,"suicides_no"
,"population"
,"suicidesperhundredk"
,"HDI"
,"gdp_for_year"
,"gdp_per_capita"
,"generation"
,"suicide_risk"
from gs_tables_db.TRNG_SQLE_TEST_suicide_risk_test;
replace view TRNG_SQLE_TEST.test_features as locking row for access select
"key_temp"
,"fare_amount"
,"fare_bin"
,"pickup_datetime"
,"pickup_longitude"
,"pickup_latitude"
,"dropoff_longitude"
,"dropoff_latitude"
,"passenger_count"
,"abs_latitude_diff"
,"abs_longitude_diff"
,"manhattan_dist"
,"euclidean_dist"
,"haversine_dist"
,"sqrt_abs_latitude_diff"
,"sqrt_abs_longitude_diff"
,"sqrt_manhattan_dist"
,"sqrt_euclidean_dist"
,"sqrt_haversine_dist"
,"pickup_zone"
,"dropoff_zone"
,"precipitation_mm"
,"snowfall_mm"
,"snow_depth_mm"
,"temp_max_c"
from gs_tables_db.TRNG_SQLE_TEST_test_features;
replace view TRNG_SQLE_TEST.test_raw as locking row for access select
"id"
,"sentiment"
,"review"
from gs_tables_db.TRNG_SQLE_TEST_test_raw;
replace view TRNG_SQLE_TEST.text_tokenize_imdb_reviews as locking row for access select
"id"
,"token"
from gs_tables_db.TRNG_SQLE_TEST_text_tokenize_imdb_reviews;
replace view TRNG_SQLE_TEST.train_features as locking row for access select
"key_temp"
,"fare_amount"
,"fare_bin"
,"pickup_datetime"
,"pickup_longitude"
,"pickup_latitude"
,"dropoff_longitude"
,"dropoff_latitude"
,"passenger_count"
,"abs_latitude_diff"
,"abs_longitude_diff"
,"manhattan_dist"
,"euclidean_dist"
,"haversine_dist"
,"sqrt_abs_latitude_diff"
,"sqrt_abs_longitude_diff"
,"sqrt_manhattan_dist"
,"sqrt_euclidean_dist"
,"sqrt_haversine_dist"
,"pickup_zone"
,"dropoff_zone"
,"precipitation_mm"
,"snowfall_mm"
,"snow_depth_mm"
,"temp_max_c"
from gs_tables_db.TRNG_SQLE_TEST_train_features;
replace view TRNG_SQLE_TEST.train_raw as locking row for access select
"id"
,"sentiment"
,"review"
from gs_tables_db.TRNG_SQLE_TEST_train_raw;
replace view TRNG_SQLE_TEST.visit_inpage_event as locking row for access select
"visit_id"
,"event_web_page_id"
,"visit_inpage_event_seq_num"
,"page_view_seq_num"
,"event_typ_cd"
,"visit_dt"
,"create_dttm"
,"last_update_dttm"
,"last_update_user"
from gs_tables_db.TRNG_SQLE_TEST_visit_inpage_event;
replace view TRNG_SQLE_TEST.visit_inpage_event_s as locking row for access select
"visit_id"
,"event_web_page_id"
,"visit_inpage_event_seq_num"
,"page_view_seq_num"
,"event_typ_cd"
,"visit_dt"
,"create_dttm"
,"last_update_dttm"
,"last_update_user"
,"web_url"
,"web_page_typ_cd"
from gs_tables_db.TRNG_SQLE_TEST_visit_inpage_event_s;
replace view TRNG_SQLE_TEST.visit_inpage_event_s_old as locking row for access select
"visit_id"
,"event_web_page_id"
,"visit_inpage_event_seq_num"
,"page_view_seq_num"
,"event_typ_cd"
,"visit_dt"
,"create_dttm"
,"last_update_dttm"
,"last_update_user"
from gs_tables_db.TRNG_SQLE_TEST_visit_inpage_event_s_old;
replace view TRNG_SQLE_TEST.visit_inpage_event_web_url as locking row for access select
"visit_id"
,"event_web_page_id"
,"visit_dt"
,"web_page_url_txt"
,"web_page_typ_cd"
,"page_view_seq_num"
from gs_tables_db.TRNG_SQLE_TEST_visit_inpage_event_web_url;
replace view TRNG_SQLE_TEST.VISIT_SLS_TRANS as locking row for access select
"sls_trans_id"
,"visit_id"
,"visit_sls_trans_seq_num"
,"page_view_seq_num"
,"visitor_id"
,"visitor_src_cd"
,"cmpgn_id"
,"afflt_site_id"
,"visit_dt"
,"sls_trans_dt"
,"lang_cd"
,"create_dttm"
,"last_update_dttm"
,"last_update_user"
from gs_tables_db.TRNG_SQLE_TEST_VISIT_SLS_TRANS;
replace view TRNG_SQLE_TEST.WEB_PAGE as locking row for access select
"web_page_id"
,"item_id"
,"site_id"
,"web_page_typ_cd"
,"web_page_desc"
,"web_page_url_txt"
,"lang_cd"
,"create_dttm"
,"last_update_dttm"
,"last_update_user"
from gs_tables_db.TRNG_SQLE_TEST_WEB_PAGE;
replace view TRNG_SQLE_TEST.wine_attribute_test as locking row for access select
"pid"
,"attribute"
,"attrvalue"
from gs_tables_db.TRNG_SQLE_TEST_wine_attribute_test;
replace view TRNG_SQLE_TEST.wine_attribute_train as locking row for access select
"pid"
,"attribute"
,"attrvalue"
from gs_tables_db.TRNG_SQLE_TEST_wine_attribute_train;
replace view TRNG_SQLE_TEST.wine_model as locking row for access select
"node_id"
,"node_size"
,"node_gini_p"
,"node_entropy"
,"node_chisq_pv"
,"node_label"
,"node_majorvotes"
,"split_value"
,"split_gini_p"
,"split_entropy"
,"split_chisq_pv"
,"left_id"
,"left_size"
,"left_label"
,"left_majorvotes"
,"right_id"
,"right_size"
,"right_label"
,"right_majorvotes"
,"left_bucket"
,"right_bucket"
,"attribute"
from gs_tables_db.TRNG_SQLE_TEST_wine_model;
replace view TRNG_SQLE_TEST.wine_quality as locking row for access select
"id"
,"fixed acidity"
,"volatile acidity"
,"citric acid"
,"residual sugar"
,"chlorides"
,"free sulfur dioxide"
,"total sulfur dioxide"
,"density"
,"pH"
,"sulphates"
,"alcohol"
,"quality"
from gs_tables_db.TRNG_SQLE_TEST_wine_quality;
replace view TRNG_SQLE_TEST.wine_quality_test as locking row for access select
"id"
,"quality"
,"wine_attribute"
,"value_col_double"
from gs_tables_db.TRNG_SQLE_TEST_wine_quality_test;
replace view TRNG_SQLE_TEST.wine_quality_unpivot as locking row for access select
"id"
,"attribute"
,"value_col"
from gs_tables_db.TRNG_SQLE_TEST_wine_quality_unpivot;
replace view TRNG_SQLE_TEST.wine_response_test as locking row for access select
"pid"
,"response"
from gs_tables_db.TRNG_SQLE_TEST_wine_response_test;
replace view TRNG_SQLE_TEST.wine_response_train as locking row for access select
"pid"
,"response"
from gs_tables_db.TRNG_SQLE_TEST_wine_response_train;
replace view TRNG_SQLE_TEST.wine_test_unpivot as locking row for access select
"id"
,"attribute"
,"value_col"
from gs_tables_db.TRNG_SQLE_TEST_wine_test_unpivot;
replace view TRNG_SQLE_TEST.wine_train_unpivot as locking row for access select
"id"
,"attribute"
,"value_col"
from gs_tables_db.TRNG_SQLE_TEST_wine_train_unpivot;
REPLACE VIEW TRNG_SQLE_TEST.decision_forest_test_view AS
    SELECT key_temp,
        fare_amount,
        CAST(pickup_datetime AS TIMESTAMP(0)) AS datetime,
        EXTRACT (YEAR
        FROM datetime) AS pickup_year,
            EXTRACT (MONTH
        FROM datetime) AS pickup_month,
            EXTRACT (DAY
        FROM datetime) AS pickup_day,
            EXTRACT (HOUR
        FROM datetime) AS pickup_hour,
            EXTRACT (MINUTE
        FROM datetime) AS pickup_minute,
            pickup_longitude,
            pickup_latitude,
            dropoff_longitude,
            dropoff_latitude,
            passenger_count,
            euclidean_dist,
            pickup_zone,
            dropoff_zone
        FROM TRNG_SQLE_TEST.test_features;

REPLACE VIEW TRNG_SQLE_TEST.glm_test_view AS
    SELECT fare_amount,
        pickup_longitude,
        pickup_latitude,
        dropoff_latitude,
        dropoff_longitude,
        euclidean_dist
        FROM TRNG_SQLE_TEST.test_features;

REPLACE VIEW TRNG_SQLE_TEST.glm_tmp_view AS
    SELECT fare_amount,
        pickup_longitude,
        pickup_latitude,
        dropoff_latitude,
        dropoff_longitude,
        abs_latitude_diff,
        abs_longitude_diff,
        manhattan_dist,
        euclidean_dist,
        haversine_dist
        FROM TRNG_SQLE_TEST.train_features;

REPLACE VIEW TRNG_SQLE_TEST.glm_train_view AS
    SELECT *
        FROM Antiselect (
    ON TRNG_SQLE_TEST.glm_tmp_view
    USING
    Exclude ('abs_latitude_diff', 'abs_longitude_diff', 'manhattan_dist', 'haversine_dist')
) AS dt;

REPLACE VIEW "TRNG_SQLE_TEST"."ml___frmqry_v_1602111603982834" AS select top 100 * from TRNG_SQLE_TEST.wine_model;

REPLACE VIEW "TRNG_SQLE_TEST"."ml___frmqry_v_1602112236004138" AS select top 100 * from TRNG_SQLE_TEST.wine_model;

REPLACE VIEW "TRNG_SQLE_TEST"."ml___frmqry_v_1602113110351872" AS select top 100 * from TRNG_SQLE_TEST.wine_model;

REPLACE VIEW TRNG_SQLE_TEST.test_view as
    select fare_amount,
        pickup_longitude,
        pickup_latitude,
        dropoff_latitude,
        dropoff_longitude,
        euclidean_dist
    from TRNG_SQLE_TEST.test_features;

REPLACE view TRNG_SQLE_TEST.wine_test AS 
  SELECT * FROM TRNG_SQLE_TEST.wine_quality WHERE id MOD 5=0;

REPLACE view TRNG_SQLE_TEST.wine_train AS 
  SELECT * FROM TRNG_SQLE_TEST.wine_quality WHERE id MOD 5 <> 0;

