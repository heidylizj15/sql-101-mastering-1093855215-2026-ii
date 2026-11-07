-- Exercise 07
-- b
-- Farmers in municipality '54518' INTERSECT farmers with organic certification

SELECT 
    T1.farmer_id AS farmer_id, 
    T1.first_name AS first_name, 
    T1.last_name AS last_name
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'

INTERSECT

SELECT 
    T1.farmer_id AS farmer_id, 
    T1.first_name AS first_name, 
    T1.last_name AS last_name
FROM farm.farmers AS T1
JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
JOIN farm.farm_certifications AS T3 
    ON T2.farm_id = T3.farm_id
JOIN farm.certifications AS T4 
    ON T3.certification_id = T4.certification_id
WHERE T4.certification_name = 'Orgánico';

/*
 farmer_id |  first_name   |     last_name
-----------+---------------+--------------------
      9714 | Nicolás       | González Rodríguez
     12711 | Inés          | Jiménez Jaimes
     18484 | Felipe Camilo | Ríos Ospina
     37008 | Esteban       | Salazar Parra
     41872 | Marleny       | Pinzón Delgado
     52384 | Efraín        | Pinzón Cabrera
     68802 | Valentina     | Mora Rangel
     98369 | Yesenia       | Bermúdez Henao
    110449 | Pedro         | Ramírez Barrera
    117987 | Marleny       | Agudelo Sandoval
    147976 | Mónica        | Álvarez Carrillo
(11 filas)
*/