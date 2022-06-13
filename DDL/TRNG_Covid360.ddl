create database TRNG_Covid360 from demonow as perm=0;
create foreign table gs_tables_db."TRNG_Covid360_SEM_H_SITE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/SEM-H-SITE/'));
create foreign table gs_tables_db."TRNG_Covid360_ADS_age_factor", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/ADS-age-factor/'));
create foreign table gs_tables_db."TRNG_Covid360_SEM_R_PERSON_RISK_CALCULATION_FACTOR", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/SEM-R-PERSON-RISK-CALCULATION-FACTOR/'));
create foreign table gs_tables_db."TRNG_Covid360_ADS_simulation_with_risk", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/ADS-simulation-with-risk/'));
create foreign table gs_tables_db."TRNG_Covid360_ADS_scenarios", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/ADS-scenarios/'));
create foreign table gs_tables_db."TRNG_Covid360_WRK_SNA_Edge_Weight", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/WRK-SNA-Edge-Weight/'));
create foreign table gs_tables_db."TRNG_Covid360_WRK_SNA_Node", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/WRK-SNA-Node/'));
create foreign table gs_tables_db."TRNG_Covid360_ADS_SNA_LocalClusteringCoefficient", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/ADS-SNA-LocalClusteringCoefficient/'));
create foreign table gs_tables_db."TRNG_Covid360_ADS_simulation_jakarta_locations", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/ADS-simulation-jakarta-locations/'));
create foreign table gs_tables_db."TRNG_Covid360_ADS_simulation_with_risk_location", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/ADS-simulation-with-risk-location/'));
create foreign table gs_tables_db."TRNG_Covid360_ADS_Simulation", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/ADS-Simulation/'));
create foreign table gs_tables_db."TRNG_Covid360_ADS_SNA_EigenCentrality", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/ADS-SNA-EigenCentrality/'));
create foreign table gs_tables_db."TRNG_Covid360_ADS_SNA_Betweenness", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/ADS-SNA-Betweenness/'));
create foreign table gs_tables_db."TRNG_Covid360_ADS_simulation_risk_SNA", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/ADS-simulation-risk-SNA/'));
create foreign table gs_tables_db."TRNG_Covid360_SEM_D_SITE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/SEM-D-SITE/'));
create foreign table gs_tables_db."TRNG_Covid360_SEM_D_PERSON", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/SEM-D-PERSON/'));
create foreign table gs_tables_db."TRNG_Covid360_SEM_D_RISK_SCORE_TYPE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/SEM-D-RISK-SCORE-TYPE/'));
create foreign table gs_tables_db."TRNG_Covid360_ADS_simulation_stats", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/ADS-simulation-stats/'));
create foreign table gs_tables_db."TRNG_Covid360_ADS_SNA_Closeness", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Covid360/ADS-SNA-Closeness/'));
replace view TRNG_Covid360.ADS_age_factor as locking row for access select
"age"
,"age_factor"
from gs_tables_db.TRNG_Covid360_ADS_age_factor;
replace view TRNG_Covid360.ADS_scenarios as locking row for access select
"scenario_id"
,"description"
,"config_file"
,"status"
from gs_tables_db.TRNG_Covid360_ADS_scenarios;
replace view TRNG_Covid360.ADS_Simulation as locking row for access select
"Date_Time"
,"id"
,"age"
,"gender"
,"infection_status"
,"days_since_infection"
,"date_of_infection"
,"date_of_symptoms"
,"date_of_recovery"
,"date_of_death"
,"date_hospital_check_in"
,"date_hospital_check_out"
,"residence_id"
,"school_id"
,"workplace_id"
,"currentLocationID"
,"currentLocationType"
,"lat"
,"lon"
,"zone_id"
,"is_notified_to_isolate"
,"is_symptomatic"
,"incubation_period"
,"days_since_isolation"
,"isolation_times"
,"days_since_symptomatic"
,"in_hospital"
,"wears_mask"
,"type_of_job"
,"morbidity"
,"exposure_time"
,"infected_from_user_id"
,"transmitted_count"
,"asymptomatic_transmission"
,"locationID_of_infection"
,"income"
,"household_size"
,"bmi"
,"date_of_test"
,"test_result"
,"Scenario"
from gs_tables_db.TRNG_Covid360_ADS_Simulation;
replace view TRNG_Covid360.ADS_simulation_jakarta_locations as locking row for access select
"lat"
,"lon"
,"Admin_area_level_0"
,"Admin_area_level_1"
,"Admin_area_level_2"
,"Admin_area_level_3"
,"Admin_area_level_4"
from gs_tables_db.TRNG_Covid360_ADS_simulation_jakarta_locations;
replace view TRNG_Covid360.ADS_simulation_risk_SNA as locking row for access select
"id"
,"age"
,"avg_proximity"
,"avg_proximity_infected"
,"btw"
,"clse"
,"eigen"
,"clust"
,"degree"
,"date"
,"scenario_id"
from gs_tables_db.TRNG_Covid360_ADS_simulation_risk_SNA;
replace view TRNG_Covid360.ADS_simulation_stats as locking row for access select
"Scenario"
,"days_since_epidemic"
,"date"
,"infected_count"
,"recovered_count"
,"death_count"
,"total_infected_count"
,"symptomatic_ratio"
,"asymptomatic_ratio"
,"positive_rate"
,"daily_infections"
,"daily_recoveries"
,"daily_deaths"
,"Ro_t"
,"Re"
,"youngster (5 - 22) [infected]"
,"bachelor  (23 - 30) [infected]"
,"family man (30 - 60) [infected]"
,"old age (> 60) [infected]"
,"youngster (5 - 22) [Death]"
,"bachelor  (23 - 30) [Death]"
,"family man (30 - 60) [Death]"
,"old age (> 60) [Death]"
,"None [Death]"
,"Cardiovascular [Death]"
,"Diabetes [Death]"
,"Obesity [Death]"
,"Respiratory [Death]"
,"Hypertension [Death]"
,"Multiple [Death]"
,"No Job [infected]"
,"Other job [infected]"
,"Remote worker [infected]"
,"Health worker [infected]"
,"daily_hospitalizations"
,"shopping_mall_marker_visitors"
from gs_tables_db.TRNG_Covid360_ADS_simulation_stats;
replace view TRNG_Covid360.ADS_simulation_with_risk as locking row for access select
"Date_Time"
,"id"
,"age"
,"gender"
,"infection_status"
,"days_since_infection"
,"date_of_infection"
,"date_of_symptoms"
,"date_of_recovery"
,"date_of_death"
,"date_hospital_check_in"
,"date_hospital_check_out"
,"residence_id"
,"school_id"
,"workplace_id"
,"currentLocationID"
,"currentLocationType"
,"lat"
,"lon"
,"zone_id"
,"is_notified_to_isolate"
,"is_symptomatic"
,"incubation_period"
,"days_since_isolation"
,"isolation_times"
,"days_since_symptomatic"
,"in_hospital"
,"wears_mask"
,"type_of_job"
,"morbidity"
,"exposure_time"
,"infected_from_user_id"
,"transmitted_count"
,"asymptomatic_transmission"
,"locationID_of_infection"
,"income"
,"household_size"
,"bmi"
,"date_of_test"
,"test_result"
,"Scenario"
,"lat_l"
,"lon_l"
,"proximity"
,"proximity_infected"
,"avg_days_since_infection_nearby"
,"age_factor"
,"gender_factor"
,"infectious_factor"
,"proximity_factor"
,"proximity_infected_factor"
,"mask_factor"
,"exposure_factor"
,"morbidity_factor"
,"type_job_factor"
,"household_size_factor"
,"risk_infection"
,"vulnerability"
,"combined_risk"
from gs_tables_db.TRNG_Covid360_ADS_simulation_with_risk;
replace view TRNG_Covid360.ADS_simulation_with_risk_location as locking row for access select
"days_since_epidemic"
,"date"
,"currentLocationID"
,"currentLocationType"
,"lat"
,"lon"
,"zone_id"
,"infectious_factor"
,"age"
,"proximity"
,"proximity_infected"
,"risk_infection"
,"vulnerability"
,"combined_risk"
,"Scenario"
from gs_tables_db.TRNG_Covid360_ADS_simulation_with_risk_location;
replace view TRNG_Covid360.ADS_SNA_Betweenness as locking row for access select
"sna_node"
,"betweenness"
from gs_tables_db.TRNG_Covid360_ADS_SNA_Betweenness;
replace view TRNG_Covid360.ADS_SNA_Closeness as locking row for access select
"sna_node"
,"inv_sum_dist"
,"inv_avg_dist"
,"sum_inv_dist"
,"kdegree"
from gs_tables_db.TRNG_Covid360_ADS_SNA_Closeness;
replace view TRNG_Covid360.ADS_SNA_EigenCentrality as locking row for access select
"sna_node"
,"centrality"
from gs_tables_db.TRNG_Covid360_ADS_SNA_EigenCentrality;
replace view TRNG_Covid360.ADS_SNA_LocalClusteringCoefficient as locking row for access select
"sna_node"
,"degree"
,"clust"
from gs_tables_db.TRNG_Covid360_ADS_SNA_LocalClusteringCoefficient;
replace view TRNG_Covid360.SEM_D_PERSON as locking row for access select
"Person_Id"
,"Person_Type_Cd"
,"Person_Subtype_Cd"
,"Person_First_Name"
,"Person_Last_Name"
,"Birth_Date"
,"Gender_Cd"
,"Ethnicity_Cd"
,"Nationality_Cd"
,"Race_Cd"
,"Occupation_Cd"
,"Person_Middle_Name"
,"Person_Name_Prefic_Txt"
,"Person_Name_Suffix_Txt"
,"Person_Name_Prefix_Txt"
,"Occupation_Desc"
,"Person_Full_Name"
from gs_tables_db.TRNG_Covid360_SEM_D_PERSON;
replace view TRNG_Covid360.SEM_D_RISK_SCORE_TYPE as locking row for access select
"Risk_Score_Type_Cd"
,"Risk_Score_Type_Desc"
from gs_tables_db.TRNG_Covid360_SEM_D_RISK_SCORE_TYPE;
replace view TRNG_Covid360.SEM_D_SITE as locking row for access select
"Site_Id"
,"Site_Name"
,"Place_of_Interest_Type_Cd"
,"Street_Name"
,"Postal_Code"
,"Zone_Cd"
,"Sub_District_Name"
,"City_Name"
,"District_Name"
,"Province_Name"
,"Country_Name"
,"Latitude"
,"Longitude"
,"Precision_Val"
,"Geohash"
,"Elevation"
,"Elevation_Unit_of_Measure_Cd"
from gs_tables_db.TRNG_Covid360_SEM_D_SITE;
replace view TRNG_Covid360.SEM_H_SITE as locking row for access select
"Site_Id"
,"Latitude"
,"Longitude"
,"Parent_Site_Id"
,"Area_Name"
,"Area_Level_Num"
,"Area_Level_Name"
from gs_tables_db.TRNG_Covid360_SEM_H_SITE;
replace view TRNG_Covid360.SEM_R_PERSON_RISK_CALCULATION_FACTOR as locking row for access select
"Person_Id"
,"Household_Size"
,"Smoke_Ind"
,"Residence_Site_Id"
,"School_Site_Id"
,"Co_morbidity_Type_Cd"
,"Outdoor_Activity_Type_Cd"
,"Socializing_Type_Cd"
,"Consumer_Activity_Type_Cd"
,"Travel_Type_Cd"
,"Person_Risk_Calculation_Factor_Dt"
,"Workplace_Site_Id"
from gs_tables_db.TRNG_Covid360_SEM_R_PERSON_RISK_CALCULATION_FACTOR;
replace view TRNG_Covid360.WRK_SNA_Edge_Weight as locking row for access select
"Exposed_ID"
,"Infected_ID"
,"Distance"
from gs_tables_db.TRNG_Covid360_WRK_SNA_Edge_Weight;
replace view TRNG_Covid360.WRK_SNA_Node as locking row for access select
"SNA_Node"
from gs_tables_db.TRNG_Covid360_WRK_SNA_Node;
REPLACE VIEW ADS_NPath_City_or_District_Events AS

