import os
os.system(f"conda activate azureml_py38")
os.system(f"pip install --upgrade --quiet sklearn2pmml")
os.system(f"pip install --upgrade --quiet teradataml")
os.system(f"pip install --upgrade --quiet sklearn")
os.system(f"pip install --upgrade --quiet pandas")
os.system(f"pip install --upgrade --quiet jdk4py")
os.system(f"pip install --upgrade --quiet dill")

# The script MUST contain a function named azureml_main
# which is the entry point for this module.

# imports up here can be used to
import pandas as pd
from sklearn.linear_model import LinearRegression
from sklearn.ensemble import RandomForestRegressor
from sklearn2pmml.pipeline import PMMLPipeline
from sklearn2pmml import sklearn2pmml
from teradataml import *
from jdk4py import JAVA, JAVA_HOME, JAVA_VERSION
# Modify the following to match the specific client environment settings
configure.val_install_location = 'val'
configure.byom_install_location = 'mldb'
os.environ['PATH'] = os.pathsep.join([os.environ['PATH'], str(JAVA_HOME), str(JAVA)[:-5]])

eng = create_context(host = 'xxx', username = 'demo_user', password = 'xxx')
    
train_data = DataFrame('train_df').to_pandas(all_rows = True)
    
train_x = train_data.drop(['TD_TIMECODE', 'consumption'], axis = 1).astype(float)
feature_names = list(train_x.columns)
train_y = train_data['consumption']

pipeline_lr = PMMLPipeline(steps = [('lr', LinearRegression())])

pipeline_lr.fit(train_x,train_y)

sklearn2pmml(pipeline_lr, "energy_consumption_LR.pmml", with_repr = True)


# Load the PMML file into Vantage

model_ids = ['lr']
model_files = ['energy_consumption_LR.pmml']
table_name = 'azureml_models'

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