
#!/usr/bin/env python3
import sys
import warnings
warnings.simplefilter('ignore')

import math
from typing import List, Dict, Optional, Tuple, Any
from collections import Counter
from dataclasses import dataclass, asdict

import numpy as np
import pandas as pd

import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.utils.data import Dataset, DataLoader
from torch.optim import AdamW
from torch.optim.lr_scheduler import CosineAnnealingLR, LinearLR, SequentialLR
from collections import OrderedDict

# Core imports
# from teradataml import *
# from teradatasqlalchemy.types import *


# Utility imports
import shutil
# from IPython.display import clear_output, display as ipydisplay

delimiter = ","
inputData = []

DEVICE = torch.device('cpu')

# print(sys.stdin.read().splitlines())
for line in sys.stdin.read().splitlines():
    line = line.split(delimiter)
    inputData.append(line)
    # print(inputData)    
# DELIMITER = ','

# if len(input_str) > 0:
#     inputData = []

#     for line in sys.stdin.read().splitlines():
#         line = line.split(delimiter)
#         inputData.append(line)
#     print(inputData)    

    ###
    ### If no data received, gracefully exit rather than producing an error later.
    ###

if not inputData:
    sys.exit()

###
### Set up input DataFrame according to input schema
###

# Know your data: You must know in advance the number of incoming columns from the database!

columns = ['UserID','SessionID','Event_TS', 'ContactModality', 'Event']

df = pd.DataFrame(inputData, columns=columns).copy()

#     del inputData

EVENT_COLUMN = "Event"
USER_COLUMN = "UserID"
SESSION_COLUMN = "SessionID"
TIMESTAMP_COLUMN = "Event_TS"

# Sort by session and timestamp, then group into sequences
# df_sorted = df.sort_values(["UserID","SessionID", "Event_TS"])
df_sorted = df.sort_values(by=['UserID','SessionID', 'Event_TS'])

#     # Create sequences: list of events per session
session_sequences = df_sorted.groupby([USER_COLUMN, SESSION_COLUMN])[EVENT_COLUMN].apply(list).tolist()

class EventTokenizer:
    """
    Custom tokenizer for event sequences.

    Converts event strings to token IDs and vice versa.
    Supports saving/loading in a format compatible with common frameworks.
    """

    SPECIAL_TOKENS = ["[PAD]", "[UNK]", "[BOS]", "[EOS]", "[MASK]"]

    def __init__(self, vocab: Optional[Dict[str, int]] = None, min_freq: int = 1):
        """
        Args:
            vocab: Pre-built vocabulary (optional)
            min_freq: Minimum frequency for an event to be included
        """
        self.min_freq = min_freq

        if vocab is not None:
            self.vocab = vocab
            self.id_to_token = {v: k for k, v in vocab.items()}
        else:
            # Initialize with special tokens
            self.vocab = {tok: i for i, tok in enumerate(self.SPECIAL_TOKENS)}
            self.id_to_token = {i: tok for i, tok in enumerate(self.SPECIAL_TOKENS)}

    # ----- Properties for special token IDs -----
    @property
    def pad_token_id(self) -> int:
        return 0

    @property
    def unk_token_id(self) -> int:
        return 1

    @property
    def bos_token_id(self) -> int:
        return 2

    @property
    def eos_token_id(self) -> int:
        return 3

    @property
    def vocab_size(self) -> int:
        return len(self.vocab)

    def fit(self, sequences: List[List[str]]) -> "EventTokenizer":
        """
        Build vocabulary from event sequences.

        Args:
            sequences: List of event sequences

        Returns:
            self (for method chaining)
        """
        # Count event frequencies
        event_counts = Counter()
        for seq in sequences:
            event_counts.update(seq)

        # Filter by minimum frequency and add to vocabulary
        next_id = len(self.SPECIAL_TOKENS)
        for event, count in event_counts.most_common():
            if count >= self.min_freq and event not in self.vocab:
                self.vocab[event] = next_id
                self.id_to_token[next_id] = event
                next_id += 1

        return self

    def encode(
        self,
        sequence: List[str],
        add_special_tokens: bool = True,
        max_length: Optional[int] = None,
        padding: bool = False,
        truncation: bool = False
    ) -> List[int]:
        """
        Convert event sequence to token IDs.

        Args:
            sequence: List of event strings
            add_special_tokens: Add [BOS] at start and [EOS] at end
            max_length: Maximum sequence length
            padding: Pad to max_length
            truncation: Truncate to max_length

        Returns:
            List of token IDs
        """
        # Convert events to IDs (use UNK for unknown events)
        token_ids = [self.vocab.get(event, self.unk_token_id) for event in sequence]

        # Add special tokens
        if add_special_tokens:
            token_ids = [self.bos_token_id] + token_ids + [self.eos_token_id]

        # Truncation
        if truncation and max_length:
            token_ids = token_ids[:max_length]

        # Padding
        if padding and max_length:
            pad_len = max_length - len(token_ids)
            if pad_len > 0:
                token_ids = token_ids + [self.pad_token_id] * pad_len

        return token_ids

    def decode(self, token_ids: List[int], skip_special_tokens: bool = True) -> List[str]:
        """
        Convert token IDs back to event strings.
        """
        events = []
        for tid in token_ids:
            token = self.id_to_token.get(tid, "[UNK]")
            if skip_special_tokens and token in self.SPECIAL_TOKENS:
                continue
            events.append(token)
        return events

    def save(self, path: str):
        """Save tokenizer to directory."""
        os.makedirs(path, exist_ok=True)

        # Save vocabulary
        with open(os.path.join(path, "vocab.json"), "w") as f:
            json.dump(self.vocab, f, indent=2)

        # Save config
        config = {
            "bos_token": "[BOS]",
            "eos_token": "[EOS]",
            "unk_token": "[UNK]",
            "pad_token": "[PAD]",
            "vocab_size": self.vocab_size
        }
        with open(os.path.join(path, "tokenizer_config.json"), "w") as f:
            json.dump(config, f, indent=2)

    @classmethod
    def load(cls, path: str) -> "EventTokenizer":
        """Load tokenizer from directory."""
        with open(os.path.join(path, "vocab.json"), "r") as f:
            vocab = json.load(f)
        return cls(vocab=vocab)

