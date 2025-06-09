WITH cte AS (
  SELECT *
  FROM employees
  WHERE team='backend'
  ORDER BY birth_date OFFSET 2
)

SELECT * FROM cte WHERE employee_id NOT IN (SELECT employee_id FROM cte OFFSET 1)
