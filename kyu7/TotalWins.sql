SELECT f.name AS name, SUM(won) AS won, SUM(lost) AS lost
FROM fighters f
INNER JOIN winning_moves w ON f.move_id = w.id
WHERE w.move NOT IN ('Hadoken', 'Shouoken', 'Kikoken')
GROUP BY f.name
ORDER BY won DESC
LIMIT 6;
