# teradata lib
from teradataml.dataframe.copy_to import copy_to_sql
from teradataml import execute_sql

#  SQL code
# delete all the records from table
def delete_emb_from_sql(table_name, eng):
    qry = f"DELETE FROM {table_name}"
    try:
        execute_sql(qry)
        print(f'All the records deleted from: {table_name}')
    except:
        pass

    

# only copy embeddings, if table exists then append
def copy_emb_to_sql(table_name, tdf):
    try:
        copy_to_sql(tdf, table_name=table_name,primary_index='id', if_exists='append')
    except:
        pass

def delete_and_copy_embeddings(table_name, tdf, eng):
    # only delete records if table exists
    qry = f"DELETE FROM {table_name}"
    try:
        execute_sql(qry)
    except:
        pass

    # only insert records if table exists
    try:
        copy_to_sql(tdf, table_name=table_name,primary_index='id', if_exists='replace')
    except:
        pass
