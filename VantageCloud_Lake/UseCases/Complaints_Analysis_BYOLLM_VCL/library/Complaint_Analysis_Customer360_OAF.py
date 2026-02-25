# -*- coding: utf-8 -*-
"""
Created on Thu May 23 18:54:17 2024

@author: author
"""

# %load detect_sentiment.py

#!/usr/bin/env python3
import sys
import warnings
import sys

warnings.simplefilter("ignore")
input_str = sys.stdin.readlines()


def get_sentiment(consumer_complaint_narrative):
    from transformers import DistilBertTokenizer, DistilBertForSequenceClassification
    import torch

    tokenizer = DistilBertTokenizer.from_pretrained(
        "distilbert-base-uncased-finetuned-sst-2-english"
    )
    model = DistilBertForSequenceClassification.from_pretrained(
        "distilbert-base-uncased-finetuned-sst-2-english"
    )

    inputs = tokenizer(
        consumer_complaint_narrative,
        return_tensors="pt",
    )
    with torch.no_grad():
        logits = model(**inputs).logits

    predicted_class_id = logits.argmax().item()

    return model.config.id2label[predicted_class_id]


def get_topic_model_pipeline():
    from transformers import AutoTokenizer, AutoModelForSequenceClassification, pipeline
    import torch

    # local execution
    model_path = "facebook/bart-large-mnli"
    torch_device = "cuda" if torch.cuda.is_available() else "cpu"
    tokenizer = AutoTokenizer.from_pretrained(model_path)
    model = AutoModelForSequenceClassification.from_pretrained(model_path)
    return pipeline(
        "zero-shot-classification",
        model=model,
        tokenizer=tokenizer,
        device=torch_device,
    )


def get_summary_pipeline():
    from transformers import AutoTokenizer, AutoModelForSeq2SeqLM, pipeline
    import torch

    # local execution
    model_ckpt = "facebook/bart-large-cnn"
    tokenizer = AutoTokenizer.from_pretrained(model_ckpt)
    model = AutoModelForSeq2SeqLM.from_pretrained(model_ckpt)

    torch_device = "cuda" if torch.cuda.is_available() else "cpu"
    return pipeline(
        "summarization", model=model, tokenizer=tokenizer, device=torch_device
    )


DELIMITER = "#"
if len(input_str) > 0:

    for line in input_str:
        complaint_id = line.strip().split("#")[0]
        consumer_complaint_narrative = line.strip().split("#")[1]
        candidate_labels = line.strip().split("#")[2].split(",")

        # topic
        topic_pipeline = get_topic_model_pipeline()
        topic_scr = topic_pipeline(consumer_complaint_narrative, candidate_labels)
        max_index = topic_scr["scores"].index(max(topic_scr["scores"]))

        # sentiment
        predicted_sentiment = get_sentiment(consumer_complaint_narrative)

        # summary
        summary_pipeline = get_summary_pipeline()
        summary = summary_pipeline(
            consumer_complaint_narrative, min_length=30, max_length=100
        )

        print(
            "{}{}{}{}{}{}{}{}{}".format(
                complaint_id,
                DELIMITER,
                consumer_complaint_narrative,
                DELIMITER,
                topic_scr["labels"][max_index],
                DELIMITER,
                predicted_sentiment,
                DELIMITER,
                summary[0]["summary_text"],
            )
        )
