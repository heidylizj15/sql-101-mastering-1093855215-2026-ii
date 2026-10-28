-- Exercise 02
--a
-- varieties: Retrieve the name, species, and description of the rust-resistant varieties, using the aliases "variety," "species," and "description."

SELECT
  T1.variety_name AS variety,
  T1.species AS species,
  T1.description AS description
FROM farm.coffee_varieties AS T1
WHERE t1.is_rust_resistant = TRUE;

/* 
  variety   | species |                             description
------------+---------+---------------------------------------------------------------------
 Castillo   | arabica | Variedad colombiana resistente a la roya, la mßs sembrada del paÝs.
 Colombia   | arabica | Variedad compuesta resistente a la roya, antecesora de Castillo.
 CenicafÚ 1 | arabica | Variedad de porte bajo con resistencia a la roya.
 Tabi       | arabica | Variedad de porte alto resistente a la roya.
 Robusta    | robusta | Especie Coffea canephora, de mayor contenido de cafeÝna.
(5 filas)
*/