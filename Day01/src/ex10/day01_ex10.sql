SELECT person.name as person_name, menu.pizza_name as pizza_name, pizzeria.name as pizzeria_name   
FROM person
JOIN person_visits ON person.id = person_visits.id
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
JOIN person_order ON person.id = person_order.person_id
JOIN menu ON menu.id = person_order.menu_id
ORDER BY person_name, pizza_name, pizzeria_name