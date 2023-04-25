create database TRNG_AnalyticOps from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_AnalyticOps_PIMA_EVALUATION_METRICS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AnalyticOps/PIMA-EVALUATION-METRICS/'));
create foreign table gs_tables_db."TRNG_AnalyticOps_PIMA_PREDICTIONS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AnalyticOps/PIMA-PREDICTIONS/'));
create foreign table gs_tables_db."TRNG_AnalyticOps_pandas_iris", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AnalyticOps/pandas-iris/'));
create foreign table gs_tables_db."TRNG_AnalyticOps_PIMA_TRAIN", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AnalyticOps/PIMA-TRAIN/'));
create foreign table gs_tables_db."TRNG_AnalyticOps_PIMA_TEST", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AnalyticOps/PIMA-TEST/'));
replace view TRNG_AnalyticOps.pandas_iris as locking row for access select
"sepallength"
,"sepalwidth"
,"petallength"
,"petalwidth"
,"class"
from gs_tables_db.TRNG_AnalyticOps_pandas_iris;
replace view TRNG_AnalyticOps.PIMA_EVALUATION_METRICS as locking row for access select
"key"
,"value"
from gs_tables_db.TRNG_AnalyticOps_PIMA_EVALUATION_METRICS;
replace view TRNG_AnalyticOps.PIMA_PREDICTIONS as locking row for access select
"idx"
,"hasdiabetes"
,"prediction"
,"confidence_lower"
,"confidence_upper"
from gs_tables_db.TRNG_AnalyticOps_PIMA_PREDICTIONS;
replace view TRNG_AnalyticOps.PIMA_TEST as locking row for access select
"numtimesprg"
,"plglcconc"
,"bloodp"
,"skinthick"
,"twohourserins"
,"bmi"
,"dipedfunc"
,"age"
,"hasdiabetes"
,"idx"
from gs_tables_db.TRNG_AnalyticOps_PIMA_TEST;
replace view TRNG_AnalyticOps.PIMA_TRAIN as locking row for access select
"numtimesprg"
,"plglcconc"
,"bloodp"
,"skinthick"
,"twohourserins"
,"bmi"
,"dipedfunc"
,"age"
,"hasdiabetes"
,"idx"
from gs_tables_db.TRNG_AnalyticOps_PIMA_TRAIN;
REPLACE VIEW "TRNG_ANALYTICOPS"."ml___frmqry_v_1580895071511316" AS SELECT 
  
 cast('count' as varchar(6)) as "func", 
 cast(count(numtimesprg) as Number) as numtimesprg, cast(count(plglcconc) as Number) as plglcconc, cast(count(bloodp) as Number) as bloodp, cast(count(skinthick) as Number) as skinthick, cast(count(twohourserins) as Number) as twohourserins, cast(count(bmi) as Number) as bmi, cast(count(dipedfunc) as Number) as dipedfunc, cast(count(age) as Number) as age, cast(count(hasdiabetes) as Number) as hasdiabetes, cast(count(idx) as Number) as idx 
from 
 "PIMA_TRAIN"  
union all
 SELECT 
  
 cast('mean' as varchar(6)) as "func", 
 cast(avg(numtimesprg) as Number) as numtimesprg, cast(avg(plglcconc) as Number) as plglcconc, cast(avg(bloodp) as Number) as bloodp, cast(avg(skinthick) as Number) as skinthick, cast(avg(twohourserins) as Number) as twohourserins, cast(avg(bmi) as Number) as bmi, cast(avg(dipedfunc) as Number) as dipedfunc, cast(avg(age) as Number) as age, cast(avg(hasdiabetes) as Number) as hasdiabetes, cast(avg(idx) as Number) as idx 
from 
 "PIMA_TRAIN"  
union all
 SELECT 
  
 cast('std' as varchar(6)) as "func", 
 cast(stddev_samp(numtimesprg) as Number) as numtimesprg, cast(stddev_samp(plglcconc) as Number) as plglcconc, cast(stddev_samp(bloodp) as Number) as bloodp, cast(stddev_samp(skinthick) as Number) as skinthick, cast(stddev_samp(twohourserins) as Number) as twohourserins, cast(stddev_samp(bmi) as Number) as bmi, cast(stddev_samp(dipedfunc) as Number) as dipedfunc, cast(stddev_samp(age) as Number) as age, cast(stddev_samp(hasdiabetes) as Number) as hasdiabetes, cast(stddev_samp(idx) as Number) as idx 
