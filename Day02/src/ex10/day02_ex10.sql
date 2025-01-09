WITH person_pairs AS (
    SELECT p1.name as person_name1, p2.name as person_name2, p1.address as common_address
    FROM person p1
    JOIN person p2 ON p1.address = p2.address AND p1.id < p2.id
)
SELECT DISTINCT person_name1, person_name2, common_address
FROM person_pairs
ORDER BY person_name1, person_name2, common_address