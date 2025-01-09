WITH count_orders AS (
    SELECT pz.name AS name, COUNT(*) AS co
    FROM person_order po
    JOIN menu m ON m.id = po.menu_id
    JOIN pizzeria pz ON pz.id = m.pizzeria_id
    GROUP BY pz.name
),
count_visits AS (
    SELECT pz.name AS name, COUNT(*) AS cv
    FROM person_visits pv
    JOIN pizzeria pz ON pz.id = pv.pizzeria_id
    GROUP BY pz.name
)

SELECT count_orders.name, COALESCE(count_orders.co,0) + COALESCE(count_visits.cv,0) AS total_count
FROM count_orders
LEFT JOIN count_visits ON count_orders.name = count_visits.name
ORDER BY total_count DESC, name;