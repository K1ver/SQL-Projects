SELECT DISTINCT name
FROM person p
JOIN person_visits pv ON p.id = pv.person_id
ORDER BY name;