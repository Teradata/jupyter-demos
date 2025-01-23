REPLACE VIEW [DQ_VIEWDB_TEMPLATE].DQ_Alert_vw AS
LOCKING ROW FOR ACCESS
SELECT
  a.sessionid,
  a.DbName,
  a.TableName,
  a.ColumnName,
  a.ToleranceLevel,
  a.ToleranceVal,
  a.DataType,
  a.AlertType,
  a.AlertDetail,
  c.Process_TS
FROM [DQ_DATADB_TEMPLATE].dq_process_columns c
INNER JOIN [DQ_DATADB_TEMPLATE].dq_alert a
ON (c.sessionid = a.sessionid
AND c.DBName = a.DBName
AND c.TableName = a.TableName
AND c.ColumnName = a.ColumnName)
;

