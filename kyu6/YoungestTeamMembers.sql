SELECT DISTINCT ON (team) *
FROM employees
ORDER BY team, birth_date DESC;
