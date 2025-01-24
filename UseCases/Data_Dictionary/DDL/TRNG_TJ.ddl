create database TRNG_TJ from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_TJ_dwh_coveo_events", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TJ/dwh-coveo-events/'));
create foreign table gs_tables_db."TRNG_TJ_query_traintoken", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TJ/query-traintoken/'));
create foreign table gs_tables_db."TRNG_TJ_stg_coveo", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TJ/stg-coveo/'));
create foreign table gs_tables_db."TRNG_TJ_dwh_coveo2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TJ/dwh-coveo2/'));
create foreign table gs_tables_db."TRNG_TJ_Paths_S3tS1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TJ/Paths-S3tS1/'));
create foreign table gs_tables_db."TRNG_TJ_ldaout1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TJ/ldaout1/'));
create foreign table gs_tables_db."TRNG_TJ_doc_category", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TJ/doc-category/'));
create foreign table gs_tables_db."TRNG_TJ_tokens_by_topic", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TJ/tokens-by-topic/'));
create foreign table gs_tables_db."TRNG_TJ_dwh_coveo", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TJ/dwh-coveo/'));
replace view TRNG_TJ.doc_category as locking row for access select
"sys_id"
,"r__number"
,"short_description"
,"full_category"
,"r__label"
,"published"
,"actdate"
from gs_tables_db.TRNG_TJ_doc_category;
replace view TRNG_TJ.dwh_coveo as locking row for access select
"t_consec"
,"t_consec2"
,"visitId"
,"datet"
,"visitorId"
,"eventType"
,"cause"
,"userNameC"
,"queryPipeline"
,"eventValue"
,"event"
,"queryExpression"
,"documentTitle"
,"numberOfResults"
,"originLevel1"
,"c_context_number"
,"c_contextpriority"
,"c_context_short_desc"
,"withResults"
,"hours_diff_tt"
,"hours_diff"
,"Min_diff"
,"Sec_diff"
,"hours_diff2"
,"Min_diff2"
,"Sec_diff2"
from gs_tables_db.TRNG_TJ_dwh_coveo;
replace view TRNG_TJ.dwh_coveo2 as locking row for access select
"t_consec"
,"t_consec2"
,"visitid"
,"datet"
,"eventType"
,"userNameC"
,"Queryexpression"
,"EventCause"
,"eventValue"
,"event"
,"documentTitle"
,"sys_id"
,"numberOfResults"
,"DocumentAuthor"
,"DocumentCategory"
,"FacetTitle"
,"FacetValue"
,"hours_diff_tt"
,"hours_diff"
,"Min_diff"
,"Sec_diff"
,"hours_diff2"
,"Min_diff2"
,"Sec_diff2"
from gs_tables_db.TRNG_TJ_dwh_coveo2;
replace view TRNG_TJ.dwh_coveo_events as locking row for access select
"t_consec"
,"t_consec2"
,"datet"
,"visitId"
,"event"
,"queryExpression"
,"documentTitle"
,"numberOfResults"
,"c_context_short_desc"
,"Min_diff2"
,"hours_diff2"
,"event_mod"
from gs_tables_db.TRNG_TJ_dwh_coveo_events;
replace view TRNG_TJ.ldaout1 as locking row for access select
"docid"
,"topicid"
,"topicweight"
from gs_tables_db.TRNG_TJ_ldaout1;
replace view TRNG_TJ.Paths_S3tS1 as locking row for access select
"u_solution_type"
,"asset_tag"
,"name"
,"r__number"
,"short_description"
,"u_siteid"
,"datet_ini"
,"datet_fin"
,"datet_1"
,"pattern"
,"t_eventcount"
,"Diff_DDHHMM"
,"Total_hours"
from gs_tables_db.TRNG_TJ_Paths_S3tS1;
replace view TRNG_TJ.query_traintoken as locking row for access select
"documenttitle"
,"token"
,"frequency"
,"location"
from gs_tables_db.TRNG_TJ_query_traintoken;
replace view TRNG_TJ.stg_coveo as locking row for access select
"visitId"
,"datetime"
,"eventType"
,"userName_c"
,"queryExpression"
,"cause"
,"city"
,"country"
,"device"
,"isMobile"
,"language_c"
,"region"
,"eventValue"
,"documentTitle"
,"documentUrl"
,"batchId"
,"clickRank"
,"collectionName"
,"customData"
,"customEventId"
,"isContextual"
,"numberOfResults"
,"pageNumber"
,"pageSize"
,"responseTimeInMs"
,"searchId"
,"originLevel1"
,"originLevel2"
,"originLevel3"
,"advQueryExpr"
,"sourceName"
,"systemUriHash"
,"userAgent"
,"userId"
,"visitorId"
,"withClicks"
,"withResults"
,"anonymous"
,"queryPipeline"
,"splitTestRunName"
,"splitTestRunVersion"
,"rankingModifier"
,"clickId"
,"documentAuthor"
,"documentCategory"
,"deviceCategory"
,"browser"
,"browserWithVersion"
,"op_syst"
,"op_syst_vern"
,"outcome"
,"originContext"
,"isInternal"
,"searchIndexId"
,"searchFacetState"
,"clientId"
,"casecustomername"
,"casesubject"
,"c_AssignmentGroup"
,"c_cnxt_buss_serv"
,"c_cnxt_buss_serv_value"
,"c_cnxt_det_prob_desc_symp"
,"c_contact"
,"c_detail_problem"
,"c_context_number"
,"c_context_priority"
,"c_context_short_desc"
,"c_context_state"
,"c_context_sys_id"
,"c_context_u_account"
,"c_context_u_case_cause"
,"c_context_u_category_ch"
,"c_case_severity"
,"c_cnxt_u_incident_cause"
,"c_siteId"
,"c_cnxt_u_symptom_value"
,"c_usr_dep_id"
,"c_usr_role"
,"c_watch_list"
,"c_facettitle"
,"c_facetvalue"
,"c_interfacechangeto"
,"PartialQuery"
,"RefinedKeywords"
,"FacetId"
,"searchesc_keyword"
from gs_tables_db.TRNG_TJ_stg_coveo;
replace view TRNG_TJ.tokens_by_topic as locking row for access select
"topicid"
,"token"
,"n"
,"cntt"
from gs_tables_db.TRNG_TJ_tokens_by_topic;
create view TRNG_TJ.category_topic as
(
select a.*,b.topicid, topicweight
  from TRNG_TJ.doc_qry_cat a
  left join 
	  (select * 
	  from TRNG_TJ.ldaout1
	   where (docid,topicweight) in 
									(
									SELECT docid,
									       max(topicweight) topicW
									  FROM TRNG_TJ.ldaout1
									  group by 1
									) 
	  ) b
	  on 
	  a.documentTitle = b.docid
);

