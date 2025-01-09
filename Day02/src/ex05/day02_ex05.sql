WITH female(name) AS (
	SELECT name
	FROM person
	WHERE age > 25 AND gender = 'female'
	ORDER BY name
)

SELECT names
FROM female