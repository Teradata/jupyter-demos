from tdapiclient import TDApiClient, create_tdapi_context

# set embedding model from openai models
embedding_model = "text-embedding-3-small"

def generate_embeddings_tdapiclient(tdf, api_key, text_column):
    return TDApiClient.API_Request(dataframe=tdf, 
                                   api_type="open-ai-embedding",
                                   model_name=embedding_model,
                                   authorization ='''{{"Key":"{}"}}'''.format(api_key),
                                   text_column=text_column)
