CREATE SET TABLE [DQ_DATADB_TEMPLATE].dq_config
     (
      idx BYTEINT,
      delta_new INTEGER,
      delta_prv INTEGER,
      outlier_method CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC,
      category_max_unq INTEGER,
      DATE_USAGE CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC COMPRESS ('CUR','MAX'),
      min_prv_rec BIGINT,
      enable_chr_search_ind BYTEINT)
PRIMARY INDEX ( idx );

