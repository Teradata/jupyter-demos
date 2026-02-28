from teradataml import DataFrame, copy_to_sql, db_drop_table
import pandas as pd
import numpy as np

embedding_model = "text-embedding-3-small"

def generate_embeddings_tdapiclient(tdf, api_key, text_column):
    """
    Generate embeddings using Teradata's API_Request function directly via SQL.
    Returns a teradataml DataFrame with expanded embedding columns.
    
    Args:
        tdf: teradataml DataFrame with the data
        api_key: OpenAI API key
        text_column: Name of the column containing text to embed
    
    Returns:
        teradataml DataFrame with all original columns plus embedding columns 
        (embeddings_0, embeddings_1, ..., embeddings_1535)

    """
    pdf_original = tdf.to_pandas().reset_index()
    
    temp_table = "temp_embedding_input"
    
    copy_to_sql(pdf_original, table_name=temp_table, if_exists='replace', index=False)

    sql_query = f"""
    SELECT * FROM td_tapidb.API_Request(
        ON (SELECT * FROM {temp_table})
        USING AUTHORIZATION('{{"Key":"{api_key}"}}')
            API_TYPE('open-ai-embedding')
            MODEL_NAME('{embedding_model}')
            DATA_COLUMNS('{text_column}')
    ) AS dt;
    """
    tdf_embeddings = DataFrame.from_query(sql_query)
    
    pdf_embeddings = tdf_embeddings.to_pandas().reset_index(drop=True)
    
    embeddings_array = np.array([
        np.frombuffer(b, dtype=np.float32) for b in pdf_embeddings['embedding']
    ])

    df_embeddings_expanded = pd.DataFrame(
        embeddings_array,
        columns=[f'embeddings_{i}' for i in range(embeddings_array.shape[1])]
    )
    
    df_final = pd.concat([pdf_original, df_embeddings_expanded], axis=1)
    
    tdf_final = DataFrame(df_final, index=False)
    
    try:
        db_drop_table(temp_table)
    except:
        pass
    
    return tdf_final