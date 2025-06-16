WITH RECURSIVE FibonacciSequence (a, b) AS (
  SELECT 0::bigint, 1::bigint
  UNION ALL
  SELECT
    b,
    a + b
  FROM FibonacciSequence
  WHERE a < (SELECT COALESCE(MAX(n), 1) FROM evenfib)
),

EvenFibNumbers AS (
  SELECT a AS fib
  FROM FibonacciSequence
  WHERE a % 2 = 0
)

SELECT DISTINCT
  inp.n,
  COALESCE(
    (SELECT SUM(efn.fib)
     FROM EvenFibNumbers efn
     WHERE efn.fib < inp.n), 0
  )::bigint AS res
FROM evenfib inp
ORDER BY inp.n ASC;
