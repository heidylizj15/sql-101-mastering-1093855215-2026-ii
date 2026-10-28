-- Exercise 02
--a
-- varieties: Consult the rust-susceptible varieties of the *Arabica* species, sorted by name in descending order.
SELECT
     T1.variety_name AS variety,
     T1.species AS species,
     T1.description AS description
FROM farm.coffee_varieties AS T1

WHERE t1.is_rust_resistant = FALSE
     AND t1.species = 'arabica'
ORDER BY t1.variety_name DESC;

/*    variety    | species |                      description
---------------+---------+--------------------------------------------------------
 TÝpica        | arabica | Variedad tradicional de porte alto.
 Pacamara      | arabica | Cruce de Pacas y Maragogipe, grano grande.
 Maragogipe    | arabica | Variedad de grano grande.
 Geisha        | arabica | Variedad de especialidad con perfil floral.
 Caturra       | arabica | Mutaci¾n de Borb¾n de porte bajo y alta productividad.
 Borb¾n Rosado | arabica | Variedad de especialidad de fruto rosado.
 Borb¾n        | arabica | Variedad tradicional de buena calidad en taza.
(7 filas)
*/