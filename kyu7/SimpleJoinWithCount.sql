SELECT p.*, COUNT(t.id) AS toy_count
FROM people p
INNER JOIN toys t
ON p.id = t.people_id
GROUP BY p.id;
