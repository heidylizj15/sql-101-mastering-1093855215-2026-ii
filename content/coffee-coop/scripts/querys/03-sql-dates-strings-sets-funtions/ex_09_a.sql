-- Exercise 09
-- a
-- Unified log (UNION ALL) of deliveries and certifications for farmers in municipality '54518'

SELECT 
    T1.farmer_id AS farmer_id,
    UPPER(CONCAT(T1.first_name, ' ', T1.last_name)) AS farmer_full_name,
    'Entrega de café' AS event_type,
    EXTRACT(year FROM T3.delivered_at) AS event_year
FROM farm.farmers AS T1
JOIN farm.farms AS T2 
    ON T1.farmer_id = T2.farmer_id
JOIN buy.deliveries AS T3 
    ON T2.farm_id = T3.farm_id
WHERE T1.municipality_code = '54518'

UNION ALL

SELECT 
    T1.farmer_id AS farmer_id,
    UPPER(CONCAT(T1.first_name, ' ', T1.last_name)) AS farmer_full_name,
    CONCAT('Certificación: ', T4.certification_name) AS event_type,
    EXTRACT(year FROM T3.start_date) AS event_year
FROM farm.farmers AS T1
JOIN farm.farms AS T2 
    ON T1.farmer_id = T2.farmer_id
JOIN farm.farm_certifications AS T3 
    ON T2.farm_id = T3.farm_id
JOIN farm.certifications AS T4 
    ON T3.certification_id = T4.certification_id
WHERE T1.municipality_code = '54518'

ORDER BY event_year DESC, farmer_full_name ASC
LIMIT 20;

/* 
 farmer_id |         farmer_full_name         |             event_type             | event_year
-----------+----------------------------------+------------------------------------+------------
     42933 | ABELARDO PÉREZ CASTRO            | Certificación: Rainforest Alliance |       2026
     42933 | ABELARDO PÉREZ CASTRO            | Entrega de café                    |       2026
     43016 | ALBA RÍOS RODRÍGUEZ              | Entrega de café                    |       2026
     45380 | ALBA VARGAS LOSADA               | Entrega de café                    |       2026
     45380 | ALBA VARGAS LOSADA               | Entrega de café                    |       2026
     80102 | ALBERTO ORTIZ LASSO              | Entrega de café                    |       2026
     68175 | ALEJANDRA ANDREA MOSQUERA MORENO | Entrega de café                    |       2026
     68175 | ALEJANDRA ANDREA MOSQUERA MORENO | Entrega de café                    |       2026
     68175 | ALEJANDRA ANDREA MOSQUERA MORENO | Entrega de café                    |       2026
      4675 | ALEJANDRA MOLINA TORRES          | Entrega de café                    |       2026
     20221 | ALEJANDRO NARVÁEZ POLANÍA        | Entrega de café                    |       2026
     23040 | ÁLVARO BERMÚDEZ MARÍN            | Entrega de café                    |       2026
     23040 | ÁLVARO BERMÚDEZ MARÍN            | Entrega de café                    |       2026
     23040 | ÁLVARO BERMÚDEZ MARÍN            | Entrega de café                    |       2026
     20959 | ÁLVARO VALENCIA RIVERA           | Entrega de café                    |       2026
     20959 | ÁLVARO VALENCIA RIVERA           | Entrega de café                    |       2026
    120567 | AMPARO BASTIDAS CHAMORRO         | Entrega de café                    |       2026
     36712 | ANCÍZAR ARANGO SILVA             | Certificación: Rainforest Alliance |       2026
      8485 | ANCÍZAR CRISTIAN POLANÍA DELGADO | Entrega de café                    |       2026
     79848 | ÁNGELA BEATRIZ SANDOVAL BERMÚDEZ | Entrega de café                    |       2026
(20 filas)
*/