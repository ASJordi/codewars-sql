SELECT
  j.job_title AS job_title,
  ROUND(AVG(j.salary), 2)::float AS average_salary,
  COUNT(p.id) AS total_people,
  ROUND(SUM(j.salary), 2)::float AS total_salary
FROM job j
INNER JOIN people p ON j.people_id = p.id
GROUP BY j.job_title
ORDER BY average_salary DESC;
