SELECT order_date as action_date,
	(SELECT name FROM person WHERE id = person_order.person_id) as person_name 
FROM person_order
INTERSECT
SELECT visit_date,
	(SELECT name FROM person WHERE id = person_visits.person_id)
FROM person_visits
ORDER BY action_date ASC, person_name DESC