create database TRNG_TelcoNetwork from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_TelcoNetwork_peak_customers_in_economic_zone", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoNetwork/peak-customers-in-economic-zone/'));
create foreign table gs_tables_db."TRNG_TelcoNetwork_peak_smartphone_app_usage", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoNetwork/peak-smartphone-app-usage/'));
create foreign table gs_tables_db."TRNG_TelcoNetwork_max_customers_cellsite_connreqs", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoNetwork/max-customers-cellsite-connreqs/'));
create foreign table gs_tables_db."TRNG_TelcoNetwork_max_customers_cellsite_handover", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoNetwork/max-customers-cellsite-handover/'));
create foreign table gs_tables_db."TRNG_TelcoNetwork_peak_customers_on_cell_sites", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoNetwork/peak-customers-on-cell-sites/'));
create foreign table gs_tables_db."TRNG_TelcoNetwork_JOURNEY_START_DETAILS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoNetwork/JOURNEY-START-DETAILS/'));
create foreign table gs_tables_db."TRNG_TelcoNetwork_APPS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoNetwork/APPS/'));
create foreign table gs_tables_db."TRNG_TelcoNetwork_hourly_customers_on_cell_sites", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TelcoNetwork/hourly-customers-on-cell-sites/'));
replace view TRNG_TelcoNetwork.APPS as locking row for access select
"id"
,"app_name"
from gs_tables_db.TRNG_TelcoNetwork_APPS;
replace view TRNG_TelcoNetwork.hourly_customers_on_cell_sites as locking row for access select
"postal_area_name"
,"peakoffpeak"
,"hour_of_day"
,"cell_sitename"
,"cell"
,"lac_track_area"
,"postal_area_code"
,"concurrent_mobile_customers_on_cell"
,"no_of_activity_of_a_mobile_customer"
,"sum_vol_down_kbs"
,"sum_vol_up_kbs"
,"cell_id"
from gs_tables_db.TRNG_TelcoNetwork_hourly_customers_on_cell_sites;
replace view TRNG_TelcoNetwork.JOURNEY_START_DETAILS as locking row for access select
"Journey_id"
,"Start_lon"
,"start_lat"
,"custid"
,"journey_seq"
,"phone_type"
,"journey_dttm"
,"no_records"
,"process_flg"
,"mobility"
from gs_tables_db.TRNG_TelcoNetwork_JOURNEY_START_DETAILS;
replace view TRNG_TelcoNetwork.max_customers_cellsite_connreqs as locking row for access select
"postal_area_name"
,"peakoffpeak"
,"hour_of_day"
,"cell_sitename"
,"cell_id"
,"lac_track_area"
,"postal_area_code"
,"ntwk_completion"
,"concurrent_mobile_customers_on_cell"
,"no_of_activity_of_a_mobile_customer"
,"cell_site"
,"lac"
,"cell_name"
from gs_tables_db.TRNG_TelcoNetwork_max_customers_cellsite_connreqs;
replace view TRNG_TelcoNetwork.max_customers_cellsite_handover as locking row for access select
"postal_area_name"
,"peakoffpeak"
,"hour_of_day"
,"cell_sitename"
,"cell_id"
,"lac_track_area"
,"postal_area_code"
,"mobile_customer_count"
,"maxcellchange"
,"mincellchange"
,"no_of_handovers"
,"cell_site"
,"lac"
from gs_tables_db.TRNG_TelcoNetwork_max_customers_cellsite_handover;
replace view TRNG_TelcoNetwork.peak_customers_in_economic_zone as locking row for access select
"census_economic_zone"
,"peakoffpeak"
,"hour_of_day"
,"lac_track_area"
,"postal_area_code"
,"concurrent_mobile_customers_in_economic_zone"
,"network_frustration_experience_index"
,"postal_area_name"
,"cell_site_name"
from gs_tables_db.TRNG_TelcoNetwork_peak_customers_in_economic_zone;
replace view TRNG_TelcoNetwork.peak_customers_on_cell_sites as locking row for access select
"traffic_load_category"
,"postal_area_cell_name_id"
,"morning_peak_concurrent_customers"
,"evening_peak_concurrent_customers"
,"off_peak_concurrent_customers"
,"postal_area_code"
,"postal_area_name"
,"lac"
,"cell_id"
from gs_tables_db.TRNG_TelcoNetwork_peak_customers_on_cell_sites;
replace view TRNG_TelcoNetwork.peak_smartphone_app_usage as locking row for access select
"traffic_load_category"
,"postal_area_cell_name_id"
,"morning_peak"
,"evening_peak"
,"off_peak"
,"postal_area_code"
,"postal_area_name"
,"lac"
,"cell_id"
,"cell_id_integer"
from gs_tables_db.TRNG_TelcoNetwork_peak_smartphone_app_usage;
REPLACE VIEW TRNG_TELCONETWORK.VW_NEXTGEN_MOBILE_NW_CONGESTION_PREDICTION
AS
(
Select 
  postal_area_name
, cell_towers_3g
, cell_towers_4g
, cell_towers_5g
, case 
	when (concurrent_customers_pm_peak - concurrent_customers_offpeak) < 36
		then concurrent_customers_offpeak + random(1,36)
	when (concurrent_customers_pm_peak - concurrent_customers_offpeak) <= 50
		then concurrent_customers_offpeak + random(1,45)
	when (concurrent_customers_pm_peak - concurrent_customers_offpeak) <= 75
		then concurrent_customers_offpeak + random(1,61)
	when (concurrent_customers_pm_peak - concurrent_customers_offpeak) <= 99
		then concurrent_customers_offpeak + random(1,75)	
	when (concurrent_customers_pm_peak - concurrent_customers_offpeak) > 100
		then concurrent_customers_offpeak + random(1,99)		
	end as concurrent_customers	
, customers_actively_using_nw
, total_download_mbs
, commercial_customer_percent
, cast (total_cell_handovers * cast (random (7,10) as decimal(9,1))/10 as integer) total_cell_handovers
, case 
	when (nw_frustration_index_max - nw_frustration_index_min) <= 50
		then nw_frustration_index_min + random(1,46)
	when (nw_frustration_index_max - nw_frustration_index_min) <= 70
		then nw_frustration_index_min + random(1,66)
	when (nw_frustration_index_max - nw_frustration_index_min) <= 100
		then nw_frustration_index_min + random(1,80)
	when (nw_frustration_index_max - nw_frustration_index_min) > 100
		then nw_frustration_index_min + random(1,103)
  end as nw_frustration_index
,case 
	when postal_area_name = 'Bluestone Hills' then 'Sports'
	when postal_area_name = 'Boollangong Way' then 'Industrial Complex'
	when postal_area_name = 'Brite Coast' then 'Hospital'
	when postal_area_name = 'Chatsville Drive' then 'Sports'
	when postal_area_name = 'Sunset Woods' then 'Airport'
	when postal_area_name = 'Lofberg Creek' then 'Shipping Mall'
	when postal_area_name = 'Kimble Town' then 'Hospital'	
	else 'Others'
 end	location 
,postal_area_centroid
FROM TRNG_TELCONETWORK.nextgen_mobile_nw_congestion_base_stats
);

