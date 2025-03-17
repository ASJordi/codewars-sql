SELECT name, country
FROM travelers
WHERE country NOT IN ('USA', 'Mexico', 'Canada');
