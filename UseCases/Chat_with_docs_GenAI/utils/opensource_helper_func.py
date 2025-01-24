import teradataml
from teradataml import *
import pandas as pd
from FlagEmbedding import FlagModel
from sentence_transformers import SentenceTransformer

# model = FlagModel('BAAI/bge-large-en', query_instruction_for_retrieval="Represent this sentence for searching relevant passages:")
model = SentenceTransformer('BAAI/bge-large-en')


def get_embeddings_hf(tdf):
    
    result_df = tdf
    # convert to pandas df if teradataml.dataframe
    if type(tdf) == teradataml.dataframe.dataframe.DataFrame:
        result_df = result_df.to_pandas().reset_index()

    # encode     
    def get_emb(s):
        # return model.encode(sentance)
        return model.encode(s, normalize_embeddings=True)

    # This may take a few minutes
    result_df["embedding"] = result_df.text.progress_apply(lambda x: get_emb(x))

    newframe = result_df.copy()
    # Generate all the embeddings columns from the "embeddings" column.
    for i in range(1024):
        newframe["embeddings_{}".format(i)] = newframe["embedding"].apply(lambda x: x[i])

    # # drop embedding 
    newframe.drop("embedding", axis=1, inplace=True)

    return newframe
