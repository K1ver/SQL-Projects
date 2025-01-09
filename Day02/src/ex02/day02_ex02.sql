SELECT COALESCE(person.name, '-') as person_name, person_visits.visit_date as visit_date, COALESCE(pizzeria.name, '-') as pizzeria_name
FROM (SELECT *
	 FROM person_visits
	 WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') as person_visits
FULL JOIN person ON person.id = person_visits.person_id
FULL JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
ORDER BY person_name, visit_date, pizzeria_name
