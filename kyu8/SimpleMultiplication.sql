SELECT number,
  CASE
    WHEN MOD(number, 2) = 0 THEN number * 8
    ELSE number * 9
  END AS res
FROM multiplication;