tokenizer = EventTokenizer(min_freq=1)  # Include all events; increase min_freq to filter rare events
tokenizer.fit(session_sequences)

# Test encoding and decoding
sample_seq = session_sequences[0][:5]
# print(f"Original sequence: {sample_seq}")

encoded = tokenizer.encode(sample_seq, add_special_tokens=True)
# print(f"Encoded (with BOS/EOS): {encoded}")

decoded = tokenizer.decode(encoded, skip_special_tokens=True)
# print(f"Decoded: {decoded}")

class EventSequenceDataset(Dataset):
    """
    PyTorch Dataset for event sequences.
    
    Creates input-target pairs for causal language modeling:
    - input_ids: sequence to feed to model
    - labels: shifted by 1 for next-token prediction
    - attention_mask: 1 for real tokens, 0 for padding
    """
    
    def __init__(
        self,
        sequences: List[List[int]],  # Already encoded sequences
        max_length: int = 512,
        pad_token_id: int = 0
    ):
        self.sequences = sequences
        self.max_length = max_length
        self.pad_token_id = pad_token_id
        
    def __len__(self) -> int:
        return len(self.sequences)
    
    def __getitem__(self, idx: int) -> Dict[str, torch.Tensor]:
        seq = self.sequences[idx]
        
        # Truncate if too long
        if len(seq) > self.max_length:
            seq = seq[:self.max_length]
        
        # For next-token prediction:
        # input_ids = all tokens except last
        # labels = all tokens except first (shifted by 1)
        input_ids = seq[:-1]
        labels = seq[1:]
        
        # Calculate padding needed
        seq_len = len(input_ids)
        pad_len = self.max_length - 1 - seq_len
        
        if pad_len > 0:
            input_ids = input_ids + [self.pad_token_id] * pad_len
            labels = labels + [-100] * pad_len  # -100 is ignored in cross-entropy loss
        
        # Attention mask: 1 for real tokens, 0 for padding
        attention_mask = [1] * seq_len + [0] * max(0, pad_len)
        
        return {
            "input_ids": torch.tensor(input_ids, dtype=torch.long),
            "labels": torch.tensor(labels, dtype=torch.long),
            "attention_mask": torch.tensor(attention_mask, dtype=torch.long)
        }
