SELECT p.name, COUNT(DISTINCT v.country_id) AS countries_visited
FROM people p
LEFT JOIN visits v ON p.id = v.person_id
GROUP BY p.name
ORDER BY countries_visited DESC, p.name ASC;
