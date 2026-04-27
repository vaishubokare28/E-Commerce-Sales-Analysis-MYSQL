-- Average Delivery Time (in days)

SELECT
    ROUND(AVG(DATEDIFF(order_delivered_customer_date,
                       order_purchase_timestamp)), 1) AS avg_delivery_days
FROM olist_orders_dataset
WHERE order_status = 'delivered'
  AND order_delivered_customer_date IS NOT NULL;