WITH date_list(visit_date) AS (
	SELECT visit_date
	FROM person_visits
	WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-10'
)
SELECT DISTINCT date_list.visit_date
FROM date_list
LEFT JOIN 
	(SELECT visit_date, person_id 
	 FROM person_visits
	 WHERE (person_id = 1 OR person_id = 2) AND visit_date BETWEEN '2022-01-01' AND '2022-01-10') as pv
	 ON pv.visit_date = date_list.visit_date
WHERE pv.person_id IS NULL
ORDER BY date_list.visit_date