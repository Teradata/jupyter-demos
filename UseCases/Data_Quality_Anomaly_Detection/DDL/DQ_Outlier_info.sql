CREATE MULTISET TABLE [DQ_DATADB_TEMPLATE].DQ_Outlier_info
     (
      sessionid BIGINT,
      databasename VARCHAR(1024) CHARACTER SET UNICODE NOT CASESPECIFIC,
      tablename VARCHAR(1024) CHARACTER SET UNICODE NOT CASESPECIFIC,
      xcol VARCHAR(1024) CHARACTER SET UNICODE NOT CASESPECIFIC,
      notnullcnt_prv FLOAT,
      notnullcnt_new FLOAT,
      outlier_cnt_prv FLOAT,
      outlier_cnt_new FLOAT)
PRIMARY INDEX ( databasename ,tablename ,xcol )
PARTITION BY sessionid ;