from 
 "PIMA_TRAIN"  
union all
 SELECT 
  
 cast('min' as varchar(6)) as "func", 
 cast(min(numtimesprg) as Number) as numtimesprg, cast(min(plglcconc) as Number) as plglcconc, cast(min(bloodp) as Number) as bloodp, cast(min(skinthick) as Number) as skinthick, cast(min(twohourserins) as Number) as twohourserins, cast(min(bmi) as Number) as bmi, cast(min(dipedfunc) as Number) as dipedfunc, cast(min(age) as Number) as age, cast(min(hasdiabetes) as Number) as hasdiabetes, cast(min(idx) as Number) as idx 
from 
 "PIMA_TRAIN"  
union all
 SELECT 
  
 cast('25%' as varchar(6)) as "func", percentile_cont(0.25) within group(order by cast(numtimesprg as Number) ) as numtimesprg, percentile_cont(0.25) within group(order by cast(plglcconc as Number) ) as plglcconc, percentile_cont(0.25) within group(order by cast(bloodp as Number) ) as bloodp, percentile_cont(0.25) within group(order by cast(skinthick as Number) ) as skinthick, percentile_cont(0.25) within group(order by cast(twohourserins as Number) ) as twohourserins, percentile_cont(0.25) within group(or
der by cast(bmi as Number) ) as bmi, percentile_cont(0.25) within group(order by cast(dipedfunc as Number) ) as dipedfunc, percentile_cont(0.25) within group(order by cast(age as Number) ) as age, percentile_cont(0.25) within group(order by cast(hasdiabetes as Number) ) as hasdiabetes, percentile_cont(0.25) within group(order by cast(idx as Number) ) as idx from "PIMA_TRAIN"  
union all
 SELECT 
  
 cast('50%' as varchar(6)) as "func", percentile_cont(0.5) within group(order by cast(numtimesprg as Number) ) as numtimesprg, percentile_cont(0.5) within group(order by cast(plglcconc as Number) ) as plglcconc, percentile_cont(0.5) within group(order by cast(bloodp as Number) ) as bloodp, percentile_cont(0.5) within group(order by cast(skinthick as Number) ) as skinthick, percentile_cont(0.5) within group(order by cast(twohourserins as Number) ) as twohourserins, percentile_cont(0.5) within group(order by
 cast(bmi as Number) ) as bmi, percentile_cont(0.5) within group(order by cast(dipedfunc as Number) ) as dipedfunc, percentile_cont(0.5) within group(order by cast(age as Number) ) as age, percentile_cont(0.5) within group(order by cast(hasdiabetes as Number) ) as hasdiabetes, percentile_cont(0.5) within group(order by cast(idx as Number) ) as idx from "PIMA_TRAIN"  
union all
 SELECT 
  
 cast('75%' as varchar(6)) as "func", percentile_cont(0.75) within group(order by cast(numtimesprg as Number) ) as numtimesprg, percentile_cont(0.75) within group(order by cast(plglcconc as Number) ) as plglcconc, percentile_cont(0.75) within group(order by cast(bloodp as Number) ) as bloodp, percentile_cont(0.75) within group(order by cast(skinthick as Number) ) as skinthick, percentile_cont(0.75) within group(order by cast(twohourserins as Number) ) as twohourserins, percentile_cont(0.75) within group(or
der by cast(bmi as Number) ) as bmi, percentile_cont(0.75) within group(order by cast(dipedfunc as Number) ) as dipedfunc, percentile_cont(0.75) within group(order by cast(age as Number) ) as age, percentile_cont(0.75) within group(order by cast(hasdiabetes as Number) ) as hasdiabetes, percentile_cont(0.75) within group(order by cast(idx as Number) ) as idx from "PIMA_TRAIN"  
union all
 SELECT 
  
 cast('max' as varchar(6)) as "func", 
 cast(max(numtimesprg) as Number) as numtimesprg, cast(max(plglcconc) as Number) as plglcconc, cast(max(bloodp) as Number) as bloodp, cast(max(skinthick) as Number) as skinthick, cast(max(twohourserins) as Number) as twohourserins, cast(max(bmi) as Number) as bmi, cast(max(dipedfunc) as Number) as dipedfunc, cast(max(age) as Number) as age, cast(max(hasdiabetes) as Number) as hasdiabetes, cast(max(idx) as Number) as idx 
from 
 "PIMA_TRAIN"

