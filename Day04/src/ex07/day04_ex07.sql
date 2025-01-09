INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
SELECT (SELECT MAX(id) FROM person_visits) + 1 as id,
	   (SELECT id FROM person WHERE name = 'Dmitriy') as person_id,
	   ((SELECT pizzeria_id FROM menu WHERE price < 800)
	   EXCEPT
	   (SELECT p.id FROM pizzeria p JOIN mv_dmitriy_visits_and_eats mdvae ON p.name = mdvae.pizzeria_name)
	   LIMIT 1),
	   '2022-01-08';

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

-- CHECK VIEW AND TABLE
SELECT *
FROM mv_dmitriy_visits_and_eats;

SELECT *
FROM person_visits;

-- DELETE VIEW

DROP MATERIALIZED VIEW mv_dmitriy_visits_and_eats;