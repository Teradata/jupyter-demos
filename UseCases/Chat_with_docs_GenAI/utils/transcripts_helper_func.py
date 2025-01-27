import torch
import torchaudio
from transformers import WhisperProcessor, WhisperForConditionalGeneration


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


def process_audio(audio_path, model_name="openai/whisper-small"):
    # Load the processor and model
    processor = WhisperProcessor.from_pretrained(model_name)
    model = WhisperForConditionalGeneration.from_pretrained(model_name)
    model.generation_config.use_cache = False

    try:
        # Load and preprocess the audio
        audio = load_and_preprocess_audio(audio_path)

        # Transcribe the audio
        transcription = transcribe_audio(audio, processor, model)

        return transcription
    except Exception as e:
        pass