# =============================================================================
# CONFIGURATION
# =============================================================================
MAX_SEQ_LEN = 64      # Maximum sequence length (adjust based on your data)
BATCH_SIZE = 32       # Batch size for training
TEST_SIZE = 0.1       # Fraction for test set
VAL_SIZE = 0.1        # Fraction for validation set
RANDOM_SEED = 42      # For reproducibility

# Encode all sequences
# print("Encoding sequences...")
encoded_sequences = [
    tokenizer.encode(seq, add_special_tokens=True)
    for seq in session_sequences
]

# Filter out very short sequences (need at least 3 tokens for meaningful training)
min_seq_len = 4
encoded_sequences = [seq for seq in encoded_sequences if len(seq) >= min_seq_len]
# print(f"Sequences after filtering (min length {min_seq_len}): {len(encoded_sequences):,}")

# Split into train/validation/test
np.random.seed(RANDOM_SEED)
indices = np.random.permutation(len(encoded_sequences))

n_test = int(len(encoded_sequences) * TEST_SIZE)
n_val = int(len(encoded_sequences) * VAL_SIZE)

test_indices = indices[:n_test]
val_indices = indices[n_test:n_test + n_val]
train_indices = indices[n_test + n_val:]

train_seqs = [encoded_sequences[i] for i in train_indices]
val_seqs = [encoded_sequences[i] for i in val_indices]
test_seqs = [encoded_sequences[i] for i in test_indices]

# print(f"Train sequences: {len(train_seqs):,}")
# print(f"Validation sequences: {len(val_seqs):,}")
# print(f"Test sequences: {len(test_seqs):,}")

train_dataset = EventSequenceDataset(train_seqs, max_length=MAX_SEQ_LEN, pad_token_id=tokenizer.pad_token_id)
val_dataset = EventSequenceDataset(val_seqs, max_length=MAX_SEQ_LEN, pad_token_id=tokenizer.pad_token_id)
test_dataset = EventSequenceDataset(test_seqs, max_length=MAX_SEQ_LEN, pad_token_id=tokenizer.pad_token_id)

# DataLoader settings optimized for device
# Note: pin_memory=True speeds up CPU->GPU transfer for CUDA, but not needed for MPS
# num_workers>0 can cause issues on some systems; set to 0 if you encounter problems
loader_kwargs = {
    'num_workers': 0,  # Set to 2-4 if you have multiprocessing issues resolved
    'pin_memory': DEVICE.type == 'cpu',  # Only pin memory for CUDA
}

train_loader = DataLoader(train_dataset, batch_size=BATCH_SIZE, shuffle=True, **loader_kwargs)
val_loader = DataLoader(val_dataset, batch_size=BATCH_SIZE, shuffle=False, **loader_kwargs)
test_loader = DataLoader(test_dataset, batch_size=BATCH_SIZE, shuffle=False, **loader_kwargs)

# Check a sample batch
sample_batch = next(iter(train_loader))

class PositionalEncoding(nn.Module):
    """
    Learned positional embeddings.
    
    Adds position information to token embeddings so the model
    knows the order of events in the sequence.
    """
    
    def __init__(self, d_model: int, max_len: int = 5000, dropout: float = 0.1):
        super().__init__()
        self.dropout = nn.Dropout(p=dropout)
        self.pe = nn.Embedding(max_len, d_model)
    
    def forward(self, x: torch.Tensor) -> torch.Tensor:
        """
        Args:
            x: Token embeddings of shape (batch_size, seq_len, d_model)
        """
        seq_len = x.size(1)
        positions = torch.arange(seq_len, device=x.device).unsqueeze(0)
        x = x + self.pe(positions)
        return self.dropout(x)

