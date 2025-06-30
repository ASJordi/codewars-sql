SELECT
  c.customer_id,
  c.email,
  COUNT(p.customer_id) AS payments_count,
  SUM(p.amount)::FLOAT AS total_amount
FROM customer c
INNER JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id
ORDER BY total_amount DESC
LIMIT 10;
