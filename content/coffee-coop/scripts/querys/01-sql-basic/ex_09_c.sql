-- Exercise 09
-- c
-- quality analyses: For the same day, review the rejected analyses that have recorded observations, sorted by defect percentage from highest to lowest.

SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.is_accepted,
    T1.defects_pct AS defect_pct,
    T1.observations
FROM
    buy.quality_analyses T1
WHERE
    T1.delivery_id LIKE '%20260930%'
    AND T1.is_accepted = FALSE
    AND T1.observations IS NOT NULL
ORDER BY
    T1.defects_pct DESC;

/* 
    analysis      |      delivery       | is_accepted | defect_pct |                observations
--------------------+---------------------+-------------+------------+---------------------------------------------
 QA-20260930-000104 | DLV-20260930-000214 | f           |      19.54 | Olor a fermento en la muestra.
 QA-20260930-000068 | DLV-20260930-000165 | f           |      17.29 | Muestra tomada por duplicado.
 QA-20260930-000119 | DLV-20260930-000253 | f           |      15.59 | Exceso de impurezas y pasilla.
 QA-20260930-000086 | DLV-20260930-000147 | f           |      13.21 | Olor a fermento en la muestra.
 QA-20260930-000113 | DLV-20260930-000223 | f           |      12.94 | Café sobresecado, grano quebradizo.
 QA-20260930-000022 | DLV-20260930-000070 | f           |       9.75 | Café con humedad alta, requiere más secado.
 QA-20260930-000018 | DLV-20260930-000006 | f           |       7.88 | Café con humedad alta, requiere más secado.
(7 filas)

*/