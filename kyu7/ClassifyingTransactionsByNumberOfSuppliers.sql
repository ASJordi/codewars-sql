SELECT
    t.transaction_id,
    t.date,
    CASE
        WHEN COUNT(DISTINCT tc.supplier) > 1 THEN 'Several'
        ELSE MAX(tc.supplier)
    END AS supplier
FROM transaction t
JOIN transaction_content tc ON t.transaction_id = tc.transaction_id
GROUP BY t.transaction_id, t.date
ORDER BY t.transaction_id;
