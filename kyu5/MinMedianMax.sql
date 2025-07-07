SELECT
  MIN(score),
  PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY score) AS median,
  MAX(score)
FROM result;
