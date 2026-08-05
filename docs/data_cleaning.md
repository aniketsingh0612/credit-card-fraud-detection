<div align="center">

# Data Cleaning

### Preparing Transaction Data for Reliable Analysis

![Python](https://img.shields.io/badge/Python-Data%20Cleaning-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Preparation-150458?style=for-the-badge&logo=pandas)
![Data Quality](https://img.shields.io/badge/Data%20Quality-Validation-1565C0?style=for-the-badge)
![Analytics Ready](https://img.shields.io/badge/Analytics-Ready-2E7D32?style=for-the-badge)

</div>

---

## Purpose

This document explains the data cleaning approach used in the credit card fraud analytics project.

The goal of data cleaning is to make the transaction dataset reliable, consistent, and ready for exploratory analysis, metric calculation, and visualization.

## Cleaning Steps

| Step | Action | Purpose |
|---|---|---|
| 1 | Loaded the raw transaction dataset | Understand available columns and records |
| 2 | Reviewed column names and data types | Confirm fields are suitable for analysis |
| 3 | Checked missing values | Identify incomplete records |
| 4 | Checked duplicate records | Avoid double-counting transactions |
| 5 | Reviewed transaction amount values | Identify unusual or invalid amounts |
| 6 | Reviewed fraud status values | Confirm fraud labels are consistent |
| 7 | Prepared cleaned data for analysis | Support reliable EDA and reporting |

## Key Checks Performed

- Dataset shape review
- Column name review
- Data type inspection
- Missing value count
- Duplicate record check
- Transaction amount summary
- Fraud status distribution
- Device trust score review

## Example Pandas Checks

```python
df.shape
df.info()
df.isnull().sum()
df.duplicated().sum()
df.describe()
df['fraud_status'].value_counts()