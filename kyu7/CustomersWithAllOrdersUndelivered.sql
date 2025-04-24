SELECT DISTINCT customer_id
FROM orders
WHERE customer_id NOT IN (
    SELECT DISTINCT customer_id
    FROM orders
    WHERE delivery_date IS NOT NULL
)
ORDER BY customer_id DESC;
