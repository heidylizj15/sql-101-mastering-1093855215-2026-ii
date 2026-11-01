-- Exercise 03
--c
-- certifications: Show only those certifications for which the premium per kg is greater than or equal to 350 COP.

SELECT
    T1.certification_name AS certification,
    T1.issuing_body AS issuer,
    T1.premium_per_kg AS premium_per_kg_cop
FROM farm.certifications AS T1
WHERE T1.premium_per_kg >= 350;

/*  certification |              issuer               | premium_per_kg_cop
---------------+-----------------------------------+--------------------
 Fairtrade     | Fairtrade International           |             400.00
 Orgánico      | Ente certificador orgánico        |             800.00
 Nespresso AAA | Nespresso / Rainforest Alliance   |             350.00
 Bird Friendly | Smithsonian Migratory Bird Center |             500.00
(4 filas)
*/