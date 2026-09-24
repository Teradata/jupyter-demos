# NPATH Event Sequence Classification & Next Event(s) Prediction

##### Author: <I>Karthik Guruswamy, Financial Services AI Strategy Lead, Teradata </I>

> **Predicting business outcomes and generating future customer journeys from NPATH event sequences in Teradata Vantage**

[![Teradata](https://img.shields.io/badge/Platform-Teradata%20Vantage-orange)](https://www.teradata.com/)
[![PyTorch](https://img.shields.io/badge/Framework-PyTorch-red)](https://pytorch.org/)
[![License](https://img.shields.io/badge/License-Internal%20Use-blue)]()

---

## Overview

This repository provides a comprehensive toolkit for **classifying user event sequences** into business outcomes and **predicting future events** in customer journeys. It leverages Teradata's `NPATH` function to extract ordered event paths from clickstream data, then applies a range of AI/ML techniques — from simple in-database SQL models to deep learning transformers.

### What Does It Do?

**Event Sequence Classification** — Given a user's session events (e.g., `PayBills → CheckCreditScore → CompareCreditCards → CheckCreditScore`), predict which business outcome they are heading toward (e.g., *Apply Credit Card — 98.5%*). This is a multi-class/multi-label classification problem.

**Next Event(s) Prediction** — Given an in-progress session (e.g., `…→ TransferFunds → ViewChecking → ViewSavings →`), generate the likely sequence of future events the user will take. This is a generative sequence modeling problem.

### Business Context

User interactions with banking services across web, mobile, chatbot, phone, and branch visits leave behind event trails. Most activity is routine (bill pay, viewing statements), but some journeys lead to valuable outcomes like product applications. Identifying these high-propensity journeys in real-time enables targeted campaigns and personalized offers.

---

## Approaches

Eight modeling techniques are implemented (simple → complex):

| # | Approach | Category | Task | Key Metric | Where It Runs |
|---|----------|----------|------|------------|---------------|
| 1 | **Naïve Bayes / WoE** | Classification | Binary + Multi-Class (8) | Binary: P=76.7% R=86.5%; MC: 82.5% Acc | In-database (SQL) |
| 2 | **Markov Chain** | Classification | Binary + Multi-Class (8) | Binary: P=64.0% R=80.7%; MC: 87.2% Acc | In-database (SQL + NPATH) |
| 3 | **Hidden Markov Model** *(NEW)* | Classification | Binary + Multi-Class (8) | Binary: AUC=0.846; MC: 86.1% Acc, F1=0.87 | In-database (SQL + SPs) |
| 4 | **Custom Embedding Transformer** | Representation | Embeddings | Contrastive loss, t-SNE clusters | PyTorch |
| 5 | **GNN + XGBoost** | Classification | Multiclass (8) | Accuracy 92.7%, F1 0.92 | PyTorch + XGBoost |
| 6 | **GNN End-to-End** | Classification | Multiclass (8) | Accuracy 91.0%, F1 0.91 | PyTorch (PyG) |
| 7 | **GPT Transformer** | Generative | Next-event prediction | Accuracy@1 93.4%, Perplexity 19.4 | PyTorch |

> ⚠️ All metrics are based on **synthetic data**. Actual results on customer data may vary.

### Approach Positioning

```
SIMPLE ──────────────────────────────────────────────────────────────────────── COMPLEX

┌─────────────┐  ┌─────────────┐  ┌─────────────┐  ┌───────────────┐  ┌─────────────┐  ┌────────────┐  ┌────────────┐
│ Naive Bayes  │  │Markov Chain │  │     HMM     │  │ GNN+XGBoost   │  │ GNN E2E     │  │ Embedding  │  │    GPT     │
│ In-DB SQL    │→ │ SQL+NPATH   │→ │ SQL+SPs     │→ │ Two-Stage     │→ │ Single Model│→ │ Transformer│→ │Transformer │
│ 300 rows     │  │ 45K rows    │  │ 8 HMMs×3st  │  │ 49K+XGB params│  │ ~49K params │  │ 3.2M params│  │ 3.2M params│
│ Bin+MC 82.5% │  │ Bin+MC 87.2%│  │ Bin+MC 86.1%│  │ 8-class 92.7% │  │ 8-class 91% │  │ 256-d vecs │  │ 93.4% acc  │
└─────────────┘  └─────────────┘  └─────────────┘  └───────────────┘  └─────────────┘  └────────────┘  └────────────┘
        ◄────────── IN-DATABASE CLASSIFICATION ──────────►              ◄──── DL CLASSIFICATION ────►  ◄─ REPR & GEN ─►
```

**Recommended progression:** Start with Naïve Bayes for quick in-database baselines → Add Markov Chains for sequence context → Try HMMs for latent state discovery → Scale to GNNs for multiclass → Use Transformers for embeddings & generation.

---

## Data Schema

The input data follows a standard clickstream schema:

| Field | Description |
|-------|-------------|
| `UserID` | User identifier |
| `SessionID` | Session identifier |
| `Timestamp` | Event timestamp |
| `Channel` | Interaction channel (Web, MobileApp, ChatBot, External, etc.) |
| `Event` | Event name (150 unique events) |

Example sessions:

```
USR101112 / Session #497:
  AccountOverview → EnableFaceID → ViewSavings → ViewCreditCard →
  AccountOverView → UpdateProfile → DownloadStatement → PayBills →
  QuickBalance → PayBills → ViewNotifications

USR104169 / Session #1:
  UpdateEmail → UpdateEmail → TransferToAgent → BranchHours →
  FAQMobileDepositLimits → FAQFees → BranchHours → DisputeTransaction →
  FAQFees → CardActivation → DisputeTransaction → BalanceInquiry →
  ACHWithdrawlSubscription
```

---

## 1. Naïve Bayes / Weight of Evidence

**Binary + Multi-Class classification** using in-database SQL — the simplest approach.

### How It Works

1. **Label sessions** — Sessions containing the target event (e.g., `ApplyMortgage`) are labeled as outcome (1); all others as non-outcome (0).
2. **Build model table** — 150 events × 2 classes = 300 rows. Count event occurrences per class with Laplacian smoothing.
3. **Compute WoE** — `WoE = log(P(event|outcome) / P(event|non-outcome))`. Mortgage-related events have high positive WoE; routine events have negative WoE.
4. **Score sessions** — Sum log-odds across all events in a session, apply sigmoid to get a 0–1 probability.

### In-Database Scoring

```sql
SELECT UserID, SessionID,
    COUNT(*) AS events_per_session,
    SUM(LOG(o.probability / n.probability)) AS log_odds,
    1/(1 + EXP(-log_odds)) AS score
FROM test_table a
JOIN base_model o ON o.outcome=1 AND a.Event=o.a
JOIN base_model n ON n.outcome=0 AND a.Event=n.a
GROUP BY UserID, SessionID
```

### Binary Results (88.9K test sessions)

| Threshold | Accuracy | Precision | Recall | Notes |
|-----------|----------|-----------|--------|-------|
| 0.10 | 27.7% | 2.1% | 99.9% | Catches nearly all, massive FPs |
| 0.50 | 92.2% | 16.0% | 94.9% | Strong recall, many FPs |
| **0.70** | **99.4%** | **76.7%** | **86.5%** | **Good balance** |
| 0.999 | 99.0% | 82.4% | 44.9% | High precision, misses half |

**Score separation:** Outcome avg = 0.895 | Non-outcome avg = 0.245

### Multi-Class Results (88.9K test sessions) *(NEW)*

**Approach:** One-vs-Rest — train one binary NB model per Apply\* target class. For each test session, score against all class models. Predicted class = highest log-likelihood ratio. All-negative sessions classified as NoApplication.

**Overall Accuracy: 82.5%**

| Class | Precision | Recall | F1 | Support |
|-------|-----------|--------|----|---------|
| NoApplication | 0.99 | 0.81 | 0.89 | 75,601 |
| ApplyCreditCard | 0.67 | 0.90 | 0.77 | 3,925 |
| ApplySavingsAccount | 0.77 | 0.93 | 0.84 | 3,280 |
| ApplyAutoLoan | 0.55 | 0.97 | 0.70 | 1,410 |
| ApplyMortgage | 0.34 | 0.95 | 0.50 | 1,382 |
| ApplyCheckingAccount | 0.44 | 0.96 | 0.61 | 1,297 |
| ApplyPersonalLoan | 0.26 | 0.95 | 0.41 | 1,291 |
| ApplyTeenChecking | 0.17 | 0.99 | 0.29 | 669 |

**Macro avg:** Precision 0.52 | Recall 0.93 | F1 0.62

---

## 2. First-Order Markov Chain

**Binary + Multi-Class classification** using event transition pairs — captures sequential context.

### Key Difference from Naïve Bayes

| | Naïve Bayes | Markov Chain |
|---|---|---|
| **Unit** | P(event \| class) | P(A→B \| class) |
| **Context** | Independent events | Sequential transitions |
| **Model size** | 300 rows | 45,000 rows |

### How It Works

1. Use `NPATH()` to extract overlapping consecutive event pairs (A→B).
2. Build transition probability tables per class with Laplacian smoothing.
3. Score sessions by summing transition log-odds and applying sigmoid.

### NPATH Transition Extraction

```sql
npath(
    ON training_table
    PARTITION BY UserID, SessionID
    ORDER BY Timestamp
USING
    mode(overlapping)
    pattern('A.B')
RESULT(
    first(Event OF A) AS Event_1,
    first(Event OF B) AS Event_2
)
)
```

### Binary Results (81.5K test sessions)

| Threshold | Accuracy | Precision | Recall |
|-----------|----------|-----------|--------|
| 0.50 | 96.4% | 30.0% | 85.0% |
| **0.70** | **98.9%** | **64.0%** | **80.7%** |
| 0.90 | 99.2% | 77.2% | 71.3% |

Transition WoE values (~5.9 for mortgage transitions) are substantially higher than individual event WoE (~3.8), demonstrating the value of capturing sequential patterns.

### Multi-Class Results (88.9K test sessions) *(NEW)*

**Approach:** One-vs-Rest — same as Naïve Bayes but using transition-pair models per target class.

**Overall Accuracy: 87.2%**

| Class | Precision | Recall | F1 | Support |
|-------|-----------|--------|----|---------|
| NoApplication | 0.97 | 0.90 | 0.93 | 75,601 |
| ApplyCreditCard | 0.50 | 0.69 | 0.58 | 3,925 |
| ApplySavingsAccount | 0.55 | 0.70 | 0.62 | 3,280 |
| ApplyAutoLoan | 0.53 | 0.68 | 0.60 | 1,410 |
| ApplyMortgage | 0.52 | 0.66 | 0.58 | 1,382 |
| ApplyCheckingAccount | 0.49 | 0.67 | 0.56 | 1,297 |
| ApplyPersonalLoan | 0.53 | 0.66 | 0.59 | 1,291 |
| ApplyTeenChecking | 0.28 | 0.71 | 0.40 | 669 |

**Macro avg:** Precision 0.55 | Recall 0.71 | F1 0.61

---

## 3. Hidden Markov Model (HMM) *(NEW)*

**Binary + Multi-Class classification** using latent behavioral states — entirely in-database via stored procedures.

### Key Difference from Markov Chains

| | Markov Chain | HMM |
|---|---|---|
| **Unit** | P(A→B \| class) | P(observations \| hidden states) |
| **Context** | Observes transitions directly | Learns latent behavioral phases |
| **Model** | Transition probability table | π (initial), A (transition), B (emission) matrices |
| **Training** | Counting + smoothing | Baum-Welch EM algorithm |
| **Scoring** | Sum of log-odds | Forward algorithm log-likelihood |

### How It Works

1. **Install infrastructure** — 10 HMM tables + 8 stored procedures in Vantage (Forward, Backward, E-step, M-step, Train, Score, etc.).
2. **Train via Baum-Welch** — For each target class, train an HMM with N hidden states using the EM algorithm: E-step (Forward-Backward computes state posteriors γ and transition posteriors ξ), M-step (re-estimate π, A, B from sufficient statistics). Iterate until log-likelihood converges.
3. **Score via Forward algorithm** — Compute P(sequence | HMM_class) for each class model. Binary: sigmoid on log-likelihood ratio. Multiclass: argmax over all class likelihoods.
4. **Model stored in Vantage** — Parameters stored in `hmm_params_pi`, `hmm_params_trans`, `hmm_params_emit` tables. Model IDs encode class and states (e.g., `mc_ApplyMortgage_3s`).

### 8 Stored Procedures

| Procedure | Purpose |
|-----------|---------|
| `SP_HMM_EXTRACT_SEQUENCES` | Convert clickstream to sequence format |
| `SP_HMM_INIT` | Random parameter initialization |
| `SP_HMM_FORWARD` | Forward algorithm (α values) |
| `SP_HMM_BACKWARD` | Backward algorithm (β values) |
| `SP_HMM_ESTEP` | Compute γ and ξ posteriors |
| `SP_HMM_MSTEP` | Re-estimate π, A, B |
| `SP_HMM_TRAIN` | Full Baum-Welch training loop |
| `SP_HMM_SCORE_SESSIONS` | Score sessions against a trained HMM |

### Binary Results (65.5K test sessions, ApplyMortgage)

Consistent results across 3, 4, and 5 hidden states — indicating model convergence.

| Threshold | Accuracy | Precision | Recall | F1 |
|-----------|----------|-----------|--------|----|
| 0.30 | 85.5% | 9.6% | 72.6% | 0.169 |
| **0.50** | **96.2%** | **30.6%** | **68.7%** | **0.423** |
| **0.70** | **98.5%** | **61.4%** | **67.8%** | **0.645** |

**AUC-ROC: 0.846**

### Multi-Class Results (81.1K test sessions)

**Approach:** One HMM per class (3 hidden states, Baum-Welch). Predicted class = argmax log-likelihood via Forward algorithm.

**Overall Accuracy: 86.1% | Weighted F1: 0.87**

| Class | Precision | Recall | F1 | Support |
|-------|-----------|--------|----|---------|
| NoApplication | 0.94 | 0.89 | 0.92 | 68,293 |
| ApplyCreditCard | 0.60 | 0.68 | 0.64 | 3,796 |
| ApplySavingsAccount | 0.70 | 0.69 | 0.70 | 3,165 |
| ApplyAutoLoan | 0.65 | 0.69 | 0.67 | 1,358 |
| ApplyMortgage | 0.49 | 0.68 | 0.57 | 1,331 |
| ApplyPersonalLoan | 0.43 | 0.68 | 0.52 | 1,244 |
| ApplyCheckingAccount | 0.40 | 0.69 | 0.50 | 1,252 |
| ApplyTeenChecking | 0.34 | 0.70 | 0.46 | 642 |

**Macro avg:** Precision 0.57 | Recall 0.71 | F1 0.62

### Model Interpretation

Top emission events per hidden state reveal interpretable behavioral phases:

- **ApplyMortgage HMM:** States dominated by MortgageRateInquiry (0.066), PreQualificationInquiry (0.061), DiscussHomeFinancing (0.045), ReviewMortgageDocuments (0.043)
- **ApplyCreditCard HMM:** States dominated by CompareCreditCards (0.053), CheckCreditScore (0.052), CreditLimitInquiry (0.048), CreditCardInquiry (0.048)
- **NoApplication HMM:** States show uniform routine events — PayBills (0.054), ViewStatements (0.054), ViewRewards (0.053), TransferFunds (0.053)

---

## 4. Custom Embedding Transformer

**Representation learning** — produces 256-d fixed-size vectors for any downstream task.

### Architecture

```
Token Embedding (155 vocab → 256-d) + Positional Encoding
    → 4× Transformer Encoder Blocks (8-head attention, FFN 1024)
    → Mean Pooling → Projection + L2 Normalize
    → 256-d unit-norm embedding
```

**Parameters:** 3,215,616 | **Training:** SimCLR-style contrastive learning with InfoNCE loss

### Training

- **Data augmentation:** Random event drop (p=0.1) creates two views per sequence
- **Contrastive pairs:** Same-session embeddings pulled together; different-session pushed apart
- **Temperature:** τ = 0.07

### Use Cases

- **Similarity search** — Find similar customer journeys
- **Clustering** — Group customers by behavior
- **Classification** — Zero-shot or few-shot labeling
- **Anomaly detection** — Flag unusual sequences
- **Vector store / RAG** — Power retrieval-augmented systems
- **Transfer learning** — Pre-trained features for any task

### Output Format

HuggingFace-compatible model directory:

```
embedding_model/
├── pytorch_model.bin
├── config.json
├── tokenizer.json
├── vocab.json
├── tokenizer_config.json
├── special_tokens_map.json
├── training_config.json
└── README.md
```

### Usage

```python
model, tok, cfg = load_model(path)
seq = ["ViewMortgage", "RateInquiry", "PreQual"]
emb = get_embedding(model, tok, seq)
# shape: (256,), L2-normalized, cosine-ready
```

---

## 5. GNN + XGBoost (Two-Stage)

**Multiclass classification** (8 classes) — highest accuracy approach.

### Architecture

```
Event Sequence → Session Graph (nodes + edges) → GraphSAGE (3-layer, 64-d)
    → 64-d Embeddings → XGBoost 8-Class Prediction
```

### Target Classes

| Class | Distribution |
|-------|-------------|
| NoApplication | 85.0% |
| ApplyCreditCard | 4.5% |
| ApplySavingsAccount | 3.8% |
| ApplyAutoLoan | 1.5% |
| ApplyCheckingAccount | 1.5% |
| ApplyMortgage | 1.5% |
| ApplyPersonalLoan | 1.5% |
| ApplyTeenChecking | 0.7% |

### Graph Construction

- **Nodes** = events (with 64-d learned embeddings + normalized position)
- **Edges** = bidirectional between consecutive events
- **Apply events excluded** from input to prevent data leakage

### GraphSAGE Architecture

1. 144-vocab embedding (64-d) + normalized position → 65-d input per node
2. 3× SAGEConv layers (hidden dim 64, BatchNorm + ReLU + Dropout)
3. Mean pool + max pool → 128-d graph representation → MLP → 64-d
4. XGBoost classifier on frozen 64-d embeddings (200 trees, depth 6)

### Results (62K test sessions)

**Overall Accuracy: 92.7% | Weighted F1: 0.92**

| Class | Precision | Recall | F1 |
|-------|-----------|--------|----|
| NoApplication | 0.94 | 0.98 | 0.96 |
| ApplyAutoLoan | 0.84 | 0.63 | 0.72 |
| ApplyCheckingAcct | 0.85 | 0.66 | 0.75 |
| ApplyCreditCard | 0.80 | 0.66 | 0.73 |
| ApplyMortgage | 0.85 | 0.65 | 0.74 |
| ApplyPersonalLoan | 0.83 | 0.66 | 0.74 |
| ApplySavingsAcct | 0.82 | 0.65 | 0.73 |
| ApplyTeenChecking | 0.84 | 0.63 | 0.72 |

---

## 6. End-to-End GNN

**Multiclass classification** with a single unified model — simplest deep learning deployment.

Compares two GNN architectures:

| | GraphSAGE | GIN |
|---|---|---|
| **Layers** | 3× SAGEConv (64-d) | 3× GINConv (MLP inside) |
| **Readout** | mean pool + max pool (128-d) | Jumping Knowledge (192-d) |
| **Classifier** | 128 → 64 → 8 | 192 → 64 → 8 |
| **Strength** | Scalable | Theoretically most expressive |

Both architectures reach **91.0% test accuracy**. GraphSAGE is selected for its simplicity. The end-to-end approach trades ~1.7% accuracy for a single-model deployment (vs. the two-stage GNN + XGBoost pipeline).

---

## 7. GPT-Style Transformer (Next-Event Prediction)

**Generative model** — decoder-only transformer for predicting and generating customer journeys.

### Architecture

```
Token Embedding (155 vocab → 256-d) + Learned Positional Encoding
    → 4× Transformer Decoder Blocks (causal 8-head attention, FFN 1024)
    → Output Projection (LM Head, weight-tied with embedding)
    → 155-vocab logits
```

**Parameters:** 3,215,616 | **Training:** Causal language modeling (next-token prediction)

### Results (28.6K test sequences)

| Metric | Value |
|--------|-------|
| **Accuracy@1** | **93.4%** |
| Accuracy@3 | 94.7% |
| Accuracy@5 | 95.9% |
| Accuracy@10 | 96.7% |
| **Perplexity** | **19.44** |
| **MRR** | **0.944** |

### Next-Event Prediction

```python
predictions = predict_next_events(
    model, tokenizer,
    ['ViewCreditCardRates', 'CreditCardBenefits'],
    top_k=5
)
```

### Autoregressive Sequence Generation

```python
generate_sequence(
    model, tokenizer,
    start_events=['ViewMortgage'],
    max_events=10, temperature=0.8, top_k=10
)
```

**Use cases:** Simulate customer journeys for testing, generate training data for downstream models, identify likely next-best-action for real-time personalization.

---

## Visualizations

The toolkit includes interactive visualization tools:

- **Sankey / Alluvial diagrams** — Visualize user journey flows for specific outcomes (e.g., "ApplyMortgage") showing the last N steps of each sequence
- **Event Flow Graph** — Force-directed graph with 147 nodes, 629 edges, configurable transition probability filters, gravity, and repulsion
- **Transition Matrix** — Interactive heatmap showing joint and conditional transition probabilities between events with Laplacian smoothing

---

## Key Notes

- **NPATH dependency** — All models depend on running NPATH in Vantage for training and/or inference, except Naïve Bayes.
- **No pretrained models needed** — Techniques 1–7 do not require pretrained models from HuggingFace. Models can be trained from scratch on customer data.
- **Regulatory friendliness** — Naïve Bayes, Markov Chains, and HMMs run entirely in-database on Teradata Vantage. Naïve Bayes and Markov Chains are white-box explainable models, making them most suitable for regulated environments. HMMs provide latent state interpretability through emission analysis.
- **GPU training** — Models 4–7 should be trained with GPU access (PyTorch notebooks). Teradata AI Factory simplifies this.
- **Timestamps as features** — Time spent between events can be added as additional features for advanced model training (approaches 4–6).
- **Customizable notebooks** — All notebooks work with the same input schema and can be adapted for customer data.

---

## Getting Started

### Prerequisites

- Teradata Vantage 24+ (for in-database models)
- Python 3.8+
- PyTorch 1.12+
- PyTorch Geometric (for GNN models)
- XGBoost (for two-stage pipeline)
- `teradataml` (for Vantage connectivity)

### Installation

```bash
pip install torch torch-geometric xgboost teradataml tokenizers
```

---

## Acknowledgments

- **Karthik Guruswamy** — Financial Services AI Strategy Lead
- **Gary Class** — Business context / POC opportunity
- **Manish Andhy** — Business context / POC opportunity

---

*© 2024 Teradata. All rights reserved. Internal use only.*
