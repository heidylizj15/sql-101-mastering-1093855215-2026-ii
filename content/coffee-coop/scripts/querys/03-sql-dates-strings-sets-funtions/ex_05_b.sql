-- Exercise 05
-- b
-- Municipality of Norte de Santander with the longest name and its length

SELECT
    T1.municipality_name AS municipality,
    LENGTH(T1.municipality_name) AS name_length
FROM geo.municipalities AS T1
JOIN geo.departments AS T2 
    ON T1.department_code = T2.department_code
WHERE T2.department_code = '54'
ORDER BY name_length DESC, municipality ASC
LIMIT 1;

/*
   municipality    | name_length
-------------------+-------------
 Villa Del Rosario |          17
(1 fila)

*/