REPLACE VIEW TRNG_TELCONETWORK.VW_NEXTGEN_MOBILE_NW_POSTAL_ZONES
AS
(Select
postal_zone_name
, median_annual_wage
, population
, median_age
, postal_zone_geom
FROM TRNG_TELCONETWORK.nextgen_mobile_nw_postal_zones
);

create foreign table gs_tables_db."TRNG_TelcoNetwork_nextgen_mobile_nw_cell_towers", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TELCONETWORK/NEXTGEN_MOBILE_NW_CELL_TOWERS/'));
create foreign table gs_tables_db."TRNG_TelcoNetwork_nextgen_mobile_nw_gpsloc_cum_experience", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TELCONETWORK/NEXTGEN_MOBILE_NW_GPSLOC_CUM_EXPERIENCE/'));
create foreign table gs_tables_db."TRNG_TelcoNetwork_nextgen_mobile_nw_cust_journey_scaled", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TELCONETWORK/NEXTGEN_MOBILE_NW_CUST_JOURNEY_SCALED/'));
replace view TRNG_TelcoNetwork.NEXTGEN_MOBILE_NW_CELL_TOWERS as locking row for access select
 "seq"
,"site_num"
,"radio_type"
,"radio_freq"
,"degree_facing"
,"cell_id"
,"postal_area_code"
,"postal_area_name"
,"cell_site_name"
,"coverage_map_reference"
,"dist_kms_from_map_centroid"
,"cell_lon"
,"cell_lat"
,New ST_GEOMETRY('ST_POINT' ,"cell_lon", "cell_lat") "cell_geom"
from gs_tables_db.TRNG_TelcoNetwork_nextgen_mobile_nw_cell_towers;
replace view TRNG_TelcoNetwork.NEXTGEN_MOBILE_NW_GPSLOC_CUM_EXPERIENCE as locking row for access select
 "legend"
,"rscpavg"
,New ST_GEOMETRY('ST_POINT' ,"point_lon", "point_lat") "point"
from gs_tables_db.TRNG_TelcoNetwork_nextgen_mobile_nw_gpsloc_cum_experience;
replace view TRNG_TelcoNetwork.NEXTGEN_MOBILE_NW_CUST_JOURNEY_SCALED as locking row for access select
 "customer_id"
,"journey_id"
,"journey_seq"
,"phone_type"
,"journey_dttm"
,"signal_dBm"
,"journey_lon"
,"journey_lat"
,New ST_GEOMETRY('ST_POINT' ,"journey_lon", "journey_lat") "journey_geom"
,"outside_coverage"
,"mobile_app_usage"
,"throughput_experience_kbps"
,"initial_record"
from gs_tables_db.TRNG_TelcoNetwork_nextgen_mobile_nw_cust_journey_scaled;
