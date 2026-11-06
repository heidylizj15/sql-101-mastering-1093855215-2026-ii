-- Exercise 01
-- b
-- Top 10 oldest members of municipality 54518 as of 2026-09-30 using AGE and DATE_PART
SELECT 
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    AGE(DATE '2026-09-30', T1.membership_date) AS membership_age,
    DATE_PART('year', AGE(DATE '2026-09-30', T1.membership_date)) AS membership_years
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
ORDER BY T1.membership_date ASC
LIMIT 10;

/*
  document  |    first_name    |     last_name      |     membership_age      | membership_years
------------+------------------+--------------------+-------------------------+------------------
 402745033  | Julißn Guillermo | Valencia Narvßez   | 31 years 8 mons 3 days  |               31
 361839624  | RocÝo Alba       | Ortega Serrano     | 31 years 2 mons 20 days |               31
 546579335  | Wilson           | Parra Prada        | 31 years 2 mons 2 days  |               31
 939635303  | Marleny          | ┴lvarez Correa     | 30 years 6 mons 10 days |               30
 748380481  | Teresa Adriana   | Valencia Moreno    | 30 years 2 mons 7 days  |               30
 1012324420 | Martha Carolina  | PÚrez Jaimes       | 29 years 10 mons 8 days |               29
 230971064  | Manuel           | Agudelo JimÚnez    | 29 years 6 mons 1 day   |               29
 483692716  | Ramiro           | Barrera Villamizar | 29 years 5 mons 22 days |               29
 677772599  | Guillermo        | PÚrez PÚrez        | 29 years 4 mons 13 days |               29
 59388780   | Juan             | Ortega Zapata      | 29 years 2 mons 17 days |               29
(10 filas)
*/