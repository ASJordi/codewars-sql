SELECT film_id, title, special_features
FROM film
WHERE NOT ('Commentaries' = ANY(special_features)) AND
    (
        ('Deleted Scenes' = ANY(special_features) AND NOT ('Behind the Scenes' = ANY(special_features))) OR
        ('Behind the Scenes' = ANY(special_features) AND NOT ('Deleted Scenes' = ANY(special_features)))
    )
ORDER by title, film_id;
