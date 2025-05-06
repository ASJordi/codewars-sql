CREATE TABLE dishes AS
      SELECT id AS restaurant_id, UNNEST(string_to_array(menu, ',')) AS dish
      FROM restaurants;

ALTER TABLE restaurants
DROP COLUMN menu;
