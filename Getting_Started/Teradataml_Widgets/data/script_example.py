################################################################################
# The contents of this file are Teradata Public Content
# and have been released to the Public Domain.
# Licensed under BSD; see "license.txt" file for more information.
# Copyright (c) 2021 by Teradata
################################################################################
#
# R And Python Analytics with SCRIPT Table Operator
# Orange Book supplementary material
# Alexander Kolovos - October 2021 - v.2.1
#
# Example 1: Scoring (Python version)
# File     : script_example.py
#
# Score input rows from database by using model information from
# an existing Python model object.
# Use case:
# Predict the propensity of a financial services customer base
# to open a credit card account.
#
# Script performs identical task as ex1pScoNonIter.py. Reads in data in chunks.
# Script accounts for the general scenario that an AMP might have no data.
#
# Requires numpy, pandas, scikitlearn, pickle, and base64 add-on packages.
#
# Required input:
# - ADS_Final_Test table data set made with DSS
# - scoring model saved in Python model object "ex1pMod.out"
#
# Output:
# - cust_id    : The customer ID
# - Prob0      : Probability that a customer does not open an account
# - Prob1      : Probability that a customer opens an account
# - cc_acct_ind: [Actual outcome]
#
################################################################################

# Load dependency packages
import sys
import numpy as np
import pandas as pd
from sklearn.ensemble import RandomForestClassifier
import pickle
import base64
import warnings

# pickle will issue a caution warning, if model pickling was done with
# different library version than used here. The following disables any warnings
# that might otherwise show in the scriptlog files on the Advanced SQL Engine
# nodes in this case. Yet, do keep an eye for incompatible pickle versions.
warnings.filterwarnings("ignore")

# Read input
DELIMITER = '\t'

# Know your data: You must know in advance the number and data types of the
# incoming columns from the SQL Engine database!
# For this script, the input expected format is:
# 0: p_id, 1-5: indep vars, 6: dep var, 7: nRow, 8: model (if nRow==1), NULL o/w
colNames = ['cust_id', 'income', 'age', 'years_with_bank',
           'nbr_children', 'female',
           'single', 'separated', 'married',
           'resident_TX', 'resident_CA', 'resident_IL',
           'resident_NY', 'resident_OH', 'resident_AZ',
           'acct_SV', 'acct_CK', 'acct_CC',
           'CC_Amount', 'CK_Amounts', 'SV_Amounts', 'Q4_Trans',
           'Q3_Trans', 'Q2_Trans', 'Q1_Trans']
# Of the above input columns, the following ones are of type float: income,
# CC_Amount, CK_Amounts, SV_Amounts. The rest are integer variables.
# If any numbers are streamed in scientific format that contains blanks i
# (such as "1 E002" for 100), the following Lambda functions remove blanks
# from the input string so that Python interprets the number correctly.
sciStrToFloat = lambda x: float("".join(x.split()))
sciStrToInt = lambda x: int(float("".join(x.split())))
# Use these Lambda functions in the following converters for each input culumn.
converters = { 0: sciStrToInt,
               1: sciStrToFloat,
               2: sciStrToInt,
               3: sciStrToInt,
               4: sciStrToInt,
               5: sciStrToInt,
               6: sciStrToInt,
               7: sciStrToInt,
               8: sciStrToInt,
               9: sciStrToInt,
              10: sciStrToInt,
              11: sciStrToInt,
              12: sciStrToInt,
              13: sciStrToInt,
              14: sciStrToInt,
              15: sciStrToInt,
              16: sciStrToInt,
              17: sciStrToInt,
              18: sciStrToFloat,
              19: sciStrToFloat,
              20: sciStrToFloat,
              21: sciStrToInt,
              22: sciStrToInt,
              23: sciStrToInt,
              24: sciStrToInt}

# Load model from input file
fIn = open('<db_name>/ex1pModForDSS.out', 'rb')   # 'rb' for reading binary file
classifierPklB64 = fIn.read()
fIn.close()

# Decode and unserialize from imported format
classifierPkl = base64.b64decode(classifierPklB64)
classifier = pickle.loads(classifierPkl)

# Score the test table data with the given model
predictor_columns = ["income", "age", "years_with_bank", "nbr_children",
                     "female", "single", "married", "separated",
                     "acct_SV", "acct_CK", "CK_Amounts", "SV_Amounts",
                     "Q1_Trans",
                     "Q2_Trans", "Q3_Trans", "Q4_Trans"]

### Ingest and process the rest of the input data rows, nRowsIn at a pass
###
nRowsIn = 500

# To read input in chunks, the read_csv reader function must have the
# iterator argument set to True. The following assigns the function to
# an object that we name reader. The reader object will be used in the
# following with the get_chunk() function to read the data in chunks.
reader = pd.read_csv(sys.stdin, sep=DELIMITER, header=None, names=colNames,
                     index_col=False, iterator=True, converters=converters)

# Use try...except to produce an error if something goes wrong in the try block
try:

    while 1:

        try:
            # CAUTION: The following statement CONTINUES the row index count for
            #          the DataFrame from where the previous iteration stopped!
            dfToScore = reader.get_chunk(nRowsIn)
        except (EOFError, StopIteration):
            # Exit gracefully if no input received at all or iteration complete
            sys.exit()
        except:              # Raise an exception if other error encountered
            raise

        # Exit gracefully if DataFrame is empty
        if dfToScore.empty:
            sys.exit()

        # Specify the rows to be scored by the model and call the predictor.
        X_test = dfToScore[predictor_columns]
        PredictionProba = classifier.predict_proba(X_test)

        # Export results to the Database through standard output.
        # In the following, the iterative process increases the dfToScore
        # index values even across iterations. For this reason, we use
        # positional indices with iat to print specific values.
        # The cust_id is at column 0, and the cc_acct_ind is at column 17.
        # In PredictionProba array, elem. 0 is Prob(0) and elem. 0 is Prob(1).
        for i in range(0, dfToScore.shape[0]):
            print(dfToScore.iat[i, 0], DELIMITER,
                  PredictionProba[i, 0], DELIMITER,
                  PredictionProba[i, 1], DELIMITER,
                  dfToScore.iat[i, 17])

except (SystemExit):
    # Skip exception if system exit requested in try block
    pass
except:    # Specify in standard error any other error encountered
    print("Script Failure :", sys.exc_info()[0], file=sys.stderr)
    raise
    sys.exit()
