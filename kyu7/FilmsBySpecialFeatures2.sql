SELECT film_id, title, special_features
FROM film
WHERE special_features = ARRAY['Trailers', 'Deleted Scenes'] OR special_features = ARRAY['Deleted Scenes', 'Trailers']
ORDER by title, film_id;
