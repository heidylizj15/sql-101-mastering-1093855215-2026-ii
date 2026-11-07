-- Exercise 02
-- c
-- Municipalities of Norte de Santander with average farmer age greater than 51 years

SELECT
    T2.municipality_name AS municipality,
    COUNT(T1.farmer_id) AS farmers_count,
    ROUND(AVG(DATE_PART('year', AGE(DATE '2026-09-30', T1.birth_date)))::NUMERIC, 2) AS avg_age_years
FROM farm.farmers AS T1
JOIN geo.municipalities AS T2 
    ON T1.municipality_code = T2.municipality_code
JOIN geo.departments AS T3 
    ON T2.department_code = T3.department_code
WHERE T3.department_name = 'Norte de Santander'
GROUP BY T2.municipality_name
HAVING AVG(DATE_PART('year', AGE(DATE '2026-09-30', T1.birth_date))) > 51
ORDER BY T2.municipality_name ASC;

/*
municipality | farmers_count | avg_age_years
-------------+---------------+---------------
* Herrán     |            14 |         52.35
* Ragonvalia |            22 |         51.80
(2 rows)
*/