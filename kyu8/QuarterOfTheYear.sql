SELECT month,
  CASE
    WHEN month < 4 THEN 1
    WHEN month < 7 THEN 2
    WHEN month < 10 THEN 3
    WHEN month < 13 THEN 4
    ELSE -1
  END AS res
FROM quarterof;
