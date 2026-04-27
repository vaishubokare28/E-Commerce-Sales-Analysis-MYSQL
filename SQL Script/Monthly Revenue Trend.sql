-- Monthly Revenue Trend

SELECT
    YEAR(o.order_purchase_timestamp)  AS year,
    MONTH(o.order_purchase_timestamp) AS month,
    ROUND(SUM(p.payment_value), 2)    AS monthly_revenue
FROM olist_orders_dataset o
JOIN olist_order_payments_dataset p ON o.order_id = p.order_id
GROUP BY year, month
ORDER BY year, month;