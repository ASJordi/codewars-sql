SELECT p.*, c.name AS company_name
FROM products p
INNER JOIN companies c ON p.company_id = c.id;
