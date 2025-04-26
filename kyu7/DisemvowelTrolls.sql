SELECT str, REGEXP_REPLACE(str, '[aeiouAEIOU]', '', 'g') AS res
FROM disemvowel;
