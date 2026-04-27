-- Repeat Customers

SELECT
    COUNT(*) AS repeat_customers
FROM (
    SELECT
        c.customer_unique_id,
        COUNT(o.order_id) AS order_count
    FROM olist_customers_dataset c
    JOIN olist_orders_dataset o ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
    HAVING order_count > 1
) AS repeat_buyers;