class MultiHeadAttention(nn.Module):
    """
    Multi-Head Self-Attention mechanism.
    
    The core of the transformer - allows the model to attend to
    different parts of the sequence when making predictions.
    
    Attention(Q, K, V) = softmax(QK^T / sqrt(d_k)) * V
    """
    
    def __init__(self, d_model: int, num_heads: int, dropout: float = 0.1):
        super().__init__()
        assert d_model % num_heads == 0, "d_model must be divisible by num_heads"
        
        self.d_model = d_model
        self.num_heads = num_heads
        self.d_k = d_model // num_heads  # Dimension per head
        
        # Linear projections for Query, Key, Value
        self.W_q = nn.Linear(d_model, d_model)
        self.W_k = nn.Linear(d_model, d_model)
        self.W_v = nn.Linear(d_model, d_model)
        self.W_o = nn.Linear(d_model, d_model)  # Output projection
        
        self.dropout = nn.Dropout(dropout)
        self.scale = math.sqrt(self.d_k)
    
    def forward(
        self,
        x: torch.Tensor,
        mask: Optional[torch.Tensor] = None,
        is_causal: bool = True
    ) -> torch.Tensor:
        """
        Args:
            x: Input tensor (batch_size, seq_len, d_model)
            mask: Optional attention mask for padding
            is_causal: Apply causal masking (can't attend to future tokens)
        """
        batch_size, seq_len, _ = x.shape
        
        # Project to Q, K, V and reshape for multi-head attention
        # Shape: (batch_size, num_heads, seq_len, d_k)
        Q = self.W_q(x).view(batch_size, seq_len, self.num_heads, self.d_k).transpose(1, 2)
        K = self.W_k(x).view(batch_size, seq_len, self.num_heads, self.d_k).transpose(1, 2)
        V = self.W_v(x).view(batch_size, seq_len, self.num_heads, self.d_k).transpose(1, 2)
        
        # Compute attention scores: (batch, heads, seq, seq)
        scores = torch.matmul(Q, K.transpose(-2, -1)) / self.scale
        
        # Apply causal mask (prevent attending to future tokens)
        if is_causal:
            causal_mask = torch.triu(
                torch.ones(seq_len, seq_len, device=x.device, dtype=torch.bool),
                diagonal=1
            )
            scores = scores.masked_fill(causal_mask, float('-inf'))
        
        # Apply padding mask
        if mask is not None:
            # mask shape: (batch, seq) -> (batch, 1, 1, seq)
            mask = mask.unsqueeze(1).unsqueeze(2)
            scores = scores.masked_fill(mask == 0, float('-inf'))
        
        # Softmax and apply attention to values
        attention = F.softmax(scores, dim=-1)
        attention = self.dropout(attention)
        
        # Apply attention to values and reshape
        context = torch.matmul(attention, V)
        context = context.transpose(1, 2).contiguous().view(batch_size, seq_len, self.d_model)
        
        return self.W_o(context)
    
class FeedForward(nn.Module):
    """
    Position-wise Feed-Forward Network.
    
    Two linear transformations with GELU activation in between.
    FFN(x) = GELU(xW1 + b1)W2 + b2
    """
    
    def __init__(self, d_model: int, d_ff: int, dropout: float = 0.1):
        super().__init__()
        self.linear1 = nn.Linear(d_model, d_ff)
        self.linear2 = nn.Linear(d_ff, d_model)
        self.dropout = nn.Dropout(dropout)
        self.activation = nn.GELU()
    
    def forward(self, x: torch.Tensor) -> torch.Tensor:
        return self.linear2(self.dropout(self.activation(self.linear1(x))))
    
class TransformerBlock(nn.Module):
    """
    Single Transformer decoder block.
    
    Consists of:
    1. Multi-head self-attention (with causal masking)
    2. Feed-forward network
    Both with layer normalization (Pre-LN) and residual connections.
    """
    
    def __init__(
        self,
        d_model: int,
        num_heads: int,
        d_ff: int,
        dropout: float = 0.1
    ):
        super().__init__()
        
        self.attention = MultiHeadAttention(d_model, num_heads, dropout)
        self.feed_forward = FeedForward(d_model, d_ff, dropout)
        
        # Layer normalization (Pre-LN style)
        self.norm1 = nn.LayerNorm(d_model)
        self.norm2 = nn.LayerNorm(d_model)
        
        self.dropout1 = nn.Dropout(dropout)
        self.dropout2 = nn.Dropout(dropout)
    
    def forward(
        self,
        x: torch.Tensor,
        attention_mask: Optional[torch.Tensor] = None
    ) -> torch.Tensor:
        # Pre-LN: normalize before attention
        normed = self.norm1(x)
        attn_output = self.attention(normed, mask=attention_mask, is_causal=True)
        x = x + self.dropout1(attn_output)  # Residual connection
        
        # Pre-LN: normalize before feed-forward
        normed = self.norm2(x)
        ff_output = self.feed_forward(normed)
        x = x + self.dropout2(ff_output)  # Residual connection
        
        return x

