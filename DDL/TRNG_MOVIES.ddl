create database TRNG_MOVIES from demonow as perm=0;
create foreign table gs_tables_db."TRNG_MOVIES_tweets_prep", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MOVIES/tweets-prep/'));
create foreign table gs_tables_db."TRNG_MOVIES_gniptweets", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MOVIES/gniptweets/'));
create foreign table gs_tables_db."TRNG_MOVIES_tweets_tag_NSFW2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MOVIES/tweets-tag-NSFW2/'));
create foreign table gs_tables_db."TRNG_MOVIES_tweets_tag_NSFW", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MOVIES/tweets-tag-NSFW/'));
create foreign table gs_tables_db."TRNG_MOVIES_test_part2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MOVIES/test-part2/'));
create foreign table gs_tables_db."TRNG_MOVIES_tweets", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MOVIES/tweets/'));
create foreign table gs_tables_db."TRNG_MOVIES_tweets2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MOVIES/tweets2/'));
create foreign table gs_tables_db."TRNG_MOVIES_testdata", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MOVIES/testdata/'));
create foreign table gs_tables_db."TRNG_MOVIES_google_blacklisted_words", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MOVIES/google-blacklisted-words/'));
create foreign table gs_tables_db."TRNG_MOVIES_offensive_tagrules", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MOVIES/offensive-tagrules/'));
replace view TRNG_MOVIES.gniptweets as locking row for access select
"guid"
,"t_date"
,"url"
,"comments"
,"a_handle"
,"a_name"
,"t_locate"
,"a_posts"
,"a_followers"
,"a_following"
from gs_tables_db.TRNG_MOVIES_gniptweets;
replace view TRNG_MOVIES.google_blacklisted_words as locking row for access select
"tag"
,"term"
from gs_tables_db.TRNG_MOVIES_google_blacklisted_words;
replace view TRNG_MOVIES.offensive_tagrules as locking row for access select
"tagname"
,"definit"
from gs_tables_db.TRNG_MOVIES_offensive_tagrules;
replace view TRNG_MOVIES.testdata as locking row for access select
"twt_num"
,"comments"
from gs_tables_db.TRNG_MOVIES_testdata;
replace view TRNG_MOVIES.test_part2 as locking row for access select
"twt_num"
,"comments"
,"comments_mod"
from gs_tables_db.TRNG_MOVIES_test_part2;
replace view TRNG_MOVIES.tweets as locking row for access select
"twt_num"
,"t_date"
,"url"
,"comments"
,"a_handle"
,"a_name"
,"t_locate"
,"a_posts"
,"a_followers"
,"a_following"
,"movie"
from gs_tables_db.TRNG_MOVIES_tweets;
replace view TRNG_MOVIES.tweets2 as locking row for access select
"guid"
,"t_date"
,"url"
,"comments"
,"a_handle"
,"a_name"
,"t_locate"
,"a_posts"
,"a_followers"
,"a_following"
from gs_tables_db.TRNG_MOVIES_tweets2;
replace view TRNG_MOVIES.tweets_prep as locking row for access select
"twt_num"
,"t_date"
,"url"
,"comments"
,"a_handle"
,"a_name"
,"t_locate"
,"a_posts"
,"a_followers"
,"a_following"
,"movie"
,"SFW"
from gs_tables_db.TRNG_MOVIES_tweets_prep;
replace view TRNG_MOVIES.tweets_tag_NSFW as locking row for access select
"twt_num"
,"t_date"
,"url"
,"comments"
,"a_handle"
,"a_name"
,"t_locate"
,"a_posts"
,"a_followers"
,"a_following"
,"movie"
,"comment_nsfw_tag"
,"a_name_nsfw_tag"
,"a_handle_NSFW_tag"
from gs_tables_db.TRNG_MOVIES_tweets_tag_NSFW;
replace view TRNG_MOVIES.tweets_tag_NSFW2 as locking row for access select
"twt_num"
,"t_date"
,"url"
,"comments"
,"a_handle"
,"a_name"
,"t_locate"
,"a_posts"
,"a_followers"
,"a_following"
,"movie"
,"comment_nsfw_tag"
,"a_name_nsfw_tag"
,"a_handle_nsfw_tag"
,"t_locate_NSFW_tag"
from gs_tables_db.TRNG_MOVIES_tweets_tag_NSFW2;
