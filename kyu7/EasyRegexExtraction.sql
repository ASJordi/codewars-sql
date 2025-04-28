SELECT name, greeting, (REGEXP_MATCHES(greeting, '#([0-9]+)'))[1] AS user_id
FROM greetings;
