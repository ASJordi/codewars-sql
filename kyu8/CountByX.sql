SELECT x, n, ARRAY(SELECT GENERATE_SERIES(x, x * n, x)) AS res
FROM counter
ORDER BY x, n;
