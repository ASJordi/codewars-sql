SELECT
  s.title,
  CASE
    WHEN title LIKE '%+%' THEN split_part(title, '+', length(regexp_replace(title, '[^+]', '', 'g')) + 1)
    ELSE NULL
  END AS last_part
FROM split_titles s
ORDER BY id DESC;

