SELECT order_date, CONCAT(person.name, '(age:', person.age, ')') as person_information
FROM person_order NATURAL JOIN (SELECT id AS person_id, name, age FROM person) AS person
ORDER BY order_date ASC, person_information ASC