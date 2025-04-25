SELECT
    p.pokemon_name AS pokemon_name,
    (p.str * m.multiplier) AS modifiedStrength,
    m.element AS element
FROM pokemon p
INNER JOIN multipliers m ON p.element_id = m.id
WHERE (p.str * m.multiplier) >= 40
ORDER BY modifiedStrength DESC;
