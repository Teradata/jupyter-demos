# Load dependency packages
import sys
import csv
import numpy as np
import pandas as pd
from xgboost import XGBClassifier, Booster
import warnings

# pickle will issue a caution warning, if model pickling was done with
# different library version than used here. The following disables any warnings
# that might otherwise show in the scriptlog files on the Advanced SQL Engine
# nodes in this case. Yet, do keep an eye for incompatible pickle versions.
warnings.filterwarnings('ignore')

# Know your data: You must know in advance the number and data types of the
# incoming columns from the SQL Engine database!
# For this script, the input expected format is:
colNames = ['txn_id',
 'txn_type_CASH_OUT',
 'txn_type_CASH_IN',
 'txn_type_TRANSFER',
 'txn_type_DEBIT',
 'txn_type_PAYMENT',
 'txn_type_other',
 'amount',
 'oldbalanceOrig',
 'newbalanceOrig',
 'oldbalanceDest',
 'newbalanceDest',
 'isFraud']



model = XGBClassifier()
booster = Booster()
booster.load_model('xgb_model')
model._Booster = booster


d = csv.DictReader(sys.stdin.readlines(), fieldnames = colNames)

df = pd.DataFrame(d, columns = colNames)

# Use try...except to produce an error if something goes wrong in the try block
try:
    # Exit gracefully if DataFrame is empty
    if df.empty:
        sys.exit()

    # Specify the rows to be scored by the model and call the predictor.
    X_test = df[['txn_type_CASH_OUT', 'txn_type_CASH_IN','txn_type_TRANSFER', 'txn_type_DEBIT','txn_type_PAYMENT', 'txn_type_other','amount','oldbalanceOrig', 'newbalanceOrig','oldbalanceDest', 'newbalanceDest']].astype(float)
    
    y_prob = model.predict_proba(X_test)
    df[['prob_0', 'prob_1']] = y_prob
    
    y_pred = model.predict(X_test)
    df['prediction'] = y_pred

    # Export results to the Database through standard output.
    for index, value in df.iterrows():
        my_str = str(value['txn_id']) + ',' + str(value['prob_0']) + ',' + str(value['prob_1']) + ',' + str(value['prediction']) + ',' + str(value['isFraud'])
        print(my_str)
        

except (SystemExit):
    # Skip exception if system exit requested in try block
    pass
except:    # Specify in standard error any other error encountered
    print("Script Failure :", sys.exc_info()[0], file=sys.stderr)
    raise
    sys.exit()
