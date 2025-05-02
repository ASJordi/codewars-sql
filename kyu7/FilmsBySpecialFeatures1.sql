SELECT film_id, title, special_features
FROM film
WHERE 'Trailers' = ANY(special_features) AND 'Deleted Scenes' = ANY(special_features)
ORDER by title, film_id;
