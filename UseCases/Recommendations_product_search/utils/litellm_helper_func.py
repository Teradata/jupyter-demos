import teradataml
from teradataml import *
import pandas as pd
import os
from dotenv import load_dotenv
from litellm import embedding

env_path = os.path.expanduser('~/JupyterLabRoot/VantageCloud_Lake/.config/.env')
load_dotenv(env_path)

litellm_api_key = os.getenv('litellm_key')
litellm_base_url = os.getenv('litellm_base_url')

embedding_model = "text-embedding-3-small"

def get_embeddings(tdf):
    
    result_df = tdf
    if type(tdf) == teradataml.dataframe.dataframe.DataFrame:
        result_df = result_df.to_pandas().reset_index()
        
    # Generate embeddings using LiteLLM
    def get_single_embedding(text):
        response = embedding(
            model=embedding_model,
            input=[text],
            api_key=litellm_api_key,      
            api_base=litellm_base_url,   
            dimensions=1536               
        )
        return response.data[0]['embedding']
    
    result_df["embedding"] = result_df.product_name.apply(lambda x: get_single_embedding(x))
    
    # Generate all the embeddings columns from the "embeddings" column.
    for i in range(1536):
        result_df["embeddings_{}".format(i)] = result_df["embedding"].apply(lambda x: x[i])
    
    result_df.drop("embedding", axis=1, inplace=True)
    return result_df