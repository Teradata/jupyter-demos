import teradataml
from teradataml import *
import pandas as pd
from FlagEmbedding import FlagModel

model = FlagModel('BAAI/bge-large-en', query_instruction_for_retrieval="Represent this sentence for searching relevant passages:")

def get_embeddings_hf(tdf):
    
    result_df = tdf
    # convert to pandas df if teradataml.dataframe
    if type(tdf) == teradataml.dataframe.dataframe.DataFrame:
        result_df = result_df.to_pandas().reset_index()

    # encode     
    def get_emb(sentance):
        return model.encode(sentance)

    # This may take a few minutes
    result_df["embedding"] = result_df.product_name.progress_apply(lambda x: get_emb(x))

    # Generate all the embeddings columns from the "embeddings" column.
    for i in range(1024):
        result_df["embeddings_{}".format(i)] = result_df["embedding"].apply(lambda x: x[i])

    # # drop embedding 
    result_df.drop("embedding", axis=1, inplace=True)

    return result_df

# delete all the records from table
def delete_emb_from_sql(table_name, eng):
    qry = f"DELETE FROM {table_name}"
    try:
        eng.execute(qry)
        print(f'All the records deleted from: {table_name}')
    except:
        pass

# only copy embeddings, if table exists then append
def copy_emb_to_sql(table_name, tdf):
    try:
        copy_to_sql(tdf, table_name=table_name,primary_index='product_id', if_exists='append')
    except Exception as e:
        pass

def delete_and_copy_embeddings(table_name, tdf, eng):
    # only delete records if table exists
    qry = f"DELETE FROM {table_name}"
    try:
        eng.execute(qry)
    except:
        pass

    # only insert records if table exists
    try:
        copy_to_sql(tdf, table_name=table_name,primary_index='product_id', if_exists='append')
    except Exception as e:
        pass