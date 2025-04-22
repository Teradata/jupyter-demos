# -*- coding: utf-8 -*-
"""
Created on Mon Sept 16 13:02:17 2024

@author: user
"""

# %load detect_sentiment.py

#!/usr/bin/env python3
import sys
import warnings


import sys, os
import os

os.environ["TRANSFORMERS_CACHE"] = "/tmp"

warnings.simplefilter("ignore")
input_str = sys.stdin.readlines()


DELIMITER = "#"
if len(input_str) > 0:
    from transformers import AutoTokenizer, AutoModelForSeq2SeqLM, pipeline
    import torch

    # local execution
    model_ckpt = "./models/bart-large-cnn"
    # model_ckpt = "facebook/bart-large-cnn"
    tokenizer = AutoTokenizer.from_pretrained(model_ckpt)
    model = AutoModelForSeq2SeqLM.from_pretrained(model_ckpt)

    torch_device = "cuda" if torch.cuda.is_available() else "cpu"
    summarizer = pipeline(
        "summarization", model=model, tokenizer=tokenizer, device=torch_device
    )

    for line in input_str:
        # print(line.strip().split("#"))
        complaint_id = line.strip().split(DELIMITER)[0]
        complaints_text = line.strip().split(DELIMITER)[1]
        # print(complaints_text)

        result = summarizer(complaints_text, min_length=30, max_length=100)
        print(
            "{}{}{}{}{}".format(
                complaint_id,
                DELIMITER,
                complaints_text,
                DELIMITER,
                result[0]["summary_text"],
            )
        )
