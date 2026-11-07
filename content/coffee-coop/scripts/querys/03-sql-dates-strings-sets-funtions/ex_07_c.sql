-- Exercise 07
-- c
-- Farmers registered in municipality '54518' EXCEPT farmers with deliveries in 2026

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
WHERE EXTRACT(year FROM T3.delivered_at) = 2026;

/* farmer_id |    first_name     |     last_name
-----------+-------------------+--------------------
       657 | Guillermo Pedro   | Arias Rodríguez
       775 | Wilson            | López Villamizar
      2501 | Jairo             | Molina Pabón
      2716 | Gloria            | Marín Rivera
      6320 | Luisa             | Caicedo Restrepo
      7509 | Mario             | Uribe Cuéllar
      7898 | Esperanza         | Romero Betancur
     10999 | Dora              | Hernández Correa
     11280 | Adriana           | Mosquera Ospina
     11941 | Arturo            | Hernández Uribe
     12858 | Iván              | Zapata Ortiz
     14977 | Cecilia Lorena    | Díaz García
     20979 | David Germán      | Romero Bonilla
     21535 | Fabio Luis        | Valencia Ramírez
     23266 | Teresa Adriana    | Valencia Moreno
     23558 | Yuliana           | Rodríguez Vargas
     24478 | Iván              | Bermúdez Flórez
     24741 | Liliana Luisa     | Chamorro Vélez
     24758 | Nelson Samuel     | Mejía Vera
     25949 | Cristian          | Herrera Zuluaga
     26035 | Juan              | Ortega Zapata
     26735 | Rafael Francisco  | Rincón Romero
     28126 | Hernando          | Montoya Agudelo
     29009 | Ángela            | Tovar Lasso
     29185 | Manuela Yolanda   | Benavides Delgado
     31509 | Aura              | Castillo Henao
     31529 | Gustavo           | Mosquera López
     31696 | Elsa              | Ibarra Molina
     31736 | Jaime             | Marín Hernández
     31857 | Valentina         | Zapata Valencia
     33369 | Aura              | Torres Ortega
     36198 | Carlos            | Gutiérrez Pabón
     36712 | Ancízar           | Arango Silva
     37008 | Esteban           | Salazar Parra
     39377 | Luis              | Jaimes Salazar
     39404 | Javier            | Pinzón Jiménez
     40548 | Rosa              | Ríos Cárdenas
     40889 | Mónica Claudia    | Flórez González
-- Más  --
*/