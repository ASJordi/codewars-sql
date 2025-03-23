SELECT s, SUBSTRING(s FROM 2 FOR LENGTH(s) - 2) AS res
FROM removechar;
