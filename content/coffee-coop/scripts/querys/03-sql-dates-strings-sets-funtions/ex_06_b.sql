-- Exercise 06
-- b
-- Email domain extraction using SUBSTRING and POSITION

SELECT
    T1.first_name AS first_name,
    T1.email AS email,
    SUBSTRING(T1.email FROM POSITION('@' IN T1.email)) AS email_domain
FROM farm.farmers AS T1
WHERE T1.email IS NOT NULL
LIMIT 10;

/*
  first_name    |            email             | email_domain
-----------------+------------------------------+--------------
 Natalia         | natalia.rodriguez3@yahoo.com | @yahoo.com
 Jaime           | jaime.erazo4@hotmail.com     | @hotmail.com
 Ancízar         | ancizar.ibarra7@live.com     | @live.com
 Mónica          | monica.jimenez8@icloud.com   | @icloud.com
 Libardo Nicolás | libardo.herrera10@live.com   | @live.com
 Claudia         | claudia.trujillo11@live.com  | @live.com
 Luis            | luis.lozano12@hotmail.com    | @hotmail.com
 Óscar Héctor    | oscar.herrera13@gmail.com    | @gmail.com
 Arturo          | arturo.gonzalez14@gmail.com  | @gmail.com
 Sandra Erika    | sandra.ortiz15@gmail.com     | @gmail.com
(10 filas)
*/