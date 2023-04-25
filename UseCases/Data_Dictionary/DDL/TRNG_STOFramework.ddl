create database TRNG_STOFramework from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_STOFramework_STO_Output", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-STOFramework/STO-Output/'));
create foreign table gs_tables_db."TRNG_STOFramework_test_dataset_redistributed", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-STOFramework/test-dataset-redistributed/'));
create foreign table gs_tables_db."TRNG_STOFramework_redefinition", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-STOFramework/redefinition/'));
create foreign table gs_tables_db."TRNG_STOFramework_test_dataset", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-STOFramework/test-dataset/'));
create foreign table gs_tables_db."TRNG_STOFramework_models_description", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-STOFramework/models-description/'));
replace view TRNG_STOFramework.models_description as locking row for access select
"ID_Computation"
,"ID_Model"
,"model_file"
,"target"
,"arguments"
,"predictors"
,"categorical_columns"
,"integer_columnames"
,"float_columnames"
,"columnnames"
from gs_tables_db.TRNG_STOFramework_models_description;
replace view TRNG_STOFramework.redefinition as locking row for access select
"Partition_ID"
,"New_Partition_ID"
,"AMP_ID"
from gs_tables_db.TRNG_STOFramework_redefinition;
replace view TRNG_STOFramework.STO_Output as locking row for access select
"ID_Computation"
,"ID_Model"
,"model_ID"
,"partition_ID"
,"target"
,"ID"
,"actual"
,"prediction"
,"insertTImestamp"
from gs_tables_db.TRNG_STOFramework_STO_Output;
replace view TRNG_STOFramework.test_dataset as locking row for access select
"Partition_ID"
,"ID"
,"X1"
,"X2"
,"X3"
,"X4"
,"X5"
,"X6"
,"X7"
,"X8"
,"X9"
,"flag"
,"Y1"
,"Y2"
from gs_tables_db.TRNG_STOFramework_test_dataset;
replace view TRNG_STOFramework.test_dataset_redistributed as locking row for access select
"Partition_ID"
,"ID"
,"X1"
,"X2"
,"X3"
,"X4"
,"X5"
,"X6"
,"X7"
,"X8"
,"X9"
,"flag"
,"Y1"
,"Y2"
from gs_tables_db.TRNG_STOFramework_test_dataset_redistributed;
REPLACE VIEW TRNG_STOFRAMEWORK.models_metadata_model AS LOCKING ROW FOR ACCESS SELECT * FROM TRNG_STOFRAMEWORK.models_metadata_model_TBL;

REPLACE VIEW TRNG_STOFRAMEWORK.test_dataset_redistributed_V AS
        SELECT  
                A.ID
            , A.X1
            , A.X2
            , A.X3
            , A.X4
            , A.X5
            , A.X6
            , A.X7
            , A.X8
            , A.X9
            , A.flag
            ,   A.Y1
            ,   A.Y2
            ,   TRIM(CAST(partition_ID AS VARCHAR(10))) as partition_ID
            , CASE WHEN ID < 8000 THEN 'train' ELSE 'test' END as fold_ID
        FROM TRNG_STOFRAMEWORK.test_dataset_redistributed A;

REPLACE VIEW TRNG_STOFRAMEWORK.VV_STO_Scoring AS    
     SELECT input_data.*
     ,     CASE WHEN input_data.fake_row = 1 THEN E.model  ELSE NULL END as model
     , E.model_ID as model_ID_Ser
     , 'ID' as ID_columns
     FROM TRNG_STOFRAMEWORK.VV_STO_Training input_data
     , (
        SELECT 1 as fake_row
        , DD.*
        , DD.ID_Partition as partition_ID
        FROM TRNG_STOFRAMEWORK.models_metadata_model DD
       ) E
     WHERE 
      TRIM(E.ID_Computation) = TRIM(input_data.Computation_ID)
     and TRIM(E.ID_Model)       = TRIM(input_data.Model_ID)
        and E.partition_ID         = input_data.partition_ID
     and E.ID_Computation = 2
     ;

REPLACE VIEW TRNG_STOFRAMEWORK.VV_STO_Training AS
      SELECT * FROM ( 
       SELECT  
         A.fake_row as fake_row
        , CASE
                            
                            WHEN A.partition_ID like '{%}' -- A.partition_ID is JSON
                            THEN '{"partition_ID":' || A.partition_ID ||  ',"ID":' || TRIM(A.ID) ||'}'
                            ELSE '{"partition_ID":"' || A.partition_ID ||  '","ID":' || TRIM(A.ID) ||'}'
                            END as ID  
        , A.X1,A.X2,A.X3,A.X4,A.X5,A.X6,A.X7,A.X8,A.X9,A.flag,A.Y1,A.Y2
        , A.partition_ID2 as partition_ID
                    ,   A.fold_ID2 as fold_ID
        , B.ID_Model as Model_ID
        , CASE WHEN A.fake_row = 1 THEN B."target" ELSE NULL END as "target"
        , B.ID_Computation as Computation_ID
        , CASE WHEN A.fake_row = 1 THEN 'ID,X1,X2,X3,X4,X5,X6,X7,X8,X9,flag,Y1,Y2,partitionID,foldID' ELSE NULL END as columnames
        , CASE WHEN A.fake_row = 1 THEN B.float_columnames  ELSE NULL END as float_columnames
        , CASE WHEN A.fake_row = 1 THEN B.integer_columnames ELSE NULL END as integer_columnames
        , CASE WHEN A.fake_row = 1 THEN B.categorical_columns ELSE NULL END as categorical_columns
        , CASE WHEN A.fake_row = 1 THEN B.predictors ELSE NULL END as predictors
        , CASE WHEN A.fake_row = 1 THEN B.arguments ELSE NULL END as arguments
        , CASE WHEN A.fake_row = 1 THEN B.model_file  ELSE NULL END as model_file


      FROM (
         SELECT
                            AA.partition_ID as partition_ID2
                        ,   AA.fold_ID as fold_ID2
         , row_number() over (partition by partition_ID2,fold_ID2 order by AA.ID) as fake_row
         , AA.* 
         FROM TRNG_STOFRAMEWORK.test_dataset_redistributed_V AA
        ) A
       , (
         SELECT 1 as fake_row
         , BB.*
         FROM TRNG_STOFRAMEWORK.models_description BB
         WHERE BB.ID_Computation = 2
        ) B
       ) input_data;

