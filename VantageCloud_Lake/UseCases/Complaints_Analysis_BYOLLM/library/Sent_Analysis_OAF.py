#!/usr/bin/env python3
import sys, csv
import warnings
import torch
from transformers import DistilBertTokenizer, DistilBertForSequenceClassification
import pandas as pd

warnings.simplefilter("ignore")

# read inputs
columns = ["complaint_id", "consumer_complaint_narrative"]
d = csv.DictReader(sys.stdin.readlines(), fieldnames=columns)
df = pd.DataFrame(d, columns=columns)


try:
    if df.empty:
        sys.exit()

    tokenizer = DistilBertTokenizer.from_pretrained(
        "distilbert-base-uncased-finetuned-sst-2-english"
    )
    model = DistilBertForSequenceClassification.from_pretrained(
        "distilbert-base-uncased-finetuned-sst-2-english"
    )

    def get_sentiment(row):
        inputs = tokenizer(
            row["consumer_complaint_narrative"],
            return_tensors="pt",
        )
        with torch.no_grad():
            logits = model(**inputs).logits

        predicted_class_id = logits.argmax().item()

        row["sentiment"] = model.config.id2label[predicted_class_id]

        return row

    # call the embedding function using pandas apply()
    df = df.apply(get_sentiment, axis=1)

    # Egress results to the Database through standard output.
    # iterrrows generates a Series, iterate through the series to construct
    # a comma-separated output string
    for index, row in df.iterrows():
        print(
            str(row["complaint_id"]),
            ",",
            str(row["consumer_complaint_narrative"]),
            ",",
            str(row["sentiment"]),
        )

# raise any errors back to the SQL engine
except SystemExit:
    # Skip exception if system exit requested in try block
    pass
except:  # Specify in standard error any other error encountered
    print("Script Failure :", sys.exc_info()[0], file=sys.stderr)
    raise
    sys.exit()
