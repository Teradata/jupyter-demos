create database TRNG_TDSysAnalytics from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_TDSysAnalytics_DB_HIST_fcRESULTS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/DB-HIST-fcRESULTS/'));
create foreign table gs_tables_db."TRNG_TDSysAnalytics_USER_HIST_fcUSER", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/USER-HIST-fcUSER/'));
create foreign table gs_tables_db."TRNG_TDSysAnalytics_USER_HIST_fcWKLD", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/USER-HIST-fcWKLD/'));
create foreign table gs_tables_db."TRNG_TDSysAnalytics_CPU_HIST_fcRESULTS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/CPU-HIST-fcRESULTS/'));
create foreign table gs_tables_db."TRNG_TDSysAnalytics_CPU_HIST", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/CPU-HIST/'));
create foreign table gs_tables_db."TRNG_TDSysAnalytics_USER_HIST", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/USER-HIST/'));
create foreign table gs_tables_db."TRNG_TDSysAnalytics_DB_HIST", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/DB-HIST/'));
create foreign table gs_tables_db."TRNG_TDSysAnalytics_USER_HIST_fcPRF", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/USER-HIST-fcPRF/'));
replace view TRNG_TDSysAnalytics.CPU_HIST as locking row for access select
"TheDate"
,"TheTime"
,"NodeID"
,"CPUTotal"
,"CPUBusy"
,"CPUBusy_pct"
,"CPUUServ"
,"CPUUExec"
,"CPUIoWait"
,"CPUIdle"
from gs_tables_db.TRNG_TDSysAnalytics_CPU_HIST;
replace view TRNG_TDSysAnalytics.CPU_HIST_fcRESULTS as locking row for access select
"ds"
,"trend"
,"yhat_lower"
,"yhat_upper"
,"trend_lower"
,"trend_upper"
,"additive_terms"
,"additive_terms_lower"
,"additive_terms_upper"
,"weekly"
,"weekly_lower"
,"weekly_upper"
,"multiplicative_terms"
,"multiplicative_terms_lower"
,"multiplicative_terms_upper"
,"yhat"
,"exeDates"
,"Node ID"
,"batch"
from gs_tables_db.TRNG_TDSysAnalytics_CPU_HIST_fcRESULTS;
replace view TRNG_TDSysAnalytics.DB_HIST as locking row for access select
"LogDate"
,"DatabaseName"
,"AccountName"
,"CURRENTPERM"
,"PEAKPERM"
,"MAXPERM"
,"CURRENTPERMSKEW"
,"PERMPCTUSED"
from gs_tables_db.TRNG_TDSysAnalytics_DB_HIST;
replace view TRNG_TDSysAnalytics.DB_HIST_fcRESULTS as locking row for access select
"ds"
,"trend"
,"yhat_lower"
,"yhat_upper"
,"trend_lower"
,"trend_upper"
,"additive_terms"
,"additive_terms_lower"
,"additive_terms_upper"
,"weekly"
,"weekly_lower"
,"weekly_upper"
,"multiplicative_terms"
,"multiplicative_terms_lower"
,"multiplicative_terms_upper"
,"yhat"
,"exeDates"
,"DatabaseName"
,"batch"
from gs_tables_db.TRNG_TDSysAnalytics_DB_HIST_fcRESULTS;
replace view TRNG_TDSysAnalytics.USER_HIST as locking row for access select
"LOGDATE"
,"USERNAMES"
,"ABORTFLAG"
,"WDNAME"
,"FINALWDNAME"
,"PROFILENAME"
,"MAXCPU"
,"IMPACTCPU"
,"TOTALIO"
,"PJI"
,"SPOOLUSAGE"
,"STATEMENTYPE"
from gs_tables_db.TRNG_TDSysAnalytics_USER_HIST;
replace view TRNG_TDSysAnalytics.USER_HIST_fcPRF as locking row for access select
"ds"
,"trend"
,"yhat_lower"
,"yhat_upper"
,"trend_lower"
,"trend_upper"
,"additive_terms"
,"additive_terms_lower"
,"additive_terms_upper"
,"weekly"
,"weekly_lower"
,"weekly_upper"
,"multiplicative_terms"
,"multiplicative_terms_lower"
,"multiplicative_terms_upper"
,"yhat"
,"exeDates"
,"UserName"
,"batch"
from gs_tables_db.TRNG_TDSysAnalytics_USER_HIST_fcPRF;
replace view TRNG_TDSysAnalytics.USER_HIST_fcUSER as locking row for access select
"ds"
,"trend"
,"yhat_lower"
,"yhat_upper"
,"trend_lower"
,"trend_upper"
,"additive_terms"
,"additive_terms_lower"
,"additive_terms_upper"
,"weekly"
,"weekly_lower"
,"weekly_upper"
,"multiplicative_terms"
,"multiplicative_terms_lower"
,"multiplicative_terms_upper"
,"yhat"
,"exeDates"
,"UserName"
,"batch"
from gs_tables_db.TRNG_TDSysAnalytics_USER_HIST_fcUSER;
replace view TRNG_TDSysAnalytics.USER_HIST_fcWKLD as locking row for access select
"ds"
,"trend"
,"yhat_lower"
,"yhat_upper"
,"trend_lower"
,"trend_upper"
,"additive_terms"
,"additive_terms_lower"
,"additive_terms_upper"
,"weekly"
,"weekly_lower"
,"weekly_upper"
,"multiplicative_terms"
,"multiplicative_terms_lower"
,"multiplicative_terms_upper"
,"yhat"
,"exeDates"
,"UserName"
,"batch"
from gs_tables_db.TRNG_TDSysAnalytics_USER_HIST_fcWKLD;
REPLACE VIEW TRNG_TDSYSANALYTICS.V_AGG_CPU_HIST AS (
 SELECT  TheDate, NodeID
  , MIN(CPUTotal) as minCPUTotal , MAX(CPUTotal) as maxCPUTotal 
  , MIN(CPUBusy) as minCPUBusy , MAX(CPUBusy) as maxCPUBusy
  , MIN(CPUBusy_pct) as minCPUBusy_pct, MAX(CPUBusy_pct) as maxCPUBusy_pct
  , MIN(CPUUServ) as minCPUUServ , MAX(CPUUServ) as maxCPUUServ
  , MIN(CPUUExec) as minCPUUExec, MAX(CPUUExec) as maxCPUUExec
  , MIN(CPUIoWait) as minCPUIoWait , MAX(CPUIoWait) maxCPUIoWait
  , MIN(CPUIdle) as minCPUIdle , MAX(CPUIdle) as maxCPUIdle
 FROM TRNG_TDSYSANALYTICS.CPU_HIST 
 GROUP BY  TheDate,NodeID
 );

