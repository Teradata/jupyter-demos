create database TRNG_KAGGLE from demonow as perm=0;
create foreign table gs_tables_db."TRNG_KAGGLE_AMZ_FINE_FOOD_REVIEWS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-KAGGLE/AMZ-FINE-FOOD-REVIEWS/'));
create foreign table gs_tables_db."TRNG_KAGGLE_AMZ_FINE_FOOD_REVIEWS_text_output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-KAGGLE/AMZ-FINE-FOOD-REVIEWS-text-output/'));
create foreign table gs_tables_db."TRNG_KAGGLE_super_heroes", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-KAGGLE/super-heroes/'));
create foreign table gs_tables_db."TRNG_KAGGLE_BORDER_CROSSING_SCRATCH", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-KAGGLE/BORDER-CROSSING-SCRATCH/'));
replace view TRNG_KAGGLE.AMZ_FINE_FOOD_REVIEWS as locking row for access select
"Id"
,"ProductId"
,"UserId"
,"ProfileName"
,"HelpfulnessNumerator"
,"HelpfulnessDenominator"
,"Score"
,"ReviewTime"
,"ReviewSummary"
,"ReviewText"
from gs_tables_db.TRNG_KAGGLE_AMZ_FINE_FOOD_REVIEWS;
replace view TRNG_KAGGLE.AMZ_FINE_FOOD_REVIEWS_text_output as locking row for access select
"Id"
,"out_polarity"
,"sentiment_words"
,"inTotal"
,"pos"
,"neg"
,"score"
from gs_tables_db.TRNG_KAGGLE_AMZ_FINE_FOOD_REVIEWS_text_output;
replace view TRNG_KAGGLE.BORDER_CROSSING_SCRATCH as locking row for access select
"PortName"
,"State"
,"PortCode"
,"Border"
,"CrossingDate"
,"Measure"
,"Val"
,"Location"
from gs_tables_db.TRNG_KAGGLE_BORDER_CROSSING_SCRATCH;
replace view TRNG_KAGGLE.super_heroes as locking row for access select
"Name"
,"Gender"
,"EyeColor"
,"Race"
,"HairColor"
,"Height"
,"Publisher"
,"SkinColor"
,"Alignment"
,"Weight"
from gs_tables_db.TRNG_KAGGLE_super_heroes;
