create database TRNG_TDU_TD01 from demonow as perm=0;
create foreign table gs_tables_db."TRNG_TDU_TD01_json_parser_data_2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/json-parser-data-2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_computers_test1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/computers-test1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_iris_unk", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/iris-unk/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_web_visits", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/web-visits/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bank_cluster", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bank-cluster/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_edges_cls", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/edges-cls/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tmdb_movies", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tmdb-movies/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_county_smoke", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/county-smoke/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sessionme", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sessionme/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_product_dim", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/product-dim/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_json_parser_data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/json-parser-data/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_hc_cost_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/hc-cost-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_borre_y", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/borre-y/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_nb_predictcars", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/nb-predictcars/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_text_trainset", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/text-trainset/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_unpivot_mortgage_state", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/unpivot-mortgage-state/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bust_out_int", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bust-out-int/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_mush_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/mush-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_chips_ipgeo", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/chips-ipgeo/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_convert_table", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/convert-table/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sparse_housing_test_binary", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sparse-housing-test-binary/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_Transactions_VD", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/Transactions-VD/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_fire_incidentsX", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/fire-incidentsX/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bank_events", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bank-events/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_pivot_mortgage_state", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/pivot-mortgage-state/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_table1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/table1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tag_table2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tag-table2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_soc_nw_edges", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/soc-nw-edges/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_conv_table", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/conv-table/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_npathbetween2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/npathbetween2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sales_transaction", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sales-transaction/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_terms1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/terms1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_borre_food", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/borre-food/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_healthcare_surgery_events_token", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/healthcare-surgery-events-token/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sentiment0", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sentiment0/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_RETAIL_COMPNEW", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/RETAIL-COMPNEW/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_attrib3", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/attrib3/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_gtree_edges", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/gtree-edges/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_nGram_movie", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/nGram-movie/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_hc_events_token", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/hc-events-token/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_hc_cost", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/hc-cost/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_gtree_root", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/gtree-root/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tf_movie2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tf-movie2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_pageview", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/pageview/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sparse_housing_train_binary_rb", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sparse-housing-train-binary-rb/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_airlines", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/airlines/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_myb_tweets_10k", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/myb-tweets-10k/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_of_quant", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/of-quant/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_Accounts", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/Accounts/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_common_classes", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/common-classes/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_df_cnp_predict", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/df-cnp-predict/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_basket01", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/basket01/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_admissions_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/admissions-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cfilter", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cfilter/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_DSE_WEB_COMMENT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/DSE-WEB-COMMENT/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bank_clicks", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bank-clicks/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cars_hist", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cars-hist/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_soc_nw_vertices", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/soc-nw-vertices/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_outlier_output_cycletime", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/outlier-output-cycletime/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cfilter_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cfilter-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_got_model", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/got-model/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cpu_of_scale_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cpu-of-scale-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_healthcare_all_paths_token_clean", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/healthcare-all-paths-token-clean/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_attrib9", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/attrib9/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_income_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/income-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_movies", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/movies/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_fire_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/fire-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_outlier_records_cycletime", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/outlier-records-cycletime/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_nb_exited_predict", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/nb-exited-predict/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_myb_cf_redbull", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/myb-cf-redbull/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_die_hard_euclidean", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/die-hard-euclidean/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_titanic_raw", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/titanic-raw/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_mushroom_master", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/mushroom-master/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tagged_text", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tagged-text/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_ngrams_case", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/ngrams-case/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_ironman_sentiment", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/ironman-sentiment/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_words3", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/words3/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_pivot_fire_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/pivot-fire-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_priceupdown", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/priceupdown/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_reviews_emojis", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/reviews-emojis/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_jobs_CS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/jobs-CS/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sales_pharm", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sales-pharm/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_basket03", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/basket03/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_npathbetween", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/npathbetween/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_org99_customerdata", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/org99-customerdata/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_jobs2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/jobs2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bank_churn", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bank-churn/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_chips_NPATH", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/chips-NPATH/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_fire_join2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/fire-join2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bb_borre_cfilter_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bb-borre-cfilter-output/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_iris_knw", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/iris-knw/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_weblog1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/weblog1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_county_demogr", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/county-demogr/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_model1_table", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/model1-table/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_kidney_knw1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/kidney-knw1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_die_hard_cosine", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/die-hard-cosine/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_hc_token_clean", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/hc-token-clean/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_kidney_unk1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/kidney-unk1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_unpivot_mortgage_state_lc", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/unpivot-mortgage-state-lc/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bin_breaks", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bin-breaks/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_chips_session", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/chips-session/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_emps", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/emps/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tweets_MYB", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tweets-MYB/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_admissions_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/admissions-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_customer_dim", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/customer-dim/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tmdb_movies_vc", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tmdb-movies-vc/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_jobs3", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/jobs3/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_top10_vd", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/top10-vd/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_reviews_emojis2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/reviews-emojis2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_vertextable_air", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/vertextable-air/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tfidf_output1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tfidf-output1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_heart_disease", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/heart-disease/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_country", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/country/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_kmodes_init", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/kmodes-init/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_job", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/job/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_nGram_movie2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/nGram-movie2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_housing_test_binary", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/housing-test-binary/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_got_conv", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/got-conv/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bank_weblog", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bank-weblog/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_myinput_table", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/myinput-table/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_chips_clean", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/chips-clean/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_housing_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/housing-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sales_detail1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sales-detail1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_model2_predict", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/model2-predict/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_mush_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/mush-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_vertex_enron", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/vertex-enron/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_text_sentiment_scored", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/text-sentiment-scored/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sparse_housing_attributes", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sparse-housing-attributes/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_fire_join2X", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/fire-join2X/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_ML_review", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/ML-review/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_MYB_Smallstocks", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/MYB-Smallstocks/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bank_churn_scaled", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bank-churn-scaled/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_zoo2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/zoo2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tweets_10k", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tweets-10k/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sentiment2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sentiment2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_diary", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/diary/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_Accounts_VD", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/Accounts-VD/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_ironme", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/ironme/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sensor_predict", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sensor-predict/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_borre_z", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/borre-z/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_MYB_salesrev", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/MYB-salesrev/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_jobs_notCS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/jobs-notCS/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_income_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/income-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_iris_unk3", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/iris-unk3/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tfidf_fistful", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tfidf-fistful/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_input_tbl2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/input-tbl2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_multi_ads", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/multi-ads/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_nb_iris_input_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/nb-iris-input-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_nb_stolencars", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/nb-stolencars/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_prime_grants", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/prime-grants/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_callers", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/callers/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_text_temp", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/text-temp/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_myb_retailsales", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/myb-retailsales/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_clickstream", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/clickstream/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_ngrams_simple", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/ngrams-simple/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_nb_count_table_scaled", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/nb-count-table-scaled/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_healthcare_surgery_events", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/healthcare-surgery-events/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_PURCHASE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/PURCHASE/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_department", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/department/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_chips_parse", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/chips-parse/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_basket04", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/basket04/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_unpivot_fire_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/unpivot-fire-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_teams_prior2012", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/teams-prior2012/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_edges_enron", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/edges-enron/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_DSE_RETAIL_EVENTS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/DSE-RETAIL-EVENTS/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_CUSTOMER1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/CUSTOMER1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_model4_predict", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/model4-predict/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_income_unk", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/income-unk/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_conversion", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/conversion/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_iris_input", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/iris-input/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_movie_jsoned2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/movie-jsoned2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bank_churn_outliers_removed", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bank-churn-outliers-removed/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_edgetable_air", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/edgetable-air/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sparse_housing_train_binary", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sparse-housing-train-binary/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_titanic_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/titanic-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cnp_train_outlier", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cnp-train-outlier/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_chord_cfilter", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/chord-cfilter/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_healthcare_all_paths", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/healthcare-all-paths/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_hc_cost_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/hc-cost-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_my_model", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/my-model/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_nb_predict_accuracy", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/nb-predict-accuracy/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tfidf_fistful2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tfidf-fistful2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_kidney_train_outliers", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/kidney-train-outliers/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_fruit_model23", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/fruit-model23/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_iris_knw2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/iris-knw2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_housing_test_updated", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/housing-test-updated/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_MYB_sales_detail1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/MYB-sales-detail1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tfidf_space", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tfidf-space/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_movie_jsoned", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/movie-jsoned/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bank_churn_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bank-churn-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tfidf_movie2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tfidf-movie2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tfidf_diehard2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tfidf-diehard2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_jobs", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/jobs/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sentiment", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sentiment/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_checking_trans", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/checking-trans/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_click_events", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/click-events/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bustout_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bustout-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_vertex_lcc", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/vertex-lcc/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cpu_perf_clean", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cpu-perf-clean/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_housing_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/housing-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_calls", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/calls/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_ville_pressuredata", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/ville-pressuredata/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_quizme", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/quizme/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_json_parser_data_3", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/json-parser-data-3/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cpu_perf_scaled", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cpu-perf-scaled/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sophomores", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sophomores/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_scale_housing", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/scale-housing/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_zoo", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/zoo/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_MYB_customer_users", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/MYB-customer-users/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bankweb_parse_events", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bankweb-parse-events/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_iris_train1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/iris-train1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_zoo3", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/zoo3/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_Model_Myb", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/Model-Myb/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cfilter_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cfilter-output/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_trade", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/trade/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_basket02", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/basket02/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_iris_test1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/iris-test1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cnp_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cnp-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_income_knw", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/income-knw/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sentiment1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sentiment1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_myb_officeproducts", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/myb-officeproducts/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_junk1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/junk1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cc_trans", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cc-trans/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_nb_iris_input_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/nb-iris-input-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tf_movie", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tf-movie/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_gtree_vertices", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/gtree-vertices/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_attrib1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/attrib1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_matchup", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/matchup/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_jobs4", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/jobs4/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_housing_train_binary", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/housing-train-binary/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_nb_accuracy_table_scaled", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/nb-accuracy-table-scaled/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_skin_disease_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/skin-disease-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_loan_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/loan-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tweets_old", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tweets-old/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bank_churn_outliers", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bank-churn-outliers/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_chips_npathP", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/chips-npathP/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_borre_e", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/borre-e/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_vertex_cls", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/vertex-cls/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_edges_lcc", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/edges-lcc/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_housing_train_updated", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/housing-train-updated/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_BME_VD", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/BME-VD/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_DSE_WEB_COMMENT_text_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/DSE-WEB-COMMENT-text-output/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_myb_model1_table_1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/myb-model1-table-1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_basket06", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/basket06/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_mortgage_join", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/mortgage-join/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cars1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cars1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_healthcare_all_paths_tfidf", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/healthcare-all-paths-tfidf/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_fire_callsX", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/fire-callsX/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_words2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/words2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_words0", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/words0/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_weblog_news", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/weblog-news/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_ironman", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/ironman/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tfidf_space2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tfidf-space2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_healthcare_all_paths_tfidf_input", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/healthcare-all-paths-tfidf-input/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_web_purchases", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/web-purchases/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_emails", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/emails/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_CFILTER_OUT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/CFILTER-OUT/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tweets", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tweets/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_titanic_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/titanic-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_emoji_tag_table", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/emoji-tag-table/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_zoo_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/zoo-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sensor_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sensor-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_billpay_parse2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/billpay-parse2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_myb_cfilter", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/myb-cfilter/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bank_web_clicks", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bank-web-clicks/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_DSE_RETAIL_EVENTS_TEST", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/DSE-RETAIL-EVENTS-TEST/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_myb_cfilter_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/myb-cfilter-output/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_fire_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/fire-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bank_web", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bank-web/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_Customer_VD", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/Customer-VD/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_hc_train_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/hc-train-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_Mobile_Money_Txns", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/Mobile-Money-Txns/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bank_web_mortgage", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bank-web-mortgage/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_ML_review2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/ML-review2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_custom_stop", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/custom-stop/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_employee", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/employee/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cpu_perf", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cpu-perf/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_housing_train_int", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/housing-train-int/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_words1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/words1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_mdl_tbl", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/mdl-tbl/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_skin_disease_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/skin-disease-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_computers_train1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/computers-train1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_dept", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/dept/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_emp", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/emp/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_myb_conversion", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/myb-conversion/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bank_acct_closure", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bank-acct-closure/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tagrules", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tagrules/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bustout_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bustout-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_clicks", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/clicks/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_search_weblog", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/search-weblog/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_fire_calls", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/fire-calls/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_county_pm25", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/county-pm25/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sentiment_extract_input", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sentiment-extract-input/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_reviews", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/reviews/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_chips_ipgeoP", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/chips-ipgeoP/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_fire_incidents", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/fire-incidents/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tfidf_movie", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tfidf-movie/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_hc_tf_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/hc-tf-output/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cpu_of_scale_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cpu-of-scale-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_top10_DieHard", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/top10-DieHard/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_fruit_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/fruit-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_iris_knw3", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/iris-knw3/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_iris1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/iris1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_model1_predict", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/model1-predict/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_hc_tfidf_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/hc-tfidf-output/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_trans11", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/trans11/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_computers_train1_clustered", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/computers-train1-clustered/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tf_output1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tf-output1/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_chips_weblog", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/chips-weblog/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_fairytale", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/fairytale/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sensor_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sensor-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_moisturizer_reviews", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/moisturizer-reviews/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_sales_fact", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/sales-fact/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_borre_xx", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/borre-xx/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tag_table", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tag-table/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_nb_accuracy_table", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/nb-accuracy-table/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_fruit_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/fruit-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_iris_unk2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/iris-unk2/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_conv_tbl", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/conv-tbl/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_store_dim", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/store-dim/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_bank_churn_validate", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/bank-churn-validate/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_DSE_RETAIL_EVENTS_TRAIN", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/DSE-RETAIL-EVENTS-TRAIN/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_regr_predict", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/regr-predict/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_outlier_output_multiple", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/outlier-output-multiple/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_session_attrib", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/session-attrib/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_attrib7", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/attrib7/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_MYB_TV_Shows", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/MYB-TV-Shows/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_vertices_btw", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/vertices-btw/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cf_redbull_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cf-redbull-output/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_zoo_train", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/zoo-train/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_loan_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/loan-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_edges_btw", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/edges-btw/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_hc_tfidf_input", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/hc-tfidf-input/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cnp_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cnp-test/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_pulsar_data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/pulsar-data/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_housing_test_int", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/housing-test-int/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_multi_clicks", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/multi-clicks/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_outlier_records_mulitple", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/outlier-records-mulitple/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_cereal", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/cereal/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_tv_shows", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/tv-shows/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_basket05", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/basket05/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_healthcare_all_paths_tf", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/healthcare-all-paths-tf/'));
create foreign table gs_tables_db."TRNG_TDU_TD01_knee_replacement_events", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDU-TD01/knee-replacement-events/'));
replace view TRNG_TDU_TD01.Accounts as locking row for access select
"acct_nbr"
,"cust_id"
,"acct_type"
,"account_active"
,"acct_start_date"
,"starting_balance"
,"ending_balance"
from gs_tables_db.TRNG_TDU_TD01_Accounts;
replace view TRNG_TDU_TD01.Accounts_VD as locking row for access select
"acct_nbr"
,"cust_id"
,"acct_type"
,"account_active"
,"acct_start_date"
,"starting_balance"
,"ending_balance"
from gs_tables_db.TRNG_TDU_TD01_Accounts_VD;
replace view TRNG_TDU_TD01.admissions_test as locking row for access select
"id"
,"masters"
,"gpa"
,"stats"
,"programming"
,"admitted"
from gs_tables_db.TRNG_TDU_TD01_admissions_test;
replace view TRNG_TDU_TD01.admissions_train as locking row for access select
"id"
,"masters"
,"gpa"
,"stats"
,"programming"
,"admitted"
from gs_tables_db.TRNG_TDU_TD01_admissions_train;
replace view TRNG_TDU_TD01.airlines as locking row for access select
"yr"
,"mnth"
,"dayofmonth"
,"dayofweek"
,"deptime"
,"crsdeptime"
,"arrtime"
,"crsarrtime"
,"uniquecarrier"
,"flightnum"
,"tailnum"
,"actualelapsedtime"
,"crselapsedtime"
,"airtime"
,"arrdelay"
,"depdelay"
,"origin"
,"dest"
,"distance"
,"taxiin"
,"taxiout"
,"cancelled"
,"cancellationcode"
,"diverted"
,"carrierdelay"
,"weatherdelay"
,"nasdelay"
,"securitydelay"
,"lateaircraftdelay"
,"description"
,"airport"
,"latitude"
,"longitude"
,"mfg"
,"model"
,"aircraft_type"
,"engine_type"
,"yearbuilt"
from gs_tables_db.TRNG_TDU_TD01_airlines;
replace view TRNG_TDU_TD01.attrib1 as locking row for access select
"id"
,"event"
,"ts"
from gs_tables_db.TRNG_TDU_TD01_attrib1;
replace view TRNG_TDU_TD01.attrib3 as locking row for access select
"id"
,"event"
,"ts"
from gs_tables_db.TRNG_TDU_TD01_attrib3;
replace view TRNG_TDU_TD01.attrib7 as locking row for access select
"id"
,"event"
,"ts"
from gs_tables_db.TRNG_TDU_TD01_attrib7;
replace view TRNG_TDU_TD01.attrib9 as locking row for access select
"id"
,"event"
,"ts"
from gs_tables_db.TRNG_TDU_TD01_attrib9;
replace view TRNG_TDU_TD01.bankweb_parse_events as locking row for access select
"entity_id"
,"request_time"
,"event"
from gs_tables_db.TRNG_TDU_TD01_bankweb_parse_events;
replace view TRNG_TDU_TD01.bank_acct_closure as locking row for access select
"customer_id"
,"page"
,"datestamp"
from gs_tables_db.TRNG_TDU_TD01_bank_acct_closure;
replace view TRNG_TDU_TD01.bank_churn as locking row for access select
"rownumber"
,"customerid"
,"surname"
,"creditscore"
,"geography"
,"gender"
,"age"
,"tenure"
,"balance"
,"numofproducts"
,"hascrcard"
,"isactivemember"
,"estimatedsalary"
,"exited"
,"x_group"
,"exited_2"
from gs_tables_db.TRNG_TDU_TD01_bank_churn;
replace view TRNG_TDU_TD01.bank_churn_outliers as locking row for access select
"rownumber"
,"customerid"
,"surname"
,"creditscore"
,"geography"
,"gender"
,"age"
,"tenure"
,"balance"
,"numofproducts"
,"hascrcard"
,"isactivemember"
,"estimatedsalary"
,"exited"
,"x_group"
,"exited_2"
from gs_tables_db.TRNG_TDU_TD01_bank_churn_outliers;
replace view TRNG_TDU_TD01.bank_churn_outliers_removed as locking row for access select
"rownumber"
,"customerid"
,"surname"
,"creditscore"
,"geography"
,"gender"
,"age"
,"tenure"
,"balance"
,"numofproducts"
,"hascrcard"
,"isactivemember"
,"estimatedsalary"
,"exited"
,"x_group"
,"exited_2"
from gs_tables_db.TRNG_TDU_TD01_bank_churn_outliers_removed;
replace view TRNG_TDU_TD01.bank_churn_scaled as locking row for access select
"rownumber"
,"customerid"
,"surname"
,"geography"
,"gender"
,"hascrcard"
,"isactivemember"
,"exited"
,"x_group"
,"exited_2"
,"creditscore"
,"age"
,"tenure"
,"balance"
,"numofproducts"
,"estimatedsalary"
from gs_tables_db.TRNG_TDU_TD01_bank_churn_scaled;
replace view TRNG_TDU_TD01.bank_churn_train as locking row for access select
"rownumber"
,"customerid"
,"surname"
,"creditscore"
,"geography"
,"gender"
,"age"
,"tenure"
,"balance"
,"numofproducts"
,"hascrcard"
,"isactivemember"
,"estimatedsalary"
,"exited"
,"x_group"
,"exited_2"
from gs_tables_db.TRNG_TDU_TD01_bank_churn_train;
replace view TRNG_TDU_TD01.bank_churn_validate as locking row for access select
"rownumber"
,"customerid"
,"surname"
,"creditscore"
,"geography"
,"gender"
,"age"
,"tenure"
,"balance"
,"numofproducts"
,"hascrcard"
,"isactivemember"
,"estimatedsalary"
,"exited"
,"x_group"
,"exited_2"
from gs_tables_db.TRNG_TDU_TD01_bank_churn_validate;
replace view TRNG_TDU_TD01.bank_clicks as locking row for access select
"customer_id"
,"page"
,"datestamp"
from gs_tables_db.TRNG_TDU_TD01_bank_clicks;
replace view TRNG_TDU_TD01.bank_cluster as locking row for access select
"age"
,"job"
,"marital"
,"education"
,"default"
,"balance"
,"housing"
,"loan"
,"contact"
,"day"
,"month"
,"duration"
,"campaign"
,"pdays"
,"previous"
,"poutcome"
,"y"
from gs_tables_db.TRNG_TDU_TD01_bank_cluster;
replace view TRNG_TDU_TD01.bank_events as locking row for access select
"entity_id"
,"datestamp"
,"event"
,"sessionid"
from gs_tables_db.TRNG_TDU_TD01_bank_events;
replace view TRNG_TDU_TD01.bank_web as locking row for access select
"customer_id"
,"page"
,"datestamp"
from gs_tables_db.TRNG_TDU_TD01_bank_web;
replace view TRNG_TDU_TD01.bank_weblog as locking row for access select
"logline"
from gs_tables_db.TRNG_TDU_TD01_bank_weblog;
replace view TRNG_TDU_TD01.bank_web_clicks as locking row for access select
"customer_id"
,"session_id"
,"page"
,"datestamp"
from gs_tables_db.TRNG_TDU_TD01_bank_web_clicks;
replace view TRNG_TDU_TD01.bank_web_mortgage as locking row for access select
"logline"
from gs_tables_db.TRNG_TDU_TD01_bank_web_mortgage;
replace view TRNG_TDU_TD01.basket01 as locking row for access select
"hh_id"
,"trans_id"
,"prod"
from gs_tables_db.TRNG_TDU_TD01_basket01;
replace view TRNG_TDU_TD01.basket02 as locking row for access select
"hh_id"
,"trans_id"
,"prod"
from gs_tables_db.TRNG_TDU_TD01_basket02;
replace view TRNG_TDU_TD01.basket03 as locking row for access select
"hh_id"
,"trans_id"
,"prod"
from gs_tables_db.TRNG_TDU_TD01_basket03;
replace view TRNG_TDU_TD01.basket04 as locking row for access select
"hh_id"
,"trans_id"
,"prod"
from gs_tables_db.TRNG_TDU_TD01_basket04;
replace view TRNG_TDU_TD01.basket05 as locking row for access select
"hh_id"
,"trans_id"
,"prod"
from gs_tables_db.TRNG_TDU_TD01_basket05;
replace view TRNG_TDU_TD01.basket06 as locking row for access select
"hh_id"
,"trans_id"
,"prod"
from gs_tables_db.TRNG_TDU_TD01_basket06;
replace view TRNG_TDU_TD01.bb_borre_cfilter_output as locking row for access select
"col1_item1"
,"col1_item2"
,"cntb"
,"cnt1"
,"cnt2"
,"score"
,"support"
,"confidence"
,"lift"
,"z_score"
from gs_tables_db.TRNG_TDU_TD01_bb_borre_cfilter_output;
replace view TRNG_TDU_TD01.billpay_parse2 as locking row for access select
"remote_host"
,"remote_log_name"
,"remote_user"
,"request_time"
,"requested_page"
,"final_status"
,"bytes_sent_clf"
,"referrer"
,"request:User-agent"
from gs_tables_db.TRNG_TDU_TD01_billpay_parse2;
replace view TRNG_TDU_TD01.bin_breaks as locking row for access select
"break"
from gs_tables_db.TRNG_TDU_TD01_bin_breaks;
replace view TRNG_TDU_TD01.BME_VD as locking row for access select
"customer_id"
,"page"
,"datestamp"
,"SESSIONID"
,"attribution"
,"time_to_conversion"
from gs_tables_db.TRNG_TDU_TD01_BME_VD;
replace view TRNG_TDU_TD01.borre_e as locking row for access select
"customer_id"
,"session_id"
,"page"
,"datestamp"
from gs_tables_db.TRNG_TDU_TD01_borre_e;
replace view TRNG_TDU_TD01.borre_food as locking row for access select
"user_name"
,"event_id"
,"product"
from gs_tables_db.TRNG_TDU_TD01_borre_food;
replace view TRNG_TDU_TD01.borre_xx as locking row for access select
"user_id"
,"event"
,"ts"
from gs_tables_db.TRNG_TDU_TD01_borre_xx;
replace view TRNG_TDU_TD01.borre_y as locking row for access select
"user_id"
,"event"
,"ts"
from gs_tables_db.TRNG_TDU_TD01_borre_y;
replace view TRNG_TDU_TD01.borre_z as locking row for access select
"user_id"
,"event"
,"ts"
from gs_tables_db.TRNG_TDU_TD01_borre_z;
replace view TRNG_TDU_TD01.bustout_test as locking row for access select
"set_id"
,"acct_no"
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
,"bustout"
,"bustout2"
from gs_tables_db.TRNG_TDU_TD01_bustout_test;
replace view TRNG_TDU_TD01.bustout_train as locking row for access select
"set_id"
,"acct_no"
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
,"bustout"
,"bustout2"
from gs_tables_db.TRNG_TDU_TD01_bustout_train;
replace view TRNG_TDU_TD01.bust_out_int as locking row for access select
"acct_no"
,"as_of_dt_day"
,"avg_pmt_05_mth"
,"max_utilization_05_mth"
,"maxamt_epmt_v7day"
,"times_nsf"
,"credit_util_cur_mth"
,"credit_util_prior_5_mth"
,"credit_util_cur_to_prior_ratio"
,"days_since_lst_pymnt"
,"num_pymnt_lst_7_days"
,"num_pymnt_lst_60_days"
,"num_pur_lst_7_days"
,"num_pur_lst_60_days"
,"tot_pymnt_chnl"
,"pay_by_phone"
,"elec_pymnt"
,"pay_in_bank"
,"pay_by_check"
,"pay_by_othr"
,"last_12m_trans_ct"
,"bustout"
,"bustout1"
from gs_tables_db.TRNG_TDU_TD01_bust_out_int;
replace view TRNG_TDU_TD01.callers as locking row for access select
"callerid"
,"callername"
from gs_tables_db.TRNG_TDU_TD01_callers;
replace view TRNG_TDU_TD01.calls as locking row for access select
"callerfrom"
,"callerto"
,"calls"
from gs_tables_db.TRNG_TDU_TD01_calls;
replace view TRNG_TDU_TD01.cars1 as locking row for access select
"sn"
,"model"
,"mpg"
,"cyl"
,"disp"
,"hp"
,"drat"
,"wt"
,"qsec"
,"vs"
,"am"
,"gear"
,"carb"
from gs_tables_db.TRNG_TDU_TD01_cars1;
replace view TRNG_TDU_TD01.cars_hist as locking row for access select
"id"
,"name"
,"cyl"
,"hp"
from gs_tables_db.TRNG_TDU_TD01_cars_hist;
replace view TRNG_TDU_TD01.cc_trans as locking row for access select
"customer"
,"ts"
,"event"
,"amount"
from gs_tables_db.TRNG_TDU_TD01_cc_trans;
replace view TRNG_TDU_TD01.cereal as locking row for access select
"name"
,"calorie"
,"protein"
,"fat"
,"sodium"
,"fiber"
,"carbo"
,"sugar"
,"potass"
,"vitamin"
from gs_tables_db.TRNG_TDU_TD01_cereal;
replace view TRNG_TDU_TD01.cfilter as locking row for access select
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
from gs_tables_db.TRNG_TDU_TD01_cfilter;
replace view TRNG_TDU_TD01.CFILTER_OUT as locking row for access select
"channel_type"
,"col1_item1"
,"col1_item2"
,"cntb"
,"cnt1"
,"cnt2"
,"score"
,"support"
,"confidence"
,"lift"
,"z_score"
from gs_tables_db.TRNG_TDU_TD01_CFILTER_OUT;
replace view TRNG_TDU_TD01.cfilter_output as locking row for access select
"col1_item1"
,"col1_item2"
,"cntb"
,"cnt1"
,"cnt2"
,"score"
,"support"
,"confidence"
,"lift"
,"z_score"
from gs_tables_db.TRNG_TDU_TD01_cfilter_output;
replace view TRNG_TDU_TD01.cfilter_test as locking row for access select
"tranid"
,"dt"
,"storeid"
,"region"
,"item"
,"sku"
,"category"
from gs_tables_db.TRNG_TDU_TD01_cfilter_test;
replace view TRNG_TDU_TD01.cf_redbull_output as locking row for access select
"col1_item1"
,"col1_item2"
,"cntb"
,"cnt1"
,"cnt2"
,"score"
,"support"
,"confidence"
,"lift"
,"z_score"
from gs_tables_db.TRNG_TDU_TD01_cf_redbull_output;
replace view TRNG_TDU_TD01.checking_trans as locking row for access select
"customer"
,"eventtimestamp"
,"amount"
from gs_tables_db.TRNG_TDU_TD01_checking_trans;
replace view TRNG_TDU_TD01.chips_clean as locking row for access select
"remote_host"
,"remote_log_name"
,"remote_user"
,"request_time"
,"requested_page"
,"final_status"
,"bytes_sent_clf"
,"referrer"
,"request:User-agent"
from gs_tables_db.TRNG_TDU_TD01_chips_clean;
replace view TRNG_TDU_TD01.chips_ipgeo as locking row for access select
"remote_host"
,"country_code"
,"country_name"
,"state"
,"city"
,"postal_code"
,"latitude"
,"longitude"
,"isp"
,"organization"
,"organization_type"
,"area_code"
,"metro_code"
,"dma_code"
from gs_tables_db.TRNG_TDU_TD01_chips_ipgeo;
replace view TRNG_TDU_TD01.chips_ipgeoP as locking row for access select
"latitude"
,"longitude"
from gs_tables_db.TRNG_TDU_TD01_chips_ipgeoP;
replace view TRNG_TDU_TD01.chips_NPATH as locking row for access select
"remote_host"
from gs_tables_db.TRNG_TDU_TD01_chips_NPATH;
replace view TRNG_TDU_TD01.chips_npathP as locking row for access select
"remote_host"
from gs_tables_db.TRNG_TDU_TD01_chips_npathP;
replace view TRNG_TDU_TD01.chips_parse as locking row for access select
"remote_host"
,"remote_log_name"
,"remote_user"
,"request_time"
,"requested_page"
,"final_status"
,"bytes_sent_clf"
,"referrer"
,"request:User-agent"
from gs_tables_db.TRNG_TDU_TD01_chips_parse;
replace view TRNG_TDU_TD01.chips_session as locking row for access select
"remote_host"
,"remote_log_name"
,"remote_user"
,"request_time"
,"requested_page"
,"final_status"
,"bytes_sent_clf"
,"referrer"
,"request:User-agent"
,"SESSIONID"
from gs_tables_db.TRNG_TDU_TD01_chips_session;
replace view TRNG_TDU_TD01.chips_weblog as locking row for access select
"logline"
from gs_tables_db.TRNG_TDU_TD01_chips_weblog;
replace view TRNG_TDU_TD01.chord_cfilter as locking row for access select
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
from gs_tables_db.TRNG_TDU_TD01_chord_cfilter;
replace view TRNG_TDU_TD01.clicks as locking row for access select
"user_id"
,"session_id"
,"product_id"
,"page"
,"search_keyword"
,"datestamp"
,"gender"
from gs_tables_db.TRNG_TDU_TD01_clicks;
replace view TRNG_TDU_TD01.clickstream as locking row for access select
"userid"
,"sessionid"
,"clickts"
,"page"
from gs_tables_db.TRNG_TDU_TD01_clickstream;
replace view TRNG_TDU_TD01.click_events as locking row for access select
"product"
,"freq"
from gs_tables_db.TRNG_TDU_TD01_click_events;
replace view TRNG_TDU_TD01.cnp_test as locking row for access select
"id"
,"countrycode"
,"merchantid"
,"amount"
,"issuerid"
,"mcc"
,"mtid"
,"cc_number"
,"respcode"
,"seculevel"
,"avs_flg"
,"trxdatetime"
,"fraud"
from gs_tables_db.TRNG_TDU_TD01_cnp_test;
replace view TRNG_TDU_TD01.cnp_train as locking row for access select
"id"
,"countrycode"
,"merchantid"
,"amount"
,"issuerid"
,"mcc"
,"mtid"
,"cc_number"
,"respcode"
,"seculevel"
,"avs_flg"
,"trxdatetime"
,"fraud"
from gs_tables_db.TRNG_TDU_TD01_cnp_train;
replace view TRNG_TDU_TD01.cnp_train_outlier as locking row for access select
"id"
,"countrycode"
,"merchantid"
,"amount"
,"issuerid"
,"mcc"
,"mtid"
,"cc_number"
,"respcode"
,"seculevel"
,"avs_flg"
,"trxdatetime"
,"fraud"
from gs_tables_db.TRNG_TDU_TD01_cnp_train_outlier;
replace view TRNG_TDU_TD01.common_classes as locking row for access select
"startid"
,"endid"
,"electives"
from gs_tables_db.TRNG_TDU_TD01_common_classes;
replace view TRNG_TDU_TD01.computers_test1 as locking row for access select
"id"
,"price"
,"speed"
,"hd"
,"ram"
,"screen"
from gs_tables_db.TRNG_TDU_TD01_computers_test1;
replace view TRNG_TDU_TD01.computers_train1 as locking row for access select
"id"
,"price"
,"speed"
,"hd"
,"ram"
,"screen"
from gs_tables_db.TRNG_TDU_TD01_computers_train1;
replace view TRNG_TDU_TD01.computers_train1_clustered as locking row for access select
"id"
,"price"
,"speed"
,"hd"
,"ram"
,"screen"
,"computer_category"
from gs_tables_db.TRNG_TDU_TD01_computers_train1_clustered;
replace view TRNG_TDU_TD01.conversion as locking row for access select
"c1"
,"c2"
from gs_tables_db.TRNG_TDU_TD01_conversion;
replace view TRNG_TDU_TD01.convert_table as locking row for access select
"conversion_events"
from gs_tables_db.TRNG_TDU_TD01_convert_table;
replace view TRNG_TDU_TD01.conv_table as locking row for access select
"conversion_events"
from gs_tables_db.TRNG_TDU_TD01_conv_table;
replace view TRNG_TDU_TD01.conv_tbl as locking row for access select
"conversion_events"
from gs_tables_db.TRNG_TDU_TD01_conv_tbl;
replace view TRNG_TDU_TD01.country as locking row for access select
"countryid"
,"name"
from gs_tables_db.TRNG_TDU_TD01_country;
replace view TRNG_TDU_TD01.county_demogr as locking row for access select
"fips"
,"yr"
,"poverty"
,"popdensity"
,"medhhvalue"
,"pct_blk"
,"medhhincome"
,"pct_owner_occ"
,"hispanic"
,"education"
,"population"
,"pct_asian"
,"pct_native"
,"pct_white"
from gs_tables_db.TRNG_TDU_TD01_county_demogr;
replace view TRNG_TDU_TD01.county_pm25 as locking row for access select
"fips"
,"yr"
,"pm25"
from gs_tables_db.TRNG_TDU_TD01_county_pm25;
replace view TRNG_TDU_TD01.county_smoke as locking row for access select
"fips"
,"smoke_rate"
,"mean_bmi"
,"yr"
from gs_tables_db.TRNG_TDU_TD01_county_smoke;
replace view TRNG_TDU_TD01.cpu_of_scale_test as locking row for access select
"id"
,"vendorname"
,"modelname"
,"perfpublished"
,"perfestimated"
,"cycletime"
,"memorymin"
,"memorymax"
,"cache"
,"minchannels"
,"maxchannels"
from gs_tables_db.TRNG_TDU_TD01_cpu_of_scale_test;
replace view TRNG_TDU_TD01.cpu_of_scale_train as locking row for access select
"id"
,"vendorname"
,"modelname"
,"perfpublished"
,"perfestimated"
,"cycletime"
,"memorymin"
,"memorymax"
,"cache"
,"minchannels"
,"maxchannels"
from gs_tables_db.TRNG_TDU_TD01_cpu_of_scale_train;
replace view TRNG_TDU_TD01.cpu_perf as locking row for access select
"id"
,"vendorname"
,"modelname"
,"cycletime"
,"memorymin"
,"memorymax"
,"cache"
,"minchannels"
,"maxchannels"
,"perfpublished"
,"perfestimated"
from gs_tables_db.TRNG_TDU_TD01_cpu_perf;
replace view TRNG_TDU_TD01.cpu_perf_clean as locking row for access select
"id"
,"vendorname"
,"modelname"
,"cycletime"
,"memorymin"
,"memorymax"
,"cache"
,"minchannels"
,"maxchannels"
,"perfpublished"
,"perfestimated"
from gs_tables_db.TRNG_TDU_TD01_cpu_perf_clean;
replace view TRNG_TDU_TD01.cpu_perf_scaled as locking row for access select
"id"
,"vendorname"
,"modelname"
,"perfpublished"
,"perfestimated"
,"cycletime"
,"memorymin"
,"memorymax"
,"cache"
,"minchannels"
,"maxchannels"
from gs_tables_db.TRNG_TDU_TD01_cpu_perf_scaled;
replace view TRNG_TDU_TD01.CUSTOMER1 as locking row for access select
"cust_id"
,"income"
,"age"
,"years_with_bank"
,"nbr_children"
,"gender"
,"marital_status"
,"postal_code"
,"state_code"
from gs_tables_db.TRNG_TDU_TD01_CUSTOMER1;
replace view TRNG_TDU_TD01.customer_dim as locking row for access select
"customer_id"
,"last_name"
,"first_name"
,"middle_initial"
,"gender"
,"born_days_ago"
,"city_id"
,"frequent_buyer_level"
from gs_tables_db.TRNG_TDU_TD01_customer_dim;
replace view TRNG_TDU_TD01.Customer_VD as locking row for access select
"cust_id"
,"income"
,"age"
,"years_with_bank"
,"nbr_children"
,"gender"
,"marital_status"
,"postal_code"
,"state_code"
from gs_tables_db.TRNG_TDU_TD01_Customer_VD;
replace view TRNG_TDU_TD01.custom_stop as locking row for access select
"c1"
from gs_tables_db.TRNG_TDU_TD01_custom_stop;
replace view TRNG_TDU_TD01.department as locking row for access select
"c1"
from gs_tables_db.TRNG_TDU_TD01_department;
replace view TRNG_TDU_TD01.dept as locking row for access select
"c1"
from gs_tables_db.TRNG_TDU_TD01_dept;
replace view TRNG_TDU_TD01.df_cnp_predict as locking row for access select
"fraud"
,"id"
,"prediction"
,"confidence_lower"
,"confidence_upper"
from gs_tables_db.TRNG_TDU_TD01_df_cnp_predict;
replace view TRNG_TDU_TD01.diary as locking row for access select
"id"
,"text_col"
from gs_tables_db.TRNG_TDU_TD01_diary;
replace view TRNG_TDU_TD01.die_hard_cosine as locking row for access select
"target_docid"
,"ref_docid"
,"type"
,"distance"
from gs_tables_db.TRNG_TDU_TD01_die_hard_cosine;
replace view TRNG_TDU_TD01.die_hard_euclidean as locking row for access select
"target_docid"
,"ref_docid"
,"type"
,"distance"
from gs_tables_db.TRNG_TDU_TD01_die_hard_euclidean;
replace view TRNG_TDU_TD01.DSE_RETAIL_EVENTS as locking row for access select
"ENTITY_ID"
,"DATESTAMP"
,"EVENT"
from gs_tables_db.TRNG_TDU_TD01_DSE_RETAIL_EVENTS;
replace view TRNG_TDU_TD01.DSE_RETAIL_EVENTS_TEST as locking row for access select
"customer_id"
,"product_return"
,"store_visit"
,"online_fb"
,"web_chat"
,"product_browsing"
,"neutral_call"
,"return_policy_inquiry"
,"purchase"
,"service_inquiry"
,"complaint_call"
,"event_cnt"
,"gender"
,"income"
,"age"
,"churn_int"
from gs_tables_db.TRNG_TDU_TD01_DSE_RETAIL_EVENTS_TEST;
replace view TRNG_TDU_TD01.DSE_RETAIL_EVENTS_TRAIN as locking row for access select
"customer_id"
,"product_return"
,"store_visit"
,"online_fb"
,"web_chat"
,"product_browsing"
,"neutral_call"
,"return_policy_inquiry"
,"purchase"
,"service_inquiry"
,"complaint_call"
,"event_cnt"
,"gender"
,"income"
,"age"
,"churn_int"
from gs_tables_db.TRNG_TDU_TD01_DSE_RETAIL_EVENTS_TRAIN;
replace view TRNG_TDU_TD01.DSE_WEB_COMMENT as locking row for access select
"comment_id"
,"customer_id"
,"comment_text"
,"comment_summary"
from gs_tables_db.TRNG_TDU_TD01_DSE_WEB_COMMENT;
replace view TRNG_TDU_TD01.DSE_WEB_COMMENT_text_output as locking row for access select
"customer_id"
,"out_polarity"
,"sentiment_words"
,"inTotal"
,"pos"
,"neg"
,"score"
from gs_tables_db.TRNG_TDU_TD01_DSE_WEB_COMMENT_text_output;
replace view TRNG_TDU_TD01.edges_btw as locking row for access select
"source"
,"target"
from gs_tables_db.TRNG_TDU_TD01_edges_btw;
replace view TRNG_TDU_TD01.edges_cls as locking row for access select
"callerfrom"
,"callerto"
,"calls"
from gs_tables_db.TRNG_TDU_TD01_edges_cls;
replace view TRNG_TDU_TD01.edges_enron as locking row for access select
"sender"
,"recipients"
,"freq"
from gs_tables_db.TRNG_TDU_TD01_edges_enron;
replace view TRNG_TDU_TD01.edges_lcc as locking row for access select
"fromid"
,"toid"
from gs_tables_db.TRNG_TDU_TD01_edges_lcc;
replace view TRNG_TDU_TD01.edgetable_air as locking row for access select
"origin"
,"dest"
,"distance"
from gs_tables_db.TRNG_TDU_TD01_edgetable_air;
replace view TRNG_TDU_TD01.emails as locking row for access select
"from"
,"to"
,"subject"
,"body"
from gs_tables_db.TRNG_TDU_TD01_emails;
replace view TRNG_TDU_TD01.emoji_tag_table as locking row for access select
"id"
,"tag"
,"tag_name"
,"search_term"
from gs_tables_db.TRNG_TDU_TD01_emoji_tag_table;
replace view TRNG_TDU_TD01.emp as locking row for access select
"emp"
,"mgr"
,"dept"
,"job"
,"lname"
,"fname"
,"hire"
,"birth"
,"sal"
from gs_tables_db.TRNG_TDU_TD01_emp;
replace view TRNG_TDU_TD01.employee as locking row for access select
"c1"
from gs_tables_db.TRNG_TDU_TD01_employee;
replace view TRNG_TDU_TD01.emps as locking row for access select
"emp"
,"mgr"
,"dept"
,"job"
,"lname"
,"fname"
,"hire"
,"birth"
,"sal"
from gs_tables_db.TRNG_TDU_TD01_emps;
replace view TRNG_TDU_TD01.fairytale as locking row for access select
"storynumber"
,"story"
from gs_tables_db.TRNG_TDU_TD01_fairytale;
replace view TRNG_TDU_TD01.fire_calls as locking row for access select
"CallNumber"
,"UnitID"
,"IncidentNumber"
,"CallType"
,"CallFinalDisposition"
,"Address"
,"City"
,"ZipcodeofIncident"
,"Battalion"
,"StationArea"
,"Box"
,"OriginalPriority"
,"Priority"
,"FinalPriority"
,"ALSUnit"
,"CallTypeGroup"
,"NumberofAlarms"
,"UnitType"
,"Unitsequenceincalldispatch"
,"FirePreventionDistrict"
,"SupervisorDistrict"
,"NeighborhoodDistrict"
,"Location"
,"ID"
,"CallDateTS"
,"WatchDateTS"
,"ReceivedDtTmTS"
,"EntryDtTmTS"
,"DispatchDtTmTS"
,"ResponseDtTmTS"
,"OnSceneDtTmTS"
,"TransportDtTmTS"
,"HospitalDtTmTS"
,"AvailableDtTmTS"
,"als"
,"dayofmonth"
,"months"
,"timecat"
,"hourofday"
,"dayofwk"
from gs_tables_db.TRNG_TDU_TD01_fire_calls;
replace view TRNG_TDU_TD01.fire_callsX as locking row for access select
"incidentnumber"
,"calltype"
,"zipcodeofincident"
,"originalpriority"
,"alsunit"
,"calltypegroup"
,"unittype"
,"neighborhooddistrict"
,"receiveddttmts"
from gs_tables_db.TRNG_TDU_TD01_fire_callsX;
replace view TRNG_TDU_TD01.fire_incidents as locking row for access select
"Incident_Number"
,"Exposure_Number"
,"Address"
,"Incident_Date"
,"Call_Number"
,"Alarm_DtTm"
,"Arrival_DtTm"
,"Close_DtTm"
,"City"
,"Zipcode"
,"Battalion"
,"Station_Area"
,"Box"
,"Suppression_Units"
,"Suppression_Personnel"
,"EMS_Units"
,"EMS_Personnel"
,"Other_Units"
,"Other_Personnel"
,"First_Unit_On_Scene"
,"Estimated_Property_Loss"
,"Estimated_Contents_Loss"
,"Fire_Fatalities"
,"Fire_Injuries"
,"Civilian_Fatalities"
,"Civilian_Injuries"
,"Number_of_Alarms"
,"Primary_Situation"
,"Mutual_Aid"
,"Action_Taken_Primary"
,"Action_Taken_Secondary"
,"Action_Taken_Other"
,"Detector_Alerted_Occupants"
,"Property_Use"
,"Area_of_Fire_Origin"
,"Ignition_Cause"
,"Ignition_Factor_Primary"
,"Ignition_Factor_Secondary"
,"Heat_Source"
,"Item_First_Ignited"
,"Human_Factors_Associated_with_Ignition"
,"Structure_Type"
,"Structure_Status"
,"Floor_of_Fire_Origin"
,"Fire_Spread"
,"No_Flame_Spead"
,"Number_of_floors_with_minimum_damage"
,"Number_of_floors_with_significant_damage"
,"Number_of_floors_with_heavy_damage"
,"Number_of_floors_with_extreme_damage"
,"Detectors_Present"
,"Detector_Type"
,"Detector_Operation"
,"Detector_Effectiveness"
,"Detector_Failure_Reason"
,"Automatic_Extinguishing_System_Present"
,"Automatic_Extinguishing_Sytem_Type"
,"Automatic_Extinguishing_Sytem_Perfomance"
,"Automatic_Extinguishing_Sytem_Failure_Reason"
,"Number_of_Sprinkler_Heads_Operating"
,"Supervisor_District"
,"Neighborhood_District"
,"Location"
from gs_tables_db.TRNG_TDU_TD01_fire_incidents;
replace view TRNG_TDU_TD01.fire_incidentsX as locking row for access select
"incidentnumber"
,"primarysituation"
from gs_tables_db.TRNG_TDU_TD01_fire_incidentsX;
replace view TRNG_TDU_TD01.fire_join2 as locking row for access select
"incidentnumber"
,"calltype"
,"zipcodeofincident"
,"originalpriority"
,"alsunit"
,"calltypegroup"
,"unittype"
,"neighborhooddistrict"
,"receiveddttmts"
,"primarysituation"
from gs_tables_db.TRNG_TDU_TD01_fire_join2;
replace view TRNG_TDU_TD01.fire_join2X as locking row for access select
"incidentnumber"
,"calltype"
,"zipcodeofincident"
,"originalpriority"
,"alsunit"
,"calltypegroup"
,"unittype"
,"neighborhooddistrict"
,"receiveddttmts"
,"primarysituation"
,"months"
,"dayofmonth"
,"hourofday"
,"timecat"
,"dayofwk"
,"true_false"
from gs_tables_db.TRNG_TDU_TD01_fire_join2X;
replace view TRNG_TDU_TD01.fire_test as locking row for access select
"set_id"
,"incidentnumber"
,"calltype"
,"zipcodeofincident"
,"originalpriority"
,"alsunit"
,"calltypegroup"
,"unittype"
,"neighborhooddistrict"
,"receiveddttmts"
,"primarysituation"
,"months"
,"dayofmonth"
,"hourofday"
,"timecat"
,"dayofwk"
,"true_false"
from gs_tables_db.TRNG_TDU_TD01_fire_test;
replace view TRNG_TDU_TD01.fire_train as locking row for access select
"set_id"
,"incidentnumber"
,"calltype"
,"zipcodeofincident"
,"originalpriority"
,"alsunit"
,"calltypegroup"
,"unittype"
,"neighborhooddistrict"
,"receiveddttmts"
,"primarysituation"
,"months"
,"dayofmonth"
,"hourofday"
,"timecat"
,"dayofwk"
,"true_false"
from gs_tables_db.TRNG_TDU_TD01_fire_train;
replace view TRNG_TDU_TD01.fruit_model23 as locking row for access select
"worker_ip"
,"task_index"
,"tree_num"
,"tree"
from gs_tables_db.TRNG_TDU_TD01_fruit_model23;
replace view TRNG_TDU_TD01.fruit_test as locking row for access select
"id"
,"fruit_name"
,"mass"
,"width"
,"height"
,"color_score"
from gs_tables_db.TRNG_TDU_TD01_fruit_test;
replace view TRNG_TDU_TD01.fruit_train as locking row for access select
"id"
,"fruit_label"
,"fruit_name"
,"fruit_subtype"
,"mass"
,"width"
,"height"
,"color_score"
from gs_tables_db.TRNG_TDU_TD01_fruit_train;
replace view TRNG_TDU_TD01.got_conv as locking row for access select
"conversion_events"
from gs_tables_db.TRNG_TDU_TD01_got_conv;
replace view TRNG_TDU_TD01.got_model as locking row for access select
"id"
,"model"
from gs_tables_db.TRNG_TDU_TD01_got_model;
replace view TRNG_TDU_TD01.gtree_edges as locking row for access select
"nodeid"
,"nodestring"
,"endnodeid"
,"endnodestring"
from gs_tables_db.TRNG_TDU_TD01_gtree_edges;
replace view TRNG_TDU_TD01.gtree_root as locking row for access select
"nodeid"
,"nodestring"
,"value1"
from gs_tables_db.TRNG_TDU_TD01_gtree_root;
replace view TRNG_TDU_TD01.gtree_vertices as locking row for access select
"nodeid"
,"nodestring"
,"value1"
from gs_tables_db.TRNG_TDU_TD01_gtree_vertices;
replace view TRNG_TDU_TD01.hc_cost as locking row for access select
"row_id"
,"age"
,"sex"
,"bmi"
,"children"
,"smoker"
,"region"
,"charges"
from gs_tables_db.TRNG_TDU_TD01_hc_cost;
replace view TRNG_TDU_TD01.hc_cost_test as locking row for access select
"set_id"
,"row_id"
,"age"
,"sex"
,"bmi"
,"children"
,"smoker"
,"region"
,"charges"
from gs_tables_db.TRNG_TDU_TD01_hc_cost_test;
replace view TRNG_TDU_TD01.hc_cost_train as locking row for access select
"set_id"
,"row_id"
,"age"
,"sex"
,"bmi"
,"children"
,"smoker"
,"region"
,"charges"
from gs_tables_db.TRNG_TDU_TD01_hc_cost_train;
replace view TRNG_TDU_TD01.hc_events_token as locking row for access select
"record_id"
,"ngram"
,"n"
,"frequency"
from gs_tables_db.TRNG_TDU_TD01_hc_events_token;
replace view TRNG_TDU_TD01.hc_tfidf_input as locking row for access select
"docid"
,"term"
,"count"
from gs_tables_db.TRNG_TDU_TD01_hc_tfidf_input;
replace view TRNG_TDU_TD01.hc_tfidf_output as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_TDU_TD01_hc_tfidf_output;
replace view TRNG_TDU_TD01.hc_tf_output as locking row for access select
"docid"
,"term"
,"tf"
,"count"
from gs_tables_db.TRNG_TDU_TD01_hc_tf_output;
replace view TRNG_TDU_TD01.hc_token_clean as locking row for access select
"record_id"
,"ngram"
,"n"
,"frequency"
from gs_tables_db.TRNG_TDU_TD01_hc_token_clean;
replace view TRNG_TDU_TD01.hc_train_test as locking row for access select
"set_id"
,"row_id"
,"age"
,"sex"
,"bmi"
,"children"
,"smoker"
,"region"
,"charges"
from gs_tables_db.TRNG_TDU_TD01_hc_train_test;
replace view TRNG_TDU_TD01.healthcare_all_paths as locking row for access select
"record_id"
,"paths"
from gs_tables_db.TRNG_TDU_TD01_healthcare_all_paths;
replace view TRNG_TDU_TD01.healthcare_all_paths_tf as locking row for access select
"docid"
,"term"
,"tf"
,"count"
from gs_tables_db.TRNG_TDU_TD01_healthcare_all_paths_tf;
replace view TRNG_TDU_TD01.healthcare_all_paths_tfidf as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_TDU_TD01_healthcare_all_paths_tfidf;
replace view TRNG_TDU_TD01.healthcare_all_paths_tfidf_input as locking row for access select
"docid"
,"term"
,"count"
from gs_tables_db.TRNG_TDU_TD01_healthcare_all_paths_tfidf_input;
replace view TRNG_TDU_TD01.healthcare_all_paths_token_clean as locking row for access select
"record_id"
,"ngram"
,"n"
,"frequency"
from gs_tables_db.TRNG_TDU_TD01_healthcare_all_paths_token_clean;
replace view TRNG_TDU_TD01.healthcare_surgery_events as locking row for access select
"RECORD_ID"
,"TYPE_OF_ADMISSION"
,"ADMITTING_DIAGNOSIS"
,"DIAGNOSIS"
,"CODENUM"
,"ICD9"
,"PROCEDURE"
,"DAYNUM"
,"RN"
from gs_tables_db.TRNG_TDU_TD01_healthcare_surgery_events;
replace view TRNG_TDU_TD01.healthcare_surgery_events_token as locking row for access select
"record_id"
,"ngram"
,"n"
,"frequency"
from gs_tables_db.TRNG_TDU_TD01_healthcare_surgery_events_token;
replace view TRNG_TDU_TD01.heart_disease as locking row for access select
"age"
,"anaemia"
,"creatinine_phosphokinase"
,"diabetes"
,"ejection_fraction"
,"high_blood_pressure"
,"platelets"
,"serum_creatinine"
,"serum_sodium"
,"sex"
,"smoking"
,"timely"
,"DEATH_EVENT"
from gs_tables_db.TRNG_TDU_TD01_heart_disease;
replace view TRNG_TDU_TD01.housing_test as locking row for access select
"sn"
,"price"
,"lotsize"
,"bedrooms"
,"bathrms"
,"stories"
,"driveway"
,"recroom"
,"fullbase"
,"gashw"
,"airco"
,"garagepl"
,"prefarea"
,"homestyle"
from gs_tables_db.TRNG_TDU_TD01_housing_test;
replace view TRNG_TDU_TD01.housing_test_binary as locking row for access select
"sn"
,"price"
,"lotsize"
,"bedrooms"
,"bathrms"
,"stories"
,"driveway"
,"recroom"
,"fullbase"
,"gashw"
,"airco"
,"garagepl"
,"prefarea"
,"homestyle"
from gs_tables_db.TRNG_TDU_TD01_housing_test_binary;
replace view TRNG_TDU_TD01.housing_test_int as locking row for access select
"sn"
,"price"
,"lotsize"
,"bedrooms"
,"bathrms"
,"stories"
,"driveway"
,"recroom"
,"fullbase"
,"gashw"
,"airco"
,"garagepl"
,"prefarea"
,"homestyle"
,"sell_date"
from gs_tables_db.TRNG_TDU_TD01_housing_test_int;
replace view TRNG_TDU_TD01.housing_test_updated as locking row for access select
"sn"
,"price"
,"lotsize"
,"bedrooms"
,"bathrms"
,"stories"
,"driveway"
,"recroom"
,"fullbase"
,"gashw"
,"airco"
,"garagepl"
,"prefarea"
,"homestyle"
,"sell_date"
from gs_tables_db.TRNG_TDU_TD01_housing_test_updated;
replace view TRNG_TDU_TD01.housing_train as locking row for access select
"sn"
,"price"
,"lotsize"
,"bedrooms"
,"bathrms"
,"stories"
,"driveway"
,"recroom"
,"fullbase"
,"gashw"
,"airco"
,"garagepl"
,"prefarea"
,"homestyle"
from gs_tables_db.TRNG_TDU_TD01_housing_train;
replace view TRNG_TDU_TD01.housing_train_binary as locking row for access select
"sn"
,"price"
,"lotsize"
,"bedrooms"
,"bathrms"
,"stories"
,"driveway"
,"recroom"
,"fullbase"
,"gashw"
,"airco"
,"garagepl"
,"prefarea"
,"homestyle"
from gs_tables_db.TRNG_TDU_TD01_housing_train_binary;
replace view TRNG_TDU_TD01.housing_train_int as locking row for access select
"sn"
,"price"
,"lotsize"
,"bedrooms"
,"bathrms"
,"stories"
,"driveway"
,"recroom"
,"fullbase"
,"gashw"
,"airco"
,"garagepl"
,"prefarea"
,"homestyle"
,"sell_date"
from gs_tables_db.TRNG_TDU_TD01_housing_train_int;
replace view TRNG_TDU_TD01.housing_train_updated as locking row for access select
"sn"
,"price"
,"lotsize"
,"bedrooms"
,"bathrms"
,"stories"
,"driveway"
,"recroom"
,"fullbase"
,"gashw"
,"airco"
,"garagepl"
,"prefarea"
,"homestyle"
,"sell_date"
from gs_tables_db.TRNG_TDU_TD01_housing_train_updated;
replace view TRNG_TDU_TD01.income_knw as locking row for access select
"age"
,"workclass"
,"fnlwgt"
,"educ"
,"educ_num"
,"marital"
,"occupation"
,"relationship"
,"race"
,"gender"
,"capgain"
,"caploss"
,"hoursperwk"
,"country"
,"incomeclass"
from gs_tables_db.TRNG_TDU_TD01_income_knw;
replace view TRNG_TDU_TD01.income_test as locking row for access select
"set_id"
,"id"
,"age"
,"workclass"
,"fnlwgt"
,"educ"
,"educ_num"
,"marital"
,"occupation"
,"relationship"
,"race"
,"gender"
,"capgain"
,"caploss"
,"hoursperwk"
,"country"
,"incomeclass"
,"response"
from gs_tables_db.TRNG_TDU_TD01_income_test;
replace view TRNG_TDU_TD01.income_train as locking row for access select
"set_id"
,"id"
,"age"
,"workclass"
,"fnlwgt"
,"educ"
,"educ_num"
,"marital"
,"occupation"
,"relationship"
,"race"
,"gender"
,"capgain"
,"caploss"
,"hoursperwk"
,"country"
,"incomeclass"
,"response"
from gs_tables_db.TRNG_TDU_TD01_income_train;
replace view TRNG_TDU_TD01.income_unk as locking row for access select
"id"
,"age"
,"workclass"
,"fnlwgt"
,"educ"
,"educ_num"
,"marital"
,"occupation"
,"relationship"
,"race"
,"gender"
,"capgain"
,"caploss"
,"hoursperwk"
,"country"
,"incomeclass"
from gs_tables_db.TRNG_TDU_TD01_income_unk;
replace view TRNG_TDU_TD01.input_tbl2 as locking row for access select
"rownum"
,"groupcol"
,"var_name"
,"val"
from gs_tables_db.TRNG_TDU_TD01_input_tbl2;
replace view TRNG_TDU_TD01.iris1 as locking row for access select
"id"
,"sepal_length"
,"sepal_width"
,"petal_length"
,"petal_width"
,"species"
from gs_tables_db.TRNG_TDU_TD01_iris1;
replace view TRNG_TDU_TD01.iris_input as locking row for access select
"id"
,"sepal_length"
,"sepal_width"
,"petal_length"
,"petal_width"
,"species"
from gs_tables_db.TRNG_TDU_TD01_iris_input;
replace view TRNG_TDU_TD01.iris_knw as locking row for access select
"id"
,"c1"
,"c2"
,"c3"
,"c4"
,"species"
,"class"
from gs_tables_db.TRNG_TDU_TD01_iris_knw;
replace view TRNG_TDU_TD01.iris_knw2 as locking row for access select
"id"
,"c1"
,"c2"
,"c3"
,"c4"
,"species"
,"class2"
from gs_tables_db.TRNG_TDU_TD01_iris_knw2;
replace view TRNG_TDU_TD01.iris_knw3 as locking row for access select
"id"
,"c1"
,"c2"
,"c3"
,"c4"
,"species"
,"class2"
from gs_tables_db.TRNG_TDU_TD01_iris_knw3;
replace view TRNG_TDU_TD01.iris_test1 as locking row for access select
"id"
,"sepal_length"
,"sepal_width"
,"petal_length"
,"petal_width"
,"species"
from gs_tables_db.TRNG_TDU_TD01_iris_test1;
replace view TRNG_TDU_TD01.iris_train1 as locking row for access select
"id"
,"sepal_length"
,"sepal_width"
,"petal_length"
,"petal_width"
,"species"
from gs_tables_db.TRNG_TDU_TD01_iris_train1;
replace view TRNG_TDU_TD01.iris_unk as locking row for access select
"id"
,"c1"
,"c2"
,"c3"
,"c4"
,"species"
,"class"
from gs_tables_db.TRNG_TDU_TD01_iris_unk;
replace view TRNG_TDU_TD01.iris_unk2 as locking row for access select
"id"
,"c1"
,"c2"
,"c3"
,"c4"
,"species"
,"class2"
from gs_tables_db.TRNG_TDU_TD01_iris_unk2;
replace view TRNG_TDU_TD01.iris_unk3 as locking row for access select
"id"
,"c1"
,"c2"
,"c3"
,"c4"
,"species"
,"class2"
from gs_tables_db.TRNG_TDU_TD01_iris_unk3;
replace view TRNG_TDU_TD01.ironman as locking row for access select
"c1"
from gs_tables_db.TRNG_TDU_TD01_ironman;
replace view TRNG_TDU_TD01.ironman_sentiment as locking row for access select
"path"
from gs_tables_db.TRNG_TDU_TD01_ironman_sentiment;
replace view TRNG_TDU_TD01.ironme as locking row for access select
"c1"
from gs_tables_db.TRNG_TDU_TD01_ironme;
replace view TRNG_TDU_TD01.job as locking row for access select
"c1"
from gs_tables_db.TRNG_TDU_TD01_job;
replace view TRNG_TDU_TD01.jobs as locking row for access select
"emp_id"
,"job_desc"
,"bgn_dt"
,"end_dt"
from gs_tables_db.TRNG_TDU_TD01_jobs;
replace view TRNG_TDU_TD01.jobs2 as locking row for access select
"emp"
,"job"
,"dt"
from gs_tables_db.TRNG_TDU_TD01_jobs2;
replace view TRNG_TDU_TD01.jobs3 as locking row for access select
"emp_id"
,"job_desc"
,"bgn_dt"
,"end_dt"
from gs_tables_db.TRNG_TDU_TD01_jobs3;
replace view TRNG_TDU_TD01.jobs4 as locking row for access select
"emp_id"
,"job_desc"
,"bgn_dt"
,"end_dt"
from gs_tables_db.TRNG_TDU_TD01_jobs4;
replace view TRNG_TDU_TD01.jobs_CS as locking row for access select
"emp"
,"job"
,"dt"
from gs_tables_db.TRNG_TDU_TD01_jobs_CS;
replace view TRNG_TDU_TD01.jobs_notCS as locking row for access select
"emp"
,"job"
,"dt"
from gs_tables_db.TRNG_TDU_TD01_jobs_notCS;
replace view TRNG_TDU_TD01.json_parser_data as locking row for access select
"id"
,"data"
from gs_tables_db.TRNG_TDU_TD01_json_parser_data;
replace view TRNG_TDU_TD01.json_parser_data_2 as locking row for access select
"id"
,"data"
from gs_tables_db.TRNG_TDU_TD01_json_parser_data_2;
replace view TRNG_TDU_TD01.json_parser_data_3 as locking row for access select
"id"
,"data"
from gs_tables_db.TRNG_TDU_TD01_json_parser_data_3;
replace view TRNG_TDU_TD01.junk1 as locking row for access select
"x_pattern"
from gs_tables_db.TRNG_TDU_TD01_junk1;
replace view TRNG_TDU_TD01.kidney_knw1 as locking row for access select
"id"
,"age"
,"blood_pressure"
,"specific_gravity"
,"albumin"
,"sugar"
,"red_blood_cells"
,"pus_cell"
,"pus_cell_clumps"
,"bacteria"
,"blood_glucose_random"
,"blood_urea"
,"serum_creatinine"
,"sodium"
,"potassium"
,"hemoglobin"
,"packed_cell_volume"
,"white_blood_cell_count"
,"red_blood_cell_count"
,"hypertension"
,"diabetes_mellitus"
,"coronary_artery_disease"
,"appetite"
,"pedal_edema"
,"anemia"
,"class"
,"class2"
from gs_tables_db.TRNG_TDU_TD01_kidney_knw1;
replace view TRNG_TDU_TD01.kidney_train_outliers as locking row for access select
"id"
,"age"
,"blood_pressure"
,"specific_gravity"
,"albumin"
,"sugar"
,"red_blood_cells"
,"pus_cell"
,"pus_cell_clumps"
,"bacteria"
,"blood_glucose_random"
,"blood_urea"
,"serum_creatinine"
,"sodium"
,"potassium"
,"hemoglobin"
,"packed_cell_volume"
,"white_blood_cell_count"
,"red_blood_cell_count"
,"hypertension"
,"diabetes_mellitus"
,"coronary_artery_disease"
,"appetite"
,"pedal_edema"
,"anemia"
,"class"
,"class2"
from gs_tables_db.TRNG_TDU_TD01_kidney_train_outliers;
replace view TRNG_TDU_TD01.kidney_unk1 as locking row for access select
"id"
,"age"
,"blood_pressure"
,"specific_gravity"
,"albumin"
,"sugar"
,"red_blood_cells"
,"pus_cell"
,"pus_cell_clumps"
,"bacteria"
,"blood_glucose_random"
,"blood_urea"
,"serum_creatinine"
,"sodium"
,"potassium"
,"hemoglobin"
,"packed_cell_volume"
,"white_blood_cell_count"
,"red_blood_cell_count"
,"hypertension"
,"diabetes_mellitus"
,"coronary_artery_disease"
,"appetite"
,"pedal_edema"
,"anemia"
,"class"
from gs_tables_db.TRNG_TDU_TD01_kidney_unk1;
replace view TRNG_TDU_TD01.kmodes_init as locking row for access select
"model"
,"mpg"
,"cyl"
,"disp"
,"hp"
,"drat"
,"wt"
,"qsec"
,"vs"
,"am"
,"gear"
,"carb"
from gs_tables_db.TRNG_TDU_TD01_kmodes_init;
replace view TRNG_TDU_TD01.knee_replacement_events as locking row for access select
"entity_id"
,"datestamp"
,"event"
,"memberid"
,"proccode"
,"diagcode"
,"shortdesc"
,"amount"
,"tstamp"
,"firstname"
,"lastname"
,"email"
,"state"
from gs_tables_db.TRNG_TDU_TD01_knee_replacement_events;
replace view TRNG_TDU_TD01.loan_test as locking row for access select
"set_id"
,"id"
,"age"
,"job"
,"marital"
,"education"
,"loandefault"
,"balance"
,"housing"
,"loan"
,"contact"
,"day"
,"month"
,"duration"
,"campaign"
,"pdays"
,"previous"
,"poutcome"
,"yvar_cd"
from gs_tables_db.TRNG_TDU_TD01_loan_test;
replace view TRNG_TDU_TD01.loan_train as locking row for access select
"set_id"
,"id"
,"age"
,"job"
,"marital"
,"education"
,"loandefault"
,"balance"
,"housing"
,"loan"
,"contact"
,"day"
,"month"
,"duration"
,"campaign"
,"pdays"
,"previous"
,"poutcome"
,"yvar_cd"
from gs_tables_db.TRNG_TDU_TD01_loan_train;
replace view TRNG_TDU_TD01.matchup as locking row for access select
"c1"
,"c2"
from gs_tables_db.TRNG_TDU_TD01_matchup;
replace view TRNG_TDU_TD01.mdl_tbl as locking row for access select
"id"
,"model"
from gs_tables_db.TRNG_TDU_TD01_mdl_tbl;
replace view TRNG_TDU_TD01.ML_review as locking row for access select
"sn"
,"price"
,"lotsize"
,"bedrooms"
,"bathrms"
,"stories"
,"driveway"
,"recroom"
,"fullbase"
,"gashw"
,"airco"
,"garagepl"
,"prefarea"
,"homestyle"
,"buyer_gender"
from gs_tables_db.TRNG_TDU_TD01_ML_review;
replace view TRNG_TDU_TD01.ML_review2 as locking row for access select
"sn"
,"price"
,"lotsize"
,"bedrooms"
,"bathrms"
,"stories"
,"driveway"
,"recroom"
,"fullbase"
,"gashw"
,"airco"
,"garagepl"
,"prefarea"
,"buyer_gender"
,"homestyle"
from gs_tables_db.TRNG_TDU_TD01_ML_review2;
replace view TRNG_TDU_TD01.Mobile_Money_Txns as locking row for access select
"Step"
,"Type"
,"Amount"
,"NameOrig"
,"OldBalanceOrig"
,"NewBalanceOrig"
,"NameDest"
,"OldBalanceDest"
,"NewBalanceDest"
,"IsFraud"
,"IsFlaggedFraud"
,"Txn_Id"
from gs_tables_db.TRNG_TDU_TD01_Mobile_Money_Txns;
replace view TRNG_TDU_TD01.model1_predict as locking row for access select
"sn"
,"homestyle"
,"prediction"
,"confidence_lower"
,"confidence_upper"
from gs_tables_db.TRNG_TDU_TD01_model1_predict;
replace view TRNG_TDU_TD01.model1_table as locking row for access select
"id"
,"model"
from gs_tables_db.TRNG_TDU_TD01_model1_table;
replace view TRNG_TDU_TD01.model2_predict as locking row for access select
"id"
,"species"
,"prediction"
,"confidence_lower"
,"confidence_upper"
from gs_tables_db.TRNG_TDU_TD01_model2_predict;
replace view TRNG_TDU_TD01.model4_predict as locking row for access select
"sn"
,"homestyle"
,"prediction"
,"confidence_lower"
,"confidence_upper"
from gs_tables_db.TRNG_TDU_TD01_model4_predict;
replace view TRNG_TDU_TD01.Model_Myb as locking row for access select
"c1"
,"c2"
from gs_tables_db.TRNG_TDU_TD01_Model_Myb;
replace view TRNG_TDU_TD01.moisturizer_reviews as locking row for access select
"serial_id"
,"orig_id"
,"author"
,"date_entered"
,"title1"
,"score"
,"body"
from gs_tables_db.TRNG_TDU_TD01_moisturizer_reviews;
replace view TRNG_TDU_TD01.mortgage_join as locking row for access select
"id"
,"channel"
,"seller"
,"interest_rate"
,"balance"
,"loan_term"
,"origination_date"
,"first_payment_date"
,"ltv"
,"cltv"
,"borrower_count"
,"dti"
,"borrower_credit_score"
,"first_time_homebuyer"
,"loan_purpose"
,"property_type"
,"unit_count"
,"occupancy_status"
,"property_state"
,"zip"
,"insurance_percentage"
,"product_type"
,"co_borrower_credit_score"
,"insurance_type"
,"reloc_indicator"
,"foreclosure_date"
,"foreclosure_flag"
,"zip_bin"
from gs_tables_db.TRNG_TDU_TD01_mortgage_join;
replace view TRNG_TDU_TD01.movies as locking row for access select
"id"
,"name"
,"genre"
from gs_tables_db.TRNG_TDU_TD01_movies;
replace view TRNG_TDU_TD01.movie_jsoned as locking row for access select
"movie_id"
,"title1"
,"genres"
from gs_tables_db.TRNG_TDU_TD01_movie_jsoned;
replace view TRNG_TDU_TD01.movie_jsoned2 as locking row for access select
"movie_id"
,"title1"
,"keywords"
from gs_tables_db.TRNG_TDU_TD01_movie_jsoned2;
replace view TRNG_TDU_TD01.multi_ads as locking row for access select
"adid"
,"channel"
,"ts"
from gs_tables_db.TRNG_TDU_TD01_multi_ads;
replace view TRNG_TDU_TD01.multi_clicks as locking row for access select
"userid"
,"sessionid"
,"ts"
,"page"
from gs_tables_db.TRNG_TDU_TD01_multi_clicks;
replace view TRNG_TDU_TD01.mushroom_master as locking row for access select
"id"
,"class"
,"cap_shape"
,"cap_surface"
,"cap_color"
,"bruises"
,"odor"
,"gill_attachment"
,"gill_spacing"
,"gill_size"
,"gill_color"
,"stalk_shape"
,"stalk_root"
,"stalk_surface_above_ring"
,"stalk_surface_below_ring"
,"stalk_color_above_ring"
,"stalk_color_below_ring"
,"veil_type"
,"veil_color"
,"ring_number"
,"ring_type"
,"spore_print_color"
,"population"
,"habitat"
from gs_tables_db.TRNG_TDU_TD01_mushroom_master;
replace view TRNG_TDU_TD01.mush_test as locking row for access select
"id"
,"class1"
,"cap_shape"
,"cap_surface"
,"cap_color"
,"bruises"
,"odor"
,"gill_attachment"
,"gill_spacing"
,"gill_size"
,"gill_color"
,"stalk_shape"
,"stalk_root"
,"stalk_surface_above_ring"
,"stalk_surface_below_ring"
,"stalk_color_above_ring"
,"stalk_color_below_ring"
,"veil_type"
,"veil_color"
,"ring_number"
,"ring_type"
,"spore_print_color"
,"population"
,"habitat"
from gs_tables_db.TRNG_TDU_TD01_mush_test;
replace view TRNG_TDU_TD01.mush_train as locking row for access select
"id"
,"class1"
,"cap_shape"
,"cap_surface"
,"cap_color"
,"bruises"
,"odor"
,"gill_attachment"
,"gill_spacing"
,"gill_size"
,"gill_color"
,"stalk_shape"
,"stalk_root"
,"stalk_surface_above_ring"
,"stalk_surface_below_ring"
,"stalk_color_above_ring"
,"stalk_color_below_ring"
,"veil_type"
,"veil_color"
,"ring_number"
,"ring_type"
,"spore_print_color"
,"population"
,"habitat"
from gs_tables_db.TRNG_TDU_TD01_mush_train;
replace view TRNG_TDU_TD01.myb_cfilter as locking row for access select
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
from gs_tables_db.TRNG_TDU_TD01_myb_cfilter;
replace view TRNG_TDU_TD01.myb_cfilter_output as locking row for access select
"col1_item1"
,"col1_item2"
,"cntb"
,"cnt1"
,"cnt2"
,"score"
,"support"
,"confidence"
,"lift"
,"z_score"
from gs_tables_db.TRNG_TDU_TD01_myb_cfilter_output;
replace view TRNG_TDU_TD01.myb_cf_redbull as locking row for access select
"col1_item1"
,"col1_item2"
,"cntb"
,"cnt1"
,"cnt2"
,"score"
,"support"
,"confidence"
,"lift"
,"z_score"
from gs_tables_db.TRNG_TDU_TD01_myb_cf_redbull;
replace view TRNG_TDU_TD01.myb_conversion as locking row for access select
"CONVERSION"
from gs_tables_db.TRNG_TDU_TD01_myb_conversion;
replace view TRNG_TDU_TD01.MYB_customer_users as locking row for access select
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
from gs_tables_db.TRNG_TDU_TD01_MYB_customer_users;
replace view TRNG_TDU_TD01.myb_model1_table_1 as locking row for access select
"ID"
,"MODEL"
from gs_tables_db.TRNG_TDU_TD01_myb_model1_table_1;
replace view TRNG_TDU_TD01.myb_officeproducts as locking row for access select
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
from gs_tables_db.TRNG_TDU_TD01_myb_officeproducts;
replace view TRNG_TDU_TD01.myb_retailsales as locking row for access select
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
from gs_tables_db.TRNG_TDU_TD01_myb_retailsales;
replace view TRNG_TDU_TD01.MYB_salesrev as locking row for access select
"Sales Revenue"
,"Date"
from gs_tables_db.TRNG_TDU_TD01_MYB_salesrev;
replace view TRNG_TDU_TD01.MYB_sales_detail1 as locking row for access select
"product_name"
,"product_category_name"
,"store_name"
,"region_name"
,"city_name"
,"sales_date"
,"customer_id"
,"basket_id"
,"store_id"
,"sales_quantity"
,"discount_amount"
from gs_tables_db.TRNG_TDU_TD01_MYB_sales_detail1;
replace view TRNG_TDU_TD01.MYB_Smallstocks as locking row for access select
"c1"
,"c2"
,"c3"
,"c4"
from gs_tables_db.TRNG_TDU_TD01_MYB_Smallstocks;
replace view TRNG_TDU_TD01.MYB_TV_Shows as locking row for access select
"id"
,"tvshow"
,"ts"
from gs_tables_db.TRNG_TDU_TD01_MYB_TV_Shows;
replace view TRNG_TDU_TD01.myb_tweets_10k as locking row for access select
"guid"
,"t_date"
,"url"
,"comments"
,"a_handle"
,"a_name"
,"t_locate"
,"posts"
,"foll_ers"
,"foll_ing"
from gs_tables_db.TRNG_TDU_TD01_myb_tweets_10k;
replace view TRNG_TDU_TD01.myinput_table as locking row for access select
"user_id"
,"event"
,"ts"
from gs_tables_db.TRNG_TDU_TD01_myinput_table;
replace view TRNG_TDU_TD01.my_model as locking row for access select
"id"
,"model"
from gs_tables_db.TRNG_TDU_TD01_my_model;
replace view TRNG_TDU_TD01.nb_accuracy_table as locking row for access select
"measure"
,"0"
,"1"
from gs_tables_db.TRNG_TDU_TD01_nb_accuracy_table;
replace view TRNG_TDU_TD01.nb_accuracy_table_scaled as locking row for access select
"measure"
,"0"
,"1"
from gs_tables_db.TRNG_TDU_TD01_nb_accuracy_table_scaled;
replace view TRNG_TDU_TD01.nb_count_table_scaled as locking row for access select
"observation"
,"0"
,"1"
from gs_tables_db.TRNG_TDU_TD01_nb_count_table_scaled;
replace view TRNG_TDU_TD01.nb_exited_predict as locking row for access select
"customerid"
,"prediction"
,"loglik_1"
,"loglik_0"
,"exited"
from gs_tables_db.TRNG_TDU_TD01_nb_exited_predict;
replace view TRNG_TDU_TD01.nb_iris_input_test as locking row for access select
"id"
,"sepal_length"
,"sepal_width"
,"petal_length"
,"petal_width"
,"species"
from gs_tables_db.TRNG_TDU_TD01_nb_iris_input_test;
replace view TRNG_TDU_TD01.nb_iris_input_train as locking row for access select
"id"
,"sepal_length"
,"sepal_width"
,"petal_length"
,"petal_width"
,"species"
from gs_tables_db.TRNG_TDU_TD01_nb_iris_input_train;
replace view TRNG_TDU_TD01.nb_predictcars as locking row for access select
"id"
,"year"
,"color"
,"type"
,"origin"
from gs_tables_db.TRNG_TDU_TD01_nb_predictcars;
replace view TRNG_TDU_TD01.nb_predict_accuracy as locking row for access select
"id"
,"turn"
,"prediction"
from gs_tables_db.TRNG_TDU_TD01_nb_predict_accuracy;
replace view TRNG_TDU_TD01.nb_stolencars as locking row for access select
"id"
,"year"
,"color"
,"type"
,"origin"
,"stolen"
from gs_tables_db.TRNG_TDU_TD01_nb_stolencars;
replace view TRNG_TDU_TD01.ngrams_case as locking row for access select
"id"
,"text_value"
from gs_tables_db.TRNG_TDU_TD01_ngrams_case;
replace view TRNG_TDU_TD01.ngrams_simple as locking row for access select
"id"
,"text_value"
from gs_tables_db.TRNG_TDU_TD01_ngrams_simple;
replace view TRNG_TDU_TD01.nGram_movie as locking row for access select
"docid"
,"title1"
,"overview"
,"term"
,"n"
,"count"
from gs_tables_db.TRNG_TDU_TD01_nGram_movie;
replace view TRNG_TDU_TD01.nGram_movie2 as locking row for access select
"docid"
,"title1"
,"keywords"
,"term"
,"n"
,"count"
from gs_tables_db.TRNG_TDU_TD01_nGram_movie2;
replace view TRNG_TDU_TD01.npathbetween as locking row for access select
"c1"
,"c2"
,"c3"
from gs_tables_db.TRNG_TDU_TD01_npathbetween;
replace view TRNG_TDU_TD01.npathbetween2 as locking row for access select
"c1"
,"c2"
,"c3"
from gs_tables_db.TRNG_TDU_TD01_npathbetween2;
replace view TRNG_TDU_TD01.of_quant as locking row for access select
"c1"
,"c2"
from gs_tables_db.TRNG_TDU_TD01_of_quant;
replace view TRNG_TDU_TD01.org99_customerdata as locking row for access select
"CUST_ID"
,"CUST_DESC"
,"CUST_TYPE_CD"
,"INIT_DATA_SRC_TYPE_CD"
,"GOLDEN_CUST_ID"
,"CUST_IMAGE"
,"SYS_TARGET_ID"
,"SYS_AUTH_ID"
,"SYS_SOURCE"
,"SYS_CREATED_BY"
,"SYS_ENT_STATE"
,"SYS_LAST_MODIFIED_BY"
,"SYS_NC_TYPE"
,"SYS_ERR_CODE"
,"SYS_ERR_SVRTY"
,"SYS_APPROVAL_ID"
,"thread_id"
from gs_tables_db.TRNG_TDU_TD01_org99_customerdata;
replace view TRNG_TDU_TD01.outlier_output_cycletime as locking row for access select
"id"
,"vendorname"
,"modelname"
,"cycletime"
,"memorymin"
,"memorymax"
,"cache"
,"minchannels"
,"maxchannels"
,"perfpublished"
,"perfestimated"
from gs_tables_db.TRNG_TDU_TD01_outlier_output_cycletime;
replace view TRNG_TDU_TD01.outlier_output_multiple as locking row for access select
"id"
,"vendorname"
,"modelname"
,"cycletime"
,"memorymin"
,"memorymax"
,"cache"
,"minchannels"
,"maxchannels"
,"perfpublished"
,"perfestimated"
from gs_tables_db.TRNG_TDU_TD01_outlier_output_multiple;
replace view TRNG_TDU_TD01.outlier_records_cycletime as locking row for access select
"id"
,"vendorname"
,"modelname"
,"cycletime"
,"memorymin"
,"memorymax"
,"cache"
,"minchannels"
,"maxchannels"
,"perfpublished"
,"perfestimated"
from gs_tables_db.TRNG_TDU_TD01_outlier_records_cycletime;
replace view TRNG_TDU_TD01.outlier_records_mulitple as locking row for access select
"id"
,"vendorname"
,"modelname"
,"cycletime"
,"memorymin"
,"memorymax"
,"cache"
,"minchannels"
,"maxchannels"
,"perfpublished"
,"perfestimated"
from gs_tables_db.TRNG_TDU_TD01_outlier_records_mulitple;
replace view TRNG_TDU_TD01.pageview as locking row for access select
"userid"
,"ts"
,"url"
from gs_tables_db.TRNG_TDU_TD01_pageview;
replace view TRNG_TDU_TD01.pivot_fire_train as locking row for access select
"incidentnumber"
,"value_col_aircraft emergency"
,"value_col_alarms"
,"value_col_assist police"
,"value_col_citizen assist / service call"
,"value_col_confined space / structure collapse"
,"value_col_electrical hazard"
,"value_col_elevator / escalator rescue"
,"value_col_explosion"
,"value_col_extrication / entrapped (machinery, vehicle)"
,"value_col_fuel spill"
,"value_col_gas leak (natural and lp gases)"
,"value_col_hazmat"
,"value_col_high angle rescue"
,"value_col_industrial accidents"
,"value_col_marine fire"
,"value_col_medical incident"
,"value_col_mutual aid / assist outside agency"
,"value_col_odor (strange / unknown)"
,"value_col_oil spill"
,"value_col_other"
,"value_col_outside fire"
,"value_col_smoke investigation (outside)"
,"value_col_structure fire"
,"value_col_suspicious package"
,"value_col_traffic collision"
,"value_col_train / rail incident"
,"value_col_transfer"
,"value_col_vehicle fire"
,"value_col_water rescue"
,"value_col_watercraft in distress"
from gs_tables_db.TRNG_TDU_TD01_pivot_fire_train;
replace view TRNG_TDU_TD01.pivot_mortgage_state as locking row for access select
"id"
,"value_col_ak"
,"value_col_al"
,"value_col_ar"
,"value_col_az"
,"value_col_ca"
,"value_col_co"
,"value_col_ct"
,"value_col_dc"
,"value_col_de"
,"value_col_fl"
,"value_col_ga"
,"value_col_gu"
,"value_col_hi"
,"value_col_ia"
,"value_col_id"
,"value_col_il"
,"value_col_in"
,"value_col_ks"
,"value_col_ky"
,"value_col_la"
,"value_col_ma"
,"value_col_md"
,"value_col_me"
,"value_col_mi"
,"value_col_mn"
,"value_col_mo"
,"value_col_ms"
,"value_col_mt"
,"value_col_n/a"
,"value_col_nc"
,"value_col_nd"
,"value_col_ne"
,"value_col_nh"
,"value_col_nj"
,"value_col_nm"
,"value_col_nv"
,"value_col_ny"
,"value_col_oh"
,"value_col_ok"
,"value_col_or"
,"value_col_other"
,"value_col_pa"
,"value_col_pr"
,"value_col_ri"
,"value_col_sc"
,"value_col_sd"
,"value_col_tn"
,"value_col_tx"
,"value_col_ut"
,"value_col_va"
,"value_col_vi"
,"value_col_vt"
,"value_col_wa"
,"value_col_wi"
,"value_col_wv"
,"value_col_wy"
from gs_tables_db.TRNG_TDU_TD01_pivot_mortgage_state;
replace view TRNG_TDU_TD01.priceupdown as locking row for access select
"prodid"
,"price"
,"ts"
from gs_tables_db.TRNG_TDU_TD01_priceupdown;
replace view TRNG_TDU_TD01.prime_grants as locking row for access select
"unique_transaction_id"
,"transaction_status"
,"fyq"
,"cfda_program_num"
,"sai_number"
,"account_title"
,"recipient_name"
,"recipient_city_code"
,"recipient_city_name"
,"recipient_county_code"
,"recipient_county_name"
,"recipient_zip"
,"recipient_type"
,"action_type"
,"agency_code"
,"federal_award_id"
,"federal_award_mod"
,"fed_funding_amount"
,"non_fed_funding_amount"
,"total_funding_amount"
,"obligation_action_date"
,"starting_date"
,"ending_date"
,"assistance_type"
,"record_type"
,"correction_late_ind"
,"fyq_correction"
,"principal_place_code"
,"principal_place_state"
,"principal_place_cc"
,"principal_place_country_code"
,"principal_place_zip"
,"principal_place_cd"
,"cfda_program_title"
,"agency_name"
,"project_description"
,"duns_no"
,"duns_conf_code"
,"progsrc_agen_code"
,"progsrc_acnt_code"
,"progsrc_subacnt_code"
,"receip_addr1"
,"receip_addr2"
,"receip_addr3"
,"face_loan_guran"
,"orig_sub_guran"
,"fiscal_year"
,"principal_place_state_code"
,"recip_cat_type"
,"asst_cat_type"
,"recipient_cd"
,"maj_agency_cat"
,"rec_flag"
,"recipient_country_code"
,"uri"
,"recipient_state_code"
,"exec1_fullname"
,"exec1_amount"
,"exec2_fullname"
,"exec2_amount"
,"exec3_fullname"
,"exec3_amount"
,"exec4_fullname"
,"exec4_amount"
,"exec5_fullname"
,"exec5_amount"
,"last_modified_date"
from gs_tables_db.TRNG_TDU_TD01_prime_grants;
replace view TRNG_TDU_TD01.product_dim as locking row for access select
"product_id"
,"product_name"
,"product_category_name"
,"retail_price"
,"unit_cost"
from gs_tables_db.TRNG_TDU_TD01_product_dim;
replace view TRNG_TDU_TD01.pulsar_data as locking row for access select
"row_id"
,"mean_profile"
,"std_profile"
,"kurtosis_profile"
,"skewness_profile"
,"mean_curve"
,"std_curve"
,"kurtosis_curve"
,"skewness_curve"
,"target_class"
from gs_tables_db.TRNG_TDU_TD01_pulsar_data;
replace view TRNG_TDU_TD01.PURCHASE as locking row for access select
"TRANSACTION_ID"
,"CUSTOMER_ID"
,"PRODUCT_ID"
,"STORE_ID"
,"PRODUCT_NAME"
,"STORE_NAME"
,"REGION"
,"CITY"
,"TRANSACTION_DT"
,"BASKET_ID"
,"QUANTITY"
,"UNIT_PRICE"
,"CHANNEL_TYPE"
from gs_tables_db.TRNG_TDU_TD01_PURCHASE;
replace view TRNG_TDU_TD01.quizme as locking row for access select
"userid"
,"score"
,"url"
,"ts"
from gs_tables_db.TRNG_TDU_TD01_quizme;
replace view TRNG_TDU_TD01.regr_predict as locking row for access select
"price"
,"sn"
,"prediction"
,"confidence_lower"
,"confidence_upper"
from gs_tables_db.TRNG_TDU_TD01_regr_predict;
replace view TRNG_TDU_TD01.RETAIL_COMPNEW as locking row for access select
"CUSTOMER_ID"
,"DATESTAMP"
,"EVENT"
from gs_tables_db.TRNG_TDU_TD01_RETAIL_COMPNEW;
replace view TRNG_TDU_TD01.reviews as locking row for access select
"row_id"
,"clothing_id"
,"age"
,"headline"
,"review_text"
,"rating"
,"recommend"
,"dept_name"
from gs_tables_db.TRNG_TDU_TD01_reviews;
replace view TRNG_TDU_TD01.reviews_emojis as locking row for access select
"row_id"
,"clothing_id"
,"age"
,"headline"
,"review_text"
,"rating"
,"recommend"
,"dept_name"
from gs_tables_db.TRNG_TDU_TD01_reviews_emojis;
replace view TRNG_TDU_TD01.reviews_emojis2 as locking row for access select
"row_id"
,"clothing_id"
,"age"
,"headline"
,"review_text"
,"rating"
,"recommend"
,"dept_name"
from gs_tables_db.TRNG_TDU_TD01_reviews_emojis2;
replace view TRNG_TDU_TD01.sales_detail1 as locking row for access select
"product_name"
,"product_category_name"
,"store_name"
,"region_name"
,"city_name"
,"sales_date"
,"customer_id"
,"basket_id"
,"store_id"
,"sales_quantity"
,"discount_amount"
from gs_tables_db.TRNG_TDU_TD01_sales_detail1;
replace view TRNG_TDU_TD01.sales_fact as locking row for access select
"sales_date"
,"customer_id"
,"store_id"
,"basket_id"
,"product_id"
,"sales_quantity"
,"discount_amount"
from gs_tables_db.TRNG_TDU_TD01_sales_fact;
replace view TRNG_TDU_TD01.sales_pharm as locking row for access select
"product_name"
,"store_name"
,"region_name"
,"city_name"
,"customer_id"
,"basket_id"
,"store_id"
,"sales_quantity"
,"discount_amount"
from gs_tables_db.TRNG_TDU_TD01_sales_pharm;
replace view TRNG_TDU_TD01.sales_transaction as locking row for access select
"orderid"
,"orderdate"
,"orderqty"
,"region"
,"customer_segment"
,"prd_category"
,"product"
from gs_tables_db.TRNG_TDU_TD01_sales_transaction;
replace view TRNG_TDU_TD01.scale_housing as locking row for access select
"types"
,"id"
,"price"
,"lotsize"
,"bedrooms"
,"bathrms"
,"stories"
from gs_tables_db.TRNG_TDU_TD01_scale_housing;
replace view TRNG_TDU_TD01.search_weblog as locking row for access select
"logline"
from gs_tables_db.TRNG_TDU_TD01_search_weblog;
replace view TRNG_TDU_TD01.sensor_predict as locking row for access select
"id"
,"turn"
,"prediction"
,"confidence_lower"
,"confidence_upper"
from gs_tables_db.TRNG_TDU_TD01_sensor_predict;
replace view TRNG_TDU_TD01.sensor_test as locking row for access select
"id"
,"sensor1"
,"sensor2"
,"sensor3"
,"sensor4"
,"turn"
from gs_tables_db.TRNG_TDU_TD01_sensor_test;
replace view TRNG_TDU_TD01.sensor_train as locking row for access select
"id"
,"sensor1"
,"sensor2"
,"sensor3"
,"sensor4"
,"turn"
from gs_tables_db.TRNG_TDU_TD01_sensor_train;
replace view TRNG_TDU_TD01.sentiment as locking row for access select
"x_id"
,"x_text"
from gs_tables_db.TRNG_TDU_TD01_sentiment;
replace view TRNG_TDU_TD01.sentiment0 as locking row for access select
"x_text"
from gs_tables_db.TRNG_TDU_TD01_sentiment0;
replace view TRNG_TDU_TD01.sentiment1 as locking row for access select
"x_text"
from gs_tables_db.TRNG_TDU_TD01_sentiment1;
replace view TRNG_TDU_TD01.sentiment2 as locking row for access select
"x_text"
from gs_tables_db.TRNG_TDU_TD01_sentiment2;
replace view TRNG_TDU_TD01.sentiment_extract_input as locking row for access select
"id"
,"product"
,"review"
from gs_tables_db.TRNG_TDU_TD01_sentiment_extract_input;
replace view TRNG_TDU_TD01.sessionme as locking row for access select
"userid"
,"clicktime"
,"productid"
,"pagetype"
,"referrer"
,"price"
from gs_tables_db.TRNG_TDU_TD01_sessionme;
replace view TRNG_TDU_TD01.session_attrib as locking row for access select
"id"
,"event"
,"ts"
from gs_tables_db.TRNG_TDU_TD01_session_attrib;
replace view TRNG_TDU_TD01.skin_disease_test as locking row for access select
"rownum"
,"erythema"
,"scaling"
,"definiteborders"
,"itching"
,"koebner"
,"polygonal"
,"follicular"
,"oralmucosal"
,"kneeandelbow"
,"scalp"
,"familyhistory"
,"melaninincontinence"
,"eosinophils"
,"pnlinfiltrate"
,"fibrosispapillary"
,"exocytosis"
,"acanthosis"
,"hyperkeratosis"
,"parakeratosis"
,"clubbingrete"
,"elongationrete"
,"thinsuprapapillary"
,"spongiformpustule"
,"munromicroabcess"
,"hypergranulosis"
,"granularlayer"
,"basal"
,"spongiosis"
,"sawtooth"
,"follicularhorn"
,"perifollicularparakeratosis"
,"inflammatorymonoluclear"
,"bandlike"
,"age"
,"disease"
,"x_group"
,"binary_test"
from gs_tables_db.TRNG_TDU_TD01_skin_disease_test;
replace view TRNG_TDU_TD01.skin_disease_train as locking row for access select
"rownum"
,"erythema"
,"scaling"
,"definiteborders"
,"itching"
,"koebner"
,"polygonal"
,"follicular"
,"oralmucosal"
,"kneeandelbow"
,"scalp"
,"familyhistory"
,"melaninincontinence"
,"eosinophils"
,"pnlinfiltrate"
,"fibrosispapillary"
,"exocytosis"
,"acanthosis"
,"hyperkeratosis"
,"parakeratosis"
,"clubbingrete"
,"elongationrete"
,"thinsuprapapillary"
,"spongiformpustule"
,"munromicroabcess"
,"hypergranulosis"
,"granularlayer"
,"basal"
,"spongiosis"
,"sawtooth"
,"follicularhorn"
,"perifollicularparakeratosis"
,"inflammatorymonoluclear"
,"bandlike"
,"age"
,"disease"
,"x_group"
,"binary_test"
from gs_tables_db.TRNG_TDU_TD01_skin_disease_train;
replace view TRNG_TDU_TD01.soc_nw_edges as locking row for access select
"source"
,"target"
from gs_tables_db.TRNG_TDU_TD01_soc_nw_edges;
replace view TRNG_TDU_TD01.soc_nw_vertices as locking row for access select
"vertexid"
from gs_tables_db.TRNG_TDU_TD01_soc_nw_vertices;
replace view TRNG_TDU_TD01.sophomores as locking row for access select
"id"
,"name"
from gs_tables_db.TRNG_TDU_TD01_sophomores;
replace view TRNG_TDU_TD01.sparse_housing_attributes as locking row for access select
"attributename"
,"attributetype"
from gs_tables_db.TRNG_TDU_TD01_sparse_housing_attributes;
replace view TRNG_TDU_TD01.sparse_housing_test_binary as locking row for access select
"sn"
,"homestyle"
,"attribute"
,"value_col"
from gs_tables_db.TRNG_TDU_TD01_sparse_housing_test_binary;
replace view TRNG_TDU_TD01.sparse_housing_train_binary as locking row for access select
"sn"
,"homestyle"
,"attribute"
,"value_col"
from gs_tables_db.TRNG_TDU_TD01_sparse_housing_train_binary;
replace view TRNG_TDU_TD01.sparse_housing_train_binary_rb as locking row for access select
"sn"
,"homestyle"
,"Attribute"
,"value_col"
from gs_tables_db.TRNG_TDU_TD01_sparse_housing_train_binary_rb;
replace view TRNG_TDU_TD01.store_dim as locking row for access select
"store_id"
,"store_name"
,"region_id"
,"store_sq_ft"
from gs_tables_db.TRNG_TDU_TD01_store_dim;
replace view TRNG_TDU_TD01.table1 as locking row for access select
"id"
,"event"
,"ts"
from gs_tables_db.TRNG_TDU_TD01_table1;
replace view TRNG_TDU_TD01.tagged_text as locking row for access select
"row_id"
,"review_text"
,"age"
,"dept_name"
,"tag"
from gs_tables_db.TRNG_TDU_TD01_tagged_text;
replace view TRNG_TDU_TD01.tagrules as locking row for access select
"tagname"
,"definit"
from gs_tables_db.TRNG_TDU_TD01_tagrules;
replace view TRNG_TDU_TD01.tag_table as locking row for access select
"id"
,"tag"
,"tag_name"
,"search_term"
from gs_tables_db.TRNG_TDU_TD01_tag_table;
replace view TRNG_TDU_TD01.tag_table2 as locking row for access select
"id"
,"tag"
,"tag_name"
,"search_term"
from gs_tables_db.TRNG_TDU_TD01_tag_table2;
replace view TRNG_TDU_TD01.teams_prior2012 as locking row for access select
"yearid"
,"leagueid"
,"teamid"
,"franchid"
,"divid"
,"ranked"
,"g"
,"ghome"
,"w"
,"l"
,"divwin"
,"wcwin"
,"lgwin"
,"wswin"
,"r"
,"ab"
,"h"
,"x2b"
,"x3b"
,"hr"
,"bb"
,"so"
,"sb"
,"cstealing"
,"hbp"
,"sf"
,"ra"
,"er"
,"era"
,"cg"
,"sho"
,"sv"
,"ipouts"
,"ha"
,"hra"
,"bba"
,"soa"
,"e"
,"dp"
,"fp"
,"name"
,"park"
,"attendance"
,"bpf"
,"ppf"
,"teamidbr"
,"teamidlahman4"
,"teamidretro"
from gs_tables_db.TRNG_TDU_TD01_teams_prior2012;
replace view TRNG_TDU_TD01.terms1 as locking row for access select
"docid"
,"term"
from gs_tables_db.TRNG_TDU_TD01_terms1;
replace view TRNG_TDU_TD01.text_sentiment_scored as locking row for access select
"row_id"
,"age"
,"dept_name"
,"review_text"
,"out_polarity"
,"out_strength"
from gs_tables_db.TRNG_TDU_TD01_text_sentiment_scored;
replace view TRNG_TDU_TD01.text_temp as locking row for access select
"row_id"
,"review_text"
,"age"
,"dept_name"
,"tag"
,"token"
,"frequency"
,"location"
from gs_tables_db.TRNG_TDU_TD01_text_temp;
replace view TRNG_TDU_TD01.text_trainset as locking row for access select
"row_id"
,"review_text"
,"reported_emo"
from gs_tables_db.TRNG_TDU_TD01_text_trainset;
replace view TRNG_TDU_TD01.tfidf_diehard2 as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_TDU_TD01_tfidf_diehard2;
replace view TRNG_TDU_TD01.tfidf_fistful as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_TDU_TD01_tfidf_fistful;
replace view TRNG_TDU_TD01.tfidf_fistful2 as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_TDU_TD01_tfidf_fistful2;
replace view TRNG_TDU_TD01.tfidf_movie as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_TDU_TD01_tfidf_movie;
replace view TRNG_TDU_TD01.tfidf_movie2 as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_TDU_TD01_tfidf_movie2;
replace view TRNG_TDU_TD01.tfidf_output1 as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_TDU_TD01_tfidf_output1;
replace view TRNG_TDU_TD01.tfidf_space as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_TDU_TD01_tfidf_space;
replace view TRNG_TDU_TD01.tfidf_space2 as locking row for access select
"docid"
,"term"
,"tf"
,"idf"
,"tf_idf"
from gs_tables_db.TRNG_TDU_TD01_tfidf_space2;
replace view TRNG_TDU_TD01.tf_movie as locking row for access select
"docid"
,"term"
,"tf"
,"count"
from gs_tables_db.TRNG_TDU_TD01_tf_movie;
replace view TRNG_TDU_TD01.tf_movie2 as locking row for access select
"docid"
,"term"
,"tf"
,"count"
from gs_tables_db.TRNG_TDU_TD01_tf_movie2;
replace view TRNG_TDU_TD01.tf_output1 as locking row for access select
"docid"
,"term"
,"tf"
,"count"
from gs_tables_db.TRNG_TDU_TD01_tf_output1;
replace view TRNG_TDU_TD01.titanic_raw as locking row for access select
"passengerid"
,"survived"
,"pclass"
,"pname"
,"gender"
,"age"
,"sibsp"
,"parch"
,"ticket"
,"fare"
,"cabin"
,"embarked"
from gs_tables_db.TRNG_TDU_TD01_titanic_raw;
replace view TRNG_TDU_TD01.titanic_test as locking row for access select
"PassengerId"
,"Pclass"
,"pName"
,"Sex"
,"Age"
,"SibSp"
,"Parch"
,"Ticket"
,"Fare"
,"Cabin"
,"Embarked"
from gs_tables_db.TRNG_TDU_TD01_titanic_test;
replace view TRNG_TDU_TD01.titanic_train as locking row for access select
"PassengerId"
,"Survived"
,"Pclass"
,"pName"
,"Sex"
,"Age"
,"SibSp"
,"Parch"
,"Ticket"
,"Fare"
,"Cabin"
,"Embarked"
from gs_tables_db.TRNG_TDU_TD01_titanic_train;
replace view TRNG_TDU_TD01.tmdb_movies as locking row for access select
"budget"
,"genres"
,"homepage"
,"movie_id"
,"keywords"
,"original_language"
,"original_title"
,"overview"
,"popularity"
,"production_companies"
,"production_countries"
,"release_date"
,"revenue"
,"runtime"
,"spoken_languages"
,"status"
,"tagline"
,"title1"
,"vote_average"
,"vote_count"
from gs_tables_db.TRNG_TDU_TD01_tmdb_movies;
replace view TRNG_TDU_TD01.tmdb_movies_vc as locking row for access select
"movie_id"
,"title1"
,"genres"
from gs_tables_db.TRNG_TDU_TD01_tmdb_movies_vc;
replace view TRNG_TDU_TD01.top10_DieHard as locking row for access select
"path"
from gs_tables_db.TRNG_TDU_TD01_top10_DieHard;
replace view TRNG_TDU_TD01.top10_vd as locking row for access select
"target_docid"
,"ref_docid"
,"type"
,"distance"
from gs_tables_db.TRNG_TDU_TD01_top10_vd;
replace view TRNG_TDU_TD01.trade as locking row for access select
"fromid"
,"toid"
,"tradeweight"
from gs_tables_db.TRNG_TDU_TD01_trade;
replace view TRNG_TDU_TD01.trans11 as locking row for access select
"hh_id"
,"region"
,"trans_id"
,"prod"
from gs_tables_db.TRNG_TDU_TD01_trans11;
replace view TRNG_TDU_TD01.Transactions_VD as locking row for access select
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
from gs_tables_db.TRNG_TDU_TD01_Transactions_VD;
replace view TRNG_TDU_TD01.tv_shows as locking row for access select
"id"
,"tvshow"
,"ts"
from gs_tables_db.TRNG_TDU_TD01_tv_shows;
replace view TRNG_TDU_TD01.tweets as locking row for access select
"guid"
,"t_date"
,"url"
,"comments"
,"a_handle"
,"a_name"
,"t_locate"
,"a_posts"
,"a_followers"
,"a_following"
from gs_tables_db.TRNG_TDU_TD01_tweets;
replace view TRNG_TDU_TD01.tweets_10k as locking row for access select
"guid"
,"t_date"
,"url"
,"comments"
,"a_handle"
,"a_name"
,"t_locate"
,"posts"
,"foll_ers"
,"foll_ing"
from gs_tables_db.TRNG_TDU_TD01_tweets_10k;
replace view TRNG_TDU_TD01.tweets_MYB as locking row for access select
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
from gs_tables_db.TRNG_TDU_TD01_tweets_MYB;
replace view TRNG_TDU_TD01.tweets_old as locking row for access select
"guid"
,"t_date"
,"url"
,"comments"
,"a_handle"
,"a_name"
,"t_locate"
,"a_posts"
,"a_followers"
,"a_following"
from gs_tables_db.TRNG_TDU_TD01_tweets_old;
replace view TRNG_TDU_TD01.unpivot_fire_train as locking row for access select
"incidentnumber"
,"attribute"
,"value_col"
from gs_tables_db.TRNG_TDU_TD01_unpivot_fire_train;
replace view TRNG_TDU_TD01.unpivot_mortgage_state as locking row for access select
"id"
,"attribute"
,"value_col"
from gs_tables_db.TRNG_TDU_TD01_unpivot_mortgage_state;
replace view TRNG_TDU_TD01.unpivot_mortgage_state_lc as locking row for access select
"id"
,"attribute"
,"value_col"
from gs_tables_db.TRNG_TDU_TD01_unpivot_mortgage_state_lc;
replace view TRNG_TDU_TD01.vertextable_air as locking row for access select
"origin"
from gs_tables_db.TRNG_TDU_TD01_vertextable_air;
replace view TRNG_TDU_TD01.vertex_cls as locking row for access select
"callerid"
,"callername"
from gs_tables_db.TRNG_TDU_TD01_vertex_cls;
replace view TRNG_TDU_TD01.vertex_enron as locking row for access select
"sender"
from gs_tables_db.TRNG_TDU_TD01_vertex_enron;
replace view TRNG_TDU_TD01.vertex_lcc as locking row for access select
"personid"
,"name"
from gs_tables_db.TRNG_TDU_TD01_vertex_lcc;
replace view TRNG_TDU_TD01.vertices_btw as locking row for access select
"vertex"
from gs_tables_db.TRNG_TDU_TD01_vertices_btw;
replace view TRNG_TDU_TD01.ville_pressuredata as locking row for access select
"sn"
,"city"
,"ts"
,"pressure_mbar"
from gs_tables_db.TRNG_TDU_TD01_ville_pressuredata;
replace view TRNG_TDU_TD01.weblog1 as locking row for access select
"logline"
from gs_tables_db.TRNG_TDU_TD01_weblog1;
replace view TRNG_TDU_TD01.weblog_news as locking row for access select
"logline"
from gs_tables_db.TRNG_TDU_TD01_weblog_news;
replace view TRNG_TDU_TD01.web_purchases as locking row for access select
"user_id"
,"session_id"
,"date_time"
,"page"
,"product"
,"prod_qty"
,"prod_price"
from gs_tables_db.TRNG_TDU_TD01_web_purchases;
replace view TRNG_TDU_TD01.web_visits as locking row for access select
"host"
,"visit_ct"
from gs_tables_db.TRNG_TDU_TD01_web_visits;
replace view TRNG_TDU_TD01.words0 as locking row for access select
"id"
,"word_col"
from gs_tables_db.TRNG_TDU_TD01_words0;
replace view TRNG_TDU_TD01.words1 as locking row for access select
"id"
,"word_col"
from gs_tables_db.TRNG_TDU_TD01_words1;
replace view TRNG_TDU_TD01.words2 as locking row for access select
"id"
,"word_col"
from gs_tables_db.TRNG_TDU_TD01_words2;
replace view TRNG_TDU_TD01.words3 as locking row for access select
"id"
,"word_col"
from gs_tables_db.TRNG_TDU_TD01_words3;
replace view TRNG_TDU_TD01.zoo as locking row for access select
"animal"
,"hair"
,"feathers"
,"eggs"
,"milk"
,"airborne"
,"aquatic"
,"predator"
,"toothed"
,"backbone"
,"breathes"
,"venomous"
,"fins"
,"legs"
,"tail"
,"domestic"
,"catsize"
,"class1"
from gs_tables_db.TRNG_TDU_TD01_zoo;
replace view TRNG_TDU_TD01.zoo2 as locking row for access select
"animal"
,"hair"
,"feathers"
,"eggs"
,"milk"
,"airborne"
,"aquatic"
,"predator"
,"toothed"
,"backbone"
,"breathes"
,"venomous"
,"fins"
,"legs"
,"tail"
,"domestic"
,"catsize"
,"class1"
from gs_tables_db.TRNG_TDU_TD01_zoo2;
replace view TRNG_TDU_TD01.zoo3 as locking row for access select
"animal"
,"hair"
,"feathers"
,"eggs"
,"milk"
,"airborne"
,"aquatic"
,"predator"
,"toothed"
,"backbone"
,"breathes"
,"venomous"
,"fins"
,"legs"
,"tail"
,"domestic"
,"catsize"
,"response_col"
from gs_tables_db.TRNG_TDU_TD01_zoo3;
replace view TRNG_TDU_TD01.zoo_test as locking row for access select
"animal"
,"hair"
,"feathers"
,"eggs"
,"milk"
,"airborne"
,"aquatic"
,"predator"
,"toothed"
,"backbone"
,"breathes"
,"venomous"
,"fins"
,"legs"
,"tail"
,"domestic"
,"catsize"
,"class"
from gs_tables_db.TRNG_TDU_TD01_zoo_test;
replace view TRNG_TDU_TD01.zoo_train as locking row for access select
"animal"
,"hair"
,"feathers"
,"eggs"
,"milk"
,"airborne"
,"aquatic"
,"predator"
,"toothed"
,"backbone"
,"breathes"
,"venomous"
,"fins"
,"legs"
,"tail"
,"domestic"
,"catsize"
,"class"
from gs_tables_db.TRNG_TDU_TD01_zoo_train;
replace view TRNG_TDU_TD01. tmdb_movies4 as
(select * from TRNG_TDU_TD01.tmdb_movies_vc);

