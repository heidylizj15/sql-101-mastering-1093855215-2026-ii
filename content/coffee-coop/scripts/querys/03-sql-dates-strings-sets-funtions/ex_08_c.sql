-- Exercise 08
-- c
-- Farmers from municipality '54518' EXCEPT farmers with any delivery, sorted

SELECT 
    T1.farmer_id AS farmer_id, 
    T1.first_name AS first_name, 
    T1.last_name AS last_name
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'

EXCEPT

SELECT 
    T1.farmer_id AS farmer_id, 
    T1.first_name AS first_name, 
    T1.last_name AS last_name
FROM farm.farmers AS T1
JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
JOIN buy.deliveries AS T3 
    ON T2.farm_id = T3.farm_id

ORDER BY last_name ASC, first_name ASC;

/* 
 farmer_id | first_name |    last_name
-----------+------------+------------------
     36712 | Ancízar    | Arango Silva
     24478 | Iván       | Bermúdez Flórez
    138870 | Édgar      | Burbano Arango
     67019 | Andrea     | Cardona Ruiz
     36198 | Carlos     | Gutiérrez Pabón
     73696 | Ruth       | Jiménez Guerrero
       775 | Wilson     | López Villamizar
    105376 | Efraín     | Ortega Correa
     51243 | Mariana    | Ortiz Ruiz
     39404 | Javier     | Pinzón Jiménez
     69974 | Elsa       | Ramos Cárdenas
    110922 | Natalia    | Ramos Vargas
    107991 | Erika      | Ríos Suárez
     71137 | Luz        | Rojas Torres
     37008 | Esteban    | Salazar Parra
     21535 | Fabio Luis | Valencia Ramírez
(16 filas)
*/