SELECT menu.id as menu_id
FROM menu
EXCEPT ALL
SELECT person_order.menu_id
FROM person_order
ORDER BY menu_id