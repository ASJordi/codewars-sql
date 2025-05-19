WITH FirstPurchase AS (
    SELECT
        customer_id,
        MIN(date) AS first_purchase_date
    FROM customer_purchases
    GROUP BY customer_id
)
SELECT
    cp.date,
    COUNT(DISTINCT fp.customer_id) AS num_new_customers
FROM customer_purchases cp
JOIN FirstPurchase fp ON cp.customer_id = fp.customer_id AND cp.date = fp.first_purchase_date
GROUP BY cp.date
ORDER BY cp.date;