LOCKING ROW FOR ACCESS NOWAIT

SELECT  age ,

        sk_person_id AS entity_id, 

        start_time_at_loc AS datestamp , 

        city_or_district AS event ,

        Cast(Cast(start_time_at_loc AS DATE) AS INTEGER) AS session_id

FROM    EVN_PERSON_VISIT_EVENTS

/********* Views for Movement Patter NPath analysis *********/



REPLACE VIEW ADS_NPath_Province_Events AS

LOCKING ROW FOR ACCESS NOWAIT

SELECT  age,

        sk_person_id AS entity_id, 

        start_time_at_loc AS datestamp , 

        province AS event ,

        sk_person_id AS  session_id

FROM    EVN_PERSON_VISIT_EVENTS

REPLACE VIEW ADS_NPath_Sub_District_Events AS

LOCKING ROW FOR ACCESS NOWAIT

SELECT  age ,

        sk_person_id AS entity_id, 

        start_time_at_loc AS datestamp , 

        Sub_district AS event ,

        Cast(Cast(start_time_at_loc AS DATE) AS INTEGER) AS session_id

FROM    EVN_PERSON_VISIT_EVENTS

REPLACE VIEW ADS_NPath_Village_Events AS

LOCKING ROW FOR ACCESS NOWAIT

