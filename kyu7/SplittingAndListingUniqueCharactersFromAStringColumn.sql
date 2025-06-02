SELECT
  product_id,
  REGEXP_SPLIT_TO_TABLE(features, '') AS feature
FROM products ORDER BY 1;