create view TRNG_TJ.decil_agg as
 (
   select deciles,
          count(*)              as n,
          average(t_eventcount) as n_events,
          min(total_hours)      as min_h,
          avg(total_hours)      as avg_h,
          max(total_hours)      as max_h,          
          sum (case when u_solution_type like 'On-Prem' then 1.00 else 0.00 end)             as n_OnPrem,
          sum (case when u_solution_type like 'TD Managed AWS Cloud' then 1 else 0 end)      as n_TD_Managed_AWS_Cloud,      
          sum (case when u_solution_type like 'TD Managed Azure Cloud' then 1 else 0 end)    as n_TD_Managed_Azure_Cloud,
          sum (case when u_solution_type like 'TD Managed Cloud' then 1 else 0 end)          as n_TD_Managed_Cloud,
          sum (case when u_solution_type like 'TD Managed Customer Cloud' then 1 else 0 end) as n_TD_Managed_Customer_Cloud,
          sum (case when u_solution_type like 'TD Managed Google Cloud' then 1 else 0 end)   as n_TD_Managed_Google_Cloud,
          sum (case when u_solution_type like 'VMware' then 1 else 0 end)                    as n_VMware,
          n_OnPrem                    * 100.00 /  sum (n_OnPrem)                    over()   as p_OnPrem,
          n_TD_Managed_AWS_Cloud      * 100.00 /  sum (n_TD_Managed_AWS_Cloud)      over()   as p_TD_Managed_AWS_Cloud,                             
          n_TD_Managed_Azure_Cloud    * 100.00 /  sum (n_TD_Managed_Azure_Cloud )   over()   as p_TD_Managed_Azure_Cloud,                             
          n_TD_Managed_Cloud          * 100.00 /  sum (n_TD_Managed_Cloud)          over()   as p_TD_Managed_Cloud,                
          n_TD_Managed_Customer_Cloud * 100.00 /  sum (n_TD_Managed_Customer_Cloud) over()   as p_TD_Managed_Customer_Cloud,                                 
          n_TD_Managed_Google_Cloud   * 100.00 /  sum (n_TD_Managed_Google_Cloud)   over()   as p_TD_Managed_Google_Cloud,                              
          n_VMware                    * 100.00 /  sum (n_VMware)                    over()   as p_VMware
     from TRNG_TJ.timetoscale_decil
    group by 1
);

