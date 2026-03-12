import numpy as np
import pandas as pd
from teradataml import DataFrame
from utils.sql_helper_func import *

# set embedding model from openai models
embedding_model = "text-embedding-3-small"

def generate_embeddings_tdapiclient(table_name, api_key, text_column, accumulate, output_table_name, eng):
    sql_query = f"""
    SELECT * FROM td_tapidb.API_Request(
        ON (SELECT * FROM {table_name})
        USING AUTHORIZATION('{{"Key":"{api_key}"}}')
            API_TYPE('open-ai-embedding')
            MODEL_NAME('{embedding_model}')
            DATA_COLUMNS('{text_column}')
    ) AS dt;
    """

    tdf_emb_temp = DataFrame.from_query(sql_query)
    pdf = tdf_emb_temp.to_pandas()
 
    # Convert embeddings from BLOB to float32 arrays
    embeddings_array = np.array([np.frombuffer(b, dtype=np.float32) for b in pdf['embedding']])

    # Create a final DataFrame with embeddings split into columns
    df_final = pd.concat([pdf[accumulate], pd.DataFrame(embeddings_array)], axis=1)

    # rename embedding columns
    df_final.columns = (
        accumulate
        + [f'emb_{i}' for i in range(embeddings_array.shape[1])]
    )
    
    delete_and_copy_embeddings(
        table_name=output_table_name, tdf=df_final, eng=eng
    )
    return DataFrame(output_table_name)