class EventTransformer(nn.Module):
    """
    Complete Transformer model for next-event prediction.
    
    Architecture:
    1. Token embedding layer
    2. Positional encoding
    3. Stack of transformer blocks
    4. Final layer normalization
    5. Output projection to vocabulary
    """
    
    def __init__(
        self,
        vocab_size: int,
        d_model: int = 256,
        num_heads: int = 8,
        num_layers: int = 4,
        d_ff: int = 1024,
        max_seq_len: int = 512,
        dropout: float = 0.1,
        pad_token_id: int = 0,
        tie_weights: bool = True
    ):
        """
        Args:
            vocab_size: Number of unique events + special tokens
            d_model: Model dimension (embedding size)
            num_heads: Number of attention heads
            num_layers: Number of transformer blocks
            d_ff: Feed-forward hidden dimension (usually 4x d_model)
            max_seq_len: Maximum sequence length
            dropout: Dropout probability
            pad_token_id: ID of padding token
            tie_weights: Tie input/output embedding weights (saves parameters)
        """
        super().__init__()
        
        self.vocab_size = vocab_size
        self.d_model = d_model
        self.pad_token_id = pad_token_id
        self.max_seq_len = max_seq_len
        
        # Token embeddings
        self.token_embedding = nn.Embedding(vocab_size, d_model, padding_idx=pad_token_id)
        
        # Positional encoding
        self.pos_encoding = PositionalEncoding(d_model, max_seq_len, dropout)
        
        # Stack of transformer blocks
        self.layers = nn.ModuleList([
            TransformerBlock(d_model, num_heads, d_ff, dropout)
            for _ in range(num_layers)
        ])
        
        # Final layer norm
        self.final_norm = nn.LayerNorm(d_model)
        
        # Output projection to vocabulary
        self.output_projection = nn.Linear(d_model, vocab_size, bias=False)
        
        # Tie input and output embeddings (common practice)
        if tie_weights:
            self.output_projection.weight = self.token_embedding.weight
        
        # Initialize weights
        self._init_weights()
    
    def _init_weights(self):
        """Initialize weights with Xavier/Glorot."""
        for module in self.modules():
            if isinstance(module, nn.Linear):
                nn.init.xavier_uniform_(module.weight)
                if module.bias is not None:
                    nn.init.zeros_(module.bias)
            elif isinstance(module, nn.Embedding):
                nn.init.normal_(module.weight, mean=0, std=0.02)
                if module.padding_idx is not None:
                    nn.init.zeros_(module.weight[module.padding_idx])
    
    def forward(
        self,
        input_ids: torch.Tensor,
        attention_mask: Optional[torch.Tensor] = None,
        labels: Optional[torch.Tensor] = None
    ) -> Dict[str, torch.Tensor]:
        """
        Forward pass.
        
        Args:
            input_ids: Token IDs (batch_size, seq_len)
            attention_mask: 1 for real tokens, 0 for padding
            labels: Target token IDs for computing loss
            
        Returns:
            Dict with 'logits' and optionally 'loss'
        """
        # Token embeddings + positional encoding
        x = self.token_embedding(input_ids) * math.sqrt(self.d_model)
        x = self.pos_encoding(x)
        
        # Pass through transformer blocks
        for layer in self.layers:
            x = layer(x, attention_mask)
        
        # Final norm and project to vocabulary
        x = self.final_norm(x)
        logits = self.output_projection(x)
        
        # Compute loss if labels provided
        loss = None
        if labels is not None:
            loss = F.cross_entropy(
                logits.view(-1, self.vocab_size),
                labels.view(-1),
                ignore_index=-100  # Ignore padding in loss
            )
        
        return {"logits": logits, "loss": loss}
    
    @torch.no_grad()
    def generate(
        self,
        input_ids: torch.Tensor,
        max_new_tokens: int = 10,
        temperature: float = 1.0,
        top_k: Optional[int] = None,
        do_sample: bool = True,
        eos_token_id: int = 3
    ) -> torch.Tensor:
        """
        Generate new events autoregressively.
        
        Args:
            input_ids: Starting sequence
            max_new_tokens: Maximum tokens to generate
            temperature: Higher = more random
            top_k: Keep only top k tokens
            do_sample: Sample vs greedy
            eos_token_id: Stop when this token is generated
        """
        self.eval()
        
        for _ in range(max_new_tokens):
            # Truncate if too long
            if input_ids.shape[1] > self.max_seq_len:
                input_ids = input_ids[:, -self.max_seq_len:]
            
            # Forward pass
            outputs = self.forward(input_ids)
            logits = outputs["logits"][:, -1, :] / temperature
            
            # Top-k filtering
            if top_k is not None:
                indices_to_remove = logits < torch.topk(logits, top_k)[0][..., -1, None]
                logits[indices_to_remove] = float('-inf')
            
            # Sample or greedy
            if do_sample:
                probs = F.softmax(logits, dim=-1)
                next_token = torch.multinomial(probs, num_samples=1)
            else:
                next_token = logits.argmax(dim=-1, keepdim=True)
            
            input_ids = torch.cat([input_ids, next_token], dim=1)
            
            # Stop at EOS
            if next_token.item() == eos_token_id:
                break
        
        return input_ids
    
    def get_config(self) -> Dict[str, Any]:
        """Return model configuration."""
        return {
            "vocab_size": self.vocab_size,
            "d_model": self.d_model,
            "num_heads": self.layers[0].attention.num_heads,
            "num_layers": len(self.layers),
            "d_ff": self.layers[0].feed_forward.linear1.out_features,
            "max_seq_len": self.max_seq_len,
            "pad_token_id": self.pad_token_id
        }
    
