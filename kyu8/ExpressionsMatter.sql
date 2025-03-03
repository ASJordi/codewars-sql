SELECT GREATEST(GREATEST(a + b + c, a * b * c), GREATEST((a + b) * c, a * (b + c))) AS res
FROM expression_matter;
