WITH count_visit AS (
    SELECT p.name AS name, COUNT(*) AS cv
    FROM person_visits pv
    JOIN person p ON p.id = pv.person_id
    GROUP BY p.name
)

SELECT name, cv as count_visits
FROM count_visit
GROUP BY cv, name
HAVING cv > 3;