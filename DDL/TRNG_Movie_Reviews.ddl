create database TRNG_Movie_Reviews from demonow as perm=0;
create foreign table gs_tables_db."TRNG_Movie_Reviews_movie_tweets",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Movie-Reviews/movie-tweets/'));
replace view TRNG_Movie_Reviews.movie_tweets as locking row for access select * from  gs_tables_db."TRNG_Movie_Reviews_movie_tweets";
