SELECT id,
  CASE
    WHEN (MOD(n, x) = 0) AND (MOD(n, y) = 0) THEN true
    ELSE false
  END AS res
FROM kata;
