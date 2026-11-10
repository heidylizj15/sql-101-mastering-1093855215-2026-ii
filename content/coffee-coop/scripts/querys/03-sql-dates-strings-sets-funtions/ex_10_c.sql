-- Exercise 10
-- c
-- Farmers in municipality '54518' EXCEPT farmers who have any certification, sorted by last name

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
JOIN farm.farm_certifications AS T3 
    ON T2.farm_id = T3.farm_id

ORDER BY last_name ASC, first_name ASC;

/* 
farmer_id |    first_name     |     last_name
-----------+-------------------+--------------------
     99920 | Manuel            | Agudelo Jiménez
     45811 | Edilma            | Álvarez Bonilla
     46617 | Marleny           | Álvarez Correa
    111237 | Alberto           | Álvarez Villamizar
    102354 | Myriam Yuliana    | Arango Narváez
     47077 | Edilma Gabriela   | Arias Álvarez
    101213 | Camilo            | Arias Mora
     79124 | Viviana           | Arias Ramírez
       657 | Guillermo Pedro   | Arias Rodríguez
     59149 | Isabella          | Barrera Cabrera
     63693 | Mariana           | Barrera Correa
     68544 | Ramiro            | Barrera Villamizar
     37969 | Manuela           | Bastidas Medina
     88122 | Alberto           | Bastidas Rodríguez
    142523 | Antonio           | Bastidas Rodríguez
     85972 | Rocío             | Bastidas Suárez
     29185 | Manuela Yolanda   | Benavides Delgado
     23040 | Álvaro            | Bermúdez Marín
    143816 | Rodrigo Guillermo | Bermúdez Muñoz
    144172 | Emilio            | Bermúdez Rojas
    113393 | Santiago          | Bermúdez Ruiz
    138870 | Édgar             | Burbano Arango
      3739 | María             | Burbano Duarte
    123426 | Fernando          | Burbano Flórez
     44846 | Jazmín            | Burbano Jaimes
     82546 | Javier            | Burbano Molina
     22657 | Rodrigo Nelson    | Cabrera Villamizar
     82408 | Iván Jaime        | Cáceres Galvis
    143672 | Nubia Juliana     | Caicedo Medina
     38069 | Camilo Iván       | Calderón Trujillo
     67019 | Andrea            | Cardona Ruiz
    137392 | Emilio            | Carrillo Perdomo
     31509 | Aura              | Castillo Henao
     89517 | Carlos            | Castillo Torres
     61995 | Ricardo           | Castro Contreras
     24741 | Liliana Luisa     | Chamorro Vélez
    143490 | Nelson            | Chamorro Vera
     50070 | Arturo            | Contreras Peña
-- Más  --
*/