CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT pz.name as pizzeria_name
FROM person_visits pv
	JOIN person pe ON pv.person_id = pe.id
	JOIN pizzeria pz ON pz.id = pv.pizzeria_id
	JOIN menu m ON pz.id = m.pizzeria_id
WHERE pe.name = 'Dmitriy' AND pv.visit_date = '2022-01-08' AND m.price < 800;

-- CHECK VIEW

SELECT *
FROM mv_dmitriy_visits_and_eats;

-- DELETE VIEW

DROP MATERIALIZED VIEW mv_dmitriy_visits_and_eats;