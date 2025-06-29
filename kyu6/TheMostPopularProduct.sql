SELECT
    p.id AS product_id,
    p.product_name,
    COUNT(o.product_id) AS count_orders
FROM products p
JOIN orders o ON p.id = o.product_id
GROUP BY p.id, p.product_name
HAVING
    COUNT(o.product_id) = (
        SELECT MAX(order_counts)
        FROM
            (
                SELECT COUNT(product_id) AS order_counts
                FROM orders
                GROUP BY product_id
            ) AS subquery
    )
ORDER BY p.id DESC;
