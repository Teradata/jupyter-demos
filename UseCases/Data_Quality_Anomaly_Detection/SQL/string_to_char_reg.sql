SELECT Token, Count(0)
FROM (WITH cte AS
(SELECT UPPER(hospital_name) AS s FROM hospitals_ld)
SELECT * FROM TABLE (RegExp_Split_To_Table(1, cte.s, '(?=.)', 'i')
RETURNS ( outKey INT, TokenNum INT, Token VARCHAR(31000) CHARACTER SET Unicode)
) AS dt ) t
GROUP BY 1
;



WITH cte AS
(
  SELECT id, 
    TRIM(oreplace(oreplace(path,'[',''),']','')) as path
  FROM npathresult
)
SELECT
  d.id, d.comp_order, d.comp, s.cnt
FROM TABLE 
  (strtok_split_to_table(cte.id, cte.path, ',')
RETURNS (id integer, comp_order integer, comp varchar(200)) ) as d, 
ml__assign__16168750930510 s
WHERE d.id = s.id
order by 1,2;
