SELECT
    SUBSTR(project, 1, commits) AS project,
    SUBSTR(address, LENGTH(address) - contributors + 1) AS address
FROM repositories;
