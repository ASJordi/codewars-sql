SELECT CONCAT_WS(' ', INITCAP(firstname), INITCAP(lastname)) AS shortlist
FROM elves
WHERE firstname LIKE '%tegil%' OR lastname LIKE '%astar%';
