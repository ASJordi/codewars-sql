SELECT
  LENGTH(name) AS id,
  LENGTH(legs::TEXT) AS name,
  LENGTH(arms::TEXT) AS legs,
  LENGTH(characteristics) AS arms,
  LENGTH(id::TEXT) AS characteristics
FROM monsters;