create view TRNG_TJ.doc_qry_cat as
(


  select distinct visitid, 
                  documentTitle, 
                  testquery,
                  r__number,     
                  sys_id,
                  full_category
   from
       (
		select t_consec,
		       visitid,
		       datet,
		       eventtype,
		       Queryexpression,
		       EventCause,
		       r__number,
		       documentTitle,
		       short_description,
		       a.sys_id,
		       LAST_VALUE(Queryexpression IGNORE NULLS) OVER (PARTITION BY visitid ORDER BY datet ROWS UNBOUNDED PRECEDING) as testQuery,
		        full_category
		  from TRNG_TJ.dwh_coveo2          a
		   left join TRNG_TJ.doc_category  b
	  	   on  (a.sys_id = b.sys_id)
         --where visitid like '07a4442c-3e95-4a43-94c4-70ef8385aae2'  
       ) a
      where documentTitle is not null
      
);

CREATE VIEW TRNG_TJ.S3Cases_vw AS
(
SELECT scs.r__number,
       cast( cast(scs.sys_updated_on AS TIMESTAMP(6)) as varchar(30)) as sys_updated_on,
       trim(scs.priority)                                             as priority,
       trim(scs.Short_description)                                    as Short_description,
       trim(scs.priority) || '_' || trim(scs.Short_description)       as event 
  FROM RAW_SERVICENOW_VW.sn_customerservice_case as scs
    INNER JOIN
       (
		SELECT a.r__number ,sys_updated_on, priority
		  FROM RAW_SERVICENOW_VW.sn_customerservice_case        a
		   INNER JOIN
				(select r__number,       
				       min(sys_updated_on) mindate
				  from RAW_SERVICENOW_VW.sn_customerservice_case 		
				  group by 1
				 )                                               b
		      ON (    a.r__number      =  b.r__number 
		          and a.sys_updated_on =  b.mindate
		         )
		  WHERE priority = 3
        ) s3cases
     ON (scs.r__number = s3cases.r__number)  
 );

create view TRNG_TJ.Snow_users as
  (
  select 
         a.r__name2,
         a.r__name,
         b.user_name,
         b.employee_number,
         b.city
   from         
       (
         select 
                REGEXP_REPLACE(r__name, '(TDC)', '', 1, 1, 'i') as r__name2,
                r__name, 
                user_name, 
                employee_number,
                city  
           from RAW_SERVICENOW_VW.sys_user_cur
           where r__name like  '%(TDC)%'
                 --and r__name like  '%londra%'
         union all
          select 
                REGEXP_REPLACE(r__name, '(TDAT)', '', 1, 1, 'i') as r__name2,
                r__name, 
                user_name, 
                employee_number,
                city  
           from RAW_SERVICENOW_VW.sys_user_cur
           where r__name like  '%(TDAT)%'
                 --and r__name like  '%londra%'        
         ) a
    left join
   
   (
      SELECT REGEXP_REPLACE(r__name, '(TDAT)', '', 1, 1, 'i') as r__name2,
             r__name, 
             user_name, 
             employee_number,
             city   
        from RAW_SERVICENOW_VW.sys_user_cur
        where r__name like  '%(TDAT)%'
          and employee_number is not null
    ) b    
    on a.r__name2 = b.r__name2
   );

create view TRNG_TJ.timetoscale_decil as
 (
SELECT 
       U_solution_type,
       asset_tag,
       r__number,
       name as assignment_group,
       short_description,
       total_hours,
       pattern,
       t_eventcount,
       quantile(10,total_hours) as deciles       
   FROM TRNG_TJ.Paths_S3tS1
);

