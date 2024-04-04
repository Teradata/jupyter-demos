import os
import getpass
import warnings
import pandas as pd
import matplotlib.pyplot as plt
from jdk4py import JAVA, JAVA_HOME, JAVA_VERSION

from teradataml import *
from sqlalchemy import literal_column, func
from sklearn.linear_model import LogisticRegression

from sklearn2pmml.pipeline import PMMLPipeline
from sklearn2pmml import sklearn2pmml

warnings.filterwarnings("ignore")
configure.byom_install_location = 'mldb'
display.max_rows = 5

# Set java path
os.environ['PATH'] = os.environ['PATH'] + os.pathsep + str(JAVA_HOME)
os.environ['PATH'] = os.environ['PATH'] + os.pathsep + str(JAVA)[:-5]

# Connect to Teradata
pwd = getpass.getpass("Enter Password:")
if (pwd == ''):
    pwd = getpass.getpass("Enter Password:")
eng = create_context(host = 'host.docker.internal', username = 'demo_user', password = pwd)

print(eng)

# Load Data 
print("Loading data into Vantage")
execute_sql('''call get_data('demo_glm_fraud_local');''')

txn_data = DataFrame(in_schema('DEMO_GLM_Fraud','transaction_data'))

clean_data = txn_data.loc[(txn_data.type == 'CASH_OUT') | (txn_data.type == 'TRANSFER')]
# Drop unnecessary columns
clean_data = clean_data.drop(['nameDest', 'nameOrig', 'isFlaggedFraud'], axis = 1)

# Create the source data table in the database
clean_data.to_sql('clean_data', if_exists = 'replace', primary_index = 'txn_id')
print('Clean Data copied to Vantage')
TrainTestSplit_out = TrainTestSplit(
                                     data = DataFrame('clean_data'),
                                     id_column = "txn_id",
                                     train_size = 0.80,
                                     test_size = 0.20,
                                     seed = 42)

clean_data_train = TrainTestSplit_out.result[TrainTestSplit_out.result['TD_IsTrainRow'] == 1].drop(['TD_IsTrainRow'], axis = 1)
clean_data_test = TrainTestSplit_out.result[TrainTestSplit_out.result['TD_IsTrainRow'] == 0].drop(['TD_IsTrainRow'], axis = 1)


#Convert to pandas
clean_data_train_df = clean_data_train.to_pandas(all_rows = True)
clean_data_train_df.reset_index(inplace = True)

#Use sklearn pipeline to create model 

warnings.filterwarnings("ignore")

y_train = clean_data_train_df[['isFraud']].astype(int)
X_train = clean_data_train_df[['step','amount','newbalanceOrig','oldbalanceDest','newbalanceDest','oldbalanceOrig']].astype(float)

print('Creating sklearn pipeline')
pipeline = PMMLPipeline([
      ("classifier", LogisticRegression())
      ])
pipeline.fit(X_train, y_train)

print('generating the pmml model file')
sklearn2pmml(pipeline, "mm_fraud_glm_model.pmml", with_repr = True)

# Create table to store metrics 

qry = '''Create multiset table run_metrics
         ( AUC FLOAT, Accuracy FLOAT,  RunID INTEGER,  RunTS TIMESTAMP(6),  WF1 FLOAT,  WPrecision FLOAT,  WRecall FLOAT) Primary index (RunID);'''

try:
    execute_sql(qry)
except:
    db_drop_table(table_name='run_metrics', schema_name='demo_user')
    execute_sql(qry)

