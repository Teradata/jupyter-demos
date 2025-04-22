# -*- coding: utf-8 -*-
"""
Created on Thu May 23 18:54:17 2024

@author: author
"""

# %load detect_sentiment.py

#!/usr/bin/env python3
import sys
import warnings

warnings.simplefilter("ignore")
input_str = sys.stdin.readlines()


DELIMITER = "#"
if len(input_str) > 0:
    from transformers import AutoTokenizer, AutoModelForSequenceClassification, pipeline

    torch_device = "cuda"
    # local execution
    model_path = "./models/bart-large-mnli"
    # model_path = 'facebook/bart-large-mnli'

    tokenizer = AutoTokenizer.from_pretrained(model_path)
    model = AutoModelForSequenceClassification.from_pretrained(model_path)
    classifier = pipeline("zero-shot-classification", model=model, tokenizer=tokenizer)

    for line in input_str:
        complaint_id = line.strip().split("#")[0]
        sequence_to_classify = line.strip().split("#")[1]
        candidate_labels = line.strip().split("#")[2].split(",")
        res = classifier(sequence_to_classify, candidate_labels)
        max_index = res["scores"].index(max(res["scores"]))
        print(
            "{}{}{}{}{}".format(
                complaint_id,
                DELIMITER,
                sequence_to_classify,
                DELIMITER,
                res["labels"][max_index],
            )
        )