CREATE VIEW TRNG_TJ.vdt_cov2_p as 
(
SELECT
	  t_consec,
	  t_consec2,
	  visitid,
	  datet,
	  eventType,
      userNameC,
      Queryexpression,
      EventCause,
      eventValue,
      event,
      documentTitle,
      SYS_ID,
      numberOfResults,
      DocumentAuthor,
      DocumentCategory,
      FacetTitle,
      FacetValue,    
      hours_diff as hours_diff_tt,
	  case when t_consec = 1 then 0 
	       else
  		  	  (hours_diff - (sum(hours_diff) over (PARTITION BY visitid  order by datet rows 1 preceding) -  hours_diff)) 
	  end                           as hours_diff,
	  case when t_consec = 1 then 0 
	 	    else
	 	       (Min_diff -  (sum(Min_diff) over (PARTITION BY visitid  order by datet rows 1 preceding)  -  Min_diff))
	  end                           as  Min_diff,
	  case when t_consec = 1 then 0 
	 	     else
	 	       (Sec_diff - (sum(Sec_diff) over (PARTITION BY visitid  order by datet rows 1 preceding)  -  Sec_diff))
	 end                            as  Sec_diff,
	 case when t_consec2 = 1 then 0 
	       else
	 sum(hours_diff) over (PARTITION BY visitid  order by datet ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) - 2*hours_diff 
	 end                           as hours_diff2,
	 case when t_consec2 = 1 then 0 
	       else
	 sum(Min_diff) over (PARTITION BY visitid  order by datet ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING)   - 2*Min_diff   
	 end                           as Min_diff2,
	 case when t_consec2 = 1 then 0 
	       else
	 sum(Sec_diff) over (PARTITION BY visitid  order by datet ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING)   - 2*Sec_diff   
	 end                           as Sec_diff2
	 
 From  (       
		select 
		       sum (1) over (PARTITION BY visitid  order by datet ROWS UNBOUNDED PRECEDING) as t_consec,
		       sum (1) over (PARTITION BY visitid  order by datet desc  ROWS UNBOUNDED PRECEDING) as t_consec2,
		       visitid,
		       cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS') as datet,
		       eventType,
		       userName_c as userNameC,
		       Queryexpression,
		       cause as EventCause,
		       eventValue,
		       eventtype || '-' || coalesce(eventvalue,'NA') as  event,
		       documentTitle,
		       RIGHT(REGEXP_SUBSTR(documentURL, 'sys_id=.{32}'), 32) AS sys_id,
               numberOfResults,
               DocumentAuthor,
               DocumentCategory,
               c_facettitle as FacetTitle,
               c_FacetValue as FacetValue,
		       (
					    CAST ((
					        (CAST((CAST(    cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')   AS DATE)) AS DECIMAL(18,6)) * 24)
					          + ((EXTRACT(  HOUR FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ))
					          + ((EXTRACT(MINUTE FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) / 60.000000)
					          + ((EXTRACT(SECOND FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) / 3600.000000)
					      ) AS DECIMAL (12,3) )
			    ) AS hours_diff,
			      
			    
			    (
				    CAST ((
				        (CAST((CAST(cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS') AS DATE)) AS REAL) * 24 * 60)
				          + ((EXTRACT(  HOUR FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) * 60.000000)
				          + ((EXTRACT(MINUTE FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) )
				          + ((EXTRACT(SECOND FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) / 60.000000)
				    ) AS REAL )
		           ) AS Min_diff
		           ,
				  (
				    CAST ((
				        (CAST((CAST(cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS') AS DATE)) AS REAL) * 24 * 60 * 60.000000)
				          + ((EXTRACT(  HOUR FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) * 60.000000 * 60.000000)
				          + ((EXTRACT(MINUTE FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) * 60.000000)
				          + ((EXTRACT(SECOND FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) / 60.000000)
				      ) AS REAL  )
				  ) AS Sec_diff				  
			FROM  
			(
				  SELECT *
				    FROM TRNG_TJ.stg_coveo
				     where length(datetime) =19 
--				    Where visitid like '002aa3b7-86d0-47ac-b7ff-b0feca62a273'
				      --and cast(cast(datetime as timestamp format 'YYYY/MM/DDBHH:MI:SS') as date) <= '2020-08-21'
				      --and cast(cast(datetime as timestamp format 'YYYY/MM/DDBHH:MI:SS') as date) > '2020-08-21'  and cast(cast(datetime as timestamp format 'YYYY/MM/DDBHH:MI:SS') as date) <= '2020-08-29'
				      --and cast(cast(datetime as timestamp format 'YYYY/MM/DDBHH:MI:SS') as date) > '2020-08-29'  and cast(cast(datetime as timestamp format 'YYYY/MM/DDBHH:MI:SS') as date) <= '2020-09-07'
				        --and cast(cast(datetime as timestamp format 'YYYY/MM/DDBHH:MI:SS') as date) > '2020-09-07'  and cast(cast(datetime as timestamp format 'YYYY/MM/DDBHH:MI:SS') as date) <= '2020-09-15'
				      --2020-08-16,2020-09-14
		  ) A
      )AA    
);

CREATE VIEW TRNG_TJ.vdt_cov_p as 
(
SELECT
	  t_consec,
	  t_consec2,
	  visitid,
	  datet,
	  visitorId,
      eventType,
      cause,
      userNameC,
      queryPipeline,      
      eventValue,
      event,
      queryexpression,
      documentTitle,
      numberOfResults,
      originlevel1,
      c_context_number,
      c_context_priority as c_contextpriority,
      c_context_short_desc,
      withResults,      
      hours_diff as hours_diff_tt,
	  case when t_consec = 1 then 0 
	       else
  		  	  (hours_diff - (sum(hours_diff) over (PARTITION BY visitid  order by datet rows 1 preceding) -  hours_diff)) 
	  end                           as hours_diff,
	  case when t_consec = 1 then 0 
	 	    else
	 	       (Min_diff -  (sum(Min_diff) over (PARTITION BY visitid  order by datet rows 1 preceding)  -  Min_diff))
	  end                           as  Min_diff,
	  case when t_consec = 1 then 0 
	 	     else
	 	       (Sec_diff - (sum(Sec_diff) over (PARTITION BY visitid  order by datet rows 1 preceding)  -  Sec_diff))
	 end                            as  Sec_diff,
	 case when t_consec2 = 1 then 0 
	       else
	 sum(hours_diff) over (PARTITION BY visitid  order by datet ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) - 2*hours_diff 
	 end                           as hours_diff2,
	 case when t_consec2 = 1 then 0 
	       else
	 sum(Min_diff) over (PARTITION BY visitid  order by datet ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING)   - 2*Min_diff   
	 end                           as Min_diff2,
	 case when t_consec2 = 1 then 0 
	       else
	 sum(Sec_diff) over (PARTITION BY visitid  order by datet ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING)   - 2*Sec_diff   
	 end                           as Sec_diff2
	 
 From  (       
		select 
		       sum (1) over (PARTITION BY visitid  order by datet ROWS UNBOUNDED PRECEDING) as t_consec,
		       sum (1) over (PARTITION BY visitid  order by datet desc  ROWS UNBOUNDED PRECEDING) as t_consec2,
		       visitid,
		       cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS') as datet,
		       visitorId,
		       eventType,
		       cause,
		       userName_c as userNameC,
			   queryPipeline,      
		       eventValue,
		       eventtype || '-' || coalesce(eventvalue,'NA') as  event,
		       queryexpression,	   
		       documentTitle,
               numberOfResults,
               originlevel1,
               c_context_number,
               c_context_priority,
               c_context_short_desc,
               withResults,
		       (
					    CAST ((
					        (CAST((CAST(    cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')   AS DATE)) AS DECIMAL(18,6)) * 24)
					          + ((EXTRACT(  HOUR FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ))
					          + ((EXTRACT(MINUTE FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) / 60.000000)
					          + ((EXTRACT(SECOND FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) / 3600.000000)
					      ) AS DECIMAL (12,3) )
			    ) AS hours_diff,
			      
			    
			    (
				    CAST ((
				        (CAST((CAST(cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS') AS DATE)) AS REAL) * 24 * 60)
				          + ((EXTRACT(  HOUR FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) * 60.000000)
				          + ((EXTRACT(MINUTE FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) )
				          + ((EXTRACT(SECOND FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) / 60.000000)
				    ) AS REAL )
		           ) AS Min_diff
		           ,
				  (
				    CAST ((
				        (CAST((CAST(cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS') AS DATE)) AS REAL) * 24 * 60 * 60.000000)
				          + ((EXTRACT(  HOUR FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) * 60.000000 * 60.000000)
				          + ((EXTRACT(MINUTE FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) * 60.000000)
				          + ((EXTRACT(SECOND FROM cast(datetime as timestamp format 'MM/DD/YYYYBHH:MI:SS')) ) )
				      ) AS REAL  )
				  ) AS Sec_diff				  
			FROM  
			(
				  SELECT *
				    FROM TRNG_TJ.stg_coveo
				   
				      --and cast(cast(datetime as timestamp format 'YYYY/MM/DDBHH:MI:SS') as date) <= '2020-08-21'
				      --and cast(cast(datetime as timestamp format 'YYYY/MM/DDBHH:MI:SS') as date) > '2020-08-21'  and cast(cast(datetime as timestamp format 'YYYY/MM/DDBHH:MI:SS') as date) <= '2020-08-29'
				      --and cast(cast(datetime as timestamp format 'YYYY/MM/DDBHH:MI:SS') as date) > '2020-08-29'  and cast(cast(datetime as timestamp format 'YYYY/MM/DDBHH:MI:SS') as date) <= '2020-09-07'
				        --and cast(cast(datetime as timestamp format 'YYYY/MM/DDBHH:MI:SS') as date) > '2020-09-07'  and cast(cast(datetime as timestamp format 'YYYY/MM/DDBHH:MI:SS') as date) <= '2020-09-15'
				      --2020-08-16,2020-09-14
		  ) A
      )AA    
);

