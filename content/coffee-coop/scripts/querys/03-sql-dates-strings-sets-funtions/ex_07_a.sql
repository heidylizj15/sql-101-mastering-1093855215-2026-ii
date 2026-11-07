-- Exercise 07
-- a
-- Farmers from municipality '54518' UNION farmers with active certifications

SELECT 
    T1.farmer_id AS farmer_id, 
    T1.first_name AS first_name, 
    T1.last_name AS last_name
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'

UNION

SELECT 
    T1.farmer_id AS farmer_id, 
    T1.first_name AS first_name, 
    T1.last_name AS last_name
FROM farm.farmers AS T1
JOIN farm.farm_certifications AS T2 
    ON T1.farmer_id = T2.farm_id
WHERE T2.end_date IS NULL;

/*
 farmer_id |     first_name      |       last_name
-----------+---------------------+-----------------------
         5 | Ruth                | Barrera Díaz
        16 | Esperanza           | Caicedo Cabrera
        20 | Fabio               | Restrepo Correa
        31 | Wilmer              | Calderón Ospina
        49 | Erika               | Bastidas Chamorro
        53 | Leidy               | Bastidas Duarte
        62 | Marcela             | Díaz Erazo
        65 | Germán              | Ospina Calderón
        67 | Édgar               | Peña Ibarra
        68 | Inés                | Martínez Mejía
        72 | Felipe              | Bermúdez Agudelo
        98 | Hugo                | Cáceres Parra
       101 | Iván                | Ruiz Cardona
       106 | Inés                | Henao Lasso
       118 | Efraín              | Mora Peña
       130 | Abelardo            | Castro Ospina
       140 | Jairo               | Pabón Losada
       150 | Javier              | Sandoval Burbano
       163 | Lorena              | Jiménez Duarte
       173 | Brayan              | Silva Bedoya
       174 | Valentina Martha    | Pérez Salazar
       181 | Julián              | Sandoval Cardona
       182 | Stella              | Sánchez Polanía
       186 | Andrés              | Ramírez Londoño
       192 | Camilo              | Betancur Rodríguez
       195 | María               | Martínez Henao
       197 | Nelson Efraín       | Benavides Barrera
       214 | Rodrigo             | Narváez Sandoval
       222 | Stella              | Álvarez Parra
       223 | Aura                | Valencia Suárez
       224 | Blanca              | Molina Bastidas
       225 | Leidy               | Chamorro Polanía
       227 | Rubén               | Cabrera Delgado
       229 | Edilma              | Ortiz Sánchez
       232 | Erika Esperanza     | Moreno Jiménez
       237 | Reinaldo            | Galvis Agudelo
       239 | Olga                | Peña Arango
       242 | Aura Marcela        | Bastidas Bermúdez
       243 | Rafael              | Álvarez Osorio
       252 | Iván                | Lozano Osorio
       254 | Pedro               | Serrano García
       255 | Nicolás             | Betancur Muñoz
       261 | Antonio             | Jaimes Calderón
       274 | Inés                | Delgado Lozano
       283 | Felipe              | Cardona Díaz
       298 | Álvaro              | Vélez Lozano
       300 | Ramiro              | Acevedo Martínez
       312 | Mónica              | González Londoño
       322 | Lorena Andrea       | Ortiz Vélez
       327 | Andrés              | Bastidas Rangel
       335 | Laura               | Salazar Carrillo
       344 | Santiago            | Perdomo Muñoz
       345 | Emilio              | Ramírez Delgado
       346 | Cristian            | Osorio Trujillo
       352 | Arturo              | Delgado Niño
       377 | Jairo Miguel        | Bedoya Zuluaga
       402 | Reinaldo            | Henao Calderón
       404 | Dora Jazmín         | López Rojas
       405 | Julián              | Salazar Sánchez
       406 | Daniel              | Sandoval Bermúdez
       410 | Isabella            | Uribe García
       437 | Ancízar             | Villamizar Martínez
       440 | Sara                | Henao Pérez
       460 | Aura                | Gómez Guerrero
       463 | Miguel              | Ospina Sánchez
       469 | Laura               | Cárdenas Trujillo
       475 | Orlando Arturo      | Rojas Castro
       482 | Cecilia Manuela     | Londoño Bonilla
       499 | Lorena              | Losada Mejía
       513 | Fabio               | Muñoz Zapata
       519 | Natalia Dora        | Pabón Hernández
       525 | Rodrigo             | Barrera Rangel
       540 | Ricardo             | Contreras Restrepo
       551 | Abelardo            | Ramos Rincón
       578 | Amparo              | Pérez Burbano
       602 | Liliana             | Ospina Niño
       611 | Laura               | Guerrero Cardona
       633 | Álvaro              | Suárez Tovar
       646 | Wilmer              | Rojas Ospina
       648 | Iván Julián         | Burbano Rodríguez
       653 | Wilmer Gilberto     | Ortega Barrera
       655 | Lucía               | Moreno Prada
       657 | Guillermo Pedro     | Arias Rodríguez
       664 | Gladys              | Valencia Herrera
       676 | Mateo               | Delgado Lasso
       681 | María Valentina     | Mejía Jaimes
       683 | Ramiro              | García Cárdenas
       697 | Óscar               | Agudelo Sánchez
       699 | Rocío               | Giraldo Quintero
       701 | Jaime               | Londoño Moreno
       735 | Adriana             | Ramos Trujillo
       739 | Viviana             | Mora Vargas
       750 | Julián              | Uribe Mejía
       775 | Wilson              | López Villamizar
       780 | Alejandra Rocío     | Parra Bonilla
       789 | Ana Sara            | Vélez Arango
       791 | Sandra Mercedes     | Peña Restrepo
       795 | Elsa                | Flórez Rincón
       799 | Abelardo            | Rangel Álvarez
       800 | Arturo              | Londoño Molina
       806 | Sofía Patricia      | Narváez Ruiz
       808 | Camila              | Marín Pabón
       816 | Sandra María        | Ibarra Cáceres
       823 | Blanca              | González Torres
       824 | Sofía               | Martínez Silva
       828 | Patricia            | Contreras Uribe
       853 | Martha              | Osorio Valencia
       862 | Camilo              | Ríos Henao
       867 | Jaime               | Gutiérrez Montoya
       872 | Javier              | Arango Lozano
       874 | Sara                | Serrano López
       889 | Inés                | Polanía Acevedo
       891 | Wilson              | Flórez Cabrera
       892 | Yeison              | Martínez Burbano
       893 | Nicolás             | Bastidas Gómez
       898 | Rocío               | Restrepo Hernández
       908 | Alba                | Suárez Zapata
       913 | Mario               | Erazo Bonilla
       918 | Alba Stella         | Cárdenas López
       925 | Amparo              | Pérez Serrano
       930 | Valentina           | Benavides Rodríguez
       936 | Santiago Alejandro  | Castillo López
       937 | Marcela             | Benavides Castillo
       942 | Rafael Jaime        | Cardona Molina
       949 | Reinaldo Nelson     | Arias Lasso
       952 | Nubia               | Prada Jiménez
       965 | Juliana             | Pinzón Londoño
       967 | Yesenia Inés        | Correa Correa
       968 | Carolina Esperanza  | Caicedo Correa
       983 | Manuel Fernando     | Rivera Osorio
       986 | Efraín              | Parra Ruiz
       989 | Óscar Cristian      | Osorio Parra
       995 | Libardo             | Rincón Vargas
      1007 | Héctor              | Medina Contreras
      1010 | Yeison              | Peña Medina
      1013 | Rodrigo             | Rincón Rodríguez
      1014 | Alberto             | Trujillo Tovar
      1019 | Carolina            | Flórez Quintero
      1026 | Ana                 | Rodríguez Galvis
      1027 | Carlos              | Ortega Ríos
      1029 | Ramiro              | Arango Caicedo
      1031 | Wilmer              | Tovar Jiménez
      1033 | Fabio               | Suárez Montoya
      1039 | Nicolás             | Molina Vargas
      1046 | Julián              | Mosquera Restrepo
      1048 | Nelson Mateo        | Medina Benavides
      1061 | Francisco           | Bedoya Sandoval
      1088 | Hernando Nicolás    | Castro Flórez
      1101 | Antonio             | Erazo Gómez
      1107 | Blanca Alejandra    | Rincón Salazar
      1130 | Sofía               | Rodríguez Cuéllar
      1135 | Reinaldo Emilio     | Jaimes Ruiz
      1139 | David Samuel        | Parra Rincón
      1146 | Francisco           | Martínez Gutiérrez
      1172 | Wilmer              | Hernández Mejía
      1197 | Rubén               | Ríos Osorio
      1198 | Édgar               | Quintero Medina
      1199 | José                | Ruiz Lasso
      1204 | Ancízar             | Uribe Gómez
      1226 | Óscar               | Prada Delgado
      1237 | Myriam              | Duarte Peña
      1244 | Daniel              | Jiménez Parra
      1248 | María               | Hernández Pérez
      1252 | Teresa              | Rincón Trujillo
      1256 | Rocío Andrea        | Rincón Muñoz
      1265 | Alejandra           | Serrano Duque
      1271 | Rodrigo             | Niño Guerrero
      1272 | Juliana Beatriz     | Contreras Villamizar
      1285 | Martha              | Contreras Rivera
      1296 | Isabella Dora       | Serrano Duque
      1298 | Ana                 | Betancur Álvarez
      1300 | Fernando            | Quintero Agudelo
      1309 | Manuel              | Gómez Prada
      1324 | Fabio Aníbal        | Tovar Tovar
      1336 | Andrea              | Sánchez Duque
      1343 | Emilio              | Suárez Silva
      1345 | Rosa                | Bastidas Sánchez
      1408 | Pedro Orlando       | Salazar Mora
      1415 | Dora                | Zuluaga Zuluaga
      1433 | Jaime Esteban       | Zapata Moreno
      1438 | Juan                | Suárez Bedoya
      1441 | Santiago Antonio    | Salazar Bonilla
      1445 | Jazmín              | Ortiz Muñoz
      1457 | Fernando            | Polanía Valencia
      1462 | Mónica              | Bermúdez Vargas
      1466 | Mateo               | Medina Vélez
      1472 | Andrés Camilo       | Villamizar Ruiz
      1484 | Patricia            | López Mosquera
      1494 | David               | Salazar Trujillo
      1506 | Mateo               | Medina Ortega
      1515 | Heriberto           | Sánchez Quintero
      1523 | Ancízar             | Ortega Losada
      1553 | Gabriela            | Betancur Ríos
      1569 | Nelson Wilmer       | García Serrano
      1571 | Arturo              | Ortega Martínez
      1590 | Sebastián           | Burbano Uribe
      1605 | Valentina           | Suárez Londoño
      1623 | Daniel              | Díaz Arango
      1625 | Orlando             | Salazar Bermúdez
      1643 | José Aníbal         | Pinzón Zapata
      1657 | Ancízar             | Trujillo Perdomo
      1661 | Francisco           | Rincón Mosquera
      1667 | Sandra Ruth         | Silva González
      1671 | Rosa                | Molina Peña
      1672 | Gabriela Alba       | Ramírez Barrera
      1676 | Guillermo           | Flórez Trujillo
      1678 | Juliana Stella      | Villamizar Ramírez
      1679 | Álvaro Rafael       | Valencia Bastidas
      1682 | Guillermo           | Benavides Zuluaga
      1691 | Ricardo             | Perdomo Castillo
      1693 | Myriam              | Gómez Correa
      1697 | Inés Aura           | Perdomo Guerrero
      1701 | Rocío               | Pérez Rojas
      1718 | Mariana Carmen      | Cuéllar Delgado
      1719 | Esperanza Adriana   | Lozano Muñoz
      1721 | Fernando Diego      | Valencia Rojas
      1746 | Olga                | Perdomo Londoño
      1756 | Alberto             | García Tovar
      1772 | Juliana             | Trujillo Osorio
      1789 | Dora                | Arango Rangel
      1790 | Dora                | Rojas Arango
      1799 | Santiago Libardo    | García Acevedo
      1810 | Claudia             | Vargas Trujillo
      1842 | Daniel              | Chamorro Duarte
      1844 | Nubia Mercedes      | Castillo Agudelo
      1853 | Aura                | Valencia Bastidas
      1860 | María               | Rodríguez Romero
      1863 | Patricia Juliana    | Tovar Herrera
      1870 | Sebastián Camilo    | Caicedo Galvis
      1873 | Natalia             | Trujillo Cáceres
      1886 | Julián              | Quintero Bedoya
      1890 | Gustavo             | Arias Romero
      1909 | Julián              | Zuluaga Salazar
      1913 | Teresa Olga         | Henao Henao
      1934 | Abelardo            | Perdomo Álvarez
      1942 | Guillermo Ricardo   | Ramos Londoño
      1953 | Efraín Iván         | Peña Ríos
      1965 | Santiago            | Ortega Romero
      1976 | Efraín              | Bermúdez Restrepo
      1979 | Gustavo             | Torres Burbano
      1987 | Marcela             | Molina Vera
      2016 | Camila              | Rivera Agudelo
      2026 | Samuel              | Bastidas Ruiz
      2055 | Efraín Ricardo      | Losada Barrera
      2071 | Cristian            | Cáceres Álvarez
      2076 | Lucía               | Betancur Torres
      2084 | Laura               | Martínez Ortiz
      2087 | Gloria              | Díaz Zapata
      2096 | Ancízar             | Ortiz Arias
      2135 | Esteban             | Betancur Valencia
      2152 | Lucía               | Delgado Jaimes
      2163 | Carmen              | Zapata Ortiz
      2168 | Carmen              | Tovar Marín
      2169 | Stella Alejandra    | Correa Marín
      2182 | Martha              | González Cárdenas
      2186 | Jairo               | López Ramírez
      2189 | Libardo             | Perdomo Mora
      2205 | Orlando             | Acevedo Villamizar
      2206 | Ancízar             | Henao Muñoz
      2209 | Mario               | Restrepo Montoya
      2218 | Samuel Camilo       | Londoño Rivera
      2221 | Manuela             | Gómez Niño
      2224 | Javier              | Moreno Arias
      2228 | Yuliana             | Álvarez Ramos
      2247 | Sebastián           | Giraldo Bonilla
      2250 | Felipe              | Agudelo González
      2259 | Elsa Sara           | Medina Quintero
      2260 | Miguel              | Ruiz Parra
      2262 | Álvaro              | Castro Moreno
      2283 | Esteban             | Chamorro Marín
      2286 | Álvaro              | Bermúdez Montoya
      2290 | Efraín              | Duque Uribe
      2301 | Sofía               | Serrano Osorio
      2316 | Gilberto            | Losada Pérez
      2328 | Sebastián Diego     | Bonilla Perdomo
      2333 | Alejandro Ricardo   | Betancur Ramos
      2335 | Ruth                | Ruiz Narváez
      2354 | Edilma Manuela      | Bonilla Delgado
      2376 | Marcela             | Cárdenas Gómez
      2383 | Luis                | Peña Martínez
      2386 | Paola               | Martínez Trujillo
      2400 | Myriam Claudia      | Benavides Lozano
      2418 | Amparo              | Rangel Mosquera
      2422 | Leidy               | Burbano Hernández
      2446 | Natalia Lucía       | Díaz Gómez
      2449 | Juan                | Polanía Erazo
      2453 | Jaime Jorge         | Gómez Díaz
      2462 | Pedro               | Prada Uribe
      2468 | Marcela             | Lozano Londoño
      2477 | Claudia             | García Perdomo
      2487 | David Guillermo     | Quintero Sandoval
      2492 | Stella              | Zuluaga Polanía
      2494 | Guillermo Daniel    | Rincón Rangel
      2501 | Jairo               | Molina Pabón
      2508 | Nelson              | Burbano Bermúdez
      2523 | Santiago            | Parra Lozano
      2528 | Sara                | Quintero Romero
      2533 | Martha              | Zuluaga Galvis
      2542 | Abelardo Cristian   | Acevedo Tovar
      2547 | Hernando            | Mosquera Arias
      2560 | Efraín              | Uribe Zuluaga
      2566 | Elsa Ruth           | Sánchez Cabrera
      2576 | Álvaro Andrés       | Trujillo Duque
      2579 | Sandra              | Agudelo Salazar
      2597 | Mónica              | Vera Parra
      2601 | Yolanda             | Montoya Silva
      2611 | Andrea              | Zapata Suárez
      2624 | Gilberto            | Álvarez Herrera
      2626 | Wilmer              | Ramírez Guerrero
      2638 | Brayan              | Henao Bermúdez
      2657 | Aníbal              | Calderón Caicedo
      2660 | Carlos Mauricio     | Cárdenas Henao
      2678 | Ramiro              | Ríos Serrano
      2680 | Claudia             | Molina Lozano
      2696 | Juan                | Salazar Martínez
      2716 | Gloria              | Marín Rivera
      2735 | Abelardo            | Carrillo Guerrero
      2738 | Ana                 | Rojas Narváez
      2739 | Luisa               | Betancur Jiménez
      2744 | Miguel              | Agudelo Parra
      2752 | Gilberto            | Giraldo Martínez
      2755 | Marcela             | Losada Suárez
      2765 | Esperanza           | Mejía Vargas
      2768 | Sara                | Henao Ramírez
      2770 | Reinaldo            | Marín Rojas
      2782 | Diana               | Parra López
      2791 | Sara Alejandra      | Valencia Rodríguez
      2793 | Yeison Alejandro    | Burbano Hernández
      2794 | Andrés              | Erazo Uribe
      2822 | David               | Rodríguez Medina
      2837 | Álvaro              | Niño Serrano
      2840 | Amparo              | Serrano Betancur
      2854 | Cristian            | Betancur Silva
      2858 | Camilo              | Ortiz Romero
      2862 | Guillermo           | Sánchez Romero
      2875 | Luisa               | Mejía Álvarez
      2877 | Mauricio Diego      | Bastidas Silva
      2879 | Yesenia             | Álvarez Duque
      2888 | Mauricio            | Medina Chamorro
      2897 | Édgar               | Rivera Contreras
      2906 | Diego               | Serrano Álvarez
      2914 | Carolina Mónica     | Calderón Suárez
      2917 | Alberto             | Castillo Salazar
      2959 | Alba                | Rangel Bastidas
      2963 | Rubén               | López Arias
      2969 | Carlos              | Betancur Ortiz
      2978 | Manuela             | Barrera Burbano
      2989 | Liliana             | Contreras Villamizar
      2997 | Nelson Iván         | Castillo Erazo
      3012 | Carlos              | Galvis Caicedo
      3015 | Claudia             | Rojas Hernández
      3016 | Ruth                | González Mejía
      3025 | Gustavo             | Herrera Perdomo
      3028 | José                | Cabrera Delgado
      3031 | Juliana Mariana     | Peña Salazar
      3034 | Guillermo Luis      | Contreras Ortega
      3062 | Arturo              | Valencia Polanía
      3080 | David Wilson        | Polanía Muñoz
      3081 | Camilo              | Rodríguez González
      3085 | Lucía               | Ramos Bonilla
      3088 | Yeison              | Acevedo Restrepo
      3090 | Fanny               | Serrano Sánchez
      3102 | Reinaldo            | Osorio Zuluaga
      3105 | Liliana             | Hernández Jiménez
      3106 | Luis Wilson         | Polanía Peña
      3108 | Alejandro           | Flórez Narváez
      3121 | Efraín              | Losada Ríos
      3143 | Luis                | Guerrero Guerrero
      3170 | Claudia             | Muñoz Narváez
      3171 | Javier              | Díaz Ortiz
      3172 | Viviana             | Erazo Narváez
      3175 | Antonio             | Martínez Ibarra
      3182 | Sofía Cecilia       | Carrillo Henao
      3210 | Amparo              | Restrepo Mejía
      3219 | Hernando Samuel     | Flórez Chamorro
      3224 | Luis                | Rojas Galvis
      3257 | Camila              | Giraldo Suárez
      3264 | Carlos              | Acevedo Rincón
      3267 | Carlos Ancízar      | Calderón Mosquera
      3272 | Rubén               | Giraldo Jaimes
      3280 | Yeison              | Benavides Martínez
      3290 | Alba                | Prada Osorio
      3311 | Fernando            | Molina Ramírez
      3313 | Gustavo             | Herrera Vargas
      3314 | Ramiro              | García Agudelo
      3333 | Carolina            | Correa Pinzón
      3335 | Jorge               | Molina Niño
      3336 | Sara                | Acevedo Cárdenas
      3340 | Valentina           | Ospina Molina
      3360 | Francisco           | López Calderón
      3382 | Paola               | Bonilla Tovar
      3392 | Sebastián           | Acevedo Muñoz
      3396 | Álvaro Nicolás      | Trujillo Gutiérrez
      3414 | Javier Édgar        | Trujillo Martínez
      3421 | Alejandra Isabella  | Silva Pérez
      3432 | Gustavo             | Silva Gutiérrez
      3433 | Marcela             | Castillo Galvis
      3442 | Carlos              | Cabrera Ramos
      3461 | Rodrigo             | Muñoz Martínez
      3462 | José                | Mosquera Cáceres
      3481 | Ramiro              | Agudelo Herrera
      3485 | Andrea              | Tovar Hernández
      3495 | Yesenia Camila      | Zuluaga Díaz
      3513 | Carolina            | Castro Jaimes
      3516 | Viviana             | Romero Rodríguez
      3540 | Erika               | Marín Ramírez
      3542 | Olga                | Erazo Rangel
      3548 | Juan                | Guerrero García
      3569 | Leidy Marcela       | Serrano Cuéllar
      3576 | Gilberto            | Mora Polanía
      3583 | Rafael              | Villamizar Rivera
      3595 | Gustavo Aníbal      | Perdomo Gutiérrez
      3600 | Juliana             | Cárdenas González
      3616 | Alberto             | Contreras Lasso
      3618 | Guillermo           | Henao Montoya
      3620 | Efraín              | Mora Guerrero
      3623 | Abelardo            | Henao Bermúdez
      3657 | Myriam              | Londoño Barrera
      3661 | Teresa Ángela       | Carrillo Giraldo
      3673 | Mauricio            | Erazo Barrera
      3675 | Felipe              | Bonilla Losada
      3680 | Fernando            | Zapata Burbano
      3681 | Andrea Olga         | Villamizar Mejía
      3703 | Arturo              | Cabrera Agudelo
      3708 | Jairo               | Bedoya Gutiérrez
      3725 | Arturo              | Bedoya Polanía
      3726 | Daniel              | Barrera Lasso
      3727 | Wilson Óscar        | Rojas Ospina
      3729 | Liliana             | Carrillo Serrano
      3730 | Teresa Manuela      | Erazo Chamorro
      3738 | Javier              | Zapata Rangel
      3739 | María               | Burbano Duarte
      3742 | Gladys              | Prada Díaz
      3743 | Elsa                | Molina Uribe
      3754 | Esteban             | Mora Parra
      3758 | Ana Valentina       | Martínez Benavides
      3759 | Ángela              | Correa Cardona
      3767 | Alejandro           | Benavides Barrera
      3769 | Ramiro              | Rincón Rodríguez
      3774 | Mariana Aura        | Ramos Mejía
      3779 | Adriana             | Álvarez Duque
      3781 | Gabriela            | Mosquera Hernández
      3789 | Samuel Brayan       | Perdomo Duque
      3792 | Ramiro              | Calderón Acevedo
      3800 | Luz                 | Álvarez Carrillo
      3802 | Claudia             | Niño Lasso
      3806 | Jairo               | Delgado Hernández
      3807 | Gilberto            | Agudelo Acevedo
      3825 | Ancízar             | Zuluaga Marín
      3837 | Efraín              | Prada Gómez
      3847 | David               | Caicedo Romero
      3861 | Antonio             | Prada Pinzón
      3868 | Miguel Pedro        | Quintero Montoya
      3873 | Cecilia Mercedes    | Perdomo Arias
      3875 | Hernando            | Trujillo Ibarra
      3887 | Carmen              | Mora Suárez
      3891 | Nelson              | Barrera Castro
      3900 | Gustavo             | Hernández Arias
      3908 | Yeison              | Delgado Marín
      3931 | José                | Ramos Vargas
      3944 | Orlando             | Jaimes Calderón
      3949 | Ana                 | Trujillo Acevedo
      3958 | Arturo Rafael       | Pérez Romero
      3966 | Alberto             | Ortiz Sandoval
      3975 | Pedro               | Serrano Herrera
      4000 | Luisa               | Montoya Agudelo
      4001 | Fanny               | Contreras Valencia
      4009 | Fernando            | Jaimes García
      4015 | Valentina           | Gómez Correa
      4017 | Lucía               | Niño Romero
      4026 | Gustavo             | Contreras Barrera
      4060 | Myriam              | Galvis Galvis
      4063 | Orlando             | Arango Silva
      4083 | Andrés Ramiro       | Flórez Erazo
      4088 | Alberto             | Gutiérrez Trujillo
      4089 | Gabriela Sofía      | Cuéllar Londoño
      4107 | Wilmer Guillermo    | Hernández Ríos
      4124 | Cecilia             | Ospina Restrepo
      4127 | Libardo             | Gómez Peña
      4141 | Hugo                | Rojas Vargas
      4149 | Amparo              | Rojas Trujillo
      4154 | Nelson              | Gómez Salazar
      4155 | Cecilia             | Castro Vélez
      4175 | Luz                 | Molina Carrillo
      4177 | Rafael              | Ramos Salazar
      4180 | Ancízar             | Carrillo Delgado
      4205 | Carlos Cristian     | Suárez Jiménez
      4230 | Gilberto Mario      | Correa Montoya
      4243 | Sandra              | Hernández González
      4244 | Santiago            | Montoya Moreno
      4246 | Reinaldo            | Polanía Gómez
      4255 | Fanny Felipe        | Mejía Barrera
      4265 | Adriana Mónica      | Cuéllar Rivera
      4274 | Javier              | Pérez Bedoya
      4294 | Pedro Alejandro     | Peña González
      4299 | Nicolás             | Castillo Lasso
      4329 | Felipe              | Vélez Medina
      4331 | Héctor              | Lasso Betancur
      4332 | Hernando            | Erazo Restrepo
      4341 | Inés                | Rangel García
      4343 | Amparo              | Martínez Moreno
      4364 | Yeison              | Flórez Cardona
      4367 | Abelardo            | Cuéllar Sánchez
      4369 | Yuliana             | Rincón Correa
      4374 | Natalia             | Álvarez Marín
      4381 | Brayan              | Torres Suárez
      4383 | Sofía               | Narváez Jaimes
      4400 | Wilmer              | Bedoya Caicedo
      4401 | Leidy Sandra        | Sánchez Castillo
      4405 | Manuel Gustavo      | Pérez Polanía
      4411 | Beatriz             | Jiménez Carrillo
      4439 | Nubia Carolina      | Perdomo Losada
      4447 | Olga                | Losada Calderón
      4450 | Antonio             | Suárez Rodríguez
      4457 | Daniela             | Martínez Galvis
      4467 | Fernando Andrés     | Duarte Peña
      4494 | Hugo                | Valencia Valencia
      4520 | Erika               | Ortiz Rincón
      4522 | Hernando Édgar      | Cárdenas Londoño
      4526 | Samuel Fabio        | Herrera Galvis
      4534 | Liliana             | Narváez Losada
      4538 | Lucía Wilson        | Castillo Delgado
      4547 | Fernando            | Mosquera Mora
      4550 | Álvaro              | Carrillo Mosquera
      4564 | Luz                 | Trujillo Restrepo
      4567 | Cristian            | Caicedo Benavides
      4570 | Rosa                | González Bastidas
      4580 | Mercedes            | Medina García
      4583 | Ana Rocío           | Zuluaga Erazo
      4594 | Héctor              | Vélez Villamizar
      4599 | Inés                | Mosquera Tovar
      4607 | Lorena              | Betancur Rangel
      4608 | Francisco           | Niño Caicedo
      4609 | Emilio              | Osorio Calderón
      4618 | Claudia             | Muñoz Erazo
      4642 | Alejandro           | Betancur Herrera
      4647 | Leidy Nubia         | Peña Marín
      4648 | Iván                | Carrillo Betancur
      4652 | Fernando            | Losada Mosquera
      4665 | Sebastián           | Caicedo Quintero
      4675 | Alejandra           | Molina Torres
      4681 | Ricardo             | Medina Vélez
      4689 | Rocío               | Marín Silva
      4690 | Diana               | Giraldo Flórez
      4692 | Alberto Mateo       | Delgado Galvis
      4693 | Fernando            | Calderón Pérez
      4696 | Fabio               | Moreno Flórez
      4698 | David               | Ospina Castillo
      4704 | Sofía               | Caicedo González
      4733 | Erika               | Uribe Osorio
      4768 | Alejandra           | Sandoval Trujillo
      4781 | Marleny Edilma      | García Londoño
      4791 | Luz Leidy           | Vera Niño
      4793 | Cristian Ramiro     | González García
      4795 | Rodrigo             | Gómez Arias
      4801 | José                | Bastidas Sandoval
      4809 | Gabriela            | Arango Galvis
      4812 | Jaime               | Vargas Bastidas
      4832 | Gladys              | Zapata Osorio
      4837 | Gabriela            | Arias Bedoya
      4845 | Alejandro           | Caicedo Duarte
      4866 | Diana               | Silva Uribe
      4869 | Wilmer              | Pinzón Arango
      4879 | Alberto             | Cuéllar Hernández
      4888 | Leidy               | Duarte Ortiz
      4894 | Esteban             | Chamorro Álvarez
      4897 | Nelson Wilson       | Cáceres Castillo
      4901 | Ancízar             | Pinzón Ríos
      4906 | Miguel Manuel       | Ospina Duque
      4912 | José                | Suárez Quintero
      4925 | David Wilson        | Mora Zuluaga
      4939 | Alejandro Ricardo   | Acevedo Lozano
      4943 | Álvaro              | Lozano Sandoval
      4961 | Daniela             | Herrera Londoño
      4974 | Yesenia Lorena      | Arango Medina
      4976 | Hugo                | Valencia Calderón
      4981 | Adriana             | Losada López
      4988 | Liliana             | Narváez Flórez
      4994 | Andrés              | Ramírez Correa
      5016 | Jorge Wilmer        | Londoño Duque
      5017 | Miguel Jorge        | Castillo Narváez
      5033 | Jorge               | Bastidas Sandoval
      5038 | Reinaldo            | Rojas Montoya
      5045 | Reinaldo            | Mora Parra
      5048 | Martha Ancízar      | Cáceres Pabón
      5050 | Édgar               | Castro Burbano
      5063 | Manuel              | Calderón Gómez
      5068 | Adriana Myriam      | Delgado García
      5078 | Rosa                | Mosquera Cuéllar
      5085 | Héctor              | Polanía Hernández
      5087 | Santiago            | Duarte Sánchez
      5091 | Gilberto            | Perdomo Londoño
      5096 | Abelardo            | Ramírez Polanía
      5098 | Sofía Viviana       | López Calderón
      5102 | Inés Paola          | Rodríguez Díaz
      5104 | Javier              | Muñoz Losada
      5109 | Camila              | Torres Jaimes
      5128 | Yeison              | Uribe Peña
      5131 | Daniel              | Vera Cabrera
      5134 | Inés                | Peña Caicedo
      5167 | Andrés              | Molina Acevedo
      5168 | Carolina            | Lasso Martínez
      5178 | Wilson              | Gómez Suárez
      5180 | Nubia               | Mejía Rivera
      5208 | Ángela              | Caicedo Lozano
      5211 | Cecilia             | Acevedo Polanía
      5214 | Nicolás Julián      | López Bedoya
      5215 | Germán              | Molina Jaimes
      5219 | Adriana             | Herrera Betancur
      5228 | Natalia             | Salazar Erazo
      5256 | Carlos              | Mejía Bedoya
      5259 | Wilmer              | Trujillo Arango
      5263 | Elsa                | Molina Peña
      5266 | Reinaldo            | Henao Ortega
      5268 | Hernando            | Erazo Montoya
      5272 | Andrés              | Hernández Ospina
      5273 | Cristian David      | Álvarez Romero
      5277 | Antonio             | Molina Tovar
      5279 | Blanca              | López Londoño
      5280 | Julián              | Peña Betancur
      5286 | Alberto             | Álvarez Vargas
      5311 | Ramiro              | Hernández Correa
      5324 | Cristian Alejandro  | Vera Cardona
      5344 | Edilma              | Muñoz Contreras
      5347 | Mario Francisco     | Ruiz Henao
      5358 | Juan                | Villamizar Losada
      5363 | Heriberto Hugo      | Chamorro Rangel
      5399 | Lorena              | Gómez Cardona
      5413 | Fanny               | Serrano Correa
      5420 | Paola               | Moreno Montoya
      5421 | Paola               | Cárdenas Villamizar
      5474 | Alejandra           | Arias Prada
      5482 | Andrea Dora         | Agudelo Silva
      5492 | Nubia               | Burbano Flórez
      5507 | Alba                | Narváez Bedoya
      5517 | Mateo               | Acevedo Benavides
      5552 | Mónica              | Rincón Giraldo
      5577 | Mauricio            | Cardona Cardona
      5591 | Andrés Camilo       | Arias Bonilla
      5592 | Esperanza           | Mejía Betancur
      5602 | Laura               | García Martínez
      5610 | Daniel              | Molina Prada
      5615 | Guillermo           | Ortega Zuluaga
      5631 | Stella              | Montoya Salazar
      5635 | Ricardo             | Pérez Guerrero
      5653 | Óscar               | Bedoya Gómez
      5654 | Daniel              | Bastidas Rodríguez
      5656 | Álvaro              | Galvis Agudelo
      5664 | Yeison              | Mora Chamorro
      5665 | Jorge Jairo         | Martínez Mora
      5694 | Álvaro              | Silva Álvarez
      5703 | Yesenia             | Ortega Vargas
      5704 | Pedro Rubén         | Vera González
      5756 | Alejandra           | Vélez Ramos
      5760 | Beatriz             | Ibarra Silva
      5786 | Fanny               | García Lozano
      5794 | Óscar Brayan        | Galvis Rivera
      5800 | Emilio              | Sánchez Valencia
      5804 | Wilmer              | Rivera Cardona
      5806 | Rodrigo             | García Ibarra
      5819 | Ruth                | Barrera Calderón
      5829 | Francisco Germán    | López Peña
      5832 | Wilson              | Ramos Cárdenas
      5840 | Nubia Edilma        | Herrera Marín
      5852 | Ancízar Wilson      | Mosquera Montoya
      5859 | Daniel              | González Erazo
      5860 | Libardo             | Parra Villamizar
      5884 | Rodrigo             | Peña Calderón
      5896 | Carmen              | Rincón Sánchez
      5897 | Manuel              | Jiménez Moreno
      5898 | Miguel              | Mosquera Valencia
      5901 | Yolanda Blanca      | Martínez Rojas
      5945 | Hernando            | Delgado Calderón
      5947 | Mariana Sofía       | Narváez Mora
      5948 | Yuliana             | Zuluaga Flórez
      5951 | Aura                | Chamorro Duarte
      5964 | Luz                 | Vélez Rojas
      5968 | Marcela             | Mosquera Ríos
      5982 | Javier              | Sánchez Marín
      6012 | Esperanza           | Montoya Peña
      6018 | Esperanza           | Herrera Ramírez
      6061 | Mario               | Serrano Carrillo
      6062 | Héctor Carlos       | Cárdenas Sánchez
      6096 | Paola               | Niño Martínez
      6114 | Esteban             | Suárez Mosquera
      6124 | Samuel              | Erazo Cárdenas
      6139 | Manuela             | Flórez Benavides
      6154 | Marleny             | Flórez Delgado
      6161 | Fabio               | Bermúdez Perdomo
      6222 | Edilma              | Hernández Barrera
      6225 | Orlando             | Ruiz Rincón
      6245 | Liliana             | Rojas Valencia
      6248 | Gilberto Guillermo  | Niño Silva
      6257 | Carmen Adriana      | Ríos Díaz
      6280 | Carolina            | Duarte Ospina
      6283 | Ancízar Cristian    | Gutiérrez Lasso
      6285 | Héctor              | Calderón Molina
      6293 | Marcela Laura       | Serrano Valencia
      6298 | Antonio             | Agudelo Narváez
      6310 | Javier              | Silva Jiménez
      6318 | Héctor              | Trujillo Cabrera
      6320 | Luisa               | Caicedo Restrepo
      6321 | Sebastián           | Agudelo López
      6326 | Liliana             | Torres Salazar
      6338 | Wilmer              | Duarte Jaimes
      6346 | Juan Iván           | Cáceres Narváez
      6378 | Luis                | Rangel Calderón
      6385 | Julián Hernando     | Peña García
      6398 | Miguel              | Losada Cáceres
      6414 | Gilberto            | Cuéllar Cáceres
      6420 | Ramiro              | Agudelo Silva
      6427 | Wilson Brayan       | Parra Ruiz
      6456 | Carolina            | Polanía Herrera
      6458 | Martha              | Castillo Trujillo
      6484 | Blanca              | Acevedo Martínez
      6485 | Samuel              | Valencia Medina
      6488 | Hugo                | Mejía Díaz
      6494 | Cristian Julián     | Giraldo Restrepo
      6496 | Ricardo Santiago    | López Carrillo
      6502 | Dora Olga           | Salazar Restrepo
      6504 | Nicolás             | Medina Montoya
      6508 | Reinaldo Rodrigo    | Bedoya Osorio
      6509 | Efraín              | Bedoya Jiménez
      6516 | Jorge               | Ibarra Prada
      6525 | Diana               | Cuéllar Valencia
      6531 | Francisco           | Barrera Jaimes
      6537 | Felipe              | Bedoya Ramos
      6542 | Francisco           | Vera Prada
      6544 | Javier              | Benavides Guerrero
      6551 | Mónica              | Peña Correa
      6553 | Alejandro           | Mosquera Jaimes
      6559 | Carmen              | Bermúdez Chamorro
      6567 | Mercedes            | Correa Cabrera
      6572 | Erika               | Castro Duque
      6586 | Rafael              | Bastidas González
      6595 | Rocío Gloria        | Medina Cáceres
      6596 | Yesenia             | Peña Rivera
      6605 | Nicolás Aníbal      | Villamizar Cardona
      6660 | Pedro               | Burbano Cáceres
      6662 | Nicolás David       | Marín Niño
      6671 | Heriberto           | Henao Mosquera
      6677 | Aníbal Antonio      | Polanía Sandoval
      6691 | Sofía               | Losada Rangel
      6692 | Efraín              | Pérez Serrano
      6693 | Pedro Ricardo       | Castro Vélez
      6697 | Guillermo           | Álvarez López
      6710 | Daniela             | Ibarra Lozano
      6717 | Alba                | Mejía Castro
      6741 | Martha              | Bastidas Sandoval
      6742 | Gustavo             | Muñoz Mejía
      6743 | Mauricio Juan       | Silva González
      6744 | Luis                | Parra Arango
      6746 | Adriana Juan        | Quintero Ortiz
      6748 | Martha              | Díaz Perdomo
      6750 | Orlando             | Londoño Rojas
      6758 | Hugo                | Pabón Castro
      6781 | Jaime Wilmer        | Muñoz Calderón
      6799 | Erika Sofía         | Rincón Lozano
      6804 | Libardo             | Narváez Zuluaga
      6806 | Efraín              | Salazar Herrera
      6814 | Juliana             | Osorio Molina
      6830 | Luis                | Rivera Álvarez
      6839 | Alejandra           | Valencia Ibarra
      6840 | Gilberto            | Rojas Acevedo
      6844 | Gladys Diana        | Calderón Pinzón
      6851 | Aura                | Cáceres García
      6871 | Lorena              | Flórez Pinzón
      6909 | Javier              | Parra Restrepo
      6935 | Valentina           | Muñoz Bermúdez
      6937 | Marleny Rocío       | Cárdenas Ospina
      6938 | Sara Edilma         | Villamizar Correa
      6940 | Aura                | Losada Prada
      6942 | Luis                | Gutiérrez Quintero
      6959 | José Julián         | Parra Betancur
      6965 | Yesenia             | Díaz Gutiérrez
      6985 | Germán              | Osorio Serrano
      6994 | Luz                 | Ibarra Gómez
      7001 | Efraín              | Silva Mejía
      7003 | Esperanza           | Jaimes Narváez
      7009 | Lucía Gloria        | Gómez Delgado
      7012 | Gustavo             | Ortiz Rincón
      7018 | Alejandra           | Mejía Castillo
      7020 | Natalia             | Rivera Ríos
      7021 | Diana Sandra        | Villamizar Ruiz
      7029 | Stella              | Sandoval Rojas
      7033 | Amparo              | Agudelo Sandoval
      7035 | Natalia             | Medina Galvis
      7047 | Santiago            | Sandoval Mejía
      7060 | Abelardo Alejandro  | Narváez Erazo
      7061 | Lorena              | Pérez Caicedo
      7069 | Yeison Mauricio     | Calderón Montoya
      7073 | Guillermo           | Medina Lasso
      7112 | Esperanza           | Herrera Silva
      7117 | Samuel              | Muñoz Vélez
      7121 | Reinaldo Felipe     | Ruiz Salazar
      7126 | Sara                | Vargas Galvis
      7128 | Óscar Rubén         | Marín Ríos
      7132 | Mateo               | Bonilla García
      7136 | Nicolás             | Sandoval Romero
      7138 | Mateo Francisco     | Jaimes García
      7142 | Efraín              | Moreno Mora
      7146 | Carolina            | Ortega Ortiz
      7161 | Heriberto           | Cabrera Tovar
      7180 | Jairo Libardo       | Cárdenas Arango
      7188 | Fabio               | Ospina Díaz
      7211 | Fernando            | Duque Rincón
      7218 | Marleny             | Erazo Delgado
      7226 | Mario               | Henao Ibarra
      7229 | Myriam              | Niño Jiménez
      7235 | Martha              | Losada Duarte
      7249 | Gustavo Reinaldo    | Sandoval Suárez
      7254 | Carlos              | Calderón Cuéllar
      7270 | Santiago            | Giraldo Osorio
      7297 | Cristian            | Silva Cuéllar
      7312 | Álvaro              | Galvis Torres
      7316 | Esteban             | Valencia Rivera
      7327 | Sebastián Javier    | Álvarez Bermúdez
      7330 | Álvaro              | Caicedo Hernández
      7336 | Blanca              | Tovar Cabrera
      7339 | Rubén               | Ríos Sánchez
      7380 | Gloria Erika        | Correa Álvarez
      7385 | Aníbal              | Lozano Giraldo
      7390 | José                | Bermúdez Gómez
      7403 | Mateo               | Bastidas Serrano
      7405 | Emilio              | Polanía Gómez
      7409 | Claudia Patricia    | Giraldo Vargas
      7414 | Alberto             | García Bermúdez
      7419 | Paola Hernando      | Silva Restrepo
      7420 | Cecilia Mariana     | Mosquera Delgado
      7423 | Elsa                | Pérez Londoño
      7424 | Alejandra           | Lasso Mosquera
      7430 | Carmen              | Perdomo Betancur
      7433 | Fernando            | Trujillo Ospina
      7435 | Nelson              | Ortiz Rincón
      7436 | Gilberto Manuel     | Delgado Agudelo
      7444 | Yuliana             | Osorio Rangel
      7450 | Fabio               | Rincón Cuéllar
      7470 | Hugo                | Lozano Agudelo
      7475 | Cristian Emilio     | Correa Medina
      7476 | Arturo Carlos       | Mejía Torres
      7481 | Wilmer              | Carrillo Cuéllar
      7509 | Mario               | Uribe Cuéllar
      7527 | Cecilia             | Giraldo Medina
      7534 | Esperanza Natalia   | Torres Jiménez
      7551 | Ana                 | Herrera Betancur
      7554 | Felipe              | Bastidas Cabrera
      7568 | Alberto             | Zuluaga Ortega
      7575 | Ramiro              | Duarte Pérez
      7580 | Camilo              | Castro Romero
      7583 | Guillermo           | Zapata Zuluaga
      7585 | David               | Mosquera Medina
      7589 | Manuel              | Rojas Muñoz
      7600 | Germán              | Parra Cárdenas
      7603 | Esperanza           | Castro Suárez
      7609 | Santiago            | Calderón Trujillo
      7616 | Carlos Ramiro       | Rangel Duarte
      7624 | Juan                | Cabrera Ortega
      7629 | Gabriela            | Rangel Correa
      7647 | Dora                | Sánchez Osorio
      7650 | Andrea              | Narváez Mosquera
      7659 | Ricardo             | Villamizar Erazo
      7666 | Héctor Wilson       | Betancur Cáceres
      7674 | Arturo              | Villamizar Jaimes
      7680 | Lucía               | Ortiz Rangel
      7683 | Elsa                | Rangel Sandoval
      7684 | Gladys              | Castillo Lasso
      7692 | Viviana Gladys      | Marín Galvis
      7710 | Aníbal              | Vargas Pérez
      7713 | Samuel              | Mejía Gómez
      7714 | Javier              | Pabón Trujillo
      7717 | Alejandra           | Muñoz Caicedo
      7731 | Jazmín              | Serrano Lasso
      7736 | Felipe              | Díaz Silva
      7740 | Emilio              | Lasso Romero
      7741 | Germán              | Giraldo Romero
      7754 | Nelson              | Ramírez Trujillo
      7756 | Nubia Yolanda       | Molina Correa
      7760 | Guillermo           | Cáceres Bonilla
      7765 | Carmen Rosa         | Ruiz Ruiz
      7784 | Héctor              | Agudelo Quintero
      7789 | Brayan              | Ortega Álvarez
      7792 | Reinaldo Germán     | Arango Gómez
      7794 | Jazmín              | Álvarez Cáceres
      7828 | Viviana             | Delgado Valencia
      7830 | Laura               | Quintero Delgado
      7831 | Guillermo           | Molina Mosquera
      7836 | Miguel Wilson       | Vélez Zapata
      7856 | Julián              | Romero Salazar
      7866 | Luisa               | Lozano Medina
      7869 | Yeison Camilo       | Muñoz Muñoz
      7877 | Samuel              | Guerrero Martínez
      7878 | Dora                | Vélez Álvarez
      7898 | Esperanza           | Romero Betancur
      7902 | Reinaldo            | Chamorro Rangel
      7903 | Dora                | Rangel Arango
      7924 | Rosa                | Cáceres Burbano
      7928 | Abelardo            | Villamizar Restrepo
      7956 | Mauricio            | Chamorro Bermúdez
      7965 | Sara                | González Duarte
      7967 | Marcela             | Mora Salazar
      7976 | Emilio              | Duarte Pérez
      7978 | Lorena              | Jaimes Rojas
      7987 | Blanca              | Cuéllar Medina
      7997 | Stella              | Cárdenas Sánchez
      8000 | Mercedes Mónica     | Parra Jiménez
      8003 | Myriam              | Zuluaga Niño
      8011 | Gloria              | Gómez García
      8015 | Lorena Mercedes     | Burbano Agudelo
      8026 | Diana               | Molina Serrano
      8030 | Andrea              | González Henao
      8031 | Ricardo             | Valencia Díaz
      8046 | Mario               | Guerrero Uribe
      8051 | Fabio               | Narváez Bermúdez
      8058 | Laura               | Silva Hernández
      8067 | Amparo              | Caicedo Ramírez
      8070 | Cristian            | Vera Cardona
      8072 | Ruth                | Ríos Zapata
      8081 | Esperanza           | Trujillo Niño
      8117 | Nubia               | Ríos Herrera
      8143 | David Mateo         | Trujillo Hernández
      8145 | Germán Hernando     | Ortega Polanía
      8167 | Esteban             | Vera Zuluaga
      8170 | Pedro Ancízar       | Pinzón Galvis
      8184 | Jairo Sebastián     | Medina Trujillo
      8192 | Esperanza Alejandra | Agudelo Zuluaga
      8210 | Daniela             | Vera Quintero
      8213 | Carmen              | López Cardona
      8214 | Yolanda Ángela      | Contreras Cárdenas
      8234 | Gloria Paola        | Montoya Jiménez
      8241 | Esperanza           | Ramos Caicedo
      8246 | Marcela             | Contreras Silva
      8264 | Juliana Nubia       | Carrillo Niño
      8270 | Patricia Isabella   | Medina Acevedo
      8289 | Natalia             | Vélez Arango
      8308 | Gabriela            | Mora Niño
      8314 | Rafael              | Cuéllar Vargas
      8323 | Gladys              | Vélez Torres
      8325 | Isabella            | Cabrera Agudelo
      8333 | Felipe              | Castillo Suárez
      8336 | Rubén               | Bedoya Londoño
      8337 | Mateo               | Gutiérrez Torres
      8339 | Brayan              | Muñoz Flórez
      8341 | Laura               | Narváez Chamorro
      8346 | Jaime               | Betancur Rangel
      8354 | Gabriela            | Mejía Silva
      8360 | Orlando             | Torres Castro
      8362 | Yolanda             | Cáceres Caicedo
      8377 | Marleny             | Ortega Parra
      8384 | Carlos Manuel       | Acevedo Moreno
      8394 | David               | Rojas Barrera
      8398 | Pedro               | Correa Valencia
      8399 | Alba                | Salazar Castro
      8402 | Fabio               | Gómez Henao
      8406 | Wilmer              | Ruiz Benavides
      8410 | Erika               | Duarte Carrillo
      8413 | Julián              | Hernández Cárdenas
      8418 | Samuel              | Arias Betancur
      8421 | Jorge               | Carrillo Restrepo
      8427 | Édgar               | Rojas Montoya
      8430 | Miguel              | Vélez Torres
      8437 | Hernando            | Suárez Osorio
      8465 | Juan                | Rivera Jaimes
      8469 | Wilson              | Marín Zuluaga
      8471 | Nelson              | Henao González
      8474 | Heriberto           | Rangel Ibarra
      8485 | Ancízar Cristian    | Polanía Delgado
      8488 | Camila              | Salazar Muñoz
      8493 | Alba                | Restrepo Sandoval
      8503 | José Miguel         | Niño Montoya
      8513 | Diego Aníbal        | González Marín
      8521 | Felipe Camilo       | Gómez Cáceres
      8527 | Samuel              | Jiménez Niño
      8541 | Fabio               | Carrillo Zapata
      8549 | Teresa              | Prada García
      8551 | Olga                | Rangel Caicedo
      8553 | Amparo              | Chamorro Mosquera
      8558 | Diego               | Quintero Chamorro
      8561 | Daniela             | Ríos Narváez
      8565 | Heriberto Ramiro    | Vélez Ruiz
      8588 | Javier              | Erazo Medina
      8590 | Yesenia             | Duque Quintero
      8593 | Esperanza Nubia     | Agudelo Correa
      8600 | Felipe Luis         | Benavides Ortiz
      8601 | Myriam              | Rodríguez Flórez
      8613 | Liliana             | Álvarez Molina
      8619 | Aura Inés           | Mora Delgado
      8620 | Olga                | Duque Osorio
      8624 | Jaime               | Rojas Medina
      8639 | José                | Rojas Bastidas
      8648 | Liliana             | Gómez Prada
      8657 | Samuel              | Marín Suárez
      8658 | Carolina            | Contreras Cabrera
      8696 | Daniel              | García Flórez
      8698 | Abelardo            | García Cardona
      8700 | Jairo               | Duque Carrillo
      8724 | Hernando            | Parra Rodríguez
      8729 | Juan                | Losada Montoya
      8730 | Fanny               | Peña Rangel
      8781 | Sara                | Moreno Arias
      8791 | Fernando            | Jaimes Lasso
      8792 | Carlos              | Lozano Bastidas
      8794 | Samuel              | Salazar Mosquera
      8809 | Édgar               | Ramírez Sánchez
      8826 | Pedro               | Londoño Galvis
      8848 | Ancízar Andrés      | Díaz Caicedo
      8856 | Amparo              | Carrillo Zapata
      8857 | Ancízar             | Zapata García
      8871 | Francisco           | Caicedo Lozano
      8873 | Liliana             | Narváez Rojas
      8883 | Esperanza           | Acevedo Ortiz
      8892 | Nicolás             | Lasso Lasso
      8893 | Orlando             | García Calderón
      8894 | Fanny               | Vélez Rojas
      8900 | Mateo               | Ospina Cuéllar
      8907 | Hugo Héctor         | Burbano Valencia
      8924 | Fabio               | Torres Torres
      8936 | Mercedes            | Losada Gómez
      8943 | Santiago            | Pinzón Sandoval
      8951 | Nubia               | Carrillo Flórez
      9002 | Cecilia Dora        | Arias Cabrera
      9015 | Claudia             | Villamizar Herrera
      9020 | Nicolás             | Chamorro Henao
      9025 | Rocío               | Contreras Muñoz
      9028 | Isabella            | Osorio Ramírez
      9029 | Antonio             | Peña Contreras
      9034 | Gilberto Gustavo    | Galvis Giraldo
      9037 | Amparo Luisa        | Pinzón Zuluaga
      9045 | Emilio Brayan       | Vargas Ruiz
      9057 | Édgar               | Bonilla Barrera
      9063 | Mariana             | Prada Ortega
      9067 | Myriam              | Lasso Villamizar
      9075 | Paola               | Benavides González
      9092 | Wilmer              | Rojas Herrera
      9095 | Ruth                | Cárdenas Gutiérrez
      9103 | Jaime               | Medina Lasso
      9115 | Jairo Heriberto     | Burbano Medina
      9128 | Mauricio            | Gómez Ríos
      9138 | Orlando Óscar       | Polanía Narváez
      9141 | Marcela Juliana     | Silva Erazo
      9153 | Miguel              | Díaz Torres
      9159 | Héctor              | Uribe Prada
      9161 | Ana                 | Jaimes Bastidas
      9177 | Hugo                | Narváez Castro
      9195 | Nelson              | Romero Cardona
      9211 | Patricia Martha     | Galvis Rojas
      9216 | Abelardo            | Caicedo Sandoval
      9225 | Erika               | Tovar Cárdenas
      9233 | Gilberto            | Jiménez Vélez
      9240 | José                | Rojas Osorio
      9254 | Hugo                | Flórez Perdomo
      9255 | Germán              | Calderón Cáceres
      9270 | Carmen              | Cárdenas Moreno
      9292 | Fabio Orlando       | Zuluaga Peña
      9294 | Germán              | Gutiérrez Lozano
      9314 | Óscar Reinaldo      | Romero Montoya
      9315 | Gabriela            | Niño Torres
      9325 | Carolina Liliana    | Sandoval Ortiz
      9361 | Erika Yuliana       | Losada Romero
      9364 | Javier              | Ibarra Restrepo
      9366 | Gloria              | Ramos Arias
      9367 | Olga Camila         | Ortega Osorio
      9403 | Iván                | Serrano Pinzón
      9407 | Javier              | Duarte Caicedo
      9415 | Sandra Elsa         | Ibarra Martínez
      9416 | Aníbal              | Tovar Pinzón
      9431 | Elsa                | Benavides Pabón
      9450 | Rodrigo             | Lozano Medina
      9456 | Luisa               | González Duarte
      9465 | Laura               | Cabrera Molina
      9467 | Paola               | Chamorro Restrepo
      9473 | María               | Bonilla Giraldo
      9480 | Aníbal              | Burbano Cárdenas
      9486 | Daniel              | Molina Rangel
      9487 | Yeison              | Muñoz Medina
      9491 | Sebastián Ancízar   | Agudelo Perdomo
      9545 | Jorge               | Osorio Ruiz
      9556 | Emilio              | Uribe Ramos
      9570 | Guillermo           | Ríos Torres
      9571 | Diego               | Vargas Prada
      9586 | Mercedes            | Montoya Burbano
      9598 | Julián              | Cuéllar Calderón
      9604 | Luisa               | Ibarra Betancur
      9606 | Arturo              | Henao Quintero
      9616 | Inés Viviana        | Arango Galvis
      9624 | Daniela             | Cabrera Ruiz
      9625 | Elsa                | Zuluaga Pabón
      9631 | Rocío               | Calderón Peña
      9651 | Nelson              | Bedoya Guerrero
      9659 | Adriana             | Pabón Sandoval
      9662 | Mario               | Carrillo Lasso
      9678 | Esteban             | Romero Cárdenas
      9685 | Daniela Carolina    | Ibarra Chamorro
      9686 | Ancízar David       | Cáceres Ortega
      9693 | Carmen Luisa        | Carrillo Carrillo
      9709 | Francisco           | Duque Quintero
      9714 | Nicolás             | González Rodríguez
      9718 | Ramiro Emilio       | Henao Quintero
      9741 | Jorge               | García Jaimes
      9746 | Yeison Brayan       | Londoño Acevedo
      9754 | Claudia             | Jiménez Agudelo
      9755 | Julián              | Erazo Pabón
      9757 | Yolanda             | Duarte Flórez
      9759 | Erika               | Peña Marín
      9760 | Jairo               | Mora Rivera
      9783 | Luis                | Perdomo Arango
      9785 | Isabella Ana        | Salazar Vera
      9788 | Camila              | Cárdenas Sánchez
      9822 | Édgar               | Rodríguez Vera
      9826 | Dora                | Betancur Narváez
      9846 | Rocío               | Ibarra Suárez
      9862 | Carolina            | Hernández Acevedo
      9870 | Myriam              | Polanía Vera
      9875 | Gloria              | Díaz Mejía
      9896 | Aníbal              | Flórez Benavides
      9897 | Germán Héctor       | Valencia Zapata
      9921 | Nicolás             | Calderón Vera
      9952 | Javier              | Benavides Calderón
      9955 | Fanny               | Ospina Suárez
      9962 | Wilmer              | Rojas Ibarra
      9967 | Wilson              | Salazar Bonilla
      9971 | Óscar               | Rincón López
      9975 | Teresa              | Medina Chamorro
     10005 | Dora Juliana        | Pabón Cáceres
     10011 | Efraín Jairo        | Rivera García
     10019 | Alba                | Arango Calderón
     10025 | Wilson              | Díaz Ruiz
     10037 | Rosa                | Bermúdez Ortiz
     10042 | Ramiro              | Hernández Ortega
     10045 | Leidy               | Bastidas Castillo
     10046 | Arturo              | Acevedo Torres
     10052 | Gustavo             | Correa Tovar
     10055 | Gabriela Lorena     | Gómez Bonilla
     10084 | Felipe              | Vargas Herrera
     10099 | Mateo               | Suárez Silva
     10114 | Rubén               | Caicedo Rodríguez
     10128 | Mateo Reinaldo      | Perdomo Ortiz
     10130 | Fabio               | Rivera Duque
     10135 | Mateo               | Galvis Mejía
     10136 | Sandra              | Gutiérrez Martínez
     10139 | Luz                 | Mejía Ibarra
     10147 | Edilma              | Ruiz Galvis
     10153 | Inés                | Gutiérrez Contreras
     10162 | Daniel              | Díaz Moreno
     10182 | Cristian            | Caicedo Pabón
     10190 | Gilberto Héctor     | Ruiz Jaimes
     10211 | Leidy               | Zapata Mora
     10232 | Juan                | Pinzón Delgado
     10246 | Carmen              | Hernández Ospina
     10248 | Sebastián           | Castillo Castillo
     10252 | Hugo                | Díaz Gutiérrez
     10266 | Mónica Amparo       | Carrillo Cardona
     10275 | Marcela             | Quintero Vélez
     10281 | Myriam Aura         | Acevedo Guerrero
     10286 | Hugo                | Narváez Barrera
     10291 | Yesenia             | Rodríguez Prada
     10297 | Laura Natalia       | Hernández Rivera
     10301 | Luz María           | Rodríguez Ramírez
     10305 | Sofía Manuela       | Ibarra Londoño
     10307 | Mauricio            | Castillo Uribe
     10314 | Mateo               | Carrillo Molina
     10318 | Jazmín Mónica       | López Muñoz
     10321 | Esperanza           | Sánchez Sánchez
     10329 | Viviana             | Ortiz Pinzón
     10333 | Gladys              | Sandoval Uribe
     10334 | Mauricio Pedro      | Perdomo Castro
     10385 | Myriam              | Ortega Prada
     10400 | Inés                | Ospina Cardona
     10405 | Nelson              | Jiménez Valencia
     10417 | Nicolás             | Cárdenas González
     10430 | Julián              | García Erazo
     10431 | Juliana             | Herrera Delgado
     10448 | Libardo             | Perdomo Galvis
     10469 | Javier              | Rojas Rivera
     10483 | Javier              | Rojas Rodríguez
     10498 | Yolanda Gabriela    | Rincón Betancur
     10503 | Édgar               | Medina Romero
     10506 | Sofía Mercedes      | Zapata Castillo
     10510 | Jairo               | Uribe Betancur
     10536 | Esperanza           | Medina Zuluaga
     10548 | Felipe Orlando      | Agudelo Mosquera
     10565 | Inés                | Lozano Duarte
     10567 | Myriam              | Villamizar Cardona
     10580 | Libardo             | Castro Montoya
     10592 | Ricardo             | Ramírez Ibarra
     10619 | Laura Myriam        | Cardona Villamizar
     10624 | Myriam Claudia      | Suárez Arias
     10654 | Sebastián           | Peña Londoño
     10656 | Cristian Ramiro     | Tovar Perdomo
     10661 | Diana Patricia      | Bedoya Ríos
     10664 | Camila Adriana      | Giraldo Arias
     10714 | Manuel              | Gutiérrez Quintero
     10738 | Francisco           | Mejía Salazar
     10740 | Alberto             | Muñoz Cáceres
     10745 | Lucía Luz           | González Correa
     10765 | Mateo               | Rojas Contreras
     10767 | Manuela             | Ríos Zuluaga
     10774 | Camilo              | Caicedo Martínez
     10784 | Inés                | Lozano Betancur
     10788 | Ruth Erika          | Polanía Mora
     10789 | Manuel              | Arias Salazar
     10791 | Ana                 | Medina Serrano
     10809 | Samuel Efraín       | Galvis Arias
     10810 | Yesenia             | Calderón Sánchez
     10818 | Carmen Fanny        | Parra Narváez
     10819 | Lorena Claudia      | Calderón Lasso
     10821 | Diego               | Arias Romero
     10831 | Esteban             | Arango Díaz
     10835 | Orlando             | Marín Romero
     10842 | Alberto             | Ramos Pabón
     10853 | Gabriela            | Romero Vélez
     10898 | Pedro               | Lasso Álvarez
     10915 | Hugo Manuel         | Pabón Ibarra
     10921 | Rocío               | Álvarez Cárdenas
     10929 | Esteban             | Osorio Mosquera
     10945 | Yeison              | Quintero Betancur
     10950 | Sofía               | Caicedo Pinzón
     10951 | Alejandro Fernando  | Delgado Gómez
     10957 | Fabio Emilio        | Contreras Calderón
     10986 | Marleny             | Polanía Zuluaga
     10999 | Dora                | Hernández Correa
     11010 | Cristian            | Burbano Ortega
     11015 | Brayan              | Acevedo López
     11017 | Nubia               | Cáceres Lozano
     11022 | Amparo Ruth         | Vargas Contreras
     11029 | Andrés              | Ruiz Giraldo
     11032 | Efraín              | Muñoz Giraldo
     11035 | Álvaro              | Castillo Torres
     11050 | José                | Osorio Herrera
     11068 | Guillermo           | Arango Carrillo
     11080 | Sara                | Zapata Vera
     11082 | Ruth                | Bastidas Valencia
     11084 | Alejandra           | Duque García
     11086 | Reinaldo            | Ruiz Agudelo
     11098 | Ricardo             | Pinzón Duarte
     11133 | Yeison              | Quintero Hernández
     11154 | Gloria              | Salazar Flórez
     11201 | Julián              | Ramírez Ospina
     11211 | Sofía               | Ruiz García
     11212 | Francisco           | Galvis Bermúdez
     11221 | Heriberto           | Mejía Herrera
     11223 | Libardo             | Silva Serrano
     11229 | Edilma Ruth         | Caicedo Moreno
     11231 | Wilmer              | Castro Flórez
     11232 | Mateo               | Pabón Cardona
     11236 | Amparo Elsa         | Lozano Ortega
     11245 | Ángela              | Sandoval Vélez
     11248 | Erika Claudia       | Silva Rodríguez
     11265 | Ricardo Arturo      | Niño Trujillo
     11278 | Claudia             | Mora Cabrera
     11280 | Adriana             | Mosquera Ospina
     11286 | Ricardo Reinaldo    | Ríos Zapata
     11303 | Ana                 | Serrano Burbano
     11321 | Edilma              | Erazo Zuluaga
     11336 | Germán              | Marín Betancur
     11341 | Santiago            | González Mejía
     11349 | Carmen Erika        | Bedoya Trujillo
     11353 | Mónica              | Betancur Arango
     11369 | Fabio               | Bermúdez Vargas
     11383 | Gabriela            | Acevedo Peña
     11399 | Rodrigo             | Uribe Herrera
     11400 | Rosa                | Zapata Perdomo
     11424 | Ángela Liliana      | Prada Agudelo
     11442 | Aura                | Rincón Ibarra
     11444 | Luisa               | Tovar Osorio
     11446 | Andrea              | Benavides Gutiérrez
     11462 | Fabio Mateo         | Chamorro Montoya
     11479 | Carmen              | Silva Díaz
     11482 | Francisco           | Zuluaga González
     11499 | Julián              | Betancur Polanía
     11515 | Daniela Liliana     | Mejía Benavides
     11548 | Luisa               | Moreno Muñoz
     11559 | Dora                | Polanía Zapata
     11580 | Yeison              | Cárdenas Bastidas
     11581 | Patricia            | Herrera Hernández
     11593 | Arturo              | Galvis Perdomo
     11609 | Patricia            | Molina Osorio
     11635 | Gilberto Miguel     | Medina Ortega
     11643 | Patricia            | Niño Londoño
     11645 | Yesenia             | Perdomo Zuluaga
     11656 | Nelson              | Álvarez Polanía
     11665 | Orlando Francisco   | González Burbano
     11666 | Álvaro              | Herrera Agudelo
     11685 | Manuela Ruth        | Betancur Agudelo
     11690 | Germán              | Montoya Montoya
     11711 | Rubén Guillermo     | Rivera Cardona
     11716 | Emilio              | Villamizar Rivera
     11720 | Rocío               | Bastidas Ortiz
     11745 | Elsa                | Benavides Bastidas
     11747 | Liliana             | Restrepo Jiménez
     11748 | Luisa Martha        | Caicedo Romero
     11750 | Claudia Yesenia     | Jaimes Gómez
     11751 | Brayan Daniel       | Quintero Duque
     11755 | Stella Cecilia      | Díaz Gutiérrez
     11768 | Iván Nelson         | Ramírez Peña
     11792 | Juliana             | Ospina Prada
     11810 | Antonio             | Delgado Cabrera
     11846 | Carmen              | Hernández Sánchez
     11851 | Manuel Mario        | Bermúdez Molina
     11852 | Nelson              | Pabón Silva
     11853 | Abelardo            | Calderón Villamizar
     11858 | Guillermo           | Marín Uribe
     11862 | Juan Libardo        | Osorio Quintero
     11886 | Leidy               | Muñoz Contreras
     11888 | Ricardo             | Henao Duarte
     11897 | Carlos              | Cárdenas Bermúdez
     11907 | Santiago            | Vargas Trujillo
     11914 | Fernando Gilberto   | García Jaimes
     11918 | Blanca              | Jiménez Jiménez
     11921 | Jorge Alberto       | Correa Villamizar
     11937 | Samuel              | Giraldo Carrillo
     11941 | Arturo              | Hernández Uribe
     11966 | Alejandro           | Castillo Bonilla
     11981 | Ricardo             | Chamorro Pérez
     11987 | Marleny             | Carrillo Arias
     11990 | Guillermo           | Bermúdez Arango
     11992 | José                | Villamizar Hernández
     11993 | Valentina           | Lozano Peña
     12007 | Natalia             | Hernández Vargas
     12015 | Gloria              | Benavides Vargas
     12016 | Andrea              | Sánchez Erazo
     12018 | Juliana             | Trujillo Medina
     12019 | Cecilia             | Moreno Vera
     12024 | Alejandro           | Acevedo Tovar
     12032 | Nicolás             | Duarte Caicedo
     12037 | Arturo              | Montoya Hernández
     12042 | Jaime Wilmer        | Jiménez Zapata
     12052 | Pedro               | Hernández López
     12065 | Manuela             | Rangel Valencia
     12067 | Julián Hernando     | Gutiérrez Zapata
     12068 | Laura               | Peña Galvis
     12074 | Cristian Rafael     | Torres Contreras
     12075 | Yesenia             | García Vargas
     12087 | Ruth Amparo         | Flórez Suárez
     12099 | Wilmer              | Galvis Silva
     12107 | Aníbal Hugo         | Niño Álvarez
     12112 | Heriberto           | Castro Ríos
     12115 | Mercedes            | Serrano Cárdenas
     12118 | Natalia             | Contreras Ospina
     12119 | Álvaro              | Chamorro Vera
     12124 | Manuela Jazmín      | Ortega Galvis
     12127 | Lorena Yuliana      | Hernández Sandoval
     12128 | Rodrigo Mateo       | Bedoya Henao
     12135 | Gladys              | Burbano Carrillo
     12138 | Gustavo             | Agudelo Montoya
     12139 | Mario Germán        | Ibarra Pinzón
     12148 | Santiago            | Muñoz Londoño
     12149 | Yeison              | Valencia Polanía
     12180 | Carolina            | Galvis Montoya
     12194 | Edilma Alejandra    | Niño Giraldo
     12203 | Heriberto Wilmer    | Muñoz Narváez
     12215 | Ramiro              | Ramírez Salazar
     12218 | Carlos              | Chamorro Carrillo
     12239 | Liliana Lorena      | Peña Vera
     12242 | Yesenia             | Tovar Perdomo
     12265 | Paola               | Chamorro Vargas
     12273 | Alba                | Pabón Ortiz
     12279 | Francisco           | Cardona Osorio
     12302 | Diego               | Molina Losada
     12309 | Héctor              | Valencia Jiménez
     12313 | Héctor              | Jaimes Rodríguez
     12316 | Hugo                | Calderón Barrera
     12325 | Andrea              | Castillo Ruiz
     12332 | Wilson              | Osorio Perdomo
     12333 | Rosa                | Serrano Castro
     12337 | Esperanza Gladys    | Arango Narváez
     12344 | Yesenia             | Lozano Caicedo
     12361 | María               | Henao García
     12378 | Daniel              | Bonilla Duarte
     12394 | Lorena              | Martínez Cabrera
     12395 | Valentina           | Agudelo Vargas
     12406 | Pedro               | Salazar Serrano
     12438 | Adriana Alejandra   | González Sánchez
     12447 | Wilson              | Romero Tovar
     12454 | Fernando            | García Torres
     12455 | Olga                | Ortiz Galvis
     12457 | Carlos Fabio        | Arias Hernández
     12471 | Rocío Manuela       | Jaimes Cardona
     12472 | Dora                | Suárez Molina
     12474 | Wilmer              | Vargas Jiménez
     12481 | Jaime Óscar         | Henao Trujillo
     12508 | Edilma              | Ramos Arango
     12509 | Alejandro           | Jaimes Duque
     12516 | Gloria              | Henao Burbano
     12518 | Mateo               | Betancur Ortiz
     12520 | Gabriela            | Guerrero Henao
     12527 | Alejandra           | Rangel Ortiz
     12528 | Arturo Wilmer       | Restrepo Galvis
     12531 | Esteban             | Rojas Mosquera
     12535 | Sofía David         | Londoño Romero
     12561 | Ramiro              | Montoya Duque
     12565 | Emilio              | Calderón Mejía
     12567 | Fanny               | Narváez Pabón
     12568 | Blanca              | Duarte Narváez
     12591 | Blanca              | Carrillo Ramírez
     12598 | Olga                | Cardona Narváez
     12608 | Natalia             | Rojas Benavides
     12613 | Julián              | Serrano Chamorro
     12616 | Ana                 | Vargas Marín
     12621 | Viviana             | Osorio Narváez
     12624 | Arturo              | Zapata Mosquera
     12626 | Jairo Wilson        | Pabón Zuluaga
     12648 | Francisco           | Rangel Cardona
     12652 | Alejandro Mario     | Jaimes Torres
     12663 | Efraín              | Pabón González
     12668 | Nicolás             | Burbano Londoño
     12680 | Reinaldo            | Ramos Mosquera
     12685 | Rosa Paola          | Restrepo Prada
     12699 | Olga                | Martínez Niño
     12711 | Inés                | Jiménez Jaimes
     12721 | Luz                 | Villamizar Rodríguez
     12734 | Viviana Gladys      | Jiménez Jaimes
     12735 | Gladys              | Montoya Mosquera
     12739 | Myriam Liliana      | Uribe Peña
     12748 | María               | Betancur Sandoval
     12749 | Myriam              | Hernández Restrepo
     12750 | Alberto             | Arias Vélez
     12755 | Andrés Abelardo     | Arango Ramos
     12769 | Miguel Felipe       | Castro García
     12776 | Luis                | Cuéllar Jaimes
     12794 | Cecilia             | Suárez Gutiérrez
     12795 | Ancízar             | Ramírez Gómez
     12801 | Iván                | Duarte Londoño
     12806 | Hugo                | Pabón Sandoval
     12808 | Ancízar             | Hernández Sánchez
     12825 | Efraín              | Bastidas Gutiérrez
     12827 | Liliana             | Betancur Serrano
     12829 | Ángela Aura         | Jiménez Muñoz
     12840 | Sandra              | Jaimes Cabrera
     12841 | Javier              | Barrera Restrepo
     12844 | Orlando             | Herrera Tovar
     12858 | Iván                | Zapata Ortiz
     12866 | Laura               | Herrera Narváez
     12867 | Paola               | Pinzón Cabrera
     12881 | Álvaro              | Salazar Molina
     12888 | Gabriela            | Silva Hernández
     12908 | Myriam              | Salazar García
     12921 | Ricardo             | Henao Bedoya
     12929 | Esteban             | Sánchez Contreras
     12935 | Libardo             | Pabón Muñoz
     12938 | Yuliana             | Bonilla Marín
     12939 | Libardo             | Hernández Zuluaga
     12940 | Ramiro              | Rodríguez Delgado
     12964 | Ricardo             | Romero Quintero
     12965 | Andrea              | Ramos Montoya
     12971 | Alberto             | Niño Carrillo
     12977 | Luisa               | Bonilla Zuluaga
     12988 | Pedro               | Molina Sandoval
     12997 | Alejandro           | Agudelo Mosquera
     13003 | Blanca              | Herrera Parra
     13014 | Paola               | Salazar Calderón
     13024 | Manuel              | Díaz Álvarez
     13025 | Rocío               | González Molina
     13037 | Efraín              | Betancur Prada
     13047 | Sebastián Rodrigo   | Rivera Cuéllar
     13050 | Alejandro           | Mosquera Restrepo
     13051 | Ruth                | Romero Londoño
     13057 | Daniel              | Duarte Ríos
     13063 | Laura               | Álvarez Medina
     13064 | Mario               | Perdomo Chamorro
     13068 | Alejandro           | Chamorro Osorio
     13074 | Mariana             | Zapata Sánchez
     13077 | Rosa Fanny          | Silva Peña
     13082 | Arturo              | Perdomo Jaimes
     13083 | Álvaro              | Bedoya Sánchez
     13088 | Aníbal              | Guerrero Uribe
     13093 | Ancízar             | Chamorro Acevedo
     13095 | Miguel Samuel       | Guerrero Niño
     13098 | Andrés              | Gutiérrez Sánchez
     13115 | Diana               | Erazo Mora
     13121 | Pedro               | Rojas Peña
     13125 | Manuel              | Ortiz Suárez
     13149 | Martha Natalia      | Galvis Bonilla
     13165 | Samuel              | Trujillo Suárez
     13169 | Manuel Esteban      | Gutiérrez Contreras
     13177 | Rodrigo             | Jaimes Ramos
     13179 | Mario               | Burbano Jiménez
     13193 | Carolina Mariana    | Pinzón Peña
     13199 | Gabriela            | García Betancur
     13201 | Francisco           | Betancur Uribe
     13207 | Diana               | Ortega Montoya
     13226 | Laura               | Barrera Gutiérrez
     13231 | Lorena              | Bastidas Rangel
     13235 | Andrés              | Moreno Ruiz
     13236 | Héctor              | Correa Agudelo
     13240 | Fabio               | Gutiérrez Bedoya
     13242 | Germán              | Cardona Tovar
     13244 | Camila              | Erazo Marín
     13245 | Aníbal Gustavo      | Herrera Cárdenas
     13262 | Antonio             | Díaz Vélez
     13272 | Nicolás             | Rivera Contreras
     13273 | Mariana Aura        | Bermúdez Moreno
     13276 | Orlando             | Vélez Mora
     13290 | Brayan              | Castillo Cárdenas
     13304 | Abelardo            | Hernández Agudelo
     13305 | Yesenia             | Rojas Romero
     13315 | Daniel              | Carrillo Losada
     13330 | Olga                | Vargas Guerrero
     13333 | Ángela              | Niño Arias
     13335 | Jaime               | Ramos Gutiérrez
     13336 | Mauricio            | Narváez Cabrera
     13338 | Abelardo            | Narváez Parra
     13352 | Lorena              | Guerrero Cardona
     13356 | Yolanda             | Vera Martínez
     13389 | Lorena              | Ríos Sánchez
     13407 | Sara                | Niño Silva
     13412 | Olga                | Narváez Marín
     13433 | Camila              | Cardona Montoya
     13439 | Alba                | Barrera Restrepo
     13449 | Marleny             | Agudelo Gutiérrez
     13453 | Luis                | Jiménez Castro
     13481 | Óscar               | Montoya Ortega
     13518 | Reinaldo            | Marín Polanía
     13523 | Paola               | Agudelo Montoya
     13554 | Elsa                | Jaimes Rivera
     13555 | Brayan              | Montoya Jiménez
     13560 | Jaime               | Parra Agudelo
     13566 | Diego               | Álvarez Castro
     13580 | Mónica              | Rivera Chamorro
     13584 | Efraín              | Tovar Lasso
     13592 | Edilma              | Contreras Salazar
     13594 | Javier              | Caicedo Pabón
     13604 | Teresa María        | Suárez Perdomo
     13608 | Mauricio            | Cardona Niño
     13609 | Laura               | Montoya Jaimes
     13611 | Iván                | Flórez Medina
     13614 | Gabriela            | Calderón Cáceres
     13651 | Brayan              | Lozano Mosquera
     13659 | Yuliana Patricia    | Martínez Delgado
     13663 | Edilma              | Lasso Castillo
     13688 | Marleny             | Ortega Pinzón
     13706 | Gilberto Ancízar    | González Ortiz
     13708 | Luisa Leidy         | Rojas Bedoya
     13711 | Elsa                | Mejía González
     13733 | Santiago Sebastián  | Tovar Cabrera
     13734 | Aura                | Ramos Mejía
     13742 | Luisa               | Duarte Parra
     13757 | Abelardo            | Galvis Ramos
     13767 | Alberto             | Benavides Pérez
     13784 | María               | Rangel Duarte
     13800 | Fernando            | García González
     13808 | Ramiro Julián       | Lozano Villamizar
     13818 | José Mario          | Galvis Ramos
     13827 | Manuela             | Castillo Acevedo
     13837 | Pedro               | Ramírez García
     13838 | Mónica              | Álvarez Pérez
     13842 | Fanny Paola         | Niño Díaz
     13843 | Diego               | Hernández Lozano
     13844 | Erika               | Cuéllar Caicedo
     13848 | Myriam Rosa         | López Flórez
     13863 | Ricardo             | Bastidas Montoya
     13876 | Francisco Mateo     | Rangel García
     13879 | Olga Juan           | Lozano Serrano
     13893 | Gloria              | Narváez Torres
     13910 | Jairo Pedro         | Perdomo Valencia
     13919 | Yeison              | Chamorro González
     13925 | Manuela Isabella    | Agudelo Narváez
     13936 | Samuel              | Caicedo Betancur
     13943 | Francisco           | Losada Correa
     13963 | Laura               | Caicedo Molina
     13985 | Dora                | Zuluaga Serrano
     13989 | Sandra              | Losada Agudelo
     13995 | Claudia             | Flórez Silva
     14009 | Édgar               | López Romero
     14030 | Mateo               | Osorio Rojas
     14055 | Álvaro              | Bastidas Martínez
     14075 | Javier              | Betancur Martínez
     14080 | Mauricio            | Cárdenas Bedoya
     14081 | Manuela             | Acevedo Ramírez
     14084 | Ancízar             | Gutiérrez Parra
     14086 | Luz Daniela         | Correa Benavides
     14096 | Carolina Alejandra  | Londoño Ruiz
     14115 | Andrés              | Bedoya López
     14119 | Edilma              | Lozano Ríos
     14171 | Ricardo Aníbal      | Rivera Delgado
     14173 | Marcela             | Guerrero García
     14192 | Mercedes            | Lozano Flórez
     14202 | Manuel              | Tovar Cabrera
     14203 | Cristian            | Correa Betancur
     14206 | Inés                | Muñoz González
     14225 | Pedro               | Molina Valencia
     14228 | Jairo               | Ortiz Arias
     14249 | Emilio              | Galvis Mora
     14265 | Efraín              | Pinzón Martínez
     14269 | Felipe Samuel       | Peña Ortega
     14280 | Miguel              | Gómez Pérez
     14281 | Ancízar Heriberto   | Carrillo Guerrero
     14283 | Álvaro              | Jaimes Castro
     14305 | Brayan              | Sánchez Serrano
     14312 | Gloria Mariana      | Gómez Barrera
     14315 | Valentina           | Trujillo Carrillo
     14327 | Efraín              | Chamorro Peña
     14337 | Ricardo             | García Galvis
     14344 | Manuel              | Cuéllar Sánchez
     14345 | José                | Bedoya Parra
     14358 | Elsa                | Caicedo Salazar
     14359 | Santiago            | Zapata Pérez
     14365 | Manuel              | Romero Valencia
     14382 | Leidy               | Zuluaga Carrillo
     14395 | Heriberto           | Torres Betancur
     14410 | Jairo               | Díaz Rivera
     14411 | Natalia Camila      | Vélez Gutiérrez
     14414 | Rodrigo             | Trujillo Bedoya
     14419 | Orlando             | Perdomo Duarte
     14422 | Carolina Sandra     | Galvis Contreras
     14423 | Wilmer              | Delgado Rangel
     14425 | Yolanda             | Ríos Giraldo
     14431 | Gustavo             | Correa Suárez
     14449 | Julián              | Uribe Bedoya
     14452 | Julián              | Ospina Duarte
     14461 | José                | Benavides Romero
     14466 | Diana               | Bastidas Cárdenas
     14475 | Nicolás             | Valencia Hernández
     14479 | Andrés              | Delgado Romero
     14484 | Édgar               | Caicedo Pérez
     14493 | Sofía Yolanda       | Herrera Polanía
     14507 | Ricardo Alberto     | Bedoya Gutiérrez
     14511 | Adriana             | Valencia Flórez
     14512 | Nubia               | Pérez Ruiz
     14517 | Natalia Inés        | Vera Burbano
     14528 | Manuel              | Pérez Hernández
     14541 | Rocío               | Sandoval Molina
     14542 | Orlando Germán      | Pérez Zuluaga
     14551 | Ricardo             | Hernández Giraldo
     14554 | Wilmer              | Ospina Erazo
     14560 | Aura                | Jaimes Carrillo
     14571 | Fabio               | Romero Herrera
     14588 | Erika               | Niño Díaz
     14589 | Rosa                | Díaz Bonilla
     14597 | Viviana Mariana     | Betancur Ortega
     14605 | Liliana Diana       | Duarte Muñoz
     14618 | Esperanza           | Burbano Hernández
     14623 | Gladys Diana        | Díaz Arango
     14628 | Aníbal              | Ospina Peña
     14633 | Viviana             | Muñoz Serrano
     14648 | Alejandro Esteban   | Tovar Carrillo
     14662 | Myriam              | Villamizar Ospina
     14668 | Rafael              | Ruiz Zuluaga
     14673 | Diego               | Suárez Pinzón
     14674 | Marcela             | Bedoya Acevedo
     14676 | Beatriz Elsa        | Mora Ríos
     14677 | Jazmín              | Rincón Tovar
     14682 | Lucía Lorena        | Silva Sánchez
     14686 | Óscar               | Herrera García
     14689 | José                | Lozano Jiménez
     14692 | Javier              | Carrillo Hernández
     14693 | Mercedes            | Sánchez Torres
     14696 | Sara                | Bonilla Arango
     14703 | Erika               | Ruiz Pérez
     14713 | Santiago            | Lasso Hernández
     14715 | Santiago            | Pabón Gómez
     14730 | Luis                | Pinzón Bermúdez
     14735 | Nicolás             | Delgado Zuluaga
     14736 | Elsa                | Sánchez Ramírez
     14739 | Fernando            | Mosquera Osorio
     14749 | Gilberto            | Calderón Flórez
     14752 | Diego               | Cárdenas Bermúdez
     14753 | Javier              | Ospina Contreras
     14756 | Emilio Wilmer       | Niño Marín
     14765 | Mariana Luisa       | Arango Serrano
     14779 | Diego Jaime         | Ibarra Hernández
     14780 | Julián              | Silva Narváez
     14793 | Nicolás Édgar       | Parra Sánchez
     14797 | Luisa               | Hernández Medina
     14807 | Rafael              | Pinzón Giraldo
     14816 | Blanca              | Bedoya Giraldo
     14849 | Fanny               | Quintero Trujillo
     14855 | Rocío               | Losada Cáceres
     14862 | Arturo              | Galvis Hernández
     14877 | Andrea              | Herrera Salazar
     14883 | Isabella            | Sánchez Bonilla
     14886 | Luisa               | Mosquera Calderón
     14900 | Aníbal              | Rivera Bonilla
     14906 | Esteban             | Ospina Sánchez
     14909 | José                | Quintero Agudelo
     14914 | Yesenia             | Rojas Álvarez
     14925 | Guillermo           | Contreras Losada
     14929 | Sofía Sandra        | Rincón Flórez
     14936 | Yolanda             | Arango Cáceres
     14937 | José                | Cuéllar Betancur
     14954 | Manuela             | Gutiérrez Burbano
     14963 | Isabella            | Cuéllar Londoño
     14977 | Cecilia Lorena      | Díaz García
     14979 | Diego Andrés        | Guerrero Parra
     14981 | Myriam              | Rojas López
     14986 | Mauricio            | Arango Delgado
     14987 | Juan                | Giraldo Barrera
     14999 | Ricardo             | Rojas Rivera
     15002 | Emilio              | Narváez Rivera
     15023 | Ángela Paola        | Rivera Rodríguez
     15031 | Arturo              | Suárez Romero
     15035 | Óscar Andrés        | Barrera Prada
     15046 | Sebastián           | Villamizar Arango
     15047 | Rosa                | Duarte Montoya
     15054 | Nubia               | Muñoz Tovar
     15055 | Alejandra           | Acevedo Pinzón
     15058 | Diego               | Cáceres Bastidas
     15062 | Andrea              | Vélez García
     15081 | Mateo               | Sánchez Duarte
     15083 | Teresa              | Torres Giraldo
     15093 | Hernando            | Castro Prada
     15106 | Daniela             | Correa Osorio
     15108 | Sofía               | Molina Rojas
     15111 | Mónica              | García Zuluaga
     15114 | Lorena Daniela      | Medina Medina
     15125 | Reinaldo            | Carrillo López
     15130 | Wilson              | Ospina Calderón
     15141 | Antonio Ricardo     | Vera Cardona
     15146 | Andrea Cecilia      | Arias Sandoval
     15170 | Juan Luis           | Osorio Marín
     15197 | Carolina Nubia      | Cabrera Hernández
     15203 | Sandra              | Jaimes Mosquera
     15213 | Luis                | Guerrero Vargas
     15225 | Ana                 | Tovar Sánchez
     15226 | Ricardo Rodrigo     | Erazo Bonilla
     15237 | Isabella            | Ospina Jiménez
     15246 | Marcela             | Mora Mosquera
     15250 | Gilberto Luis       | Agudelo Chamorro
     15252 | Ricardo             | Suárez Ortiz
     15257 | Marcela             | Zuluaga Vargas
     15259 | Paola               | García Castro
     15261 | Antonio             | Mosquera Correa
     15266 | Samuel              | Vera Restrepo
     15268 | Ana Claudia         | Marín García
     15274 | Hernando            | Erazo Medina
     15303 | Elsa                | Silva Sandoval
     15311 | Francisco           | Zapata Castro
     15323 | Andrés              | Vargas Martínez
     15328 | Mario               | Agudelo Calderón
     15348 | Alejandro           | Cuéllar Bermúdez
     15356 | Yuliana Ana         | Suárez Osorio
     15383 | Manuela Liliana     | Agudelo Serrano
     15385 | Arturo              | Sandoval Chamorro
     15389 | Cristian Óscar      | Sandoval Arango
     15417 | Beatriz             | Sánchez Burbano
     15421 | Fernando Cristian   | Hernández Rivera
     15434 | Iván                | Guerrero Mora
     15436 | Felipe              | Cuéllar Vera
     15441 | Lucía               | Giraldo López
     15444 | Óscar               | Sandoval Bonilla
     15467 | Yeison              | Serrano Ortiz
     15476 | Edilma Yesenia      | Pinzón Bonilla
     15481 | Juan                | Londoño Lozano
     15495 | Isabella Teresa     | Ríos Lozano
     15505 | Javier              | Quintero Vélez
     15508 | Mario               | Agudelo Giraldo
     15509 | Santiago            | Betancur Torres
     15510 | Carolina            | Peña Ríos
     15524 | Laura Natalia       | Serrano Vera
     15526 | Jairo Orlando       | Ríos Tovar
     15541 | Carolina            | Zapata García
     15546 | Samuel              | Narváez Calderón
     15557 | Jazmín              | Muñoz Rivera
     15561 | Ramiro              | Ramos Rodríguez
     15585 | Mercedes            | Quintero Contreras
     15586 | Inés                | Rincón Burbano
     15587 | Natalia Juliana     | Bedoya Rodríguez
     15589 | Andrés              | Sandoval Álvarez
     15596 | Hernando            | Ortiz Acevedo
     15597 | Esperanza           | Restrepo Cardona
     15604 | Jorge               | Perdomo Benavides
     15607 | Luz                 | Parra Gómez
     15618 | Mónica Gabriela     | Suárez Losada
     15631 | Alberto             | Restrepo Ibarra
     15636 | Sebastián Daniel    | Romero Trujillo
     15643 | Viviana             | Romero Agudelo
     15644 | Juliana             | Polanía González
     15656 | Nicolás             | Osorio Pérez
     15685 | Sofía               | Silva Losada
     15687 | Javier Álvaro       | Lasso Tovar
     15705 | Héctor              | Cuéllar Vera
     15709 | Fabio Esteban       | Pinzón Barrera
     15722 | Rubén               | Lasso Cárdenas
     15725 | Sandra              | Rojas Calderón
     15732 | José                | Bonilla Polanía
     15750 | Camilo              | Guerrero Narváez
     15764 | Elsa Viviana        | Rodríguez Moreno
     15776 | Ruth Sara           | Galvis Giraldo
     15779 | Patricia            | Romero Ibarra
     15787 | Óscar               | Cardona Benavides
     15789 | Héctor              | Suárez Zuluaga
     15813 | Valentina           | Hernández Ospina
     15816 | Alba                | Pabón Arango
     15840 | Luis                | Montoya Tovar
     15855 | Olga Gladys         | Acevedo Mejía
     15866 | Brayan              | Salazar Cuéllar
     15874 | Yuliana             | Valencia Castro
     15875 | Cecilia             | Delgado Muñoz
     15881 | Pedro               | Hernández Burbano
     15882 | Patricia            | Rojas Bermúdez
     15908 | María               | Polanía González
     15915 | Luz                 | Ortega Montoya
     15924 | Diego               | Tovar Perdomo
     15929 | Santiago            | Marín Villamizar
     15932 | Felipe              | Caicedo Mora
     15939 | Juan                | Herrera Zuluaga
     15943 | Cecilia             | Giraldo Lasso
     15946 | Leidy Dora          | Ortiz Marín
     15951 | Hugo Sebastián      | Vélez Peña
     15958 | Gilberto Rafael     | Bermúdez Quintero
     15969 | Jorge               | Betancur Lozano
     15986 | Manuela             | Duque Hernández
     15991 | Mariana             | Álvarez Álvarez
     15993 | Libardo             | Carrillo Henao
     16012 | Erika               | Montoya Correa
     16016 | Santiago            | Duarte Duarte
     16035 | Camila              | Silva Pabón
     16044 | Ruth                | Delgado Losada
     16051 | Francisco Jorge     | Delgado Muñoz
     16086 | Andrés              | Bonilla Silva
     16093 | Efraín              | Sandoval Villamizar
     16100 | Teresa Ana          | Zuluaga Muñoz
     16105 | Rodrigo             | Restrepo Zuluaga
     16113 | Ángela              | Romero Ramírez
     16117 | Alejandro Héctor    | Giraldo Duarte
     16118 | Arturo              | Marín Duarte
     16123 | Ricardo             | Bonilla Correa
     16143 | Abelardo            | Ortiz García
     16144 | Amparo              | Suárez Caicedo
     16158 | Wilson              | Duarte Prada
     16161 | Brayan              | Silva Delgado
     16164 | Stella              | Bedoya Caicedo
     16173 | Mauricio            | Restrepo Perdomo
     16235 | Ricardo             | Quintero Galvis
     16237 | Gladys Martha       | Ibarra Muñoz
     16272 | Wilson              | Rincón Montoya
     16285 | Manuel              | Hernández Ríos
     16286 | Gladys Amparo       | Herrera Losada
     16300 | Miguel Santiago     | Tovar Silva
     16304 | Fabio               | Muñoz Duarte
     16320 | Fanny Marcela       | Tovar Mejía
     16324 | Héctor              | Jaimes Gutiérrez
     16338 | Ramiro Emilio       | Cáceres Lasso
     16349 | Iván                | Losada Polanía
     16365 | Jaime Wilmer        | Ortiz Vargas
     16388 | Cristian            | González Lasso
     16391 | Andrea              | Jaimes Cáceres
     16392 | Valentina Cecilia   | Bedoya Cáceres
     16402 | Gabriela            | Restrepo Cuéllar
     16403 | Efraín              | Niño Trujillo
     16406 | Beatriz             | Marín Ríos
     16410 | Yuliana Laura       | Gómez Molina
     16433 | Nubia Isabella      | Álvarez Jaimes
     16435 | Yeison              | Delgado Mejía
     16444 | María               | Ramírez Rincón
     16450 | Viviana             | Osorio Díaz
     16469 | Libardo Pedro       | Torres Bonilla
     16483 | Pedro               | Ospina Jiménez
     16484 | Wilmer              | Cuéllar Lasso
     16506 | Javier              | Ruiz Duarte
     16523 | Andrés              | Bermúdez Erazo
     16526 | Paola               | Cardona Polanía
     16546 | Ricardo             | Ibarra Castro
     16552 | Luis Jaime          | Zapata Gómez
     16554 | Myriam Yesenia      | Burbano Cáceres
     16560 | Germán              | Díaz Restrepo
     16561 | Mario               | Bonilla Prada
     16565 | Juan                | Zapata Cáceres
     16571 | Rosa                | Osorio Mora
     16574 | Alejandro           | Ríos Carrillo
     16575 | Olga Beatriz        | Medina Parra
     16578 | Aníbal              | Niño Rincón
     16601 | Diego               | Ospina Salazar
     16614 | Efraín Mauricio     | Delgado Álvarez
     16629 | Marleny             | Díaz Pérez
     16630 | Erika               | Duque Suárez
     16655 | Heriberto           | Delgado Uribe
     16662 | Gladys Patricia     | Sandoval Duarte
     16666 | Héctor              | Parra Mosquera
     16680 | Carlos              | Ruiz Uribe
     16687 | Abelardo Nicolás    | Uribe Pinzón
     16696 | José Gilberto       | Pinzón Díaz
     16697 | Daniel              | Flórez Rivera
     16701 | Martha              | López Losada
     16710 | Cecilia Carmen      | Muñoz Castro
     16717 | Claudia             | Pabón Giraldo
     16728 | Óscar Manuel        | Betancur Rodríguez
     16735 | Hugo                | Galvis Henao
     16740 | Camilo              | Niño Henao
     16741 | Mario               | Londoño Flórez
     16747 | José                | Mora Lozano
     16757 | Fabio               | Sánchez Ramírez
     16758 | Pedro Abelardo      | Vélez Calderón
     16759 | Martha              | Lozano Cardona
     16776 | Mónica              | Pérez Ortiz
     16778 | Felipe Gilberto     | Flórez Benavides
     16780 | Mauricio            | Bastidas Rojas
     16796 | Gloria              | Hernández Correa
     16803 | Héctor              | Caicedo Sánchez
     16809 | Alba                | Agudelo Castillo
     16813 | Julián              | Medina Ortiz
     16815 | Héctor              | Bermúdez Mora
     16817 | Abelardo            | Jaimes Barrera
     16824 | Brayan              | Cuéllar Flórez
     16827 | Nelson              | Perdomo Lozano
     16848 | Camilo Arturo       | Vélez Vélez
     16860 | Martha              | Quintero Rojas
     16872 | Gabriela Ángela     | Cardona Trujillo
     16886 | Cecilia Isabella    | Pérez Castillo
     16887 | Mónica              | Castillo Bonilla
     16889 | Sebastián           | Cáceres Bastidas
     16894 | Fernando Manuel     | Carrillo Jaimes
     16898 | Abelardo Heriberto  | Valencia Castillo
     16899 | Arturo              | Ramírez Barrera
     16900 | Daniel Manuel       | Pérez Benavides
     16907 | Amparo              | Serrano Calderón
     16919 | Libardo Arturo      | Rodríguez Quintero
     16922 | Rafael              | Chamorro Ruiz
     16934 | Natalia Lorena      | Cuéllar Pérez
     16963 | Valentina           | Bastidas Valencia
     16967 | Luisa Diana         | García Castro
     16972 | Nubia               | Caicedo Romero
     16989 | Manuela Yolanda     | Cardona Ibarra
     16992 | Efraín              | Trujillo Sandoval
     16993 | Lorena              | Rodríguez Mosquera
     17002 | Mario               | Mejía Calderón
     17006 | Ricardo             | Losada Rincón
     17010 | Claudia             | Acevedo Cárdenas
     17011 | Antonio Abelardo    | Contreras Vélez
     17020 | Fanny               | Hernández Ramos
     17048 | Brayan              | Tovar Lozano
     17070 | Martha Olga         | Rodríguez Pabón
     17081 | Francisco           | Losada Cabrera
     17096 | Édgar               | Uribe Pabón
     17102 | Felipe Francisco    | Lasso Peña
     17109 | Héctor              | Rangel Ibarra
     17114 | Alejandra Brayan    | Pinzón Martínez
     17151 | Jazmín              | Molina Rojas
     17158 | Rodrigo Javier      | Galvis Erazo
     17167 | Alejandra           | Cáceres Torres
     17174 | Alejandra Sandra    | Rivera Calderón
     17182 | Daniela             | Mora Rojas
     17183 | Álvaro              | Serrano Quintero
     17185 | Aura Inés           | Castillo Carrillo
     17194 | Juliana             | Peña Cuéllar
-- Más  --

*/