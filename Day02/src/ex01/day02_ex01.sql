SELECT DISTINCT d.visit_date
FROM (SELECT visit_date FROM person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-10') as d
LEFT JOIN 
	(SELECT visit_date, person_id 
	 FROM person_visits
	 WHERE (person_id = 1 OR person_id = 2) AND visit_date BETWEEN '2022-01-01' AND '2022-01-10') as pv
	 ON pv.visit_date = d.visit_date
WHERE pv.person_id IS NULL
ORDER BY d.visit_date