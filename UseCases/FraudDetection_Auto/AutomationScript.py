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
print("Sample data:\n ", txn_data)
print("Shape of the data: ", txn_data.shape)

#Remove all data that isn't 'CASH OUT' or 'TRANSFER'.
print('Cleaning Data before using it to train model')
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
print("Shape of train data: ", clean_data_train.shape) 
print("Shape of test data: ", clean_data_test.shape)

#Convert to pandas
clean_data_train_df = clean_data_train.to_pandas(all_rows = True)
clean_data_train_df.reset_index(inplace = True)



# Load the PMML file into Vantage
print('Load the pmml model file into Vantage')
try:
    res = save_byom(model_id = 'mm_glm1', model_file = 'mm_fraud_glm_model.pmml', table_name = 'mm_glm')

except Exception as e:
    # if our model exists, delete and rewrite
    if str(e.args).find('TDML_2200') >= 1:
        res = delete_byom(model_id = 'mm_glm1', table_name = 'mm_glm')
        res = save_byom(model_id = 'mm_glm1', model_file = 'mm_fraud_glm_model.pmml', table_name = 'mm_glm')
        pass
    else:
        raise
        
#Score model in Vantage
print('Retrieving the model')
model_tdf = retrieve_byom("mm_glm1", table_name = 'mm_glm')

print('Using PMMLPredict for Scoring')
# Run the PMMLPredict function in Vantage
result = PMMLPredict(
            modeldata = model_tdf,
            newdata = clean_data_test,
            accumulate = ['step','amount','newbalanceOrig','oldbalanceDest','newbalanceDest','oldbalanceOrig', 'isFraud'],
            overwrite_cached_models = '*',
            model_output_fields = ['probability(1)', 'probability(0)']
            )

print(result.result)

print('Predictions completed')

#Classification Evaluator
pred_df = result.result
# pred_df.to_sql('pred_data', if_exists = 'replace')
pred_df = pred_df.assign(isFraud = pred_df.isFraud,
                         prediction = pred_df["probability(1)"].cast(type_=INTEGER))
# print(pred_df)
print('Evaluating the model')
ClassificationEvaluator_obj = ClassificationEvaluator(data=pred_df,
                                                          observation_column='isFraud',
                                                          prediction_column='prediction',
                                                          labels=['0', '1'])
classeval_df = ClassificationEvaluator_obj.output_data
print(classeval_df)

classeval_df = classeval_df.select(['Metric','MetricValue'])
pivot_df = classeval_df.pivot(aggfuncs=[classeval_df.MetricValue.sum()],
                            col1=classeval_df.Metric,
                            col1_values= ['Accuracy','Weighted-Precision','Weighted-Recall','Weighted-F1'])
# print(pivot_df)

roc_out = ROC(probability_column='"probability(1)"',
              observation_column="isFraud",
              positive_class="1",
              data=result.result,
              num_thresholds = 300)
# print(roc_out.result)

print('Getting the AUC Value for the model')
auc = roc_out.result.get_values()[0][0]  

print('AUC value of the model:' ,str(auc))

df_met = DataFrame(in_schema("demo_user", "run_metrics"))
run_id_col = df_met.select(['RunID']).max().get_values()[0][0]

# print('RunID:' ,run_id_col)
if (run_id_col == None):
    run_id_col = 0
else:
    run_id_col = run_id_col
    
print('RunID:' ,run_id_col+1) 
    
run_id = literal_column(run_id_col + 1)

# print('RunID:' ,run_id)
auc_value = literal_column(auc)

run_metrics_df = pivot_df.assign(drop_columns=True,
                                 RunID = run_id.cast(type_=INTEGER),
                                 RunTS = func.now(),
                                 Accuracy = pivot_df.sum_metricvalue_accuracy,
                                 WPrecision = pivot_df.sum_metricvalue_weighted_precision,
                                 WRecall = pivot_df.sum_metricvalue_weighted_recall,
                                 WF1 = pivot_df.sum_metricvalue_weighted_f1,
                                 AUC = auc_value.cast(type_=FLOAT))

# print(run_metrics_df)
copy_to_sql(run_metrics_df, table_name='run_metrics', schema_name='demo_user', if_exists='append')
print('Metrics stored in Vantage table')

# compare metrics
print('Display metrics for all runs till now')
df_met = DataFrame(in_schema("demo_user", "run_metrics"))

print(df_met.sort('RunID'))

print('dropping temp tables')
#Drop temp tables 
db_drop_table(table_name = 'mm_glm')
print('temp tables dropped')

#Drop tables and views created 
print('Dropping tables and views')
execute_sql('''call remove_data('demo_glm_fraud');''')

#remove contect
print('Removing context')
remove_context()

print('End of script')
#end of script


          
                           
                           
                           
                           