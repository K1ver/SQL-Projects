SELECT pe.name, m.pizza_name, m.price, (m.price - (m.price / 100 * discount))::float as discount_price, pz.name as pizzeria_name
FROM person_discounts pd
JOIN person pe ON pd.person_id = pe.id
JOIN pizzeria pz ON pz.id = pd.pizzeria_id
JOIN menu m ON pz.id = m.pizzeria_id
ORDER BY 1,2;