SELECT
  DATE(created_at) AS date,
  COUNT(*) AS count,
  SUM(COUNT(*)) OVER (ORDER BY DATE(created_at))::int AS total
FROM posts
GROUP BY date
ORDER BY date;
