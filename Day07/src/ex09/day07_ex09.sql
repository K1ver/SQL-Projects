SELECT p.address, 
	ROUND(MAX(p.age) - (MIN(p.age)::numeric / MAX(p.age)), 2) as formula, 
	ROUND(AVG(p.age),2) as average,
	ROUND(MAX(p.age) - (MIN(p.age)::numeric / MAX(p.age)), 2) > ROUND(AVG(p.age),2) as comparison
FROM person p
GROUP BY p.address
ORDER BY p.address