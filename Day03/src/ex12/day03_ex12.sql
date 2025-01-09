INSERT INTO person_order(id, person_id, menu_id, order_date)
SELECT (SELECT MAX(id) FROM person_order) + gs AS id,
		pe.id AS person_id,
		(SELECT id FROM menu WHERE pizza_name = 'greek pizza') AS menu_id,
		'2022-02-25' AS order_date
FROM person as pe
	JOIN generate_series(1, (SELECT COUNT(*) FROM person_order)) AS gs ON gs = pe.id