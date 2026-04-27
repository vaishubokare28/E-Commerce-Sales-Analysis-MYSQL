-- Review Score Distribution

SELECT
    review_score,
    COUNT(*) AS total_reviews
FROM olist_order_reviews_dataset
GROUP BY review_score
ORDER BY review_score DESC;