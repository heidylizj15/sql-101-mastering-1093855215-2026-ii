-- Exercise 04
--c
-- municipalities: Search nationwide for municipalities whose names contain the word "Pamplona," regardless of case (ILIKE).

SELECT
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality
FROM geo.municipalities AS T1
WHERE T1.municipality_name ILIKE '%Pamplona%';

/* 
 municipality_code | municipality
-------------------+--------------
 54518             | Pamplona
(1 fila)
*/