from tdapiclient import TDApiClient

def generate_embeddings_tdapiclient(tdf, api_key, text_column):
    #  create authorization format
    auth_info = f'{{ "key": "{api_key}" }}'
    num_embeddings = 1536

    return TDApiClient.API_Request(
        tdf,
        "open-ai-embedding",
        authorization=auth_info,
        num_embeddings=num_embeddings,
        model_name="text-embedding-ada-002",
        text_column=text_column,
    )
