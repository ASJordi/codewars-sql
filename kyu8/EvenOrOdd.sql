SELECT number,
  CASE
    WHEN MOD(number, 2) = 0 THEN 'Even'
    ELSE 'Odd'
  END AS is_even
FROM numbers;
