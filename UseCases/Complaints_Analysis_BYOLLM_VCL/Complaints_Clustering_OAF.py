#!/usr/bin/env python3
import sys, csv
import warnings
import torch
from sentence_transformers import SentenceTransformer
import pandas as pd

warnings.simplefilter("ignore")

# Read data from stdin, and construct a Pandas DataFrame #
# Data can also be read/processed directly from stdin if desired

# 1. use the csv reader to parse comma-separated input
# 2. construct the Dataframe from the resulting dictionary

colNames = ["complaint_id", "consumer_complaint_narrative"]
d = csv.DictReader(sys.stdin.readlines(), fieldnames=colNames)
df = pd.DataFrame(d, columns=colNames)

# Use try...except to produce an error if something goes wrong in the try block
try:
    # Exit gracefully if DataFrame is empty
    # It is possible some partitions won't get any data
    if df.empty:
        sys.exit()

    model = SentenceTransformer("sentence-transformers/all-MiniLM-L6-v2")

    # execute the same logic as in the demo function
    def create_embeddings(row_df):

        # check for NVIDIA drivers
        if torch.cuda.is_available():
            device = "cuda"
        else:
            device = None

        # create series from the embeddings list that is returned
        s = pd.Series(
            model.encode(row_df["consumer_complaint_narrative"], device=device)
        )

        s = s.rename(lambda x: str("embeddings_") + str(x))

        # concat them together
        row_df = pd.concat([row_df, s], axis=0)

        return row_df

    # call the embedding function using pandas apply()
    final_df = df.apply(create_embeddings, axis=1)

    # Egress results to the Database through standard output.
    # iterrrows generates a Series, iterate through the series to construct
    # a comma-separated output string
    for index, value in final_df.iterrows():
        my_str = ""
        for val in value.index:
            my_str = my_str + str(value[val]) + ","
        print(my_str[:-1])


# raise any errors back to the SQL engine
except SystemExit:
    # Skip exception if system exit requested in try block
    pass
except:  # Specify in standard error any other error encountered
    print("Script Failure :", sys.exc_info()[0], file=sys.stderr)
    raise
    sys.exit()
