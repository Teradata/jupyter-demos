# teradata lib
from teradataml.dataframe.copy_to import copy_to_sql
from teradataml import *

#  SQL code
# delete all the records from table
def delete_emb_from_sql(table_name, eng):
    """
    Delete all records from a table.
    
    Args:
        table_name: Name of the table to delete from
        eng: Database engine (not used, kept for compatibility)
    """
    qry = f"DELETE FROM {table_name}"
    try:
        execute_sql(qry)
        print(f'All the records deleted from: {table_name}')
    except:
        pass
    
# only copy embeddings, if table exists then append
def copy_emb_to_sql(table_name, tdf):
    """
    Copy embeddings to SQL table (append mode).
    
    Args:
        table_name: Name of the target table
        tdf: DataFrame to copy
    """
    try:
        copy_to_sql(tdf, table_name=table_name, primary_index='product_id', if_exists='append')
    except:
        pass

def delete_and_copy_embeddings(table_name, tdf, eng):
    """
    Replace table with new embedding data. 
    Drops and recreates the table to avoid schema conflicts.
    
    This function:
    1. Drops the existing table (if it exists)
    2. Creates a new table with the correct schema
    3. Inserts all data from the DataFrame
    
    Args:
        table_name: Name of the target table
        tdf: teradataml DataFrame or pandas DataFrame to copy
        eng: Database engine (not used, kept for compatibility)
    """
    import pandas as pd
    from teradataml import DataFrame as tdDF
    
    # Convert to pandas if needed
    if isinstance(tdf, tdDF):
        pdf = tdf.to_pandas()
    else:
        pdf = tdf
    
    # Auto-detect primary index column
    # Look for common ID column names (case-insensitive)
    primary_index = None
    for col in pdf.columns:
        col_lower = col.lower()
        if 'product_id' in col_lower or col_lower == 'id':
            primary_index = col
            break
    
    # If no ID column found, use the first column
    if primary_index is None:
        primary_index = pdf.columns[0]
    
    # Always use 'replace' to avoid schema mismatch issues
    # This drops the existing table and creates a new one with the correct schema
    try:
        copy_to_sql(
            pdf, 
            table_name=table_name, 
            primary_index=primary_index,
            if_exists='replace',  # Drop and recreate table
            index=False  # Don't save pandas index as a column
        )
    except Exception as e:
        print(f"Error saving to {table_name}: {e}")
        print(f"Columns in DataFrame: {list(pdf.columns[:10])}")
        raise