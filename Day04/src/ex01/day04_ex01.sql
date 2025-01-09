SELECT m.name
FROM v_persons_male as m
UNION ALL
SELECT f.name
FROM v_persons_female as f
ORDER BY name