SELECT n, (
        SELECT SUM(s)
        FROM generate_series(1, n) AS s
    ) AS res
FROM kata;
