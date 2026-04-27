-- Total Revenue

SELECT ROUND(SUM(payment_value), 2) AS total_revenue
FROM olist_order_payments_dataset;
