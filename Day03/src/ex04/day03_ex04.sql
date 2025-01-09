(SELECT pz.name as pizzeria_name
 FROM pizzeria as pz
 JOIN menu as m ON pz.id = m.pizzeria_id
 JOIN person_order as po ON m.id = po.menu_id
 JOIN person as pe ON po.person_id = pe.id
 WHERE pe.gender = 'male'
 EXCEPT
 SELECT pz.name as pizzeria_name
 FROM pizzeria as pz
 JOIN menu as m ON pz.id = m.pizzeria_id
 JOIN person_order as po ON m.id = po.menu_id
 JOIN person as pe ON po.person_id = pe.id
 WHERE pe.gender = 'female')
UNION
(SELECT pz.name as pizzeria_name
 FROM pizzeria as pz
 JOIN menu as m ON pz.id = m.pizzeria_id
 JOIN person_order as po ON m.id = po.menu_id
 JOIN person as pe ON po.person_id = pe.id
 WHERE pe.gender = 'female'
 EXCEPT
 SELECT pz.name as pizzeria_name
 FROM pizzeria as pz
 JOIN menu as m ON pz.id = m.pizzeria_id
 JOIN person_order as po ON m.id = po.menu_id
 JOIN person as pe ON po.person_id = pe.id
 WHERE pe.gender = 'male')