SELECT str, (LENGTH(str) - LENGTH(REGEXP_REPLACE(str, '[aeiou]', '', 'g'))) AS res
FROM getcount;
