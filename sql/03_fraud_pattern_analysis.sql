-- ============================================================
-- Fraud Pattern Analysis
-- Project: Credit Card Fraud Analytics
-- Purpose: Identify fraud patterns across time, location,
--          transaction amount, and device trust score.
-- ============================================================

-- 1. Fraud rate by transaction hour
SELECT
    transaction_hour,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN fraud_status = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
    ROUND(
        100.0 * SUM(CASE WHEN fraud_status = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS fraud_rate_percentage
FROM credit_card_transactions
GROUP BY transaction_hour
ORDER BY transaction_hour;


-- 2. Fraud rate by transaction location
SELECT
    transaction_location,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN fraud_status = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
    ROUND(
        100.0 * SUM(CASE WHEN fraud_status = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS fraud_rate_percentage
FROM credit_card_transactions
GROUP BY transaction_location
ORDER BY fraud_rate_percentage DESC;


-- 3. Fraud analysis by device trust score range
SELECT
    CASE
        WHEN device_trust_score < 30 THEN 'Low Trust'
        WHEN device_trust_score BETWEEN 30 AND 69 THEN 'Medium Trust'
        ELSE 'High Trust'
    END AS device_trust_category,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN fraud_status = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
    ROUND(
        100.0 * SUM(CASE WHEN fraud_status = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS fraud_rate_percentage
FROM credit_card_transactions
GROUP BY
    CASE
        WHEN device_trust_score < 30 THEN 'Low Trust'
        WHEN device_trust_score BETWEEN 30 AND 69 THEN 'Medium Trust'
        ELSE 'High Trust'
    END
ORDER BY fraud_rate_percentage DESC;


-- 4. Fraud analysis by transaction amount range
SELECT
    CASE
        WHEN transaction_amount < 100 THEN 'Below 100'
        WHEN transaction_amount BETWEEN 100 AND 499 THEN '100 to 499'
        WHEN transaction_amount BETWEEN 500 AND 999 THEN '500 to 999'
        ELSE '1000 and Above'
    END AS transaction_amount_range,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN fraud_status = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
    ROUND(
        100.0 * SUM(CASE WHEN fraud_status = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS fraud_rate_percentage
FROM credit_card_transactions
GROUP BY
    CASE
        WHEN transaction_amount < 100 THEN 'Below 100'
        WHEN transaction_amount BETWEEN 100 AND 499 THEN '100 to 499'
        WHEN transaction_amount BETWEEN 500 AND 999 THEN '500 to 999'
        ELSE '1000 and Above'
    END
ORDER BY fraud_rate_percentage DESC;