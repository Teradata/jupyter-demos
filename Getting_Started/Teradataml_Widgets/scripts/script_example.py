#!/usr/bin/python
"""
This script reads tab-separated values from standard input to form a pandas DataFrame,
which it then preprocesses by specifying correct data types for each column. It uses
OneClassSVM from sklearn to identify outliers in the dataset. Each record's ID, Partition_ID,
and its anomaly status (inlier=1, outlier=-1) are printed as output.

The script expects the input data to be in a specific format, with columns specified for
float, integer, and categorical data types. The data is expected to be streamed and ends
either when a blank line is encountered or EOF is reached.

Columns:
- Partition_ID, ID (integers)
- X1 to X9, Y1 (floats)
- flag, Y2 (categorical)
- FOLD (integer but not explicitly converted)

Usage:
- The script is intended to be used in a pipeline where it reads from stdin.
- Example: cat data.tsv | ./script_example.py
"""

import sys
import pandas as pd
import numpy as np
from sklearn.svm import OneClassSVM
from sklearn.preprocessing import StandardScaler

# Define column names for the DataFrame to be created
column_names     = ['Partition_ID', 'ID', 'X1', 'X2', 'X3', 'X4', 'X5', 'X6', 'X7', 'X8', 'X9', 'flag', 'Y1', 'Y2', 'FOLD']

# Specify which columns are to be treated as floating point numbers
float_columns    = ['X1', 'X2', 'X3', 'X4', 'X5', 'X6', 'X7', 'X8', 'X9', 'Y1']

# Specify which columns are integer
integer_columns  = ['Partition_ID', 'ID']

# Specify which columns are categorical
category_columns = ['flag', 'Y2']

# Define the delimiter to be used for splitting input lines
DELIMITER        = '\t'

def reconstruct_pandas_dataframe():
    """
    Reads standard input line by line to construct a pandas DataFrame with
    appropriate data types specified for each column.

    Returns:
        df (DataFrame): A DataFrame with data read from standard input,
                        with columns typed as float, int, and category as appropriate.
    """
    data_Tbl = []
    while True:
        try:
            line = input()
            if line == '':
                break
            data_Tbl.append([x.replace(" ","") for x in line.split(DELIMITER)])
        except EOFError:
            break

    df = pd.DataFrame(data_Tbl, columns=column_names)
    
    for c in float_columns:
        df[c] = df[c].astype('float')
    for c in integer_columns:
        df[c] = df[c].astype('int')
    for c in category_columns:
        df[c] = df[c].astype('category')

    return df

df = reconstruct_pandas_dataframe()

if df.shape[0] == 0:
    sys.exit("The input DataFrame is empty. Exiting the script.")

# Extract the columns specified as float_columns from the DataFrame
data_subset = df[float_columns]

# Initialize a StandardScaler object
scaler = StandardScaler()

# Fit and transform the data using the scaler object; this standardizes the data
data_scaled = scaler.fit_transform(data_subset)

# Initialize OneClassSVM with specified parameters
ocsvm = OneClassSVM(nu=0.05, kernel='rbf', gamma='auto')

# Train the OneClassSVM on the scaled data
ocsvm.fit(data_scaled)

# Use the trained model to predict anomalies; -1 for outliers and 1 for inliers
df['anomaly']           = ocsvm.predict(data_scaled)

df['decision_function'] = ocsvm.decision_function(data_scaled)

df['anomaly_score']     = ocsvm.score_samples(data_scaled)

# Print outputs: Partition_ID, ID, and predicted anomaly status for each record
for i, row in df.iterrows():
    print(row['Partition_ID'], DELIMITER, row['ID'], DELIMITER, row['anomaly'], DELIMITER, row['decision_function'], DELIMITER, row['anomaly_score'])
