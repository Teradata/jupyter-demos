CREATE MULTISET TABLE [DQ_DATADB_TEMPLATE].DQ_Stat_info_hist
     (
      sessionid BIGINT,
      databasename VARCHAR(1024) CHARACTER SET LATIN NOT CASESPECIFIC,
      tablename VARCHAR(1024) CHARACTER SET LATIN NOT CASESPECIFIC,
      xcol VARCHAR(1024) CHARACTER SET LATIN NOT CASESPECIFIC,
      datatype CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC,
      xcnt FLOAT,
      xmin FLOAT,
      xmax FLOAT,
      xmean FLOAT,
      xstd FLOAT,
      xtype VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      xnull FLOAT,
      xnique FLOAT,
      xblank FLOAT,
      xzero FLOAT,
      xpos FLOAT,
      xneg FLOAT)
PRIMARY INDEX ( databasename ,tablename ,xcol )
PARTITION BY sessionid ;
