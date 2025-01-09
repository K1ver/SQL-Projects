WITH order_p(menu_id) AS (
	SELECT menu_id
	FROM person_order
	INNER JOIN (SELECT name, id FROM person WHERE name = 'Anna' OR name = 'Denis') as p
	ON p.id = person_order.person_id
)

SELECT menu.pizza_name, pizzeria.name as pizzerria_name
FROM menu
INNER JOIN order_p ON order_p.menu_id = menu.id
INNER JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY menu.pizza_name, pizzerria_name