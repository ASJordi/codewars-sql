SELECT
  created_at::date AS day,
  description,
  COUNT(*) AS count
FROM events
WHERE name = 'trained'
GROUP BY day, description
ORDER BY day;
