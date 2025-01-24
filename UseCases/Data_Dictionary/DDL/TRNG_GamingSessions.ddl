create database TRNG_GamingSessions from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_GamingSessions_gaming_events", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-GamingSessions/gaming-events/'));
create foreign table gs_tables_db."TRNG_GamingSessions_gaming_events_sessions_similarities", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-GamingSessions/gaming-events-sessions-similarities/'));
create foreign table gs_tables_db."TRNG_GamingSessions_gaming_events_sessions", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-GamingSessions/gaming-events-sessions/'));
create foreign table gs_tables_db."TRNG_GamingSessions_gaming_events_sessions_similarities_depth", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-GamingSessions/gaming-events-sessions-similarities-depth/'));
create foreign table gs_tables_db."TRNG_GamingSessions_gaming_uniquesessionpaths", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-GamingSessions/gaming-uniquesessionpaths/'));
create foreign table gs_tables_db."TRNG_GamingSessions_game_affinity", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-GamingSessions/game-affinity/'));
create foreign table gs_tables_db."TRNG_GamingSessions_customer_ip", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-GamingSessions/customer-ip/'));
create foreign table gs_tables_db."TRNG_GamingSessions_games", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-GamingSessions/games/'));
create foreign table gs_tables_db."TRNG_GamingSessions_gaming_events_sessions_simil", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-GamingSessions/gaming-events-sessions-simil/'));
create foreign table gs_tables_db."TRNG_GamingSessions_gaming_events_sessions_simil_depth", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-GamingSessions/gaming-events-sessions-simil-depth/'));
replace view TRNG_GamingSessions.customer_ip as locking row for access select
"Customerid"
,"ip"
from gs_tables_db.TRNG_GamingSessions_customer_ip;
replace view TRNG_GamingSessions.games as locking row for access select
"game"
from gs_tables_db.TRNG_GamingSessions_games;
replace view TRNG_GamingSessions.game_affinity as locking row for access select
"col1_item1"
,"col1_item2"
,"cntb"
,"cnt1"
,"cnt2"
,"score"
,"support"
,"confidence"
,"lift"
,"z_score"
from gs_tables_db.TRNG_GamingSessions_game_affinity;
replace view TRNG_GamingSessions.gaming_events as locking row for access select
"customerid"
,"clicktime"
,"game"
from gs_tables_db.TRNG_GamingSessions_gaming_events;
replace view TRNG_GamingSessions.gaming_events_sessions as locking row for access select
"customerid"
,"clicktime"
,"game"
,"SESSIONID"
,"CLICKLAG"
from gs_tables_db.TRNG_GamingSessions_gaming_events_sessions;
replace view TRNG_GamingSessions.gaming_events_sessions_simil as locking row for access select
"a.sessionnum"
,"b.sessionnum"
,"score"
from gs_tables_db.TRNG_GamingSessions_gaming_events_sessions_simil;
replace view TRNG_GamingSessions.gaming_events_sessions_similarities as locking row for access select
"col1_item1"
,"col1_item2"
,"cntb"
,"cnt1"
,"cnt2"
from gs_tables_db.TRNG_GamingSessions_gaming_events_sessions_similarities;
replace view TRNG_GamingSessions.gaming_events_sessions_similarities_depth as locking row for access select
"col1_item1"
,"col1_item2"
,"cntb"
,"cnt1"
,"cnt2"
from gs_tables_db.TRNG_GamingSessions_gaming_events_sessions_similarities_depth;
replace view TRNG_GamingSessions.gaming_events_sessions_simil_depth as locking row for access select
"a.sessionnum"
,"b.sessionnum"
,"score"
from gs_tables_db.TRNG_GamingSessions_gaming_events_sessions_simil_depth;
replace view TRNG_GamingSessions.gaming_uniquesessionpaths as locking row for access select
"sessionnum"
,"path"
,"click_depth"
from gs_tables_db.TRNG_GamingSessions_gaming_uniquesessionpaths;