SELECT  age ,

        sk_person_id AS entity_id, 

        start_time_at_loc AS datestamp , 

        Village AS event ,

        Cast(Cast(start_time_at_loc AS DATE) AS INTEGER) AS session_id 

FROM    EVN_PERSON_VISIT_EVENTS

REPLACE VIEW EVN_PERSON_VISIT_EVENTS AS 

/* View with Events for each visit of a person to various locations. 

For purpose of the demo, this view is pointed to SIMULATED movement and location data. 

In real situations, it should point to the table with real movement and location data. */

SELECT

      Scenario,

      vis.sk_person_id AS sk_person_id,

      vis.start_time AS start_time_at_loc,

      Lead(vis.start_time,1) Over(PARTITION BY vis.sk_person_id ORDER BY vis.last_known_time_at_loc ASC) AS end_time_at_loc,

      vis.last_known_time_at_loc AS last_known_time_at_loc,

      vis.device_location_id AS site_id,

      vis.device_location_name AS place_of_interest_type_cd,

      vis.latitude AS latitude,

      vis.longitude AS longitude,

      vis.age AS age,

      vis.gender AS gender,

      vis.infection_status AS infection_status

    ,Coalesce(loc1.Country_Name,loc.Country_Name)  AS country

    ,Coalesce(loc1.Province_Name,loc.Province_Name)  AS province

    ,Coalesce(loc1.City_Name,loc.City_Name)  AS city_or_district

    ,Coalesce(loc1.Sub_District_Name,loc.Sub_District_Name)  AS sub_district

    ,Coalesce(loc1.Zone_Cd,loc.Zone_Cd)  AS village 

FROM (

SELECT

      A.id AS sk_person_id,

      A.Date_Time AS last_known_time_at_loc,

      Min(A.Date_Time) Over(PARTITION BY id ORDER BY Date_Time ASC RESET WHEN currentLocationID <> 

      Lag(A.currentLocationID,1) Over(PARTITION BY id ORDER BY Date_Time ASC)) AS start_time,

      A.currentLocationID AS device_location_id,

      A.currentLocationType AS device_location_name,

      A.lat + Cast(Random(-50,50) AS FLOAT)/100000 AS latitude,

      A.lon + Cast(Random(-50,50) AS FLOAT)/100000 AS longitude,

      A.lat AS lat_orig,

      A.lon AS lon_orig,

      A.age,

      A.gender,

      A.infection_status,

      A.Scenario

FROM ADS_Simulation A

INNER JOIN ADS_Scenarios B

ON A.scenario = B.scenario_id

AND B.status = 'completed'

AND B.description = 'Self Isolation,Mask Compliance (0.5)'

) vis

LEFT OUTER JOIN SEM_D_SITE loc

ON vis.device_location_id = loc.site_id

LEFT OUTER JOIN (

    SELECT 

          lat,

          lon,

          Admin_area_level_0 AS Country_Name,

          Admin_area_level_1 AS Province_Name,

          Admin_area_level_2 AS City_Name,

          Admin_area_level_3 AS Sub_District_Name,

          Admin_area_level_4 AS Zone_Cd

    FROM ADS_simulation_jakarta_locations

) loc1

ON vis.lat_orig = loc1.lat

AND vis.lon_orig = loc1.lon

WHERE 1 = 1

QUALIFY Row_Number() Over(PARTITION BY vis.sk_person_id,vis.start_time ORDER BY  vis.last_known_time_at_loc DESC) = 1

