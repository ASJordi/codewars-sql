SELECT 'Rejected' AS status_group,
  (SELECT COUNT(*) FROM applications WHERE application_status <= 5) AS application_num
UNION ALL
SELECT 'Approved' AS status_group,
  (SELECT COUNT(*) FROM applications WHERE application_status > 5) AS application_num
