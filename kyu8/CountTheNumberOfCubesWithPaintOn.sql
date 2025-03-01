SELECT n,
  (
    CASE
      WHEN n = 0 THEN 1
      WHEN n = 1 THEN 8
      ELSE (6 * n * n + 2)
    END
  ) AS res
FROM squares;
