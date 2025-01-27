REPLACE VIEW [DQ_VIEWDB_TEMPLATE].DQ_hist_bin_comp AS
SELECT
  COALESCE(p.sessionid, n.sessionid) AS sessionid,
  COALESCE(p.databasename, n.databasename) AS databasename,
  COALESCE(p.tablename, n.tablename) AS tablename,
  COALESCE(p.xcol, n.xcol) AS xcol,
  COALESCE(p.xbin, n.xbin) AS xbin,
  CAST(COALESCE(p.xcnt, 0) AS FLOAT) as prev_cnt,
  CAST(COALESCE(n.xcnt, 0) AS FLOAT) as new_cnt,
  CAST(COALESCE(p.xpct, 0)/100.00000 AS FLOAT) as prev_pct,
  CAST(COALESCE(n.xpct, 0)/100.00000 AS FLOAT) as new_pct,
  COALESCE(p.xbeg, n.xbeg) AS xbeg,
  COALESCE(p.xend, n.xend) AS xend
FROM 
  (SELECT 
     sessionid, 
     databasename,
     tablename,
     xcol,
     ZEROIFNULL(xbin) AS xbin,
     xcnt, xpct,
     xbeg, xend
   FROM [DQ_DATADB_TEMPLATE].DQ_hist_info_hist 
   WHERE datatype = 'prv') p
FULL OUTER JOIN 
  (SELECT 
     sessionid, 
     databasename,
     tablename,
     xcol,
     ZEROIFNULL(xbin) AS xbin,
     xcnt, xpct,
     xbeg, xend
   FROM [DQ_DATADB_TEMPLATE].DQ_hist_info_hist 
   WHERE datatype = 'new') n
ON (p.sessionid = n.sessionid
AND p.databasename = n.databasename
AND p.tablename = n.tablename
AND p.xcol =  n.xcol
AND p.xbin = n.xbin);