replace view TRNG_TDU_TD01.v_county_demogr as 
(select * from TRNG_TDU_TD01.county_demogr where yr = 2016);

replace view TRNG_TDU_TD01.v_county_pm25 as 
(select * from TRNG_TDU_TD01.county_pm25 where yr = 2016);

replace view TRNG_TDU_TD01.v_county_smoke as 
(select * from TRNG_TDU_TD01.county_smoke where yr = 2012);

REPLACE VIEW TRNG_TDU_TD01.v_covid_all AS
(SELECT d.*, pm.pm25, sm.smoke_rate, sm.mean_bmi
 FROM ADLDEMO_Government.county_demogr as d, ADLDEMO_Government.county_pm25 as pm,
      ADLDEMO_Government.county_smoke as sm, ADLDEMO_Government.county_deaths as dd
 WHERE d.fips = pm.fips 
 AND d.fips = sm.fips
 AND d.fips = dd.fips);

replace VIEW v_test_zoo2 AS
    SELECT *
        FROM TRNG_TDU_TD01.zoo2
        WHERE animal  IN 
        (
        'bear', 'buffalo', 'sparrow', 'swan',  'tortoise', 
        'carp', 'catfish', 'toad', 'moth', 'lobster'
        );

REPLACE VIEW TRNG_TDU_TD01.v_test_zoo3 AS
    SELECT *
        FROM TRNG_TDU_TD01.zoo3
        WHERE animal  IN 
        (
        'bear', 'buffalo', 'sparrow', 'swan',  'tortoise', 
        'carp', 'catfish', 'toad', 'moth', 'lobster'
        );

