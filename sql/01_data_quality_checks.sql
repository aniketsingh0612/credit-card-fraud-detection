-- ============================================================
-- Data Quality Checks
-- Project: Credit Card Fraud Analytics
-- Purpose: Review dataset completeness, duplicate records,
-- and basic data quality before analysis.
-- =========================================

-- 1. Total number of records
SELECT
    COUNT(*) AS total_records
FROM credit_card_transactions;


-- 2. Check missing values in key columns
SELECT
    SUM(CASE WHEN transaction_amount IS NULL THEN 1 ELSE 0 END) AS missing_transaction_amount,
    SUM(CASE WHEN transaction_hour IS NULL THEN 1 ELSE 0 END) AS missing_transaction_hour,
    SUM(CASE WHEN transaction_location IS NULL THEN 1 ELSE 0 END) AS missing_transaction_location,
    SUM(CASE WHEN device_trust_score IS NULL THEN 1 ELSE 0 END) AS missing_device_trust_score,
    SUM(CASE WHEN fraud_status IS NULL THEN 1 ELSE 0 END) AS missing_fraud_status
FROM credit_card_transactions;


-- 3. Check duplicate transaction records
SELECT
    transaction_id,
    COUNT(*) AS duplicate_count
FROM credit_card_transactions
GROUP BY transaction_id
HAVING COUNT(*) > 1;


-- 4. Review fraud status values
SELECT
    fraud_status,
    COUNT(*) AS transaction_count
FROM credit_card_transactions
GROUP BY fraud_status
ORDER BY transaction_count DESC;


-- 5. Check transaction amount range
SELECT
    MIN(transaction_amount) AS minimum_transaction_amount,
    MAX(transaction_amount) AS maximum_transaction_amount,
    AVG(transaction_amount) AS average_transaction_amount
FROM credit_card_transactions;