REPLACE PROCEDURE Calcuate_SNA_On_Vantage (scenario VARCHAR(50), SNA_From_Date DATE, SNA_To_Date DATE, SNA_Distance INT)
BEGIN

    DECLARE intDays INTEGER;
    DECLARE intCounter INTEGER;
    DECLARE SNA_From_Date_Calc DATE;
    DECLARE SNA_To_Date_Calc DATE;
    
    SET intCounter = 0;
    SET intDays = SNA_To_Date - SNA_From_Date; /* Calculate number of days between From and To dates */
    
    DELETE FROM ADS_SNA_Polulation_Generation WHERE Event_Date BETWEEN :SNA_From_Date AND :SNA_To_Date;
    
    WHILE intCounter < intDays /* Run for each day at a time */
    DO
        SET SNA_From_Date_Calc = SNA_From_Date + intCounter; /* Increment calculation start date by one day. For first time it will be same as input date. */
        SET SNA_To_Date_Calc = SNA_From_Date_Calc + 1; /* Set calculation end date as one more than calculation start date */
	
    INSERT INTO ADS_SNA_Polulation_Generation 
    SELECT   Cast(A.start_time_at_loc AS DATE) AS Event_Date, 
             A.sk_person_id AS Exposed_ID, B.sk_person_id AS Infected_ID, 
             /* Geo Dimension */
             Cast('Point('||Cast(A.longitude AS DECIMAL(15,6))||' '||Cast(A.latitude AS DECIMAL(15,6))||')' AS ST_GEOMETRY) AS A_Geo_Point,
             Cast('Point('||Cast(B.longitude AS DECIMAL(15,6))||' '||Cast(B.latitude AS DECIMAL(15,6))||')' AS ST_GEOMETRY) AS B_Geo_Point,
             A_Geo_Point.ST_SphericalDistance(B_Geo_Point) AS Distance,
             /* Time Dimension */
             PERIOD(A.start_time_at_loc , A.end_time_at_loc ) AS Period_A,
             PERIOD(B.start_time_at_loc , B.end_time_at_loc ) AS Period_B,
             Period_A P_INTERSECT Period_B AS Period_Overlap, 
             INTERVAL(Period_Overlap) DAY TO SECOND AS Duration 
             
    FROM     (SELECT * FROM EVN_PERSON_VISIT_EVENTS WHERE Scenario = :scenario AND infection_status = 'susceptible' AND Cast(start_time_at_loc AS DATE) BETWEEN :SNA_From_Date_Calc AND :SNA_To_Date_Calc) A
                LEFT OUTER JOIN 
             (SELECT * FROM EVN_PERSON_VISIT_EVENTS WHERE Scenario = :scenario AND infection_status = 'infected' AND Cast(start_time_at_loc AS DATE) BETWEEN :SNA_From_Date_Calc AND :SNA_To_Date_Calc) B
                ON A.sk_person_id <> B.sk_person_id  
    		 
    WHERE    Event_Date BETWEEN :SNA_From_Date_Calc AND :SNA_To_Date_Calc AND Duration IS NOT NULL AND Distance < :SNA_Distance;
     
        SET intCounter = intCounter + 1;
    END WHILE;
	
     -------------------------Work Tables---------------------------------------------
     
    DELETE FROM WRK_SNA_Edge_Weight  ;
    INSERT INTO WRK_SNA_Edge_Weight  
    SELECT Exposed_ID, Infected_ID, Avg(Distance) AS Avg_Distance  
    FROM ADS_SNA_Polulation_Generation 
    WHERE Duration IS NOT NULL  AND Distance < :SNA_Distance
    HAVING Avg_Distance > 0
    GROUP BY 1,2;

    DELETE FROM WRK_SNA_Node;
    INSERT INTO WRK_SNA_Node
    SELECT DISTINCT 
    	SNA_Node 
    FROM 
    (
    	SELECT DISTINCT 
    		Exposed_ID AS SNA_Node
    	FROM WRK_SNA_Edge_Weight
    	UNION ALL 
    	SELECT DISTINCT 
    		Infected_ID AS SNA_Node
    	FROM WRK_SNA_Edge_Weight
    ) x
    GROUP BY 1;

    --------------------------------Tables for AppCenter visualization ----------------------------------------------
    DELETE FROM ADS_SNA_Betweenness;
    INSERT INTO ADS_SNA_Betweenness
    SELECT * FROM Betweenness(
    	ON WRK_SNA_Node AS vertices  PARTITION BY SNA_Node                                                                            
    	ON WRK_SNA_Edge_Weight AS edges PARTITION BY Exposed_ID
    	USING
        TargetKey('Infected_ID')
        EDGEWEIGHT('Distance')
    	Accumulate ('SNA_Node')
    ) b ;

    DELETE FROM ADS_SNA_Closeness;
    INSERT INTO ADS_SNA_Closeness
    SELECT * FROM closeness
    (   
    	ON WRK_SNA_Node AS vertices  PARTITION BY SNA_Node                                                                            
    	ON WRK_SNA_Edge_Weight AS edges PARTITION BY Exposed_ID
    	USING
        TargetKey('Infected_ID')
        EDGEWEIGHT('Distance')
    	Accumulate ('SNA_Node')
    ) AS d;

    DELETE FROM ADS_SNA_EigenCentrality;
    INSERT INTO ADS_SNA_EigenCentrality
    SELECT * FROM EigenVectorCentrality
    (   
    	ON WRK_SNA_Node AS vertices  PARTITION BY SNA_Node                                                                            
    	ON WRK_SNA_Edge_Weight AS edges PARTITION BY Exposed_ID
    	USING
        TargetKey('Infected_ID')
        EDGEWEIGHT('Distance')
    	Accumulate ('SNA_Node')
    ) AS d;

END;



REPLACE PROCEDURE GET_RISK_simulation(scenario VARCHAR(50))
BEGIN
DECLARE num_rows INT DEFAULT 50000;
DECLARE count_check INTEGER;
DECLARE start_date_to_compute DATE;
DECLARE end_date_to_compute DATE;
DECLARE max_date_count INT;
SELECT Mod(Count(*),:num_rows) INTO :count_check
FROM ADS_simulation;


SELECT Cast(Max(Date_Time) AS DATE)+1 INTO :start_date_to_compute FROM ADS_simulation_with_risk WHERE Scenario = :scenario ;

IF start_date_to_compute IS NULL THEN 
	SELECT Cast(Min(Date_Time) AS DATE) INTO :start_date_to_compute FROM ADS_simulation WHERE Scenario = :scenario;
END IF;

SELECT Cast(Max(Date_Time) AS DATE) INTO :end_date_to_compute FROM ADS_simulation WHERE Scenario = :scenario;

