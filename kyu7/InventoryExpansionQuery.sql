SELECT p.*
FROM products p, LATERAL GENERATE_SERIES(1, p.quantity_in_stock)
ORDER BY p.product_id DESC;