REPLACE VIEW TRNG_TDU_TD01.v_test_zoo AS
    SELECT *
        FROM zoo
        WHERE animal  IN 
        (
        'bear', 'buffalo', 'sparrow', 'swan',  'tortoise', 
        'carp', 'catfish', 'toad', 'moth', 'lobster'
        );

replace VIEW TRNG_TDU_TD01.v_train_zoo2 AS
    SELECT *
        FROM TRNG_TDU_TD01.zoo2
        WHERE animal NOT IN 
        (
        'bear', 'buffalo', 'sparrow', 'swan',  'tortoise', 
        'carp', 'catfish', 'toad', 'moth', 'lobster'
        );

REPLACE VIEW TRNG_TDU_TD01.v_train_zoo3 AS
    SELECT *
        FROM TRNG_TDU_TD01.zoo3
        WHERE animal NOT IN 
        (
        'bear', 'buffalo', 'sparrow', 'swan',  'tortoise', 
        'carp', 'catfish', 'toad', 'moth', 'lobster'
        );

REPLACE VIEW TRNG_TDU_TD01.v_train_zoo AS
    SELECT *
        FROM zoo
        WHERE animal NOT IN 
        (
        'bear', 'buffalo', 'sparrow', 'swan',  'tortoise', 
        'carp', 'catfish', 'toad', 'moth', 'lobster'
        );

