SELECT DISTINCT SPLIT_PART(sub_path, '/', 1) AS subdirectory
FROM (
    SELECT REGEXP_REPLACE(path, '^/home/user/pictures/?', '') AS sub_path
    FROM directories
    WHERE path LIKE '/home/user/pictures/%'
) AS subquery
WHERE sub_path != ''
ORDER BY subdirectory;

