-- Exercise 10
-- a
-- Formatted custom codes, uppercase full names, and name lengths for municipality 54518

SELECT
    CONCAT(UPPER(SUBSTRING(T1.first_name FROM 1 FOR 1)), UPPER(SUBSTRING(T1.last_name FROM 1 FOR 1)), '-', T1.farmer_id) AS farmer_code,
    UPPER(CONCAT(T1.first_name, ' ', T1.last_name)) AS full_name,
    LENGTH(CONCAT(T1.first_name, T1.last_name)) AS total_name_length
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
ORDER BY total_name_length DESC, full_name ASC
LIMIT 10;

/* 
 farmer_code |             full_name             | total_name_length
-------------+-----------------------------------+-------------------
 GT-120446   | GUSTAVO HERIBERTO TORRES GUERRERO |                32
 JV-60102    | JULIÁN GUILLERMO VALENCIA NARVÁEZ |                32
 MB-29185    | MANUELA YOLANDA BENAVIDES DELGADO |                32
 RC-22657    | RODRIGO NELSON CABRERA VILLAMIZAR |                32
 AM-68175    | ALEJANDRA ANDREA MOSQUERA MORENO  |                31
 AP-8485     | ANCÍZAR CRISTIAN POLANÍA DELGADO  |                31
 ÁS-79848    | ÁNGELA BEATRIZ SANDOVAL BERMÚDEZ  |                31
 HJ-41311    | HERNANDO MIGUEL JIMÉNEZ RESTREPO  |                31
 JD-122796   | JULIÁN GERMÁN DELGADO VILLAMIZAR  |                31
 RB-143816   | RODRIGO GUILLERMO BERMÚDEZ MUÑOZ  |                31
(10 filas)
*/