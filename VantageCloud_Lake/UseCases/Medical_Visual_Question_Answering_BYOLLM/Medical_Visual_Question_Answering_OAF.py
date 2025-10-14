# -*- coding: utf-8 -*-
"""
Created on Mon Sept 29 18:54:17 2025

@author: author
"""

# %load detect_sentiment.py

#!/usr/bin/env python3
import sys
import warnings
import pandas as pd
import base64
from io import BytesIO
import time

from PIL import Image
import torch
from transformers import (
    BlipProcessor,
    BlipForQuestionAnswering,
    BlipImageProcessor,
    BlipConfig,
)
import numpy as np

warnings.simplefilter("ignore")


def load_input_data():
    """Load and parse input data from stdin"""
    delimiter = "#"
    inputData = []
    print("Reading input data...", file=sys.stderr)
    for line in sys.stdin.read().splitlines():
        line = line.split(delimiter)
        inputData.append(line)

    if not inputData:
        sys.exit()

    columns = ["id", "img", "question", "answer"]
    pdf = pd.DataFrame(inputData, columns=columns).copy()

    return pdf


def initialize_model():
    """Initialize BLIP model components"""
    try:
        print("Loading BLIP model components...", file=sys.stderr)
        model_path = "Salesforce/blip-vqa-base"

        print(f"---- Loading model from: ---- {model_path}", file=sys.stderr)
        config = BlipConfig.from_pretrained(model_path)
        text_processor = BlipProcessor.from_pretrained(model_path)
        image_processor = BlipImageProcessor.from_pretrained(model_path)
        model = BlipForQuestionAnswering.from_pretrained(model_path)
        print("---- Model loaded successfully. ----", file=sys.stderr)

        device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
        model.to(device)

        return model, text_processor, image_processor, device
    except Exception as e:
        print(f"Failed to load model: {e}", file=sys.stderr)
        raise


class VQADataset(torch.utils.data.Dataset):
    def __init__(self, data, text_processor, image_processor):
        self.data = data
        self.text_processor = text_processor
        self.image_processor = image_processor
        self.max_length = 32
        self.image_height = 128
        self.image_width = 128

        if hasattr(data, "iloc"):
            self.questions = data["question"].tolist()
            self.answers = data["answer"].tolist()
            self.images = data["img"].tolist()
        else:
            self.questions = data["question"]
            self.answers = data["answer"]
            self.images = data["img"]

    def __len__(self):
        return len(self.questions)

    def _decode_image(self, img_data):
        """Decode image from base64 or binary data"""
        try:
            if isinstance(img_data, str):
                img_bytes = base64.b64decode(img_data)
            else:
                img_bytes = img_data

            image = Image.open(BytesIO(img_bytes)).convert("RGB")
            return image
        except Exception:
            return Image.new("RGB", (224, 224), color="white")

    def __getitem__(self, idx):
        answers = self.answers[idx]
        questions = self.questions[idx]
        image = self._decode_image(self.images[idx])
        text = self.questions[idx]

        image_encoding = self.image_processor(
            image,
            do_resize=True,
            size=(self.image_height, self.image_width),
            return_tensors="pt",
        )

        encoding = self.text_processor(
            None,
            text,
            padding="max_length",
            truncation=True,
            max_length=self.max_length,
            return_tensors="pt",
        )

        for k, v in encoding.items():
            encoding[k] = v.squeeze()
        encoding["pixel_values"] = image_encoding["pixel_values"][0]

        labels = self.text_processor.tokenizer.encode(
            answers,
            max_length=self.max_length,
            padding="max_length",
            truncation=True,
            return_tensors="pt",
        )[0]
        encoding["labels"] = labels

        return encoding


