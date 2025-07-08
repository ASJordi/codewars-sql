CREATE VIEW members_approved_for_voucher AS
    SELECT
        m.id,
        m.name,
        m.email,
        SUM(p.price) AS total_spending
    FROM members m
    JOIN sales s ON m.id = s.member_id
    JOIN products p ON s.product_id = p.id
    JOIN departments d ON s.department_id = d.id
    WHERE
        d.id IN (
            SELECT s2.department_id
            FROM sales s2
            JOIN products p2 ON s2.product_id = p2.id
            GROUP BY s2.department_id
            HAVING SUM(p2.price) > 10000
        )
    GROUP BY
        m.id, m.name, m.email
    HAVING
        SUM(p.price) > 1000
    ORDER BY
        m.id;

SELECT
    id,
    name,
    email,
    total_spending
FROM members_approved_for_voucher;
