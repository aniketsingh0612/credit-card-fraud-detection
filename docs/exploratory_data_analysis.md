<div align="center">

# Exploratory Data Analysis

### Understanding Fraud Patterns Through Transaction Data

![EDA](https://img.shields.io/badge/EDA-Transaction%20Analysis-1565C0?style=for-the-badge)
![Python](https://img.shields.io/badge/Python-Visualization-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Exploration-150458?style=for-the-badge&logo=pandas)
![Insights](https://img.shields.io/badge/Business-Insights-2E7D32?style=for-the-badge)

</div>

---

## Purpose

This document explains the exploratory data analysis performed in the credit card fraud analytics project.

The goal of EDA is to understand transaction behavior, compare fraud and non-fraud records, and identify patterns that are useful for business reporting.

## EDA Focus Areas

| Area | Analysis Purpose |
|---|---|
| Fraud distribution | Understand the share of fraud and non-fraud transactions |
| Transaction amount | Review amount patterns across transactions |
| Transaction hour | Identify time-based transaction behavior |
| Transaction location | Compare fraud activity across locations |
| Device trust score | Understand how device trust relates to fraud |
| Summary statistics | Review central tendency, spread, and unusual values |

## Key Questions Explored

- What does the fraud distribution look like?
- Are fraud transactions concentrated in specific transaction hours?
- Do certain locations show higher fraud activity?
- How does transaction amount vary between fraud and non-fraud records?
- How does device trust score differ across transaction types?

## Visualizations Created

- Fraud class distribution
- Transaction amount distribution
- Transactions by hour
- Fraud by transaction location
- Device trust score distribution
- EDA summary chart

## Example Analysis Code

```python
df['fraud_status'].value_counts()
df.groupby('transaction_hour')['fraud_status'].mean()
df.groupby('transaction_location')['fraud_status'].mean()
df.groupby('fraud_status')['transaction_amount'].mean()
df.groupby('fraud_status')['device_trust_score'].mean()