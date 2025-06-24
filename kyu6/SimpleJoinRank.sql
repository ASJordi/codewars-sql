SELECT
  p.id,
  p.name,
  COUNT(s.*) AS sale_count,
  RANK () OVER (
		ORDER BY p.id
	) sale_rank
FROM sales s
INNER JOIN people p ON s.people_id = p.id
GROUP BY p.id;
