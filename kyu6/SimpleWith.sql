WITH special_sales AS (
  SELECT *
  FROM sales
  WHERE price > 90.00
)

SELECT d.*
FROM departments d
WHERE d.id IN (SELECT department_id FROM special_sales);
