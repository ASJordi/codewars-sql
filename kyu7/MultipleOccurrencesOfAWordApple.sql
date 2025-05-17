WITH messages_with_apple AS (
    SELECT
        id,
        message,
        POSITION(
            'apple' IN SUBSTRING(
                LOWER(message)
                FROM (POSITION('apple' IN LOWER(message)) + 5)
            )
        ) + POSITION('apple' IN LOWER(message)) + 4 AS second_occurrence_position
    FROM messages
    WHERE LOWER(message) LIKE '%apple%apple%'
)
SELECT
    id,
    message,
    second_occurrence_position
FROM messages_with_apple
ORDER BY id DESC;
