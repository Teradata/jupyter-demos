CREATE MULTISET TABLE [DQ_DATADB_TEMPLATE].DQ_Hist_info_hist
     (
      sessionid BIGINT,
      databasename VARCHAR(1024) CHARACTER SET LATIN NOT CASESPECIFIC,
      tablename VARCHAR(1024) CHARACTER SET LATIN NOT CASESPECIFIC,
      xcol VARCHAR(1024) CHARACTER SET LATIN NOT CASESPECIFIC,
      xbin INTEGER,
      datatype CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC,
      xbeg FLOAT,
      xend FLOAT,
      xcnt FLOAT,
      xpct FLOAT)
PRIMARY INDEX ( databasename ,tablename ,xcol ,xbin )
PARTITION BY sessionid;