# =============================================================================
# MODEL CONFIGURATION
# =============================================================================
# Choose model size based on your data and compute resources
# Smaller models train faster but may underfit; larger models may overfit on small data

MODEL_CONFIG = {
    "tiny": {"d_model": 128, "num_heads": 4, "num_layers": 2, "d_ff": 512},
    "small": {"d_model": 256, "num_heads": 8, "num_layers": 4, "d_ff": 1024},
    "medium": {"d_model": 512, "num_heads": 8, "num_layers": 6, "d_ff": 2048},
    "large": {"d_model": 768, "num_heads": 12, "num_layers": 8, "d_ff": 3072},
}

# Select model size
MODEL_SIZE = "small"  # <-- CHANGE THIS: tiny, small, medium, large

config = MODEL_CONFIG[MODEL_SIZE]

# Create the model
model = EventTransformer(
    vocab_size=tokenizer.vocab_size,
    d_model=config["d_model"],
    num_heads=config["num_heads"],
    num_layers=config["num_layers"],
    d_ff=config["d_ff"],
    max_seq_len=MAX_SEQ_LEN,
    dropout=0.1,
    pad_token_id=tokenizer.pad_token_id,
    tie_weights=True
)

# Move to device
# model = model.to(DEVICE)

# Count parameters
num_params = sum(p.numel() for p in model.parameters())
num_trainable = sum(p.numel() for p in model.parameters() if p.requires_grad)

@dataclass
class TrainingConfig:
    """Training hyperparameters."""
    learning_rate: float = 1e-4
    weight_decay: float = 0.01
    num_epochs: int = 10
    warmup_steps: int = 100
    max_grad_norm: float = 1.0
    early_stopping_patience: int = 3
    logging_steps: int = 50


def train_epoch(model, dataloader, optimizer, scheduler, config, device):
    """Run one training epoch."""
    model.train()
    total_loss = 0
    num_batches = 0
    
    for step, batch in enumerate(dataloader):
        # Move batch to device
        batch = {k: v.to(device) for k, v in batch.items()}
        
        # Forward pass
        outputs = model(
            input_ids=batch["input_ids"],
            attention_mask=batch["attention_mask"],
            labels=batch["labels"]
        )
        loss = outputs["loss"]
        
        # Backward pass
        loss.backward()
        
        # Gradient clipping
        torch.nn.utils.clip_grad_norm_(model.parameters(), config.max_grad_norm)
        
        # Optimizer step
        optimizer.step()
        scheduler.step()
        optimizer.zero_grad()
        
        total_loss += loss.item()
        num_batches += 1
        
        # Logging
        if (step + 1) % config.logging_steps == 0:
            avg_loss = total_loss / num_batches
            # print(f"  Step {step + 1}: loss = {avg_loss:.4f}", end="\r")
    
    return total_loss / num_batches


