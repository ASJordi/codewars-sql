WITH ProductOrderCounts AS (
    SELECT product_id, COUNT(*) AS product_count
    FROM orders
    GROUP BY product_id
), TotalOrderCount AS (
    SELECT COUNT(*) AS total_count
    FROM orders
)

SELECT
    poc.product_id,
    poc.product_count AS count,
    ROUND((poc.product_count::numeric / toc.total_count) * 100, 2) AS ratio
FROM ProductOrderCounts poc, TotalOrderCount toc
ORDER BY poc.product_id;
