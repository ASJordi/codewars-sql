SELECT flower1, flower2,
  CASE
    WHEN (MOD(flower1, 2) = 0) AND (MOD(flower2, 2) != 0) THEN true
    WHEN (MOD(flower2, 2) = 0) AND (MOD(flower1, 2) != 0) THEN true
    ELSE false
  END AS res
FROM love;
