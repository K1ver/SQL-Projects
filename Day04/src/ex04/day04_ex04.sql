CREATE VIEW R AS
SELECT person_id
FROM person_visits
WHERE visit_date = '2022-01-02';

CREATE VIEW S AS
SELECT person_id
FROM person_visits
WHERE visit_date = '2022-01-06';

CREATE VIEW v_symmetric_union AS 
	(SELECT person_id FROM R EXCEPT SELECT person_id FROM S)
	UNION
	(SELECT person_id FROM S EXCEPT SELECT person_id FROM R)
	ORDER BY person_id;

-- CHECK VIEW

SELECT * FROM v_symmetric_union;

-- DELETE VIEW

DROP VIEW R, S, v_symmetric_union;