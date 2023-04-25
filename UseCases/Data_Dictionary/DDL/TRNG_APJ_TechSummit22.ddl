create database TRNG_APJ_TechSummit22 from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_APJ_TechSummit22_MEDIQAN_MEDI_CAMP_REGISTRATION", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-APJ-TechSummit22/MEDIQAN-MEDI-CAMP-REGISTRATION/'));
create foreign table gs_tables_db."TRNG_APJ_TechSummit22_MEDIQAN_CAMP_DETAILS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-APJ-TechSummit22/MEDIQAN-CAMP-DETAILS/'));
create foreign table gs_tables_db."TRNG_APJ_TechSummit22_MEDIQAN_MEDI_CAMP_ATTENDANCE_DETAILS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-APJ-TechSummit22/MEDIQAN-MEDI-CAMP-ATTENDANCE-DETAILS/'));
create foreign table gs_tables_db."TRNG_APJ_TechSummit22_MEDIQAN_VISITOR_PROFILE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-APJ-TechSummit22/MEDIQAN-VISITOR-PROFILE/'));
replace view TRNG_APJ_TechSummit22.MEDIQAN_CAMP_DETAILS as locking row for access select
"MEDI_CAMP_ID"
,"CATEGORY1"
,"CATEGORY2"
,"CITY"
,"LAT"
,"LNG"
from gs_tables_db.TRNG_APJ_TechSummit22_MEDIQAN_CAMP_DETAILS;
replace view TRNG_APJ_TechSummit22.MEDIQAN_MEDI_CAMP_ATTENDANCE_DETAILS as locking row for access select
"VISITOR_ID"
,"MEDI_CAMP_ID"
,"DONATION"
,"HEALTH_SCORE"
,"NUMBER_OF_STALL_VISITED"
,"LAST_STALL_VISITED_NUMBER"
from gs_tables_db.TRNG_APJ_TechSummit22_MEDIQAN_MEDI_CAMP_ATTENDANCE_DETAILS;
replace view TRNG_APJ_TechSummit22.MEDIQAN_MEDI_CAMP_REGISTRATION as locking row for access select
"VISITOR_ID"
,"MEDI_CAMP_ID"
,"REGISTRATION_DATE"
,"VAR1"
,"VAR2"
,"VAR3"
,"VAR4"
,"VAR5"
from gs_tables_db.TRNG_APJ_TechSummit22_MEDIQAN_MEDI_CAMP_REGISTRATION;
replace view TRNG_APJ_TechSummit22.MEDIQAN_VISITOR_PROFILE as locking row for access select
"VISITOR_ID"
,"ONLINE_FOLLOWER"
,"LINKEDIN_SHARED"
,"TWITTER_SHARED"
,"FACEBOOK_SHARED"
,"INCOME"
,"EDUCATION_SCORE"
,"AGE"
,"FIRST_INTERACTION"
,"CITY_TYPE"
,"EMPLOYER_CATEGORY"
from gs_tables_db.TRNG_APJ_TechSummit22_MEDIQAN_VISITOR_PROFILE;
