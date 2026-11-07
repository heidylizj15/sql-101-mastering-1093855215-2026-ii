-- Exercise 08
-- a
-- Union of municipality 54518 farmers and farmers with deliveries, fully sorted

SELECT 
    T1.farmer_id AS farmer_id, 
    T1.first_name AS first_name, 
    T1.last_name AS last_name
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'

UNION

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

/*  farmer_id |     first_name      |       last_name
-----------+---------------------+-----------------------
     36689 | Brayan              | Acevedo Acevedo
     38180 | Carmen              | Acevedo Acevedo
    129013 | Fernando            | Acevedo Acevedo
     74559 | Gloria              | Acevedo Acevedo
    113965 | Hernando            | Acevedo Acevedo
    104475 | Javier              | Acevedo Acevedo
     97074 | Libardo Camilo      | Acevedo Acevedo
     97998 | Luisa               | Acevedo Acevedo
    143374 | Mariana             | Acevedo Acevedo
     47826 | Natalia             | Acevedo Acevedo
    118267 | Wilson              | Acevedo Acevedo
    142291 | Alberto             | Acevedo Agudelo
     23321 | Camila Yolanda      | Acevedo Agudelo
    105471 | Cecilia             | Acevedo Agudelo
     92685 | Daniel Hernando     | Acevedo Agudelo
     21620 | Dora                | Acevedo Agudelo
     73232 | Fabio               | Acevedo Agudelo
    124306 | Gabriela            | Acevedo Agudelo
     45258 | Gabriela            | Acevedo Agudelo
    108267 | Libardo             | Acevedo Agudelo
    110022 | Libardo Miguel      | Acevedo Agudelo
      3279 | Reinaldo            | Acevedo Agudelo
      8265 | Rubén               | Acevedo Agudelo
    114609 | Aníbal Mauricio     | Acevedo Álvarez
     55835 | Elsa                | Acevedo Álvarez
    143959 | Francisco           | Acevedo Álvarez
     97502 | Hernando            | Acevedo Álvarez
    117975 | Inés Andrea         | Acevedo Álvarez
      8743 | Luz                 | Acevedo Álvarez
     27282 | Luz                 | Acevedo Álvarez
    129970 | Mauricio            | Acevedo Álvarez
     22280 | Mercedes Teresa     | Acevedo Álvarez
     33531 | Mónica              | Acevedo Álvarez
     19290 | Óscar               | Acevedo Álvarez
     11425 | Rodrigo             | Acevedo Álvarez
     87043 | Ruth Stella         | Acevedo Álvarez
    109170 | Teresa              | Acevedo Álvarez
     57183 | Valentina           | Acevedo Álvarez
    109370 | Alejandro José      | Acevedo Arango
     41847 | Álvaro              | Acevedo Arango
     55066 | Beatriz Rocío       | Acevedo Arango
     27739 | Diana               | Acevedo Arango
     46077 | Gabriela Carolina   | Acevedo Arango
     67607 | Heriberto Gilberto  | Acevedo Arango
     80780 | Hugo                | Acevedo Arango
     61375 | Hugo Luis           | Acevedo Arango
     29005 | Mario               | Acevedo Arango
    101633 | Pedro               | Acevedo Arango
-- Más  --
*/