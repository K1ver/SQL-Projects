WITH RECURSIVE way AS(
SELECT point1 as path, point1, point2, cost
FROM roads
WHERE roads.point1 = 'a'
UNION
SELECT CONCAT(way.path, ',', roads.point1) AS path,
       roads.point1,
       roads.point2,
       way.cost + roads.cost
FROM way
JOIN roads ON way.point2 = roads.point1
    WHERE path NOT LIKE CONCAT('%', roads.point1, '%')
)

SELECT way.cost as total_cost, CONCAT('{',way.path, ',a}') AS tour
FROM way
WHERE LENGTH(way.path) = 7 AND point2 LIKE 'a' AND
      (cost = (SELECT MIN(cost) FROM way WHERE LENGTH(way.path) = 7 AND point2 LIKE 'a')
      OR cost = (SELECT MAX(cost) FROM way WHERE LENGTH(way.path) = 7 AND point2 LIKE 'a'))
ORDER BY total_cost, tour