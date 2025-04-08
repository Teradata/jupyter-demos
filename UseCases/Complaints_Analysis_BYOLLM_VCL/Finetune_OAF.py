#!/usr/bin/env python3
import ast
import pickle
import random
import string
import sys, csv
import warnings
import json
from datasets import Dataset
from transformers import Trainer, TrainingArguments
import torch
from transformers import DistilBertForQuestionAnswering, DistilBertTokenizerFast
from transformers import Trainer, TrainingArguments
import pandas as pd
import os
import logging
import sys
import io

# os.environ["TRANSFORMERS_CACHE"] = "/tmp"
# os.environ["HF_HOME"] = "/tmp/cache/"

warnings.simplefilter("ignore")

###
### Read input
###
delimiter = "#"
inputData = []

for line in sys.stdin.read().splitlines():
    line = line.split(delimiter)
    inputData.append(line)

# If no data received, gracefully exit rather than producing an error later.
if not inputData:
    sys.exit()

# Set up input DataFrame according to input schema
# Know your data: You must know in advance the number of incoming columns from the database!
columns = ["id", "context", "question", "answer_text", "answer_start"]

df = pd.DataFrame(inputData, columns=columns).copy()

del inputData

# DELIMITER = "|"
# # read inputs
# columns = ["context", "question", "answer_text", "answer_start"]
# d = csv.DictReader(sys.stdin.readlines(), fieldnames=columns)
# df = pd.DataFrame(d, columns=columns)

df["answer_start"] = pd.to_numeric(df["answer_start"])

print("DF {} Checkpoint A : df data ".format(df), file=sys.stderr)
print("DF shape {} Checkpoint A2 : df data ".format(str(df.shape)), file=sys.stderr)


# print(str(df.shape))

# Load pre-trained model and tokenizer
model_path = "distilbert-base-uncased-distilled-squad"
# model_path = "/models/distilbert-base-uncased-distilled-squad"

model = DistilBertForQuestionAnswering.from_pretrained(model_path)
tokenizer = DistilBertTokenizerFast.from_pretrained(model_path)


# Custom Trainer class to override evaluation logging
class SilentTrainer(Trainer):
    def log(self, logs: dict) -> None:
        """
        Prevent logging during evaluation
        """
        pass  # Do nothing, effectively silencing the logs


def dataframe_to_json(df):
    return {
        "context": df["context"].tolist(),
        "question": df["question"].tolist(),
        "answers": [
            {"text": [text], "answer_start": [start]}
            for text, start in zip(df["answer_text"], df["answer_start"])
        ],
    }


# Tokenize the dataset
def preprocess_function(examples):
    questions = [q.strip() for q in examples["question"]]
    inputs = tokenizer(
        questions,
        examples["context"],
        max_length=384,
        truncation="only_second",
        return_offsets_mapping=True,
        padding="max_length",
    )

    offset_mapping = inputs.pop("offset_mapping")
    answers = examples["answers"]
    start_positions = []
    end_positions = []

    for i, offset in enumerate(offset_mapping):
        answer = answers[i]

        print(
            "ans_start: {} | txt: {}".format(
                type(answer["answer_start"][0]), type(answer["text"][0])
            ),
            file=sys.stderr,
        )

        start_char = answer["answer_start"][0]
        end_char = answer["answer_start"][0] + len(answer["text"][0])

        print(
            "start char: {} | end char: {}".format(start_char, end_char),
            file=sys.stderr,
        )

        sequence_ids = inputs.sequence_ids(i)

        # Find the start and end of the context
        idx = 0
        while sequence_ids[idx] != 1:
            idx += 1
        context_start = idx
        while sequence_ids[idx] == 1:
            idx += 1
        context_end = idx - 1

        # If the answer is not fully inside the context, label it (0, 0)
        if offset[context_start][0] > end_char or offset[context_end][1] < start_char:
            start_positions.append(0)
            end_positions.append(0)
        else:
            # Otherwise it's the start and end token positions
            idx = context_start
            while idx <= context_end and offset[idx][0] <= start_char:
                idx += 1
            start_positions.append(idx - 1)

            idx = context_end
            while idx >= context_start and offset[idx][1] >= end_char:
                idx -= 1
            end_positions.append(idx + 1)

    inputs["start_positions"] = start_positions
    inputs["end_positions"] = end_positions
    return inputs


# Load using pickle
def load_model_pickle(file_path):
    with open(file_path, "rb") as f:
        return pickle.load(f)