@torch.no_grad()
def evaluate(model, dataloader, device):
    """Evaluate model on a dataset."""
    model.eval()
    total_loss = 0
    num_batches = 0
    
    for batch in dataloader:
        batch = {k: v.to(device) for k, v in batch.items()}
        
        outputs = model(
            input_ids=batch["input_ids"],
            attention_mask=batch["attention_mask"],
            labels=batch["labels"]
        )
        
        total_loss += outputs["loss"].item()
        num_batches += 1
    
    return total_loss / num_batches

# =============================================================================
# TRAINING CONFIGURATION
# =============================================================================
train_config = TrainingConfig(
    learning_rate=3e-4,      # Learning rate (try 1e-4 to 5e-4)
    weight_decay=0.01,       # L2 regularization
    num_epochs=10,           # Number of epochs (adjust based on convergence)
    warmup_steps=100,        # LR warmup steps
    max_grad_norm=1.0,       # Gradient clipping
    early_stopping_patience=3,  # Stop if no improvement for N epochs
    logging_steps=50         # Log every N steps
)

# Setup optimizer (AdamW with weight decay)
optimizer = AdamW(
    model.parameters(),
    lr=train_config.learning_rate,
    weight_decay=train_config.weight_decay
)

# Setup learning rate scheduler (warmup + cosine annealing)
total_steps = len(train_loader) * train_config.num_epochs

warmup_scheduler = LinearLR(
    optimizer,
    start_factor=1e-10,
    end_factor=1.0,
    total_iters=train_config.warmup_steps
)

cosine_scheduler = CosineAnnealingLR(
    optimizer,
    T_max=total_steps - train_config.warmup_steps,
    eta_min=train_config.learning_rate * 0.1
)

scheduler = SequentialLR(
    optimizer,
    schedulers=[warmup_scheduler, cosine_scheduler],
    milestones=[train_config.warmup_steps]
)

# =============================================================================
# TRAINING LOOP
# =============================================================================

# Track metrics
train_losses = []
val_losses = []
best_val_loss = float('inf')
patience_counter = 0
best_model_state = None

import time 
start = time.time()
for epoch in range(train_config.num_epochs):
    # print(f"\nEpoch {epoch + 1}/{train_config.num_epochs}")
    # print("-" * 40)
    
    # Train
    train_loss = train_epoch(model, train_loader, optimizer, scheduler, train_config, DEVICE)
    train_losses.append(train_loss)
    
    # Validate
    val_loss = evaluate(model, val_loader, DEVICE)
    val_losses.append(val_loss)
    
    # Calculate perplexity
    train_ppl = math.exp(min(train_loss, 10))
    val_ppl = math.exp(min(val_loss, 10))
    
    # print(f"  Train Loss: {train_loss:.4f} | Train PPL: {train_ppl:.2f}")
    # print(f"  Val Loss:   {val_loss:.4f} | Val PPL:   {val_ppl:.2f}")
    
    # Check for best model
    if val_loss < best_val_loss:
        best_val_loss = val_loss
        patience_counter = 0
        best_model_state = model.state_dict().copy()
        # print("  ✓ New best model!")
    else:
        patience_counter += 1
        # print(f"  No improvement ({patience_counter}/{train_config.early_stopping_patience})")
    
    # Early stopping
    if patience_counter >= train_config.early_stopping_patience:
        # print(f"\nEarly stopping triggered after {epoch + 1} epochs")
        break

# Restore best model
if best_model_state is not None:
    model.load_state_dict(best_model_state)
    # print("\n✓ Restored best model")

    
