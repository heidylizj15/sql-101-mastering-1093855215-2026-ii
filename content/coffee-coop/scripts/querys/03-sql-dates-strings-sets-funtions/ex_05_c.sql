-- Exercise 05
-- c
-- Department code and name matching 'Norte de Santander' directly and with UPPER

-- Consulta 1: Coincidencia exacta
SELECT
    T1.department_code AS code,
    T1.department_name AS department
FROM geo.departments AS T1
WHERE T1.department_name = 'Norte de Santander';


/*
 code | department
------+------------
(0 filas)
*/

-- Consulta 2: Usando UPPER
SELECT
    T1.department_code AS code,
    T1.department_name AS department
FROM geo.departments AS T1
WHERE UPPER(T1.department_name) = UPPER('Norte de Santander');

/*
code | department
-----+--------------------
 54 | Norte de Santander
(1 rows)
*/