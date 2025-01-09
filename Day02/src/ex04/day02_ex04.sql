SELECT m.pizza_name, p.name as pizzeria_name, m.price
FROM 
	(SELECT pizzeria_id, pizza_name, price
	 FROM menu
	 WHERE pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza') as m
FULL JOIN pizzeria as p ON m.pizzeria_id = p.id
WHERE m.pizza_name IS NOT NULL
ORDER BY m.pizza_name, pizzeria_name