create database TRNG_DataScienceExploration from demonow as perm=0;
create foreign table gs_tables_db."TRNG_DataScienceExploration_TITANIC_TRAIN", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DataScienceExploration/TITANIC-TRAIN/'));
create foreign table gs_tables_db."TRNG_DataScienceExploration_MOVIE_LENS_MOVIES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DataScienceExploration/MOVIE-LENS-MOVIES/'));
create foreign table gs_tables_db."TRNG_DataScienceExploration_TITANIC_TEST", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DataScienceExploration/TITANIC-TEST/'));
create foreign table gs_tables_db."TRNG_DataScienceExploration_MOVIE_LENS_USERS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DataScienceExploration/MOVIE-LENS-USERS/'));
create foreign table gs_tables_db."TRNG_DataScienceExploration_ROSSMANN_SALES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DataScienceExploration/ROSSMANN-SALES/'));
create foreign table gs_tables_db."TRNG_DataScienceExploration_TELCO_CUSTOMERS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DataScienceExploration/TELCO-CUSTOMERS/'));
create foreign table gs_tables_db."TRNG_DataScienceExploration_HOUSE_PRICES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DataScienceExploration/HOUSE-PRICES/'));
create foreign table gs_tables_db."TRNG_DataScienceExploration_MOVIE_LENS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DataScienceExploration/MOVIE-LENS/'));
create foreign table gs_tables_db."TRNG_DataScienceExploration_MOVIE_LENS_MOVIES_stg", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DataScienceExploration/MOVIE-LENS-MOVIES-stg/'));
create foreign table gs_tables_db."TRNG_DataScienceExploration_ROSSMANN_SALES_STG", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DataScienceExploration/ROSSMANN-SALES-STG/'));
create foreign table gs_tables_db."TRNG_DataScienceExploration_ROSSMANN_SALES_STORE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DataScienceExploration/ROSSMANN-SALES-STORE/'));
replace view TRNG_DataScienceExploration.HOUSE_PRICES as locking row for access select
"id"
,"date"
,"price"
,"bedrooms"
,"bathrooms"
,"sqft_living"
,"sqft_lot"
,"floors"
,"waterfront"
,"view"
,"condition"
,"grade"
,"sqft_above"
,"sqft_basement"
,"yr_built"
,"yr_renovated"
,"zipcode"
,"lat"
,"long"
,"sqft_living15"
,"sqft_lot15"
from gs_tables_db.TRNG_DataScienceExploration_HOUSE_PRICES;
replace view TRNG_DataScienceExploration.MOVIE_LENS as locking row for access select
"user_id"
,"movie_id"
,"rating"
,"timestamp"
,"id"
from gs_tables_db.TRNG_DataScienceExploration_MOVIE_LENS;
replace view TRNG_DataScienceExploration.MOVIE_LENS_MOVIES as locking row for access select
"id"
,"movie_id"
,"title"
,"genres"
from gs_tables_db.TRNG_DataScienceExploration_MOVIE_LENS_MOVIES;
replace view TRNG_DataScienceExploration.MOVIE_LENS_MOVIES_stg as locking row for access select
"id"
,"movie_id"
,"title_"
,"genres"
from gs_tables_db.TRNG_DataScienceExploration_MOVIE_LENS_MOVIES_stg;
replace view TRNG_DataScienceExploration.MOVIE_LENS_USERS as locking row for access select
"user_id"
,"gender"
,"age"
,"occupation"
,"zipcode"
,"occ_desc"
from gs_tables_db.TRNG_DataScienceExploration_MOVIE_LENS_USERS;
replace view TRNG_DataScienceExploration.ROSSMANN_SALES as locking row for access select
"Store"
,"DayOfWeek"
,"Date"
,"Sales"
,"Customers"
,"Open"
,"Promo"
,"StateHoliday"
,"SchoolHoliday"
from gs_tables_db.TRNG_DataScienceExploration_ROSSMANN_SALES;
replace view TRNG_DataScienceExploration.ROSSMANN_SALES_STG as locking row for access select
"Store"
,"DayOfWeek_"
,"Date_"
,"Sales"
,"Customers_"
,"Open_"
,"Promo_"
,"StateHoliday_"
,"SchoolHoliday"
from gs_tables_db.TRNG_DataScienceExploration_ROSSMANN_SALES_STG;
replace view TRNG_DataScienceExploration.ROSSMANN_SALES_STORE as locking row for access select
"Store"
,"StoreType"
,"Assortment"
,"CompetitionDistance"
,"CompetitionOpenSinceMonth"
,"CompetitionOpenSinceYear"
,"Promo2"
,"Promo2SinceWeek"
,"Promo2SinceYear"
,"PromoInterval"
from gs_tables_db.TRNG_DataScienceExploration_ROSSMANN_SALES_STORE;
replace view TRNG_DataScienceExploration.TELCO_CUSTOMERS as locking row for access select
"id"
,"gender"
,"seniorcitizen"
,"maritalstatus"
,"dependents"
,"tenure"
,"phoneservice"
,"multiplelines"
,"internetservice"
,"onlinesecurity"
,"onlinebackup"
,"deviceprotection"
,"techsupport"
,"streamingtv"
,"streamingmovies"
,"contract"
,"paperlessbilling"
,"paymentmethod"
,"internationalplan"
,"voicemailplan"
,"numbervmailmessages"
,"totaldayminutes"
,"totaldaycalls"
,"totaleveminutes"
,"totalevecalls"
,"totalnightminutes"
,"totalnightcalls"
,"totalintlminutes"
,"totalintlcalls"
,"customerservicecalls"
,"totalcall"
,"totalrevenue"
,"churn"
from gs_tables_db.TRNG_DataScienceExploration_TELCO_CUSTOMERS;
replace view TRNG_DataScienceExploration.TITANIC_TEST as locking row for access select
"PassengerId"
,"Pclass"
,"Name"
,"Sex"
,"Age"
,"SibSp"
,"Parch"
,"Ticket"
,"Fare"
,"Cabin"
,"Embarked"
from gs_tables_db.TRNG_DataScienceExploration_TITANIC_TEST;
replace view TRNG_DataScienceExploration.TITANIC_TRAIN as locking row for access select
"PassengerId"
,"Survived"
,"Pclass"
,"Name"
,"Sex"
,"Age"
,"SibSp"
,"Parch"
,"Ticket"
,"Fare"
,"Cabin"
,"Embarked"
from gs_tables_db.TRNG_DataScienceExploration_TITANIC_TRAIN;
