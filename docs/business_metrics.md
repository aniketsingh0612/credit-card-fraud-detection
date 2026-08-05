<div align="center">

# Business Metrics

### Fraud Summary Metrics for Operational Reporting

![Metrics](https://img.shields.io/badge/Business-Metrics-1565C0?style=for-the-badge)
![Fraud Rate](https://img.shields.io/badge/Fraud%20Rate-Analysis-6A1B9A?style=for-the-badge)
![Reporting](https://img.shields.io/badge/Operational-Reporting-2E7D32?style=for-the-badge)
![SQL](https://img.shields.io/badge/SQL-Metric%20Queries-4479A1?style=for-the-badge)

</div>

---

## Purpose

This document explains the fraud-related business metrics used in the credit card fraud analytics project.

The goal is to summarize transaction behavior in a way that supports business reporting, fraud monitoring, and operational review.

## Core Metrics

| Metric | Description | Business Use |
|---|---|---|
| Total Transactions | Count of all transaction records | Measures transaction volume |
| Fraud Transactions | Count of transactions marked as fraud | Measures fraud occurrence |
| Fraud Rate | Fraud transactions divided by total transactions | Shows overall fraud exposure |
| Total Transaction Amount | Sum of all transaction amounts | Measures total transaction value |
| Fraud Transaction Amount | Sum of transaction amount for fraud records | Estimates fraud-related value exposure |
| Average Transaction Amount | Average amount per transaction | Helps compare transaction behavior |
| Fraud by Hour | Fraud rate grouped by transaction hour | Identifies time-based fraud patterns |
| Fraud by Location | Fraud rate grouped by transaction location | Supports location-level monitoring |
| Device Trust Review | Fraud comparison by device trust score | Reviews device-level risk signals |

## Example Calculations

```text
Fraud Rate (%) = Fraud Transactions / Total Transactions * 100

Fraud Amount Share (%) = Fraud Transaction Amount / Total Transaction Amount * 100

Average Transaction Amount = Total Transaction Amount / Total Transactions