from sqlalchemy.sql import literal_column as col
import teradataml as tdml

TOPICS_EMBEDDINGS = "telco_topics_of_interest"

def get_embeddings_for_topics_query(results_dict, 
                                    models_table= "embeddings_models", 
                                    model_name="gte-base-en-v1.5",
                                    tokenizer_table= "embeddings_tokenizers", 
                                    number_dimensions_output=768, 
                                    caching_option="n"):
    return f"""
WITH topics_table AS
(
SELECT 
    d.tokennum as topic_id,
    d.token as topic
FROM TABLE (
strtok_split_to_table(
        1, 
        '{";".join([r.replace("'","") for r in results_dict.values()])}', 
        ';'
        )
RETURNS (
outkey integer, 
tokennum integer, 
token varchar(500)character set unicode) ) as d
)

SELECT
a.*
from mldb.ONNXEmbeddings(
        on (SEL t.*, topic as txt FROM topics_table t) as InputTable
        on (select * from {models_table} where model_id = '{model_name}') as ModelTable DIMENSION
        on (select model as tokenizer from {tokenizer_table} where model_id = '{model_name}') as TokenizerTable DIMENSION
        using
            Accumulate('topic_id', 'topic') 
            ModelOutputTensor('sentence_embedding')
            EnableMemoryCheck('false')
            OutputFormat('FLOAT32({number_dimensions_output})')
            OverwriteCachedModel('{caching_option}')
    ) a
"""

def calculate_similarity_topics(topics_dict={0:"Call Drops", 1: "Network Coverage"} ):
    # will only append newly generated topics

    #tdml.DataFrame.from_query(get_embeddings_for_topics_query(topics_dict)
    #                         ).to_sql("new_topics_embeddings", if_exists="replace", temporary = False)
    
    DF_new_topics = tdml.DataFrame("telco_topics_of_interest")
    DF_embedding = tdml.DataFrame(in_schema('DEMO_Telco_Complaints', 'telco_consumer_embeddings'))
    DF_complaints = tdml.DataFrame(in_schema('DEMO_Telco_Complaints', 'telco_consumer_complaints'))
    DF_new_vectdist = tdml.VectorDistance(
        target_data = DF_embeddings,
        target_id_column = "id",
        reference_data = df_topic,
        ref_id_column = "id",
        distance_measure= "COSINE",    
        target_feature_columns="emb_0:emb_383",
        ref_feature_columns="emb_0:emb_383",
        volatile = True
    ).result

    (DF_new_vectdist
     .join(
         DF_complaints,
        on = ["target_id = row_id"],
        how = "left")
     .join(
         DF_new_topics.select(["id","txt"]),
         on = ["reference_id = id"],
         how = "left",rsuffix = 'topic')
    
     .assign(similarity = 1.0-DF_new_vectdist.distance, 
             topic_id = DF_new_vectdist.reference_id,
             topic = DF_new_vectdist.txt_topic,
             year_month = col("td_month_begin(complaint_date)")
             )
     .select(["row_id", "topic_id","topic","similarity", "year_month"  ])
     
    ).to_sql("complaint_similarity_adhoc", if_exists = "replace",
            primary_index = ["year_month", "topic_id"], 
            types= {"year_month":tdml.DATE},
            temporary = False)
    DF_new_similarity = tdml.DataFrame("complaint_similarity_adhoc")
    
    # add new tables to master tables
    DF_new_topics.to_sql("telco_topics_of_interest", if_exists="append")
    DF_new_similarity.to_sql("consumer_complaint_topic_similarity", if_exists="append")