SET ENABLE_SEQSCAN = OFF;

EXPLAIN ANALYSE
SELECT m.pizza_name, pz.name as pizzeria_name 
FROM menu m
JOIN pizzeria pz ON m.pizzeria_id = pz.id;