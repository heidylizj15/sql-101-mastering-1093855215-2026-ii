-- Exercise 06
--c
-- farmers:View the members of municipality 54518 whose membership is inactive, ordered by date of affiliation, from oldest to most recent.

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.membership_date AS affiliation_date
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518' 
  AND T1.is_active = FALSE
ORDER BY T1.membership_date ASC;


/* 
 document  |    first_name    |     last_name      | affiliation_date
------------+------------------+--------------------+------------------
 230971064  | Manuel           | Agudelo Jiménez    | 1997-03-29
 534023693  | Myriam           | Valencia Moreno    | 1998-11-03
 33787285   | Rubén            | Ramos Chamorro     | 1999-03-02
 1135293825 | Abelardo         | Pérez Castro       | 2003-06-19
 478755763  | Nicolás          | Rivera Duque       | 2003-08-11
 160538872  | Liliana          | Mosquera Uribe     | 2007-09-27
 223974138  | Rodrigo Nelson   | Cabrera Villamizar | 2009-05-02
 10424994   | Cristian         | Herrera Zuluaga    | 2010-04-28
 1015411133 | Santiago         | Bermúdez Ruiz      | 2010-11-30
 1090968710 | Ruth             | Rodríguez Pérez    | 2010-12-11
 974842644  | Arturo           | Hernández Uribe    | 2012-06-16
 1001030458 | Liliana Luisa    | Chamorro Vélez     | 2013-01-09
 870240973  | Jairo            | Molina Pabón       | 2014-03-13
 89157555   | Heriberto        | Jiménez Cáceres    | 2014-07-17
 333176982  | Edilma           | Rivera Rivera      | 2014-12-20
 587550249  | Gustavo          | Mosquera López     | 2016-05-14
 718906996  | Nelson           | Bedoya Vélez       | 2016-12-09
 1117597835 | Cecilia Lorena   | Díaz García        | 2017-01-11
 599185252  | Efraín           | Pinzón Cabrera     | 2017-07-23
 135734682  | Diego            | Rivera Jiménez     | 2018-03-26
 914044314  | Ancízar Cristian | Polanía Delgado    | 2021-02-24
(21 filas)
*/
