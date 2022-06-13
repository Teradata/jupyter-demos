create database TRNG_Data_Science from demonow as perm=0;
create foreign table gs_tables_db."TRNG_Data_Science_species", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Data-Science/species/'));
create foreign table gs_tables_db."TRNG_Data_Science_plots", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Data-Science/plots/'));
create foreign table gs_tables_db."TRNG_Data_Science_surveys", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Data-Science/surveys/'));
replace view TRNG_Data_Science.plots as locking row for access select
"plot_id"
,"plot_type"
from gs_tables_db.TRNG_Data_Science_plots;
replace view TRNG_Data_Science.species as locking row for access select
"species_id"
,"genus"
,"species"
,"taxa"
from gs_tables_db.TRNG_Data_Science_species;
replace view TRNG_Data_Science.surveys as locking row for access select
"record_id"
,"month"
,"day"
,"year"
,"plot_id"
,"species_id"
,"sex"
,"hindfoot_length"
,"weight"
from gs_tables_db.TRNG_Data_Science_surveys;
