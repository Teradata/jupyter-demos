import boto3
from langchain_community.embeddings import BedrockEmbeddings

## Bedrock Clients
bedrock=boto3.client(service_name="bedrock-runtime", region_name="us-east-1")
bedrock_embeddings=BedrockEmbeddings(model_id="amazon.titan-embed-text-v1",client=bedrock)

def get_embeddings_bedrock(df, txt_col_name):
         
    # This may take a few minutes
    df['embeddings'] = df[txt_col_name].apply(lambda x: bedrock_embeddings.embed_query(x))
    
    # Generate all the embeddings columns from the "embeddings" column.
    for i in range(1536):
        df["embeddings_{}".format(i)] = df["embeddings"].apply(lambda x: x[i])
    
    # drop embedding 
    df = df.drop("embeddings", axis=1)
    return df