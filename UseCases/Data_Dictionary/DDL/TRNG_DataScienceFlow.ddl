create database TRNG_DataScienceFlow from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_DataScienceFlow_covid_data", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DataScienceFlow/Covid_Data/'));
replace view TRNG_DataScienceFlow.covid_geo_dist as locking row for access select
      DateRep ,
      CountryExp ,
      NewConfCases,
      NewDeaths,
      GeoId,
      EU 
from gs_tables_db.TRNG_DataScienceFlow_covid_data;
