SELECT
  n,
  CASE
    WHEN n > 0 THEN ((5 * (n * n)) - (5 * n) + 2 ) / 2
    ELSE -1
  END AS res
FROM pentagonal;
