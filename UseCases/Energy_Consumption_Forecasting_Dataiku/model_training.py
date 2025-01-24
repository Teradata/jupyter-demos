import dataiku
import pandas as pd, numpy as np
from teradataml import *
from dataiku import pandasutils as pdu
from sklearn2pmml.pipeline import PMMLPipeline
from sklearn2pmml import sklearn2pmml
from sklearn.linear_model import LinearRegression
from sklearn.ensemble import RandomForestRegressor

# Read recipe inputs
train_df = dataiku.Dataset("train_df")
train_df = train_df.get_dataframe().sort_values('TD_TIMECODE')

eng = create_context(host = 'may-03-1ls9ezeez0ycgiqb.env.clearscape.teradata.com', username='demo_user', password = 'teradata')

normalize_value = int(train_df.tail(24).mean()['consumption'])

train_x = train_df.drop(['TD_TIMECODE', 'consumption'], axis = 1).astype(float)
feature_names = list(train_x.columns)
train_y = train_df['consumption'] - normalize_value

pipeline_lr = PMMLPipeline(steps = [('lr', LinearRegression())])
pipeline_rf = PMMLPipeline(steps = [('random_forest', RandomForestRegressor(n_estimators=100, max_depth=10, random_state=42))])

pipeline_lr.fit(train_x,train_y)
pipeline_rf.fit(train_x,train_y)

sklearn2pmml(pipeline_lr, "energy_consumption_LR.pmml", with_repr = True)
sklearn2pmml(pipeline_rf, "energy_consumption_RF.pmml", with_repr = True)

# Load the PMML file into Vantage

model_ids = ['lr', 'rf']
model_files = ['energy_consumption_LR.pmml', 'energy_consumption_RF.pmml']
table_name = 'dataiku_models'

for model_id, model_file in zip(model_ids, model_files):
    try:
        save_byom(model_id = model_id, model_file = model_file, table_name = table_name)
    except Exception as e:
        # if our model exists, delete and rewrite
        if str(e.args).find('TDML_2200') >= 1:
            delete_byom(model_id = model_id, table_name = table_name)
            save_byom(model_id = model_id, model_file = model_file, table_name = table_name)
        else:
            raise ValueError(f"Unable to save the model '{model_id}' in '{table_name}' due to the following error: {e}")

# Show the bank_models table
list_byom(table_name)

# Write recipe outputs
models = dataiku.Folder("jvH9ZbW3")
models_info = models.get_info()