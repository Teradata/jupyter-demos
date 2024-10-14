# Import the necessary libraries
import sys
import pandas as pd
from statsmodels.genmod.generalized_linear_model import GLM
import statsmodels.api as sm
from statsmodels.genmod import families

###
### Read input
###
delimiter = "\t"
inputData = []

for line in sys.stdin.read().splitlines():
    line = line.split(delimiter)
    inputData.append(line)

###
### If no data received, gracefully exit rather than producing an error later.
###
if not inputData:
    sys.exit()

###
### Set up input DataFrame according to input schema
###
columns = [
    "customer_id",
    "age",
    "last_contact_day",
    "last_contact_duration",
    "log_age",
    "log_last_contact_day",
    "log_last_contact_duration",
    "yes_purchased",
]

pdf_log = pd.DataFrame(inputData, columns=columns).copy()

del inputData

# Redefine independent variables to include interaction terms
X_lt = pdf_log[columns[1:7]]
y_lt = pdf_log[columns[7:]]

# # Add constant
X_lt = sm.add_constant(X_lt, prepend=False)

print("checkpoint A xlt: {} ylt: {}".format(X_lt.shape, y_lt.shape))

# Build model and fit the data (using statsmodel's Logit)
logit_results = GLM(y_lt, X_lt, family=families.Binomial()).fit(disp=0)

def exp_to_decimal(x):
    if isinstance(x, (int, float)):
        return f"{x:.4f}"
    return x


df_pval = pd.DataFrame({"pvalue": logit_results.pvalues})

df_pval['pvalue'] = pd.to_numeric(df_pval['pvalue'])

df_pval = df_pval.reset_index()

df_pval["pvalue"] = df_pval["pvalue"].apply(exp_to_decimal)

df_pval_filtered = df_pval[pd.to_numeric(df_pval["pvalue"]) < 0.005]

for index, row in df_pval_filtered.iterrows():
    print(row["index"], delimiter, str(row["pvalue"]))
