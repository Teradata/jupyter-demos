create database TRNG_SurvivalAnalysis from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_SurvivalAnalysis_heart_failure", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-SurvivalAnalysis/heart-failure/'));
replace view TRNG_SurvivalAnalysis.heart_failure as locking row for access select
"id"
,"death"
,"los"
,"age"
,"gender"
,"cancer"
,"cabg"
,"crt"
,"defib"
,"dementia"
,"diabetes"
,"hypertension"
,"ihd"
,"mental_health"
,"arrhythmias"
,"copd"
,"obesity"
,"pvd"
,"renal_disease"
,"valvular_disease"
,"metastatic_cancer"
,"pacemaker"
,"pneumonia"
,"prior_appts_attended"
,"prior_dnas"
,"pci"
,"stroke"
,"senile"
,"quintile"
,"ethnicgroup"
,"fu_time"
from gs_tables_db.TRNG_SurvivalAnalysis_heart_failure;
REPLACE VIEW heart_failure_subset AS 
    (
    SELECT
        id,
        death,
        fu_time,
        age,
        gender,
        valvular_disease,
        pneumonia,
        metastatic_cancer,
        senile,
        mental_health,
        
        CASE
            WHEN mental_health = 0 THEN senile ELSE mental_health
        END AS cog_imp
        FROM heart_failure
    );