SELECT Count(*) INTO :max_date_count FROM ADS_simulation WHERE Cast(Date_Time AS DATE) = :end_date_to_compute AND Scenario = :scenario;


IF max_date_count < num_rows THEN
	SET end_date_to_compute = end_date_to_compute - 1;
	--select :end_date_to_compute - 1 into :end_date_to_compute;
end if;

--insert into ADS_simulation_test_date values (:scenario, :start_date_to_compute, :end_date_to_compute);

--END; --- NEED to remove this

--IF count_check = 0 THEN
    INSERT INTO ADS_simulation_with_risk
    SELECT 
	tmp.*,
	age_factor,
	(0.7021 + gender * (0.2979)) AS gender_factor,
	(1.75 / 6.9) * Power((avg_days_since_infection_nearby / 6.9),(1.75 - 1)) * Exp(-Power(avg_days_since_infection_nearby / 6.9,1.75))/0.12  AS infectious_factor,
	((1 / (1 + Exp(-0.1*proximity))) - 0.5)/0.5 AS proximity_factor,
	((1 / (1 + Exp(-0.5*proximity_infected))) - 0.5)/0.5 AS proximity_infected_factor,
	CASE WHEN wears_mask = 1 THEN 1.0 ELSE 0.35 end AS mask_factor,
	((1 / (1 + Exp(-5.29*exposure_time))) - 0.5)/0.5 AS exposure_factor,
	CASE WHEN morbidity = 'None' THEN 0 
		WHEN morbidity = 'Cardiovascular' THEN 0.28 
		WHEN morbidity = 'Diabetes' THEN 0.28 
		WHEN morbidity = 'Respiratory' THEN 0.34
		WHEN morbidity = 'Obesity' THEN 0.48
		WHEN morbidity = 'Hypertension' THEN 0.49
		WHEN morbidity = 'Multiple' THEN 1.0 end AS morbidity_factor,
	CASE WHEN type_of_job = 'No Job' OR type_of_job = 'Remote worker' THEN 0
		WHEN type_of_job = 'Other job' THEN 0.5
		WHEN type_of_job = 'Health worker' THEN 1.0 end AS type_job_factor,
	((1 / (1 + Exp(-0.5*household_size))) - 0.5)/0.5 AS household_size_factor,
	--(4*age_factor + 2*proximity_factor + 1*gender_factor + 20*proximity_infected_factor + 4*infectious_factor) /(4+2+1+20+4) as risk
	
	(2*proximity_factor + 20*proximity_infected_factor + 4*infectious_factor + 4*exposure_factor + 8*mask_factor ) /(2+20+4+4+8) AS risk_infection,
	
	(1.69*age_factor + 1.32*gender_factor + 1.32*household_size_factor + 10*morbidity_factor + 1.5*type_job_factor) /(1.69+1.32+1.32+10+1.5) AS vulnerability,
	
	(2*proximity_factor + 20*proximity_infected_factor + 4*infectious_factor + 4*exposure_factor + 8*mask_factor + 1.69*age_factor + 1.32*gender_factor + 1.32*household_size_factor + 10*morbidity_factor + 1.5*type_job_factor) /(2+20+4+4+8 + 1.69+1.32+1.32+10+1.5) AS combined_risk
	
	
	
	FROM 
	
	(SELECT L.*, -- begin of tmp
	To_Char(Round(lat, 4)) AS lat_l,--cast(ROUND(lat, 4) as varchar(10)) as lat_l,
	To_Char(Round(lon, 4)) AS lon_l,--cast(ROUND(lon, 4) as varchar(10)) as lon_l,
	proximity,
	proximity_infected,
	avg_days_since_infection_nearby
	
	FROM ADS_simulation L
	LEFT JOIN
	
	(SELECT
	Date_Time,
	To_Char(Round(lat, 4)) AS lat_r,--cast(ROUND(lat, 4) as varchar(10)) as lat_r,
	To_Char(Round(lon, 4)) AS lon_r,--cast(ROUND(lon, 4) as varchar(10)) as lon_r,
	Count(*) AS proximity,
	Sum(CASE WHEN infection_status = 'infected' THEN 1 ELSE 0 end)  AS proximity_infected,
	Avg(days_since_infection) AS avg_days_since_infection_nearby
	FROM ADS_simulation 
	WHERE Cast(Date_Time AS DATE) BETWEEN :start_date_to_compute AND :end_date_to_compute--in (select distinct cast(Date_Time as date) as date1 from ADS_simulation
	                                --except
	                                --select distinct cast(Date_Time as date) as date1 from ADS_simulation_with_risk
	                                --) 
	                                AND Scenario = :scenario--in (select max(scenario_id) from scenarios)
	GROUP BY 1,2,3) R
	ON L.Date_Time = R.Date_Time AND lat_l = R.lat_r AND lon_l = R.lon_r) tmp
	
	INNER JOIN
	ADS_age_factor a
	ON tmp.age = a.age
	
	--inner join infectious_factor i
	--on round(tmp.days_since_infection,3) = round(i.days_since_infection,3)
	WHERE Cast(Date_Time AS DATE) BETWEEN :start_date_to_compute AND :end_date_to_compute--in (select distinct cast(Date_Time as date) as date1 from ADS_simulation
	                                --except
	                                --select distinct cast(Date_Time as date) as date1 from ADS_simulation_with_risk
	                                --) 
	                                AND Scenario = :scenario;--in (select max(scenario_id) from scenarios);
                                

                                
                                
INSERT INTO ADS_simulation_with_risk_location 