REPLACE VIEW TRNG_TDSYSANALYTICS.V_GROWTHDIFF as (
select a.LogDate as LogDate, a.DatabaseName as DatabaseName
  , a.AccountName as AccountName, a.currentperm/1024/1024/1024 as CurrentPerm
  , a.PeakPerm/1024/1024/1024 as PeakPerm, a.MaxPerm/1024/1024/1024 as MaxPerm
  , a.CurrentPermSkew
  , a.PermPctUsed
  , MIN(a.currentperm/1024/1024/1024)
      OVER (  PARTITION  BY a.databasename
        ORDER BY a.logdate asc 
        ROWS BETWEEN  1 preceding AND 1 preceding) GrowthDiff
     , ( a.currentperm/1024/1024/1024 - GrowthDiff) growthRate  
from TRNG_TDSYSANALYTICS.DB_HIST a
where 1=1
and CurrentPerm <> 0);

REPLACE VIEW TRNG_TDSYSANALYTICS.V_USER_HIST as
 SELECT a.*, 
   MIN(a.MAXCPU)
      OVER (  PARTITION  BY a.USERNAMES
        ORDER BY a.LOGDATE asc 
        ROWS BETWEEN  1 preceding AND 1 preceding) USAGE_VARIATION
     , ( A.MAXCPU - USAGE_VARIATION) CPU_VAR
    FROM TRNG_TDSYSANALYTICS.user_hist a
   -- ORDER BY USERNAMES, LOGDATE
    WHERE usernames IN (
    SELECT usernames
        FROM (
        SELECT usernames,
            SUM(maxcpu) AS maxi
            FROM TRNG_TDSYSANALYTICS.user_hist
            HAVING maxi > 20000
            GROUP BY usernames
        ) t);

