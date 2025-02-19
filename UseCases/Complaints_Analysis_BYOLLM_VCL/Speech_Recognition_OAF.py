# -*- coding: utf-8 -*-
"""
Created on Fri Sep 20 09:54:17 2024

@author: user
"""

# %load detect_sentiment.py

#!/usr/bin/env python3
import sys
import warnings

import os
import io

import torch
import torchaudio

from transformers import WhisperProcessor, WhisperForConditionalGeneration

warnings.simplefilter("ignore")
input_str = sys.stdin.readlines()

# ----------------------------------------
#  Read audio and extract transcription
# ----------------------------------------


def bytes_to_mp3(byte_data, output_path):
    """
    Convert bytes to an MP3 file.

    :param byte_data: Bytes object containing the audio data
    :param output_path: Path where the MP3 file will be saved
    """
    buffer = io.BytesIO(byte_data)

    # Load the audio from the buffer
    waveform, sample_rate = torchaudio.load(buffer, format="mp3")

    # Save as MP3
    torchaudio.save(output_path, waveform, sample_rate, format="mp3")

    return output_path


def load_and_preprocess_audio(file_path, target_sampling_rate=16000):
    # Load the MP3 audio file
    waveform, sample_rate = torchaudio.load(file_path, format="mp3")

    # Resample if necessary
    if sample_rate != target_sampling_rate:
        resampler = torchaudio.transforms.Resample(sample_rate, target_sampling_rate)
        waveform = resampler(waveform)

    # Convert to mono if stereo
    if waveform.shape[0] > 1:
        waveform = torch.mean(waveform, dim=0, keepdim=True)

    return waveform.squeeze()


def prepare_for_model(audio, processor):
    # Prepare the audio for the model
    inputs = processor(
        audio,
        sampling_rate=processor.feature_extractor.sampling_rate,
        return_tensors="pt",
    )
    return inputs.input_features


def transcribe_audio(audio, processor, model):
    inputs = prepare_for_model(audio, processor)
    with torch.no_grad():
        generated_ids = model.generate(inputs)
    transcription = processor.batch_decode(generated_ids, skip_special_tokens=True)[0]
    return transcription


def process_audio(audio_source, model_name="openai/whisper-small"):
    # Load the processor and model
    processor = WhisperProcessor.from_pretrained(model_name)
    model = WhisperForConditionalGeneration.from_pretrained(model_name)

    if isinstance(audio_source, bytes):
        # Convert bytes to MP3 file
        temp_mp3_path = "temp_audio.mp3"
        bytes_to_mp3(audio_source, temp_mp3_path)
        audio_path = temp_mp3_path
    else:
        # Assume audio_source is a file path
        audio_path = audio_source

    try:
        # Load and preprocess the audio
        audio = load_and_preprocess_audio(audio_path)

        # Transcribe the audio
        transcription = transcribe_audio(audio, processor, model)

        return transcription
    except Exception as e:
        pass
    finally:
        # Clean up temporary file if it was created
        if isinstance(audio_source, bytes) and os.path.exists(temp_mp3_path):
            os.remove(temp_mp3_path)


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

    # local execution
    model_path = "./models/bart-large-mnli"
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
    model_ckpt = "./models/bart-large-cnn"
    tokenizer = AutoTokenizer.from_pretrained(model_ckpt)
    model = AutoModelForSeq2SeqLM.from_pretrained(model_ckpt)

    torch_device = "cuda" if torch.cuda.is_available() else "cpu"
    return pipeline(
        "summarization", model=model, tokenizer=tokenizer, device=torch_device
    )


DELIMITER = "#"
if len(input_str) > 0:
    # from transformers import AutoTokenizer, AutoModelForSequenceClassification, pipeline

    for line in input_str:

        import csv

        stdout_writer = csv.writer(
            sys.stdout, delimiter=DELIMITER, quoting=csv.QUOTE_ALL
        )

        file_id = line.strip().split("#")[0]
        file_content = line.strip().split("#")[1]
        topics = line.strip().split("#")[2]

        stdout_writer.writerow([file_id, file_content, topics])

        print(len(line.split("#")))
        # file id
        file_id = line.strip().split("#")[0]

        # audio bytes
        byte_data = line
        # topic labels
        candidate_labels = line.strip().split("#")[2].split(",")
        candidate_labels = "Mortgage Application, Payment Trouble, Mortgage Closing, Report Inaccuracy, Payment Struggle"

        consumer_complaint_narrative = process_audio(audio_source=byte_data)

        print(byte_data)

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
            "{}{}{}{}{}{}{}".format(
                byte_data,
                DELIMITER,
                topic_scr["labels"][max_index],
                DELIMITER,
                predicted_sentiment,
                DELIMITER,
                summary,
            )
        )
