-- Exercise 09
-- b
-- Farmers in municipality '54518' with active certifications INTERSECT farmers with deliveries in 2026

SELECT 
    CONCAT(UPPER(SUBSTRING(T1.first_name FROM 1 FOR 1)), UPPER(SUBSTRING(T1.last_name FROM 1 FOR 1)), '-', T1.farmer_id) AS farmer_code,
    UPPER(CONCAT(T1.first_name, ' ', T1.last_name)) AS farmer_full_name
FROM farm.farmers AS T1
JOIN farm.farms AS T2 
    ON T1.farmer_id = T2.farmer_id
JOIN farm.farm_certifications AS T3 
    ON T2.farm_id = T3.farm_id
WHERE T1.municipality_code = '54518'
  AND T3.end_date IS NULL

INTERSECT

SELECT 
    CONCAT(UPPER(SUBSTRING(T1.first_name FROM 1 FOR 1)), UPPER(SUBSTRING(T1.last_name FROM 1 FOR 1)), '-', T1.farmer_id) AS farmer_code,
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
farmer_code |         farmer_full_name
-------------+----------------------------------
 AP-42933    | ABELARDO PÉREZ CASTRO
 AR-43016    | ALBA RÍOS RODRÍGUEZ
 AV-45380    | ALBA VARGAS LOSADA
 AN-20221    | ALEJANDRO NARVÁEZ POLANÍA
 ÁV-20959    | ÁLVARO VALENCIA RIVERA
 AB-120567   | AMPARO BASTIDAS CHAMORRO
 ÁS-79848    | ÁNGELA BEATRIZ SANDOVAL BERMÚDEZ
 CC-9270     | CARMEN CÁRDENAS MORENO
 DR-138719   | DIEGO RIVERA JIMÉNEZ
 EV-36775    | ESPERANZA VALENCIA ORTIZ
 FR-18484    | FELIPE CAMILO RÍOS OSPINA
 GP-56723    | GUILLERMO PÉREZ PÉREZ
 GI-61229    | GUSTAVO IBARRA AGUDELO
 IJ-12711    | INÉS JIMÉNEZ JAIMES
 JP-5280     | JULIÁN PEÑA BETANCUR
 LZ-146704   | LAURA ZULUAGA BENAVIDES
 LT-128340   | LIBARDO TRUJILLO TORRES
 LO-147264   | LUZ OSORIO CUÉLLAR
 MG-20195    | MARTHA GIRALDO ARANGO
 NB-134817   | NELSON BEDOYA VÉLEZ
 PR-110449   | PEDRO RAMÍREZ BARRERA
 RS-109820   | REINALDO JORGE SÁNCHEZ AGUDELO
 RJ-12471    | ROCÍO MANUELA JAIMES CARDONA
 VG-135840   | VIVIANA GONZÁLEZ MOLINA
 YB-98369    | YESENIA BERMÚDEZ HENAO
(25 filas)
*/