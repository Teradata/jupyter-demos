import teradataml
from teradataml import *
import pandas as pd

# open AI
import openai

embedding_model = "text-embedding-ada-002"

def get_embeddings(tdf):
    
    result_df = tdf
    # convert to pandas df if teradataml.dataframe
    if type(tdf) == teradataml.dataframe.dataframe.DataFrame:
        result_df = result_df.to_pandas().reset_index()
        
    # This may take a few minutes
    result_df["embedding"] = result_df.product_name.apply(lambda x: openai.embeddings.create(input=x, model=embedding_model))
    
    # Generate all the embeddings columns from the "embeddings" column.
    for i in range(1536):
        result_df["embeddings_{}".format(i)] = result_df["embedding"].apply(lambda x: x.data[0].embedding[i])
    
    # drop embedding 
    result_df.drop("embedding", axis=1, inplace=True)
    return result_df