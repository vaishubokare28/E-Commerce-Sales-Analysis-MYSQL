-- Top 10 Customers by Total Spending

SELECT
    c.customer_unique_id,
    c.customer_city,
    c.customer_state,
    COUNT(DISTINCT o.order_id)     AS total_orders,
    ROUND(SUM(p.payment_value), 2) AS total_spent
FROM olist_customers_dataset c
JOIN olist_orders_dataset         o ON c.customer_id = o.customer_id
JOIN olist_order_payments_dataset p ON o.order_id    = p.order_id
GROUP BY c.customer_unique_id, c.customer_city, c.customer_state
ORDER BY total_spent DESC
LIMIT 10;