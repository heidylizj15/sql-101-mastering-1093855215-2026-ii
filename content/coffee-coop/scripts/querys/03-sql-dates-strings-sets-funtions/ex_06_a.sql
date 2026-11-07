-- Exercise 06
-- a
-- Full name concatenation and email for farmers in municipality 54518

SELECT
    CONCAT(T1.first_name, ' ', T1.last_name) AS full_name,
    T1.email AS email
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
ORDER BY T1.last_name ASC
LIMIT 10;

/*
           full_name           |              email
-------------------------------+----------------------------------
 Manuel Agudelo Jiménez        | manuel.agudelo99920@hotmail.com
 Marleny Agudelo Sandoval      |
 Edilma Álvarez Bonilla        | edilma.alvarez45811@live.com
 Rocío Álvarez Cárdenas        | rocio.alvarez10921@icloud.com
 Mónica Álvarez Carrillo       | monica.alvarez147976@hotmail.com
 Marleny Álvarez Correa        |
 Alberto Álvarez Villamizar    | alberto.alvarez111237@gmail.com
 Myriam Yuliana Arango Narváez | myriam.arango102354@gmail.com
 Ancízar Arango Silva          | ancizar.arango36712@hotmail.com
 Edilma Gabriela Arias Álvarez | edilma.arias47077@gmail.com
(10 filas)
*/