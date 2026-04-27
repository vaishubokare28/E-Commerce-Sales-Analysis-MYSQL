-- Most Popular Payment Method

SELECT
    payment_type,
    COUNT(*)                     AS total_transactions,
    ROUND(SUM(payment_value), 2) AS total_value
FROM olist_order_payments_dataset
GROUP BY payment_type
ORDER BY total_transactions DESC;