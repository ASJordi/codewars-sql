SELECT distance_to_pump, mpg, fuel_left,
  CASE
    WHEN (mpg * fuel_left) >= distance_to_pump THEN true
    ELSE false
  END AS res
FROM zerofuel;
