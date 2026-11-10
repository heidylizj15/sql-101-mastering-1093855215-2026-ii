-- Exercise 09
-- c
-- Farmers in municipality '54518' with active certifications EXCEPT those with deliveries in 2026

SELECT 
    T1.farmer_id AS farmer_id,
    UPPER(CONCAT(T1.first_name, ' ', T1.last_name)) AS farmer_full_name
FROM farm.farmers AS T1
JOIN farm.farms AS T2 
    ON T1.farmer_id = T2.farmer_id
JOIN farm.farm_certifications AS T3 
    ON T2.farm_id = T3.farm_id
WHERE T1.municipality_code = '54518'
  AND T3.end_date IS NULL

EXCEPT

SELECT 
    T1.farmer_id AS farmer_id,
    UPPER(CONCAT(T1.first_name, ' ', T1.last_name)) AS farmer_full_name
FROM farm.farmers AS T1
JOIN farm.farms AS T2 
    ON T1.farmer_id = T2.farmer_id
JOIN buy.deliveries AS T3 
    ON T2.farm_id = T3.farm_id
WHERE T1.municipality_code = '54518'
  AND EXTRACT(year FROM T3.delivered_at) = 2026

ORDER BY farmer_full_name ASC;

/* 
 farmer_id |      farmer_full_name
-----------+-----------------------------
     36712 | ANCÍZAR ARANGO SILVA
     14977 | CECILIA LORENA DÍAZ GARCÍA
     20979 | DAVID GERMÁN ROMERO BONILLA
     69974 | ELSA RAMOS CÁRDENAS
     37008 | ESTEBAN SALAZAR PARRA
     21535 | FABIO LUIS VALENCIA RAMÍREZ
      2716 | GLORIA MARÍN RIVERA
     43464 | GLORIA TOVAR BENAVIDES
     28126 | HERNANDO MONTOYA AGUDELO
     41313 | INÉS DUQUE CÁRDENAS
     39404 | JAVIER PINZÓN JIMÉNEZ
     39377 | LUIS JAIMES SALAZAR
      6320 | LUISA CAICEDO RESTREPO
     79587 | LUISA MONTOYA MEJÍA
    117987 | MARLENY AGUDELO SANDOVAL
     41872 | MARLENY PINZÓN DELGADO
    105013 | MIGUEL VILLAMIZAR CORREA
    147976 | MÓNICA ÁLVAREZ CARRILLO
    110922 | NATALIA RAMOS VARGAS
     94576 | NICOLÁS RIVERA DUQUE
    126597 | SANDRA SANDOVAL ORTEGA
    125369 | SARA LOSADA GUTIÉRREZ
       775 | WILSON LÓPEZ VILLAMIZAR
(23 filas)
*/