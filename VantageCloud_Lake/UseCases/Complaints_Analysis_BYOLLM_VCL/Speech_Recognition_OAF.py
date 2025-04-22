"""
Created on 28th March 2025 09:54:17 2024

@author: user
"""

#!/usr/bin/env python3
import sys
import warnings

# os.environ["HF_HOME"] = "/tmp"
# os.environ["TRANSFORMERS_CACHE"] = "/tmp"

import io
import sys, csv
import torch
import warnings

from transformers import WhisperProcessor, WhisperForConditionalGeneration


warnings.simplefilter("ignore")
input_str = sys.stdin.readlines()


# ----------------------------------------
#  Read audio and extract transcription
# ----------------------------------------
def transcribe_audio_bytes(bytes_data, target_sr=16000):
    """
    Transcribe audio bytes using Whisper model with proper preprocessing

    Parameters:
    audio_bytes (bytes): Raw audio bytes
    target_sr (int): Target sampling rate for Whisper model

    Returns:
    str: Transcribed text
    """
    try:
        import torch
        import torchaudio
        import soundfile as sf  # For reading audio from bytes

        with open(bytes_data, "rb") as file:
            bytes_data1 = file.read()
            audio_stream = io.BytesIO(bytes_data1)
            try:
                # Use soundfile to load audio from bytes
                data, original_sr = sf.read(audio_stream)
                # Convert to PyTorch tensor
                waveform = torch.from_numpy(data).float()

                # Ensure correct shape (channels, samples)
                if waveform.ndim == 1:
                    waveform = waveform.unsqueeze(0)
            except Exception as e:
                print(
                    f"****Error loading audio from bytes***: {e}",
                    file=sys.stdout,
                )

            # Resample if necessary
            if original_sr != target_sr:
                resampler = torchaudio.transforms.Resample(
                    orig_freq=original_sr, new_freq=target_sr
                )
                waveform = resampler(waveform)

            # Ensure mono
            if waveform.shape[0] > 1:
                waveform = torch.mean(waveform, dim=0, keepdim=True)

            # Flatten and convert to numpy
            audio_array = waveform.squeeze().numpy()

            # Load Whisper model and processor
            processor = WhisperProcessor.from_pretrained("openai/whisper-small")
            model = WhisperForConditionalGeneration.from_pretrained(
                "openai/whisper-small"
            )

            # Prepare inputs for Whisper
            inputs = processor(
                audio_array, sampling_rate=target_sr, return_tensors="pt"
            )

            # Generate transcription
            with torch.no_grad():
                predicted_ids = model.generate(inputs.input_features)

            # Decode transcription
            transcription = processor.batch_decode(
                predicted_ids, skip_special_tokens=True
            )[0]

            return transcription

    except Exception as e:
        print(f"Error in transcription: {e}", file=sys.stdout)
        return ""


# ----------------------------------------
#  Complaints analysis from transcription
# ----------------------------------------
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

    print("Checkpoint A", file=sys.stderr)

    # local execution
    model_path = "./models/bart-large-mnli"
    torch_device = "cuda" if torch.cuda.is_available() else "cpu"
    tokenizer = AutoTokenizer.from_pretrained(model_path)
    model = AutoModelForSequenceClassification.from_pretrained(model_path)
    print("Checkpoint B", file=sys.stderr)

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
    model_ckpt = "./models/bart-large-cnn"
    tokenizer = AutoTokenizer.from_pretrained(model_ckpt)
    model = AutoModelForSeq2SeqLM.from_pretrained(model_ckpt)

    torch_device = "cuda" if torch.cuda.is_available() else "cpu"
    return pipeline(
        "summarization", model=model, tokenizer=tokenizer, device=torch_device
    )


DELIMITER = "#"
if len(input_str) > 0:

    for line in input_str:

        import csv

        stdout_writer = csv.writer(
            sys.stdout, delimiter=DELIMITER, quoting=csv.QUOTE_ALL
        )

        # file id
        file_id = line.strip().split("#")[0]

        # file content in bytes
        file_content = line.strip().split("#")[1]

        # topic labels
        candidate_labels = line.strip().split("#")[2].split(",")

        # Task:1  classification topics
        classification_topics = line.strip().split("#")[3].split(",")

        # get transcription from audio bytes
        consumer_complaint_narrative = transcribe_audio_bytes(bytes_data=file_content)

        # Task:2 get topic from transcription
        topic_pipeline = get_topic_model_pipeline()
        topic_scr = topic_pipeline(consumer_complaint_narrative, candidate_labels)
        topic1 = topic_scr["labels"][
            topic_scr["scores"].index(max(topic_scr["scores"]))
        ]

        # Task:3 classify the topic from the transcription using classification topics
        cls_topic_scr = topic_pipeline(
            consumer_complaint_narrative, classification_topics
        )
        cls_topic = cls_topic_scr["labels"][
            cls_topic_scr["scores"].index(max(cls_topic_scr["scores"]))
        ]

        # Task:4 get sentiment from the transcription
        predicted_sentiment = get_sentiment(consumer_complaint_narrative)

        # Task:5 get summary from the transcription
        summary_pipeline = get_summary_pipeline()
        summary1 = summary_pipeline(
            consumer_complaint_narrative, min_length=30, max_length=100
        )[0]["summary_text"]

        # return the full response
        print(
            "{}{}{}{}{}{}{}{}{}{}{}".format(
                file_id,
                DELIMITER,
                consumer_complaint_narrative,
                DELIMITER,
                summary1,
                DELIMITER,
                topic1,
                DELIMITER,
                predicted_sentiment,
                DELIMITER,
                cls_topic,
            )
        )
