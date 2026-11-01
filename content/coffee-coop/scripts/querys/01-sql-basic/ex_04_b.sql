-- Exercise 04
--b
-- municipalities: From the same department, look up only those municipalities whose name begins with the word "San."

SELECT
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality
FROM geo.municipalities AS T1
WHERE T1.department_code = '54' 
AND T1.municipality_name LIKE 'San%';

/* 
municipality_code | municipality
-------------------+--------------
 54670             | San Calixto
 54673             | San Cayetano
 54680             | Santiago
(3 filas)

*/