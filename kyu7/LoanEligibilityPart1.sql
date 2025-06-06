SELECT
    c.id AS customer_id,
    CASE
        WHEN c.age BETWEEN 18 AND 65
        AND (
            NOT EXISTS (
                SELECT 1
                FROM loans l
                WHERE l.customer_id = c.id
            )
            OR NOT EXISTS (
                SELECT 1
                FROM loans l
                WHERE l.customer_id = c.id AND l.loan_status = 'unpaid'
            )
        ) THEN 'loan can be given'
        ELSE 'loan cannot be given'
    END AS loan_eligibility
FROM customers c
WHERE c.id BETWEEN 1 AND 10
ORDER BY customer_id DESC;
