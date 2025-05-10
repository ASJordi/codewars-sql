SELECT year, ((year % 4 = 0) AND (year % 100 != 0 OR year % 400 = 0)) AS is_leap
FROM years
ORDER BY year;
