CREATE VIEW v_generated_dates AS
SELECT days::date AS generated_date
FROM generate_series('2022-01-01'::timestamp, '2022-01-31'::timestamp, '1 day'::interval) as days;

-- CHECK VIEW

SELECT * FROM v_generated_dates;

-- DELETE VIEW

DROP VIEW v_generated_dates;