# @torch.no_grad()
def evaluate_detailed(model, dataloader, device, top_k_values=[1, 3, 5, 10]):
    """
    Detailed evaluation with multiple metrics.
    
    Returns:
        Dict with loss, perplexity, accuracy@k, and MRR
    """
    model.eval()
    
    total_loss = 0
    total_correct = {k: 0 for k in top_k_values}
    total_mrr = 0
    total_samples = 0
    num_batches = 0
    
    for batch in dataloader:
        batch = {k: v.to(device) for k, v in batch.items()}
        
        outputs = model(
            input_ids=batch["input_ids"],
            attention_mask=batch["attention_mask"],
            labels=batch["labels"]
        )
        
        total_loss += outputs["loss"].item()
        num_batches += 1
        
        # Get predictions for last position of each sequence
        attention_mask = batch["attention_mask"]
        seq_lengths = attention_mask.sum(dim=1) - 1
        
        batch_size = batch["input_ids"].shape[0]
        
        for i in range(batch_size):
            last_pos = seq_lengths[i].item()
            if last_pos < 0:
                continue
            
            logits = outputs["logits"][i, last_pos, :]
            target = batch["labels"][i, last_pos].item()
            
            if target == -100:  # Skip padding
                continue
            
            total_samples += 1
            
            # Get top predictions
            _, top_indices = torch.topk(logits, max(top_k_values))
            top_indices = top_indices.cpu().tolist()
            
            # Accuracy@K
            for k in top_k_values:
                if target in top_indices[:k]:
                    total_correct[k] += 1
            
            # MRR
            if target in top_indices:
                rank = top_indices.index(target) + 1
                total_mrr += 1.0 / rank
    
    # Calculate final metrics
    avg_loss = total_loss / num_batches
    perplexity = math.exp(min(avg_loss, 10))
    
    metrics = {
        "loss": avg_loss,
        "perplexity": perplexity,
        "mrr": total_mrr / total_samples if total_samples > 0 else 0
    }
    
    for k in top_k_values:
        metrics[f"accuracy@{k}"] = total_correct[k] / total_samples if total_samples > 0 else 0
    
    return metrics

test_metrics = evaluate_detailed(model, test_loader, DEVICE)

def predict_next_events(model, tokenizer, events: List[str], top_k: int = 5, device=DEVICE):
    """
    Predict the most likely next events given a sequence.
    
    Args:
        model: Trained EventTransformer
        tokenizer: EventTokenizer
        events: List of event strings
        top_k: Number of top predictions to return
        
    Returns:
        List of (event, probability) tuples
    """
    model.eval()
    
    # Encode the sequence
    input_ids = tokenizer.encode(events, add_special_tokens=True)
    input_tensor = torch.tensor([input_ids]).to(device)
    
    # Get predictions
    with torch.no_grad():
        outputs = model(input_tensor)
        logits = outputs["logits"][:, -1, :]  # Last position
        probs = F.softmax(logits, dim=-1)
        
        top_probs, top_ids = torch.topk(probs, top_k)
    
    # Convert to events
    predictions = []
    for i in range(top_k):
        # Alternative fix - use decode with skip_special_tokens=False
        event = tokenizer.decode([top_ids[0, i].item()], skip_special_tokens=False)[0]
        prob = top_probs[0, i].item()
        predictions.append((event, prob))
    
    return predictions

example_sequences = [
    session_sequences[i][:5] for i in test_indices[:3]
]

# df = pd.DataFrame(columns=["event", "prob"])
df_final=pd.DataFrame(columns=["event", "prob","seq"])
for seq in example_sequences:
#     print(f"\nInput sequence: {seq}")
#     print("Top 5 predicted next events:")
    res = ""
    a = seq
    res = " ".join(a)
    
    predictions = predict_next_events(model, tokenizer, seq, top_k=5)
    # predictions.append(seq)
    # print(predictions)
    # df = pd.DataFrame(predictions, columns=['event', 'prob'])
    df = pd.DataFrame(predictions,columns=['event', 'prob'])
    df['seq'] = res
    df_final = pd.concat([df], ignore_index=True)
    
    
# print(df.shape)
for index, row in df_final.iterrows():
    print(row['seq'], delimiter,row['event'], delimiter,row['prob'])
  
     # for i, (event, prob) in enumerate(predictions, 1):
#     #     print(f"  {i}. {event}: {prob:.2%}")

# for index, row in df_sorted.iterrows():
#     print(row['UserID'], delimiter, row['SessionID'], delimiter,row['Event_TS'], delimiter, row['ContactModality'], delimiter, row['Event'])


# # 'UserID','SessionID','Event_TS', 'ContactModality', 'Event'
