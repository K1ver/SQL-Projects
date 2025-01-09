CREATE VIEW v_price_with_discount AS
SELECT pe.name, m.pizza_name, m.price, (m.price - m.price * 0.1)::int as discount_price
FROM person pe
	JOIN person_order po ON pe.id = po.person_id
	JOIN menu m ON po.menu_id = m.id
ORDER BY pe.name, m.pizza_name;

-- CHECK VIEW

SELECT * FROM v_price_with_discount;

-- DELETE VIEW

DROP VIEW v_price_with_discount;