SELECT Row_Number() Over (PARTITION BY currentLocationID ORDER BY "date") AS days_since_epidemic, tmp2.* FROM 
(SELECT Cast(Date_Time AS DATE) AS "date",-- row_number() over (order by "date") as days_since_epidemic, --cast("date"- cast('{}' as date) as int) as days_since_epidemic,
            currentLocationID, currentLocationType, lat, lon, zone_id,
            Max(infectious_factor) AS infectious_factor, 
            Max(age) AS age, 
            Max(proximity) AS proximity,
            Max(proximity_infected) AS proximity_infected, 
            Max(risk_infection) AS risk_infection,
            Max(vulnerability) AS vulnerability,
            Max(combined_risk) AS combined_risk,
            Max(Scenario) AS Scenario
            FROM 
            (SELECT Date_Time, 
            currentLocationID, 
            currentLocationType, 
            lat, 
            lon,
            zone_id,
            Avg(infectious_factor) AS infectious_factor, 
            Avg(age) AS age, 
            Avg(proximity) AS proximity,
            Avg(proximity_infected) AS proximity_infected, 
            Avg(risk_infection) AS risk_infection,
            Avg(vulnerability) AS vulnerability,
            Avg(combined_risk) AS combined_risk,
            Max(Scenario) AS Scenario
            FROM ADS_simulation_with_risk
            WHERE Cast(Date_Time AS DATE) BETWEEN :start_date_to_compute AND :end_date_to_compute--in (select distinct cast(Date_Time as date) as date1 from ADS_simulation_with_risk
                                                    --except
                                                    --select "date" from ADS_simulation_with_risk_location
                                                    --) 
                                                    AND Scenario = :scenario--in (select max(scenario_id) from scenarios)
            GROUP BY 1,2,3,4,5,6) AS tmp
            GROUP BY 1,2,3,4,5,6) AS tmp2;--,7;                                
                                
         
            
--END IF;
    END;