def inference_single(
    input_df,
    model,
    text_processor,
    image_processor,
    device,
    sample_idx=0,
    visualize=False,
):
    """
    Perform Visual Question Answering inference on a single sample

    Parameters:
    -----------
    input_df : pd.DataFrame
        DataFrame containing columns: 'question', 'answer', 'img'
    model : BlipForQuestionAnswering
        Pre-loaded BLIP model
    text_processor, image_processor : BLIP processors
    device : torch.device
        Device for inference
    sample_idx : int, default=0
        Index of the sample to process
    visualize : bool, default=False
        Whether to display the input image

    Returns:
    --------
    dict : Inference results
    """
    start_time = time.time()
    print("Starting inference...", file=sys.stderr)
    try:
        required_columns = ["question", "answer", "img"]
        missing_columns = [
            col for col in required_columns if col not in input_df.columns
        ]

        if missing_columns:
            raise ValueError(f"Missing required columns: {missing_columns}")

        if len(input_df) == 0 or sample_idx >= len(input_df):
            raise ValueError("Invalid sample index or empty DataFrame")

        val_vqa_dataset = VQADataset(
            data=input_df,
            text_processor=text_processor,
            image_processor=image_processor,
        )

        sample = val_vqa_dataset[sample_idx]

        question_text = text_processor.decode(
            sample["input_ids"], skip_special_tokens=True
        )
        actual_answer = text_processor.decode(
            sample["labels"], skip_special_tokens=True
        )

        sample_batch = {k: v.unsqueeze(0).to(device) for k, v in sample.items()}

        model.eval()
        with torch.no_grad():
            inference_start = time.time()
            outputs = model.generate(
                pixel_values=sample_batch["pixel_values"],
                input_ids=sample_batch["input_ids"],
                max_length=50,
                num_beams=3,
                early_stopping=True,
                do_sample=False,
            )
            inference_time = time.time() - inference_start

        predicted_answer = text_processor.decode(outputs[0], skip_special_tokens=True)

        results = {
            "question": question_text,
            "predicted_answer": predicted_answer,
            "actual_answer": actual_answer,
            "sample_index": sample_idx,
            "processing_time": time.time() - start_time,
            "inference_time": inference_time,
            "device_used": str(device),
        }

        if visualize:
            try:
                image_mean = image_processor.image_mean
                image_std = image_processor.image_std

                unnormalized_image = (
                    sample_batch["pixel_values"][0].cpu().numpy()
                    * np.array(image_std)[:, None, None]
                ) + np.array(image_mean)[:, None, None]
                unnormalized_image = (unnormalized_image * 255).astype(np.uint8)
                unnormalized_image = np.moveaxis(unnormalized_image, 0, -1)

                # plt.figure(figsize=(10, 8))
                # plt.imshow(Image.fromarray(unnormalized_image))
                # plt.axis("off")

                title = f"Visual Question Answering Results\n"
                title += f"Q: {question_text}\n"
                title += f"Predicted: {predicted_answer}\n"
                title += f"Actual: {actual_answer}"

                # plt.title(title, fontsize=12, pad=20)
                # plt.tight_layout()
                # plt.show()
            except Exception:
                pass

        return results

    except Exception as e:
        print(f"Inference error: {e}", file=sys.stderr)
        raise


def process_batch_inference(pdf, model, text_processor, image_processor, device):
    """Process all rows in the DataFrame and return results"""
    results = []
    print("Processing batch inference...", file=sys.stderr)
    for index, row in pdf.iterrows():
        try:
            single_row_df = pd.DataFrame([row])
            result = inference_single(
                single_row_df,
                model,
                text_processor,
                image_processor,
                device,
                sample_idx=0,
                visualize=False,
            )
            results.append(
                {
                    "id": row["id"],
                    "question": result["question"],
                    "answer": result["actual_answer"],
                    "predicted_answer": result["predicted_answer"],
                }
            )
        except Exception as e:
            print(f"Error processing row {index}: {e}", file=sys.stderr)
            results.append(
                {
                    "id": row["id"],
                    "question": row["question"],
                    "answer": row["answer"],
                    "predicted_answer": "Error in processing",
                }
            )

    return results


# def main():
"""Main execution function"""
delimiter = "#"

# Load input data
pdf = load_input_data()

# Initialize model components
model, text_processor, image_processor, device = initialize_model()

# Process all rows
results = process_batch_inference(pdf, model, text_processor, image_processor, device)

print("=========Inference completed. =========", file=sys.stderr)
print(f"Total samples processed: {results[0]}", file=sys.stderr)
print(f"total results: {len(results)}", file=sys.stderr)

# Output results
for result in results:
    print(
        result["id"],
        delimiter,
        result["question"],
        delimiter,
        result["answer"],
        delimiter,
        result["predicted_answer"],
    )