try:
    if df.empty:
        sys.exit()

    print("Checkpoint B : df loaded", file=sys.stderr)
    split_perc = int(df.shape[0] * 0.70)
    train_df, validation_df = df.iloc[:split_perc], df.iloc[split_perc:]

    # Convert DataFrames back to JSON
    result_json = {
        "train": dataframe_to_json(train_df),
        "validation": dataframe_to_json(validation_df),
    }

    print("Checkpoint C : got json", file=sys.stderr)
    train_val_data = json.dumps(result_json, indent=2)
    # print("json {}".format(train_val_data), file=sys.stderr)

    train_val_data_dict = ast.literal_eval(train_val_data)

    # Convert to Dataset objects
    train_dataset = Dataset.from_dict(train_val_data_dict["train"])
    val_dataset = Dataset.from_dict(train_val_data_dict["validation"])

    # training process
    tokenized_train = train_dataset.map(
        preprocess_function, batched=True, remove_columns=train_dataset.column_names
    )
    tokenized_val = val_dataset.map(
        preprocess_function, batched=True, remove_columns=val_dataset.column_names
    )

    print(
        "Checkpoint F : tokenized_train shape {}".format(str(type(tokenized_train))),
        file=sys.stderr,
    )

    # Define training arguments
    training_args = TrainingArguments(
        output_dir="/lob",
        evaluation_strategy="epoch",
        learning_rate=2e-5,
        per_device_train_batch_size=16,
        per_device_eval_batch_size=16,
        num_train_epochs=3,
        weight_decay=0.01,
        disable_tqdm=True,
        logging_strategy="no",
        report_to="none",
        save_strategy="no",
        dataloader_pin_memory=False,
    )

    # Initialize SilentTrainer
    trainer = SilentTrainer(
        model=model,
        args=training_args,
        train_dataset=tokenized_train,
        eval_dataset=tokenized_val,
        tokenizer=tokenizer,
    )

    print(
        "Checkpoint G : trainer is set to train",
        file=sys.stderr,
    )
    # Redirect stdout to capture the output
    old_stdout = sys.stdout
    sys.stdout = io.StringIO()

    try:
        # Run the training
        trainer.train()
    finally:
        # Restore stdout
        sys.stdout = old_stdout

    # Save the fine-tuned model
    model_name = "".join(random.choices(string.ascii_letters + string.digits, k=32))
    model_path = f"/lob/{model_name}.pkl"

    # Get the best model
    best_model = trainer.model
    with open(model_path, "wb") as f:
        pickle.dump(best_model, f)

    print("Checkpoint H : type of model {}".format(type(best_model)), file=sys.stderr)
    # Option 1: Export the full model to bytes
    buffer = io.BytesIO()
    torch.save(best_model.state_dict(), buffer)
    model_bytes = buffer.getvalue()

    # convert model_bypes to string
    # model_bytes_str = model_bytes.decode("latin-1")

    print("Checkpoint I : type of model {}".format(type(model_bytes)), file=sys.stderr)

    # Save the fine-tuned model
    model_name = "".join(random.choices(string.ascii_letters + string.digits, k=32))
    model_path = f"/lob/{model_name}.pkl"

    with open(model_path, "wb") as f:
        pickle.dump(model, f)

    print(
        "Checkpoint J : model dumped to pkl at path {}".format(len(model_path)),
        file=sys.stderr,
    )

    loaded_model_pickle = load_model_pickle(model_path)
    print(
        "Checkpoint K : type of loaded model {}".format(type(loaded_model_pickle)),
        file=sys.stderr,
    )

    print(
        "Checkpoint L : layers of loaded model {}".format(loaded_model_pickle),
        file=sys.stderr,
    )

    import csv

    stdout_writer = csv.writer(sys.stdout, delimiter=delimiter, quoting=csv.QUOTE_ALL)
    stdout_writer.writerow([model_path])

    # print(model_bytes)
    # import csv
    # stdout_writer = csv.writer(sys.stdout, delimiter=delimiter, quoting=csv.QUOTE_ALL)
    # stdout_writer.writerow([model_bytes])


# raise any errors back to the SQL engine
except SystemExit:
    # Skip exception if system exit requested in try block
    pass
except:  # Specify in standard error any other error encountered
    print("Script Failure :", sys.exc_info()[0], file=sys.stderr)
    raise
    sys.exit()
