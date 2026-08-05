-- ============================================================
-- Fraud Summary Metrics
-- Project: Credit Card Fraud Analytics
-- Purpose: Calculate business-friendly fraud metrics for
--          reporting and monitoring.
-- ============================================================

-- 1. Overall transaction and fraud summary
SELECT
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN fraud_status = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
    ROUND(
        100.0 * SUM(CASE WHEN fraud_status = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS fraud_rate_percentage,
    SUM(transaction_amount) AS total_transaction_amount,
    SUM(CASE WHEN fraud_status = 1 THEN transaction_amount ELSE 0 END) AS fraud_transaction_amount
FROM credit_card_transactions;


-- 2. Average transaction amount by fraud status
SELECT
    fraud_status,
    COUNT(*) AS transaction_count,
    ROUND(AVG(transaction_amount), 2) AS average_transaction_amount,
    ROUND(MIN(transaction_amount), 2) AS minimum_transaction_amount,
    ROUND(MAX(transaction_amount), 2) AS maximum_transaction_amount
FROM credit_card_transactions
GROUP BY fraud_status
ORDER BY fraud_status;


-- 3. Fraud amount share
SELECT
    ROUND(
        100.0 * SUM(CASE WHEN fraud_status = 1 THEN transaction_amount ELSE 0 END)
        / SUM(transaction_amount),
        2
    ) AS fraud_amount_share_percentage
FROM credit_card_transactions;