REPLACE PROCEDURE GET_STATS_simulation(scenario VARCHAR(50))
BEGIN
	INSERT INTO ADS_simulation_stats 
	SELECT 
	A1.Scenario,
	A1.days_since_epidemic,
	A1."date",
	A1.infected_count AS infected_count, 
	A1.recovered_count AS recovered_count, 
	A1.death_count AS death_count, 
	A1.total_infected_count AS total_infected_count,
	A2.symptomatic_ratio,
	A2.asymptomatic_ratio,
	A3.positive_rate,
	ZeroIfNull(A4.daily_infections) AS daily_infections,
	ZeroIfNull(A5.daily_recoveries) AS daily_recoveries,
	ZeroIfNull(A6.daily_deaths) AS daily_deaths,
	Cast(total_infected_count AS FLOAT)/transmittors_count AS Ro_t,
	 
	(1 - (A1.recovered_count + A1.death_count) / (SELECT
	Sum(CASE WHEN infection_status <> 'susceptible' THEN 1 ELSE 0 end) AS total_infected_count
	FROM ADS_simulation_with_risk WHERE scenario = :scenario AND date_time IN
	(SELECT Max(Date_Time) FROM ADS_simulation_with_risk WHERE scenario = :scenario))) * (SELECT Ro FROM (
	SELECT
	Sum(CASE WHEN infection_status <> 'susceptible' THEN 1 ELSE 0 end) AS total_infected_count,
	Count(DISTINCT infected_from_user_id) AS transmittors_count,
	Cast(total_infected_count AS FLOAT)/transmittors_count AS Ro
	FROM ADS_simulation_with_risk WHERE scenario = :scenario AND date_time IN
	(SELECT Max(Date_Time) FROM ADS_simulation_with_risk WHERE scenario = :scenario)) AS tmp) AS Re,
	
	
	ZeroIfNull("youngster (5 - 22) [infected]") AS "youngster (5 - 22) [infected]", 
	ZeroIfNull("bachelor  (23 - 30) [infected]") AS "bachelor  (23 - 30) [infected]", 
	ZeroIfNull("family man (30 - 60) [infected]") AS "family man (30 - 60) [infected]",
	ZeroIfNull("old age (> 60) [infected]") AS "old age (> 60) [infected]",
	
	ZeroIfNull("youngster (5 - 22) [Death]") AS "youngster (5 - 22) [Death]", 
	ZeroIfNull("bachelor  (23 - 30) [Death]") AS "bachelor  (23 - 30) [Death]", 
	ZeroIfNull("family man (30 - 60) [Death]") AS "family man (30 - 60) [Death]", 
	ZeroIfNull("old age (> 60) [Death]") AS "old age (> 60) [Death]",
	
	"None [Death]", 
	"Cardiovascular [Death]", 
	"Diabetes [Death]", 
	"Obesity [Death]",
	"Respiratory [Death]", 
	"Hypertension [Death]",
	"Multiple [Death]",
	
	"No Job [infected]", 
	"Other job [infected]", 
	"Remote worker [infected]", 
	"Health worker [infected]",
	
	ZeroIfNull(A11.daily_hospitalizations) AS daily_hospitalizations,
	A12.shopping_mall_marker_visitors
	
	FROM
	(
	-- case count
		SELECT Row_Number() Over (ORDER BY "date") AS days_since_epidemic, tmp2.* FROM 
		(SELECT Cast(Date_Time AS DATE) AS "date", --row_number() over (order by "date") as days_since_epidemic, --cast("date"- cast('{}' as date) as int) as days_since_epidemic,
		Avg(infected_count) AS infected_count, 
		Avg(recovered_count) AS recovered_count, 
		Avg(death_count) AS death_count, 
		Avg(total_infected_count) AS total_infected_count,
		Max(Scenario) AS Scenario,
		Max(transmittors_count) AS transmittors_count
		FROM (
			SELECT Date_Time, 
			Sum(CASE WHEN infection_status = 'infected' THEN 1 ELSE 0 end) AS infected_count, 
			Sum(CASE WHEN infection_status = 'recovered' THEN 1 ELSE 0 end) AS recovered_count, 
			Sum(CASE WHEN infection_status = 'deceased' THEN 1 ELSE 0 end) AS death_count,
			Sum(CASE WHEN infection_status <> 'susceptible' THEN 1 ELSE 0 end) AS total_infected_count,
			Count(DISTINCT infected_from_user_id) AS transmittors_count,
			:scenario AS Scenario
			FROM ADS_simulation_with_risk
			WHERE scenario = :scenario
			GROUP BY 1) AS tmp
		GROUP BY 1) AS tmp2
	) A1
	INNER JOIN
	
	-- asymptomatic ratios
	(
		SELECT Row_Number() Over (ORDER BY "date") AS days_since_epidemic,
		"date",
		symptomatic_ratio,
		asymptomatic_ratio
		FROM (
			SELECT
			"date",
			--ZEROIFNULL(cast(max(symptomatic_count) as float)/NULLIFZERO(max(total))) as symptomatic_ratio,
			--ZEROIFNULL(cast(max(asymptomatic_count) as float)/NULLIFZERO(max(total))) as asymptomatic_ratio
			ZeroIfNull(Cast(Max(symptomatic_count) AS FLOAT)/NullIfZero(Max(total))) AS symptomatic_ratio,
			Coalesce(Cast(Max(asymptomatic_count) AS FLOAT)/NullIfZero(Max(total)),1) AS asymptomatic_ratio
			FROM (
				SELECT 
				Cast(Date_Time AS DATE) AS "date",
				Date_Time,
				Sum(CASE WHEN infection_status = 'recovered' AND date_of_symptoms <> '' THEN 1 ELSE 0 end) AS symptomatic_count ,
				Sum(CASE WHEN infection_status = 'recovered' AND date_of_symptoms = '' THEN 1 ELSE 0 end) AS asymptomatic_count,
				symptomatic_count+asymptomatic_count AS total
				FROM ADS_simulation_with_risk WHERE scenario = :scenario
				GROUP BY 1,2
			) AS tmp
			GROUP BY 1
		) AS tmp2
	) A2
	ON A1."date" = A2."date"
	
	LEFT JOIN 
	(
		SELECT date_of_test,Cast(Sum(test_result) AS FLOAT)/Count(test_result) AS positive_rate FROM (
		SELECT Cast(Cast(date_of_test AS TIMESTAMP(0)) AS DATE) AS date_of_test,
		id,
		Max(test_result) AS test_result 
		FROM ADS_simulation_with_risk WHERE scenario = :scenario AND date_of_test <> '' GROUP BY 1,2) AS tmp
		GROUP BY 1
	) A3
	ON A1."date" = A3.date_of_test
	
	LEFT JOIN 
	-- daily infections
	(
		SELECT Cast(Cast(date_of_infection AS TIMESTAMP(0)) AS DATE) AS date_of_infection,
		Count(DISTINCT id) AS daily_infections
		FROM ADS_simulation_with_risk WHERE scenario = :scenario AND date_of_infection <> ''
		GROUP BY 1
	) A4
	ON A1."date" = date_of_infection
	
	LEFT JOIN 
	-- daily recoveries
	(
		SELECT Cast(Cast(date_of_recovery AS TIMESTAMP(0)) AS DATE) AS date_of_recovery,
		Count(DISTINCT id) AS daily_recoveries
		FROM ADS_simulation_with_risk WHERE scenario = :scenario AND date_of_recovery <> ''
		GROUP BY 1
	) A5
	ON A1."date" = date_of_recovery
	
	LEFT JOIN 
	-- daily deaths
	(
		SELECT Cast(Cast(date_of_death AS TIMESTAMP(0)) AS DATE) AS date_of_death,
		Count(DISTINCT id) AS daily_deaths
		FROM ADS_simulation_with_risk WHERE scenario = :scenario AND date_of_death <> ''
		GROUP BY 1
	) A6
	ON A1."date" = date_of_death
	
	LEFT JOIN -- age distribution for infections
	(SELECT Cast(Date_Time AS DATE) AS "date", 
	Avg("youngster (5 - 22)") AS "youngster (5 - 22) [infected]", 
	Avg("bachelor  (23 - 30)") AS "bachelor  (23 - 30) [infected]", 
	Avg("family man (30 - 60)") AS "family man (30 - 60) [infected]", 
	Avg("old age (> 60)") AS "old age (> 60) [infected]" FROM
	(SELECT Date_Time, 
	Sum(CASE WHEN age>=5 AND age<23 THEN 1 ELSE 0 end) AS "youngster (5 - 22)",
	Sum(CASE WHEN age>=23 AND age<31 THEN 1 ELSE 0 end) AS "bachelor  (23 - 30)",
	Sum(CASE WHEN age>31 AND age<60 THEN 1 ELSE 0 end) AS "family man (30 - 60)",
	Sum(CASE WHEN age>60 THEN 1 ELSE 0 end) AS "old age (> 60)"
	FROM ADS_simulation_with_risk WHERE scenario = :scenario AND infection_status <> 'susceptible' GROUP BY 1) AS tmp
	GROUP BY 1) A7
	ON A1."date" = A7."date"
	
	LEFT JOIN -- age distribution for deaths
	(SELECT Cast(Date_Time AS DATE) AS "date", 
	Avg("youngster (5 - 22)") AS "youngster (5 - 22) [Death]", 
	Avg("bachelor  (23 - 30)") AS "bachelor  (23 - 30) [Death]", 
	Avg("family man (30 - 60)") AS "family man (30 - 60) [Death]", 
	Avg("old age (> 60)") AS "old age (> 60) [Death]" FROM
	(SELECT Date_Time, 
	Sum(CASE WHEN age>=5 AND age<23 THEN 1 ELSE 0 end) AS "youngster (5 - 22)",
	Sum(CASE WHEN age>=23 AND age<31 THEN 1 ELSE 0 end) AS "bachelor  (23 - 30)",
	Sum(CASE WHEN age>31 AND age<60 THEN 1 ELSE 0 end) AS "family man (30 - 60)",
	Sum(CASE WHEN age>60 THEN 1 ELSE 0 end) AS "old age (> 60)"
	FROM ADS_simulation_with_risk WHERE scenario = :scenario AND infection_status = 'deceased' GROUP BY 1) AS tmp
	GROUP BY 1) A8
	ON A1."date" = A8."date"
	
	LEFT JOIN -- death distribution by morbidity
	(
	SELECT Cast(Date_Time AS DATE) AS "date", 
	Avg("None")/Avg("None_count") AS "None [Death]", 
	Avg("Cardiovascular")/Avg("Cardiovascular_count")  AS "Cardiovascular [Death]", 
	Avg("Diabetes")/Avg("Diabetes_count")  AS "Diabetes [Death]", 
	Avg("Obesity")/Avg("Obesity_count")  AS "Obesity [Death]",
	Avg("Respiratory")/Avg("Respiratory_count")  AS "Respiratory [Death]", 
	Avg("Hypertension")/Avg("Hypertension_count")  AS "Hypertension [Death]",
	Avg("Multiple")/Avg("Multiple_count")  AS "Multiple [Death]"
	FROM
	(SELECT Date_Time, 
	Sum(CASE WHEN morbidity = 'None' AND infection_status = 'deceased' THEN 1 ELSE 0 end) AS "None",
	Sum(CASE WHEN morbidity = 'Cardiovascular' AND infection_status = 'deceased' THEN 1 ELSE 0 end) AS "Cardiovascular",
	Sum(CASE WHEN morbidity = 'Diabetes' AND infection_status = 'deceased'  THEN 1 ELSE 0 end) AS "Diabetes",
	Sum(CASE WHEN morbidity = 'Obesity' AND infection_status = 'deceased'  THEN 1 ELSE 0 end) AS "Obesity",
	Sum(CASE WHEN morbidity = 'Respiratory' AND infection_status = 'deceased'  THEN 1 ELSE 0 end) AS "Respiratory",
	Sum(CASE WHEN morbidity = 'Hypertension' AND infection_status = 'deceased'  THEN 1 ELSE 0 end) AS "Hypertension",
	Sum(CASE WHEN morbidity = 'Multiple' AND infection_status = 'deceased'  THEN 1 ELSE 0 end) AS "Multiple",
	Sum(CASE WHEN morbidity = 'None'  THEN 1 ELSE 0 end) AS "None_count",
	Sum(CASE WHEN morbidity = 'Cardiovascular'  THEN 1 ELSE 0 end) AS "Cardiovascular_count",
	Sum(CASE WHEN morbidity = 'Diabetes'   THEN 1 ELSE 0 end) AS "Diabetes_count",
	Sum(CASE WHEN morbidity = 'Obesity'  THEN 1 ELSE 0 end) AS "Obesity_count",
	Sum(CASE WHEN morbidity = 'Respiratory' THEN 1 ELSE 0 end) AS "Respiratory_count",
	Sum(CASE WHEN morbidity = 'Hypertension'  THEN 1 ELSE 0 end) AS "Hypertension_count",
	Sum(CASE WHEN morbidity = 'Multiple' THEN 1 ELSE 0 end) AS "Multiple_count"
	FROM ADS_simulation_with_risk WHERE scenario = :scenario GROUP BY 1) AS tmp --  <> 'susceptible'
	GROUP BY 1
	) A9
	ON A1."date" = A9."date"
	
	LEFT JOIN -- infections per type of job
	(
	SELECT Cast(Date_Time AS DATE) AS "date", 
	Avg("No Job")/Avg("No Job count")  AS "No Job [infected]", 
	Avg("Other job")/Avg("Other job count") AS "Other job [infected]", 
	Avg("Remote worker")/Avg("Remote worker count") AS "Remote worker [infected]", 
	Avg("Health worker")/Avg("Health worker count") AS "Health worker [infected]"
	FROM
	(SELECT Date_Time, 
	Sum(CASE WHEN type_of_job = 'No Job' AND infection_status <> 'susceptible' THEN 1 ELSE 0 end) AS "No Job",
	Sum(CASE WHEN type_of_job = 'Other job' AND infection_status <> 'susceptible' THEN 1 ELSE 0 end) AS "Other job",
	Sum(CASE WHEN type_of_job = 'Remote worker' AND infection_status <> 'susceptible' THEN 1 ELSE 0 end) AS "Remote worker",
	Sum(CASE WHEN type_of_job = 'Health worker' AND infection_status <> 'susceptible' THEN 1 ELSE 0 end) AS "Health worker",
	Sum(CASE WHEN type_of_job = 'No Job' THEN 1 ELSE 0 end) AS "No Job count",
	Sum(CASE WHEN type_of_job = 'Other job' THEN 1 ELSE 0 end) AS "Other job count",
	Sum(CASE WHEN type_of_job = 'Remote worker' THEN 1 ELSE 0 end) AS "Remote worker count",
	Sum(CASE WHEN type_of_job = 'Health worker' THEN 1 ELSE 0 end) AS "Health worker count"
	FROM ADS_simulation_with_risk WHERE scenario = :scenario GROUP BY 1) AS tmp --  <> 'susceptible'
	GROUP BY 1
	) A10
	ON A1."date" = A10."date"
	
	LEFT JOIN -- hospitalizations
	(
	SELECT Cast(Cast(date_hospital_check_in AS TIMESTAMP(0)) AS DATE) AS date_hospital_check_in, 
	Count(DISTINCT id) AS daily_hospitalizations 
	FROM ADS_simulation_with_risk WHERE scenario = :scenario AND date_hospital_check_in <> '' GROUP BY 1
	) A11
	ON A1."date" = A11.date_hospital_check_in
	
	LEFT JOIN -- shopping_mall_market_visitors
	(SELECT Cast(Date_Time AS DATE) AS "date", Count(DISTINCT id) AS shopping_mall_marker_visitors 
	FROM ADS_simulation_with_risk WHERE scenario = :scenario AND  (currentLocationType = 'shopping_mall' OR  currentLocationType = 'market') GROUP BY 1
	) A12
	ON A1."date" = A12."date";
end;

