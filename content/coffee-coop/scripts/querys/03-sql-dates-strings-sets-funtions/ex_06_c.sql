-- Exercise 06
-- c
-- Custom generated code using CONCAT, UPPER and SUBSTRING for farmers in municipality 54518

SELECT
    CONCAT(UPPER(SUBSTRING(T1.first_name FROM 1 FOR 1)), UPPER(SUBSTRING(T1.last_name FROM 1 FOR 1)), '-', T1.farmer_id) AS farmer_code,
    T1.first_name AS first_name,
    T1.last_name AS last_name
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
LIMIT 10;

/*
 farmer_code |   first_name    |    last_name
-------------+-----------------+------------------
 GA-657      | Guillermo Pedro | Arias Rodríguez
 WL-775      | Wilson          | López Villamizar
 OS-1625     | Orlando         | Salazar Bermúdez
 JM-2501     | Jairo           | Molina Pabón
 GM-2716     | Gloria          | Marín Rivera
 MB-3739     | María           | Burbano Duarte
 AM-4675     | Alejandra       | Molina Torres
 JP-5280     | Julián          | Peña Betancur
 LC-6320     | Luisa           | Caicedo Restrepo
 MU-7509     | Mario           | Uribe Cuéllar
(10 filas)
*/