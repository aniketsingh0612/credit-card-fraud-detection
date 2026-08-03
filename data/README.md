<div align="center">

# Data Folder

### Raw and Processed Transaction Data

</div>

---

## Purpose

This folder contains the datasets used for the credit card fraud analytics project.

The data is organized to separate original source data from cleaned analysis-ready data.

## Folder Structure

```text
data/
├── raw/
│   └── credit_card_transactions_raw.csv
└── processed/
```

## Usage

- `raw/` contains the original transaction dataset.
- `processed/` will contain cleaned datasets created after data preparation.
- Raw data should remain unchanged to preserve the original source file.

## Why This Matters

Separating raw and processed data shows a professional analytics workflow and makes the project easier to review, reproduce, and explain in interviews.