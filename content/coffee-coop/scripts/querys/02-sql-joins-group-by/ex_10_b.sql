--Exercise 10 
-- b
--Farmers with total net amount greater than 5,000,000 for September 2026

SELECT
    T4.farmer_id AS document,
    T4.first_name AS first_name,
    T4.last_name AS last_name,
    COUNT(T1.settlement_id) AS settlements_count,
    SUM(T1.net_amount) AS total_net_cop
FROM pay.settlements AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.delivery_id = T2.delivery_id
INNER JOIN farm.farms AS T3
    ON T2.farm_id = T3.farm_id
INNER JOIN farm.farmers AS T4
    ON T3.farmer_id = T4.farmer_id
WHERE T1.settled_at >= '2026-09-01'
  AND T1.settled_at < '2026-10-01'
GROUP BY T4.farmer_id, T4.first_name, T4.last_name
HAVING SUM(T1.net_amount) > 5000000
ORDER BY total_net_cop DESC;
/*
 coffee_coop_db-> ORDER BY total_net_cop DESC;
 document |     first_name      |       last_name       | settlements_count | total_net_cop
----------+---------------------+-----------------------+-------------------+---------------
   132066 | Cristian            | García Contreras      |                 3 |   15493357.77
    66413 | Samuel Óscar        | Arias Jiménez         |                 3 |   14600417.40
    65705 | Alba                | Muñoz Ramírez         |                 2 |   14576631.94
   103437 | Jairo               | Valencia Zapata       |                 2 |   14528146.87
   141450 | Alejandro Mateo     | Flórez Uribe          |                 2 |   14460246.30
    11748 | Luisa Martha        | Caicedo Romero        |                 1 |   13335230.83
    63763 | Luisa               | Duque Torres          |                 2 |   12843595.73
   116192 | Dora                | Galvis Ospina         |                 3 |   12821153.68
    53226 | Jorge               | Duarte Zapata         |                 2 |   12777306.01
   125382 | Álvaro              | Serrano Caicedo       |                 2 |   12361790.74
    49733 | Reinaldo            | Ruiz Cuéllar          |                 2 |   12310076.05
    73758 | Aura                | Osorio Medina         |                 2 |   12133626.08
   124236 | Wilmer              | Barrera Vera          |                 2 |   12078718.23
    57898 | Orlando             | Peña Vera             |                 1 |   12005420.07
    98333 | Rubén               | Quintero Chamorro     |                 3 |   11967062.39
    95593 | Alejandro           | Niño Flórez           |                 2 |   11914996.69
    66409 | Antonio             | Moreno Rojas          |                 3 |   11712814.76
   147287 | Natalia             | Correa Jaimes         |                 2 |   11531226.36
     3333 | Carolina            | Correa Pinzón         |                 2 |   11381891.73
    13325 | Samuel              | Caicedo Mora          |                 2 |   11204499.77
     8515 | Julián              | Marín Sandoval        |                 1 |   11140800.03
   102302 | Yesenia Nubia       | Montoya Giraldo       |                 1 |   11114680.80
    48357 | Mauricio            | López Rivera          |                 2 |   11091255.81
    15725 | Sandra              | Rojas Calderón        |                 2 |   11080803.26
   112560 | Guillermo Gustavo   | Delgado Acevedo       |                 1 |   11032091.12
    47664 | Gustavo             | Marín Burbano         |                 1 |   10976260.61
   135715 | Alberto             | Rincón Herrera        |                 1 |   10959451.38
   122397 | Manuel              | Carrillo Betancur     |                 2 |   10910912.91
    42669 | Inés                | Cabrera Díaz          |                 1 |   10800176.84
     4570 | Rosa                | González Bastidas     |                 1 |   10577379.54
    83149 | Hernando Fabio      | Lozano Erazo          |                 2 |   10457056.62
   148100 | Manuel Jorge        | Rodríguez Benavides   |                 1 |   10445584.60
   136981 | Martha              | Pabón Rodríguez       |                 1 |   10398924.90
    70748 | Jaime               | Lasso Pérez           |                 1 |   10315335.60
    27461 | Aníbal Libardo      | Cárdenas Mosquera     |                 1 |   10291254.30
    65396 | Myriam Mercedes     | Ortega Restrepo       |                 1 |   10288035.32
    95122 | Fanny               | Vélez Galvis          |                 1 |   10273917.15
    49739 | Reinaldo            | Ospina Restrepo       |                 2 |   10270314.78
    43412 | Laura               | Álvarez Torres        |                 1 |   10264548.60
    32910 | Francisco Efraín    | Bonilla González      |                 2 |   10223551.64
    73834 | María               | Bastidas Cardona      |                 1 |   10190032.14
      589 | Diego Óscar         | Burbano Pabón         |                 2 |   10163972.22
    53964 | Héctor              | Burbano Perdomo       |                 2 |   10139600.96
    22006 | Mariana             | Hernández Delgado     |                 2 |   10130725.77
    90340 | Alba                | Cárdenas Cáceres      |                 1 |    9976552.30
    49532 | Hernando            | Duque Burbano         |                 1 |    9954728.48
     1283 | Jazmín              | Zapata Prada          |                 1 |    9937740.78
   148401 | Mariana             | Salazar Gutiérrez     |                 1 |    9910717.68
   111763 | Mateo               | Ospina Jiménez        |                 2 |    9908737.96
    28011 | Sebastián           | Rincón Muñoz          |                 1 |    9889467.70
    98691 | Samuel              | Agudelo Erazo         |                 2 |    9863701.42
   148785 | Guillermo           | Gómez Castillo        |                 1 |    9835521.53
    94697 | Carolina            | Cabrera Villamizar    |                 2 |    9820627.52
    58378 | Rodrigo             | Gutiérrez Quintero    |                 1 |    9791328.20
   115673 | Jairo               | Quintero Valencia     |                 2 |    9771940.96
    31507 | Jorge               | Arango Prada          |                 2 |    9712350.34
   125517 | Aníbal              | Restrepo Mora         |                 1 |    9695283.12
    95537 | Javier              | Hernández Burbano     |                 1 |    9621302.10
    72040 | Nelson Rafael       | Lasso Losada          |                 2 |    9608802.71
    84100 | Manuel              | Martínez Ortega       |                 1 |    9569074.84
   107180 | Mariana             | Losada Castillo       |                 2 |    9551133.74
   139496 | Javier              | Trujillo Burbano      |                 2 |    9505217.98
    19116 | María               | Ríos Galvis           |                 2 |    9502296.60
   124026 | Francisco           | Romero Gutiérrez      |                 1 |    9461765.52
   148012 | Gabriela Andrea     | Hernández Medina      |                 2 |    9423761.66
    18887 | Ancízar             | Ruiz Zuluaga          |                 2 |    9416253.01
   132135 | Carmen Ángela       | Rojas Burbano         |                 1 |    9400962.01
   132345 | Miguel Yeison       | Jaimes Burbano        |                 1 |    9381770.75
    30494 | Carlos              | Duarte Rincón         |                 1 |    9379129.50
    87695 | Édgar               | Castillo Jiménez      |                 1 |    9358315.96
    17289 | Gloria              | Bedoya Carrillo       |                 2 |    9329472.73
    49934 | Beatriz             | Peña Bastidas         |                 1 |    9327870.51
   117344 | Antonio             | Díaz Zuluaga          |                 2 |    9302534.38
    93359 | Cristian            | Serrano Narváez       |                 1 |    9287105.72
    79951 | Manuela             | Bermúdez Cáceres      |                 1 |    9274948.23
    75225 | Reinaldo            | Romero Pabón          |                 2 |    9249475.42
    34389 | Manuel              | Cabrera Ospina        |                 2 |    9179381.03
    54750 | Rocío               | Zapata Sánchez        |                 1 |    9147383.04
     5483 | Gloria              | Martínez Pérez        |                 2 |    9133737.24
   127694 | Rocío               | Rincón Lasso          |                 1 |    9130143.80
    81587 | Miguel              | Montoya Vargas        |                 1 |    9128679.68
    65114 | Teresa              | Trujillo Montoya      |                 1 |    9097410.32
    31927 | Mario               | Duarte Torres         |                 1 |    9076532.52
    52013 | Guillermo           | López Betancur        |                 1 |    9073991.12
    68638 | Lorena              | Rincón Parra          |                 2 |    9060284.08
    35398 | Myriam              | Londoño Duarte        |                 3 |    9036928.84
    35714 | Alberto Iván        | Cáceres Barrera       |                 1 |    9002255.00
    41172 | Paola               | Arias Álvarez         |                 1 |    8966638.32
    96218 | Amparo Edilma       | Ibarra Prada          |                 1 |    8929768.32
    94274 | Cecilia             | Agudelo Losada        |                 1 |    8922750.26
   123970 | Cecilia Lucía       | Mosquera Pabón        |                 2 |    8920019.18
   113430 | Alejandra           | Torres Barrera        |                 1 |    8889139.74
    67935 | Gilberto Mauricio   | Betancur Duarte       |                 1 |    8877015.64
    92686 | Diana               | Calderón Silva        |                 1 |    8871595.66
    35683 | Marcela María       | Barrera Villamizar    |                 2 |    8846623.83
    62912 | Jorge José          | Trujillo Villamizar   |                 1 |    8816362.20
    91070 | Lorena              | Chamorro Trujillo     |                 2 |    8809770.55
    28128 | Blanca              | Gómez Bonilla         |                 1 |    8801893.78
    53236 | Diana               | Suárez Ortiz          |                 1 |    8797042.83
   112787 | Rocío               | Molina Uribe          |                 2 |    8776995.91
   124800 | Paola               | Martínez Duarte       |                 1 |    8774766.69
    94221 | Aníbal              | Marín Contreras       |                 1 |    8724602.88
    90752 | Claudia             | Ramos Cabrera         |                 2 |    8722081.90
   112328 | Jorge               | Mejía Galvis          |                 1 |    8688177.75
    96845 | Gloria              | Ruiz Duarte           |                 1 |    8673087.62
   127069 | Rocío               | García Chamorro       |                 1 |    8671174.20
   127229 | Beatriz Diana       | Pinzón Cáceres        |                 1 |    8652657.52
    15634 | Rafael Emilio       | Martínez Peña         |                 1 |    8650328.39
     9804 | Rubén               | Ortega Flórez         |                 2 |    8614738.30
    32160 | Héctor              | Caicedo Vargas        |                 1 |    8609130.23
    71957 | Mateo Mario         | Gómez Gómez           |                 1 |    8601069.41
    24133 | Rodrigo             | Serrano Cardona       |                 2 |    8580582.55
     4215 | Yuliana Camila      | Ospina Díaz           |                 1 |    8565796.98
   134194 | Inés                | Vélez Mejía           |                 2 |    8558090.36
    41925 | Luz                 | Agudelo Contreras     |                 1 |    8551972.08
   147026 | Jairo               | Duarte García         |                 1 |    8538595.95
    60781 | José                | Cuéllar Duque         |                 1 |    8522115.27
    63193 | Mauricio            | Díaz Rojas            |                 2 |    8504179.51
    34312 | Hernando            | Benavides Guerrero    |                 1 |    8503682.88
    48066 | Sofía Lucía         | Torres Barrera        |                 1 |    8499157.32
   141309 | Antonio             | Parra Peña            |                 1 |    8498324.21
   117379 | Isabella            | Pinzón Moreno         |                 1 |    8495568.20
   124335 | Felipe              | González Gutiérrez    |                 2 |    8486046.66
     8014 | Sara Fanny          | Ortega Burbano        |                 1 |    8471064.87
    24661 | Nicolás             | Ibarra Montoya        |                 2 |    8456093.62
   140976 | Pedro               | Osorio Peña           |                 1 |    8452623.17
    47144 | Jairo               | Cuéllar Agudelo       |                 1 |    8443978.82
    81069 | Sandra Nubia        | Villamizar Bermúdez   |                 1 |    8433111.36
     6563 | José                | Flórez Cáceres        |                 2 |    8427956.61
    57074 | Fernando            | Vélez Sánchez         |                 1 |    8426087.31
    50775 | Gladys              | Pabón González        |                 1 |    8422277.46
    12305 | Amparo              | Ramírez Mora          |                 1 |    8419190.40
    80373 | Gustavo             | Pinzón Ramírez        |                 1 |    8415299.97
    44878 | Laura Sofía         | Parra Gómez           |                 2 |    8402532.82
    29252 | Laura               | Betancur Lozano       |                 1 |    8386156.22
    46104 | Luis                | Cabrera Ramos         |                 2 |    8384964.10
   140392 | Daniel              | Osorio Betancur       |                 1 |    8375596.00
   127057 | Ancízar Óscar       | Carrillo Serrano      |                 1 |    8371705.89
    95694 | Mauricio Ricardo    | Herrera Vargas        |                 2 |    8371560.00
     9861 | Carmen Yolanda      | Narváez Cabrera       |                 1 |    8369863.86
    83830 | Heriberto           | Restrepo Villamizar   |                 1 |    8341481.68
    93077 | Brayan              | Medina García         |                 2 |    8337750.01
   114571 | Jaime               | Restrepo Marín        |                 1 |    8323494.78
    18767 | Blanca              | Henao Uribe           |                 1 |    8298103.92
    35640 | Teresa Leidy        | Delgado Pabón         |                 1 |    8273936.55
    97137 | Efraín              | Bastidas Londoño      |                 1 |    8272455.20
   114491 | Diego               | Romero Betancur       |                 1 |    8261864.40
    86406 | Wilmer              | Galvis Salazar        |                 2 |    8223247.86
    75089 | Antonio             | Osorio Rodríguez      |                 1 |    8216126.81
   126092 | Rocío Aura          | Carrillo Rivera       |                 2 |    8209130.80
    89395 | Manuel              | Villamizar Parra      |                 1 |    8203831.43
   113489 | Édgar Gustavo       | Cabrera Erazo         |                 1 |    8192190.73
   128699 | Mateo               | Burbano Londoño       |                 1 |    8191071.72
   103432 | Inés                | Polanía López         |                 2 |    8157299.38
    42661 | Yeison              | Álvarez Zuluaga       |                 2 |    8133331.37
   115306 | Claudia Carmen      | Prada Vélez           |                 2 |    8130103.67
   129733 | Gladys Adriana      | Cuéllar Zapata        |                 2 |    8115513.84
   130329 | Heriberto Javier    | Ibarra Ruiz           |                 1 |    8113008.60
   138758 | Fanny Gladys        | Duarte Calderón       |                 1 |    8112195.06
     1530 | Andrea              | Sandoval Cuéllar      |                 2 |    8105785.72
    17473 | Marleny             | Sánchez Ortega        |                 1 |    8105569.22
    17227 | Carlos              | Chamorro Duarte       |                 1 |    8096856.90
    22288 | Sebastián           | Peña Correa           |                 1 |    8095099.11
    58086 | Libardo             | Pérez Muñoz           |                 1 |    8073320.40
    74477 | Germán              | Ruiz Gutiérrez        |                 1 |    8050141.61
   118458 | Emilio              | Agudelo Suárez        |                 1 |    8039040.21
   122689 | Alejandra           | Ibarra Rivera         |                 1 |    8033838.51
    21356 | Rodrigo             | Rangel Lasso          |                 1 |    8028045.61
     3946 | Abelardo Camilo     | Galvis Arias          |                 1 |    8019864.34
    94264 | Adriana             | Perdomo Restrepo      |                 1 |    8019057.56
    67873 | Ruth Manuela        | Jaimes Lasso          |                 1 |    8004949.03
    65392 | Miguel              | Cuéllar Erazo         |                 1 |    8001376.46
    35850 | Andrea              | Cárdenas Molina       |                 1 |    8000946.32
    47016 | Javier              | Losada Ibarra         |                 1 |    7999635.84
    14044 | Javier              | Duarte Valencia       |                 1 |    7998354.24
    70577 | Leidy               | Rojas Prada           |                 1 |    7980559.13
    64412 | Rodrigo             | Ríos Jaimes           |                 1 |    7977282.30
    79220 | Stella              | Jaimes Ruiz           |                 1 |    7951761.90
   135972 | Ancízar             | Rojas Flórez          |                 1 |    7931250.00
   116351 | Heriberto Andrés    | Cuéllar Romero        |                 1 |    7928785.50
    52748 | Esperanza           | Bonilla Losada        |                 1 |    7927231.68
    26460 | Santiago            | Molina Ortega         |                 1 |    7924599.00
   106681 | Nubia Laura         | Giraldo Pérez         |                 2 |    7914922.86
    46354 | Luisa               | Sandoval Flórez       |                 1 |    7907619.76
    29389 | Iván                | Ruiz Narváez          |                 2 |    7904154.79
   126731 | Gladys              | Barrera Jiménez       |                 1 |    7893004.67
   146884 | Elsa                | Flórez Rangel         |                 1 |    7892107.70
   110060 | Marcela             | Pabón Cabrera         |                 1 |    7878223.62
    38378 | Patricia            | Tovar Bonilla         |                 1 |    7834941.62
   134680 | Efraín              | Jiménez Caicedo       |                 1 |    7824522.93
    32730 | Natalia             | Galvis Pinzón         |                 1 |    7807939.50
    14265 | Efraín              | Pinzón Martínez       |                 1 |    7805482.72
    24580 | Liliana             | Acevedo Quintero      |                 1 |    7803004.59
    60150 | Reinaldo            | Zapata Caicedo        |                 2 |    7788557.13
   147123 | Yuliana             | Torres Gutiérrez      |                 1 |    7770817.40
   144039 | Gloria Manuela      | Rivera Cuéllar        |                 2 |    7770046.62
    45242 | Daniel              | Castillo Parra        |                 1 |    7766249.76
   149088 | Rosa                | Muñoz Calderón        |                 1 |    7764997.80
   127000 | Gustavo             | García Calderón       |                 1 |    7760151.88
    69542 | Carolina            | Giraldo Cabrera       |                 1 |    7758012.08
   141969 | Alejandra           | Arango Betancur       |                 2 |    7752769.24
   121272 | Julián              | Gutiérrez López       |                 1 |    7750770.51
   124550 | Ramiro              | Valencia Osorio       |                 1 |    7747975.40
    94107 | Santiago            | Romero Londoño        |                 1 |    7728388.36
   127541 | Martha              | Pérez Medina          |                 1 |    7727824.00
   148296 | Javier Nelson       | Medina Villamizar     |                 1 |    7720903.26
    53789 | Olga                | Lasso Ortega          |                 2 |    7716095.80
    68848 | Cecilia             | Medina Benavides      |                 1 |    7704379.20
   118658 | Mercedes Liliana    | Mosquera Ortiz        |                 1 |    7700245.44
    72431 | Óscar               | Villamizar Perdomo    |                 1 |    7700065.58
   101537 | Wilson              | Mejía Barrera         |                 1 |    7692737.23
    48793 | Jazmín Nubia        | Martínez Narváez      |                 2 |    7689500.84
    12261 | Martha Sofía        | Vargas Erazo          |                 1 |    7688701.79
    87780 | Juliana Camila      | Cárdenas Peña         |                 1 |    7684931.65
    34668 | Amparo Cecilia      | Jaimes Cardona        |                 1 |    7677537.08
    40900 | Luisa               | Benavides Mora        |                 1 |    7675876.05
   127637 | Elsa                | Vélez Cáceres         |                 1 |    7674062.27
    51961 | Ramiro              | Rodríguez Jaimes      |                 2 |    7667137.96
    10874 | Mariana             | López Gutiérrez       |                 1 |    7654011.60
    65121 | Alberto Wilmer      | Valencia Sandoval     |                 1 |    7641044.60
    98421 | Iván Cristian       | Pinzón Marín          |                 1 |    7612037.70
    50581 | Julián Ancízar      | Serrano Quintero      |                 2 |    7609430.61
   113666 | Patricia            | Benavides Jaimes      |                 1 |    7609339.06
    90124 | Wilson              | Marín Osorio          |                 1 |    7605907.96
    97578 | Jorge Wilson        | Peña Flórez           |                 1 |    7605631.98
    73333 | Julián              | Polanía Duque         |                 1 |    7604231.11
    90440 | Guillermo           | Delgado Contreras     |                 1 |    7601063.13
    56655 | Julián              | Rojas Moreno          |                 1 |    7593345.18
    88383 | Abelardo Pedro      | Narváez Arango        |                 1 |    7593252.48
    33183 | Guillermo Francisco | Álvarez Bastidas      |                 1 |    7585169.35
   129421 | Isabella Leidy      | Sánchez Díaz          |                 1 |    7563876.84
    25426 | Mateo               | Jaimes Calderón       |                 1 |    7542663.12
    88749 | Jazmín              | Vargas Valencia       |                 1 |    7542524.73
   131387 | Arturo              | Sánchez Delgado       |                 1 |    7539454.51
    49215 | Teresa              | Lasso Pinzón          |                 1 |    7524008.97
    36852 | Beatriz             | Castillo Narváez      |                 1 |    7505830.80
    83902 | Martha              | Prada Narváez         |                 1 |    7499226.49
     2702 | Inés                | Quintero Gutiérrez    |                 1 |    7497751.47
    41396 | Rodrigo             | Rodríguez Rojas       |                 1 |    7486691.04
     5301 | Leidy               | Álvarez Flórez        |                 1 |    7478378.90
    99313 | Efraín              | Peña Lozano           |                 1 |    7474873.18
    58492 | Lorena              | Quintero Osorio       |                 1 |    7473531.79
    88258 | Heriberto Felipe    | Chamorro González     |                 1 |    7467439.44
    56796 | Gloria              | Osorio Giraldo        |                 1 |    7464147.67
    98896 | Yolanda             | Rodríguez Villamizar  |                 1 |    7440965.01
   148076 | Manuel              | Arias Salazar         |                 1 |    7437259.62
    50424 | Juan                | Ortega Delgado        |                 1 |    7433648.88
    11830 | Efraín              | Vera Osorio           |                 2 |    7430522.82
    89802 | Mateo               | Peña Perdomo          |                 2 |    7412784.66
   112061 | Sandra              | Herrera Zuluaga       |                 1 |    7408520.10
   111119 | Patricia            | Betancur Medina       |                 1 |    7391712.89
    38982 | Esperanza           | Quintero Ríos         |                 1 |    7390790.40
    94844 | Rodrigo             | Contreras Arias       |                 1 |    7384200.41
   103616 | Gloria              | Sánchez Bedoya        |                 1 |    7371633.58
    96981 | Isabella            | Cabrera Vera          |                 1 |    7370257.93
    89131 | Édgar Pedro         | Álvarez Acevedo       |                 1 |    7369632.12
    45194 | Nicolás Wilmer      | Castro García         |                 1 |    7363241.76
   130195 | Daniela             | Serrano Bastidas      |                 2 |    7346623.78
    77716 | Camila Amparo       | Lozano Peña           |                 1 |    7345036.02
   106571 | Gladys              | Niño Arango           |                 1 |    7331713.22
   103551 | Orlando Gustavo     | Benavides Rangel      |                 2 |    7330026.12
   100547 | Mateo               | Henao Gutiérrez       |                 1 |    7301617.47
    92914 | Claudia             | Álvarez Henao         |                 1 |    7281355.90
   118854 | Blanca              | Díaz Caicedo          |                 1 |    7273020.29
   104927 | Elsa                | Gómez Barrera         |                 1 |    7271058.12
    26092 | Jaime               | Agudelo Suárez        |                 1 |    7269015.82
   115840 | Edilma              | Arango Tovar          |                 1 |    7265243.19
    52453 | Myriam              | Perdomo Sandoval      |                 1 |    7261395.84
    92843 | Mario               | Benavides Narváez     |                 1 |    7248747.13
   100420 | Alberto Sebastián   | Mora Carrillo         |                 2 |    7248632.93
   142177 | Andrés              | Sandoval Cardona      |                 1 |    7240840.00
    34390 | Hugo                | Narváez Torres        |                 1 |    7223972.47
      365 | Myriam Marcela      | Ríos Chamorro         |                 1 |    7222495.05
    40820 | Rafael              | Prada Bedoya          |                 1 |    7222220.60
    97346 | Mario Aníbal        | Ospina Cardona        |                 1 |    7219164.24
   116037 | Arturo              | Vera Cáceres          |                 1 |    7219093.27
    21390 | Brayan              | Uribe Romero          |                 1 |    7217634.60
   127642 | Nubia Mercedes      | Montoya Medina        |                 1 |    7214647.20
   102293 | Julián              | Duarte Silva          |                 1 |    7211811.83
    24164 | Nubia               | García Pérez          |                 1 |    7200072.36
   135052 | Mario               | Jiménez Burbano       |                 1 |    7199771.79
   129248 | Rosa                | Zapata Contreras      |                 1 |    7198697.44
    27353 | Liliana Alba        | Rincón Mosquera       |                 1 |    7198321.96
    98247 | Wilson              | Trujillo Álvarez      |                 1 |    7196586.84
    13049 | Francisco Germán    | Rangel Pérez          |                 1 |    7184399.16
    36021 | Samuel              | Villamizar Erazo      |                 1 |    7175905.83
    39004 | Ramiro              | Pabón Martínez        |                 1 |    7170053.45
    87077 | Abelardo            | Pérez Muñoz           |                 2 |    7169266.62
    35417 | Wilmer              | Quintero Castillo     |                 1 |    7165660.95
   133739 | Ana                 | Zuluaga Mora          |                 1 |    7164832.60
    52129 | Yuliana             | Galvis Rojas          |                 1 |    7159762.50
   126245 | Efraín              | Betancur Martínez     |                 1 |    7158810.54
   135933 | María               | Salazar Giraldo       |                 1 |    7154193.13
   100599 | Juliana Yolanda     | Bastidas Muñoz        |                 1 |    7144190.82
   141882 | Alberto             | Salazar Trujillo      |                 2 |    7133246.37
    82009 | Viviana Liliana     | Parra Moreno          |                 1 |    7132517.23
    71251 | Reinaldo            | Rojas Trujillo        |                 2 |    7120475.60
    34419 | Fabio Arturo        | Galvis Jaimes         |                 1 |    7115104.58
     7774 | Felipe              | Arango Rodríguez      |                 2 |    7110440.51
    65644 | Alejandro           | Zuluaga Benavides     |                 1 |    7109823.60
    48879 | Sara                | Lasso Montoya         |                 1 |    7082645.20
    92378 | Luz                 | Barrera Muñoz         |                 1 |    7072650.29
   121173 | Nicolás             | Gutiérrez Prada       |                 1 |    7065251.84
    88770 | María Elsa          | Duarte Cuéllar        |                 1 |    7061816.74
    66433 | María               | Rincón Chamorro       |                 1 |    7061252.18
    25167 | Libardo Hugo        | Rivera Ríos           |                 2 |    7060454.48
    40388 | Olga                | Pabón Salazar         |                 1 |    7060323.40
    21141 | Erika               | Ramos Galvis          |                 2 |    7050985.64
    25861 | Orlando             | Hernández Serrano     |                 1 |    7047902.21
   103621 | Leidy Viviana       | Contreras Uribe       |                 1 |    7046554.05
   103696 | Francisco Abelardo  | Lozano Vargas         |                 1 |    7045834.14
   127366 | Efraín              | Moreno Romero         |                 1 |    7042312.11
    80275 | Camilo              | Giraldo Zapata        |                 1 |    7040721.90
   106006 | Ricardo             | Uribe Cardona         |                 1 |    7032909.20
    10154 | Mauricio            | Duarte Mora           |                 1 |    7031887.50
    13245 | Aníbal Gustavo      | Herrera Cárdenas      |                 1 |    7026226.60
   129083 | Yeison              | Gutiérrez Vargas      |                 1 |    7017283.16
    60514 | Jaime Jairo         | Mejía Lasso           |                 1 |    7009049.31
    71735 | Nelson Jorge        | Suárez Pérez          |                 1 |    7006259.15
    62819 | Reinaldo            | Vélez Barrera         |                 1 |    7005907.41
   129236 | Sebastián           | Lasso Flórez          |                 1 |    7004036.68
    13652 | Diana               | Hernández Ortiz       |                 1 |    7003870.19
   101171 | Rafael              | Benavides Restrepo    |                 1 |    7000457.88
     2771 | Isabella Natalia    | Erazo Ospina          |                 1 |    6997711.60
    68651 | Esperanza           | Osorio Cáceres        |                 1 |    6997137.28
    19716 | Laura               | Bermúdez Ruiz         |                 1 |    6996002.06
    99278 | Gustavo Rubén       | Polanía Lasso         |                 1 |    6992087.23
    12514 | Brayan              | Erazo Uribe           |                 1 |    6980257.20
   102199 | Wilson              | Cáceres Flórez        |                 1 |    6979155.51
    67819 | Óscar               | Carrillo Ospina       |                 1 |    6976064.68
    21768 | Leidy               | Duque Benavides       |                 1 |    6973012.62
    98779 | Marcela             | Uribe Lozano          |                 1 |    6970513.80
    20688 | Libardo             | Pinzón Vera           |                 1 |    6966006.36
    39077 | Arturo              | Cárdenas Lozano       |                 1 |    6960137.90
    78813 | Brayan Heriberto    | Agudelo Ríos          |                 1 |    6957197.77
     8813 | Ramiro              | Bastidas Agudelo      |                 1 |    6956122.42
    85864 | Edilma              | Hernández Pinzón      |                 1 |    6952638.24
     2734 | Carmen              | Ortega Delgado        |                 1 |    6949934.04
    90312 | Marleny             | Herrera Villamizar    |                 1 |    6948485.27
   105995 | Libardo             | Torres Ríos           |                 1 |    6942683.15
    93708 | Camilo              | Mejía Betancur        |                 1 |    6941195.82
   143807 | María               | Niño López            |                 1 |    6941172.41
   101033 | Isabella            | Serrano Sánchez       |                 1 |    6922819.28
   125951 | Rosa                | Serrano Cáceres       |                 1 |    6920955.26
   110600 | Arturo              | Cáceres Contreras     |                 1 |    6917933.57
    32981 | Esperanza           | González Rincón       |                 1 |    6917468.04
   146300 | Sebastián           | Suárez Trujillo       |                 1 |    6915865.17
    53116 | Germán              | Ramírez Barrera       |                 2 |    6913103.90
    26280 | Rafael Pedro        | Ibarra Díaz           |                 1 |    6910022.28
    58384 | Andrea              | Valencia Vera         |                 1 |    6906194.61
    95022 | Mario               | Bedoya Lasso          |                 1 |    6905139.00
    94725 | Ruth                | Caicedo Quintero      |                 1 |    6899072.37
    60832 | Leidy               | Bonilla Ortega        |                 1 |    6896951.74
    31874 | Pedro               | Losada Parra          |                 1 |    6894996.49
   145016 | Iván                | Cardona Lozano        |                 1 |    6894871.39
    11697 | Lucía               | Ibarra Medina         |                 1 |    6894018.54
    99416 | Esperanza Mercedes  | Herrera Pabón         |                 1 |    6893950.05
   143750 | Sofía Valentina     | Romero Polanía        |                 2 |    6873777.01
    10133 | Esperanza Sandra    | Herrera Martínez      |                 1 |    6870719.78
   138362 | Heriberto           | Gómez Prada           |                 1 |    6870252.41
    62504 | Mario               | Valencia Burbano      |                 1 |    6861268.98
   144639 | Javier              | Carrillo Peña         |                 1 |    6859402.77
    86286 | Nubia               | Ospina Romero         |                 1 |    6846362.72
    21514 | Alejandra           | Jaimes Zapata         |                 1 |    6838992.00
   145319 | Óscar Orlando       | Delgado Lasso         |                 1 |    6835035.61
    70068 | Brayan Wilson       | Torres García         |                 1 |    6825580.50
    12626 | Jairo Wilson        | Pabón Zuluaga         |                 1 |    6823653.76
   103434 | Yolanda Olga        | Correa Londoño        |                 1 |    6816150.73
   111491 | Inés                | Torres Martínez       |                 1 |    6810960.00
   144676 | Wilson              | Pérez García          |                 1 |    6808273.24
   104598 | Mariana             | Pérez Zapata          |                 1 |    6803973.00
    24309 | Lorena              | Prada Acevedo         |                 1 |    6792749.68
   136094 | Juan                | Ibarra Rodríguez      |                 1 |    6790026.47
    74729 | Efraín              | Chamorro Erazo        |                 1 |    6789956.71
    62307 | Yuliana             | Bedoya Jiménez        |                 2 |    6783761.52
   130130 | Mariana             | Carrillo Martínez     |                 1 |    6783337.80
    29446 | Fernando Rubén      | Ruiz Perdomo          |                 1 |    6782189.46
    66701 | Diana               | Pinzón Sandoval       |                 1 |    6779278.01
    75633 | Pedro               | Bermúdez Acevedo      |                 1 |    6777083.50
    50460 | Esperanza           | Pérez Villamizar      |                 1 |    6773287.50
    60788 | Guillermo           | Ospina Niño           |                 1 |    6766272.22
    11333 | Claudia             | Cuéllar Parra         |                 2 |    6765374.26
   131582 | Mateo               | Delgado Mosquera      |                 1 |    6762059.64
    87416 | Diego               | Sandoval Restrepo     |                 1 |    6758238.15
   118057 | Juliana             | Prada Rincón          |                 1 |    6752131.92
    56120 | Gilberto            | Restrepo Jaimes       |                 1 |    6750398.29
   130284 | Wilson              | Valencia Valencia     |                 2 |    6748298.55
   131279 | Nubia               | Agudelo Cárdenas      |                 2 |    6746219.61
   131027 | Inés Leidy          | Losada Osorio         |                 2 |    6741773.29
    87247 | José                | Correa Erazo          |                 1 |    6738901.25
   102447 | Jaime Manuel        | Contreras Bonilla     |                 1 |    6735279.30
   100282 | Esteban             | Trujillo Suárez       |                 1 |    6728190.55
      872 | Javier              | Arango Lozano         |                 1 |    6727518.00
    93946 | Ancízar             | Duque Pabón           |                 1 |    6724777.56
   106902 | Elsa Beatriz        | Niño Ortiz            |                 1 |    6721179.03
    11474 | Manuela             | Castro Pérez          |                 1 |    6720073.20
    96575 | Esperanza           | Perdomo Torres        |                 1 |    6719655.40
    82331 | Heriberto           | Quintero Ruiz         |                 1 |    6715696.36
    86467 | Gustavo             | Barrera Benavides     |                 1 |    6714604.90
    57712 | Daniela Cecilia     | Medina Henao          |                 1 |    6713056.71
    96567 | Héctor              | Contreras Duarte      |                 1 |    6712739.70
   147672 | Jaime               | Álvarez Parra         |                 1 |    6711806.88
   113805 | Mariana             | Ríos Ospina           |                 1 |    6708134.30
   125614 | Paola Marleny       | Delgado Bonilla       |                 1 |    6707898.12
    50533 | Inés Marcela        | Losada Bermúdez       |                 2 |    6699815.29
    68691 | Nubia               | Polanía Mosquera      |                 2 |    6695790.86
   143265 | Aura                | Lasso Rojas           |                 1 |    6694492.30
     4417 | Teresa              | Sánchez Torres        |                 2 |    6693500.00
   146020 | Nelson Mateo        | Agudelo Bastidas      |                 1 |    6689182.08
    29805 | Nelson              | García Osorio         |                 1 |    6681922.08
    47498 | Aura                | Lasso Martínez        |                 1 |    6678605.20
    31317 | Álvaro              | Medina Ruiz           |                 1 |    6674145.28
   135005 | Francisco           | Gómez Mora            |                 1 |    6673310.39
    13847 | Yuliana             | Losada Cardona        |                 1 |    6671713.66
    24171 | Álvaro Emilio       | Moreno Correa         |                 2 |    6670657.96
    34070 | Esteban             | Restrepo Henao        |                 1 |    6668929.57
    13028 | Juan                | Londoño Tovar         |                 1 |    6660865.71
   114054 | Beatriz             | Rodríguez Arango      |                 1 |    6658889.23
    93103 | Fanny               | Rivera Carrillo       |                 1 |    6656807.30
   120063 | Inés                | Uribe Parra           |                 1 |    6654133.08
     1166 | Yolanda             | Prada Flórez          |                 2 |    6653646.16
     2941 | Ricardo             | Cuéllar Bonilla       |                 1 |    6653210.04
   118993 | Fanny Alba          | Betancur Benavides    |                 2 |    6651971.02
   134838 | Wilson Guillermo    | Duque Carrillo        |                 1 |    6643359.63
    74954 | Andrea              | Romero Silva          |                 1 |    6640640.73
     9517 | Javier Fabio        | Lasso Bermúdez        |                 1 |    6637691.10
     6521 | Felipe              | Bermúdez Guerrero     |                 1 |    6635850.84
    19947 | Mariana             | Arango Parra          |                 1 |    6632323.76
   145504 | Sandra              | Silva Cuéllar         |                 1 |    6631489.68
    70564 | José                | Vargas Villamizar     |                 1 |    6630154.50
    83398 | Elsa                | Pinzón Jiménez        |                 1 |    6629287.49
    45936 | Amparo              | Vera Betancur         |                 1 |    6628377.60
    44439 | Daniela             | Quintero Guerrero     |                 1 |    6620152.00
    38937 | Orlando             | López Sánchez         |                 1 |    6619799.20
    66780 | Fanny               | Narváez Jaimes        |                 2 |    6618319.67
    34779 | Emilio              | Montoya Giraldo       |                 1 |    6618166.83
    23995 | Orlando             | Ruiz Guerrero         |                 2 |    6617489.81
   116190 | Martha              | Pabón Herrera         |                 1 |    6613219.16
    51221 | Antonio Alberto     | Ortega Correa         |                 1 |    6613076.48
    60984 | Mario               | Sánchez Cuéllar       |                 1 |    6602138.16
    66135 | Iván                | Ospina Vélez          |                 2 |    6600306.94
   109448 | Teresa              | Ruiz Cárdenas         |                 1 |    6598581.00
    34202 | Myriam              | Losada Duque          |                 1 |    6593941.88
   105135 | Manuel              | Carrillo Romero       |                 1 |    6587756.80
     2017 | Diana               | Bermúdez Torres       |                 1 |    6587326.05
   104835 | Lorena              | Rivera Quintero       |                 1 |    6586769.20
    19542 | Luz                 | Burbano Cardona       |                 1 |    6586297.48
    15519 | Heriberto           | Cardona Caicedo       |                 1 |    6585220.38
    37532 | Camilo José         | Serrano Rivera        |                 1 |    6584962.70
    33736 | Andrés              | Cárdenas García       |                 1 |    6568151.10
   119563 | Fernando            | Narváez Tovar         |                 1 |    6562461.70
    24796 | Francisco           | Ibarra Lasso          |                 1 |    6551868.40
    38117 | Samuel Gustavo      | Zapata Ortega         |                 1 |    6550634.70
   125731 | Stella              | Ibarra Castro         |                 2 |    6547807.98
    33053 | Germán              | Martínez Contreras    |                 1 |    6546725.12
    49848 | Myriam Natalia      | Arias Silva           |                 1 |    6543523.55
   123866 | Mateo               | Correa Cárdenas       |                 1 |    6540516.66
    92342 | Rafael              | Bonilla Lasso         |                 1 |    6535112.48
    82763 | Iván                | Narváez Ramírez       |                 1 |    6533776.47
   128919 | Liliana             | Parra Perdomo         |                 1 |    6530423.80
   102114 | Mercedes Claudia    | Ruiz Ibarra           |                 1 |    6522336.32
    74249 | Claudia Natalia     | Calderón Lasso        |                 2 |    6514529.74
   121960 | Antonio             | Rincón Tovar          |                 2 |    6513808.83
   127076 | Isabella            | Cabrera Hernández     |                 1 |    6509500.00
   145836 | Hugo                | Díaz Álvarez          |                 1 |    6508501.75
   137041 | Nubia Daniela       | Narváez Vargas        |                 2 |    6503126.40
    82835 | Brayan              | Niño Ramírez          |                 1 |    6502898.16
    70604 | Óscar               | Martínez Betancur     |                 1 |    6502862.32
   111579 | Carlos              | Osorio Flórez         |                 1 |    6500572.65
   127840 | Juliana             | Burbano Romero        |                 1 |    6498220.64
   131721 | Mateo               | Ortiz Uribe           |                 2 |    6497425.84
    58287 | Iván                | Bastidas Osorio       |                 1 |    6496569.45
    86987 | Alejandro           | Gómez Narváez         |                 1 |    6494925.50
    88849 | Andrea Edilma       | Bedoya Castillo       |                 1 |    6494179.86
   120286 | Juliana             | Bedoya Cardona        |                 1 |    6492756.48
    56284 | Óscar               | Niño Cuéllar          |                 2 |    6489318.16
     5427 | Miguel              | Quintero Parra        |                 1 |    6488849.99
   110884 | Javier Santiago     | Muñoz Rangel          |                 2 |    6484591.00
   115687 | Laura               | Acevedo Pérez         |                 1 |    6479392.92
     9305 | Javier              | Zapata Trujillo       |                 2 |    6479014.32
    32456 | Adriana             | Correa Castillo       |                 2 |    6475798.19
    19195 | Liliana             | Medina Galvis         |                 1 |    6473586.18
    19050 | Hugo                | Osorio Erazo          |                 1 |    6467386.86
    30040 | Wilmer Gilberto     | Narváez Caicedo       |                 1 |    6464896.28
    51334 | Mauricio Gustavo    | Burbano Rincón        |                 1 |    6461427.69
   124723 | Jazmín              | Delgado Vélez         |                 1 |    6452452.16
   119356 | Pedro               | Duque Chamorro        |                 1 |    6448549.44
   148743 | Arturo              | Vera Pabón            |                 1 |    6442043.49
     5619 | Wilson Pedro        | Agudelo Pinzón        |                 1 |    6441773.77
     7799 | Esperanza           | Bedoya Pabón          |                 1 |    6440799.80
    86311 | Andrea              | Betancur Carrillo     |                 1 |    6439951.23
    43529 | Lucía Blanca        | Acevedo Cardona       |                 1 |    6439190.59
    97466 | Jairo               | Arango Cabrera        |                 1 |    6435384.55
    56212 | Leidy               | Delgado Vargas        |                 1 |    6421465.06
    19649 | David Germán        | Muñoz Niño            |                 1 |    6420903.30
    20340 | Alejandro           | Calderón Tovar        |                 1 |    6419885.00
     2077 | Gladys              | García Henao          |                 1 |    6419586.80
    47840 | Mauricio            | Cardona Hernández     |                 2 |    6410075.36
    91242 | Pedro               | Gutiérrez Ibarra      |                 2 |    6408292.34
   111568 | Adriana             | Burbano Rangel        |                 1 |    6407575.98
    51396 | Patricia            | Jaimes Guerrero       |                 1 |    6405362.54
    71625 | Nelson              | Pinzón Polanía        |                 1 |    6401724.86
   139551 | Lorena Esperanza    | López Barrera         |                 1 |    6399766.11
   113271 | Héctor              | Rincón Burbano        |                 2 |    6399397.17
    21991 | Wilson              | Henao Agudelo         |                 1 |    6395020.73
    84998 | Camilo              | Sánchez Tovar         |                 1 |    6394248.64
     5880 | Liliana             | Henao Cardona         |                 1 |    6390731.08
    80032 | Iván Libardo        | Chamorro Galvis       |                 1 |    6389067.50
        4 | Jaime               | Erazo Torres          |                 1 |    6383542.95
     9690 | Myriam              | Peña Mosquera         |                 1 |    6374736.94
    34707 | Ricardo Gilberto    | Zuluaga Chamorro      |                 1 |    6367967.55
   148583 | Antonio             | Villamizar Correa     |                 1 |    6365517.52
    93072 | Yesenia             | Cárdenas Londoño      |                 1 |    6361668.78
    54770 | Esperanza           | Carrillo Caicedo      |                 1 |    6360537.17
    61216 | Juliana             | Sánchez Osorio        |                 1 |    6357170.71
   101003 | Javier              | Castro Bastidas       |                 1 |    6348502.75
     1603 | Gustavo             | Ortega Quintero       |                 1 |    6341153.61
     5470 | Carolina            | Álvarez Rojas         |                 1 |    6338785.26
   146661 | Arturo Jairo        | Mora Galvis           |                 1 |    6334511.37
    47405 | Sofía               | Ramírez Pinzón        |                 1 |    6334447.39
    57075 | Gilberto            | Muñoz Bermúdez        |                 2 |    6329875.27
    28821 | Gloria              | Marín Pabón           |                 1 |    6328653.76
    90215 | Luisa               | Delgado Medina        |                 1 |    6324485.88
    34956 | Adriana             | Cáceres Gómez         |                 1 |    6323690.58
    36161 | Camila              | Caicedo Cardona       |                 1 |    6320383.84
   136744 | Álvaro              | Guerrero Trujillo     |                 1 |    6313435.75
   115779 | Javier              | Bastidas Flórez       |                 1 |    6309588.96
   101251 | Jazmín              | Narváez Tovar         |                 1 |    6308102.98
    22523 | Rubén               | Jiménez Jaimes        |                 1 |    6306128.88
   133188 | Alejandro Felipe    | Acevedo Giraldo       |                 1 |    6305728.11
   103914 | Carolina            | Gutiérrez Cuéllar     |                 1 |    6303611.03
   112958 | Luisa Lucía         | Lasso Suárez          |                 1 |    6302926.52
    88826 | Rafael              | Molina Niño           |                 1 |    6301362.69
    58254 | Rocío               | Ramos Ibarra          |                 1 |    6299088.38
    68278 | Carlos              | Marín Suárez          |                 1 |    6294534.12
    41288 | Isabella            | Caicedo Quintero      |                 1 |    6284844.66
    95443 | Álvaro              | Ríos López            |                 1 |    6280617.80
   135792 | Nelson              | Pérez Bonilla         |                 1 |    6272358.40
   141253 | Mercedes            | Herrera García        |                 1 |    6271623.62
    69057 | Juan                | Londoño Ospina        |                 2 |    6264920.57
    43491 | Sara                | Polanía Mora          |                 1 |    6262127.28
    13483 | Édgar               | Perdomo Mejía         |                 1 |    6262043.19
    79728 | Efraín              | Duarte Pabón          |                 1 |    6258607.95
    92411 | Wilson Hernando     | Restrepo Rivera       |                 1 |    6257678.33
    22862 | Nicolás             | Pinzón Ramos          |                 1 |    6252636.60
    50309 | Yuliana Marcela     | Bermúdez Mosquera     |                 1 |    6251767.59
    11076 | Alejandro           | Arias Mora            |                 1 |    6250579.41
   143504 | Alba Mariana        | Valencia González     |                 1 |    6250423.65
   129096 | Dora                | Cáceres Correa        |                 1 |    6248657.61
    75936 | Francisco Abelardo  | Duarte Cárdenas       |                 1 |    6246118.19
    47762 | José                | Flórez Marín          |                 1 |    6240980.76
    18056 | Alberto             | Cardona Galvis        |                 1 |    6239095.45
   127471 | Nelson              | Restrepo Arango       |                 1 |    6239054.40
    29136 | Daniela Lorena      | Osorio Polanía        |                 1 |    6237770.32
    92874 | Leidy Mercedes      | Bastidas Villamizar   |                 1 |    6234765.88
   119066 | Emilio              | Cuéllar Vargas        |                 1 |    6233565.32
    51654 | Hernando            | Restrepo Jaimes       |                 1 |    6229993.68
    88809 | Erika               | Gutiérrez Sandoval    |                 1 |    6229070.80
    46689 | Adriana             | Torres Rincón         |                 1 |    6226769.16
    64405 | Luis                | Niño Narváez          |                 1 |    6224279.40
    88754 | Mateo Arturo        | Jiménez Ospina        |                 1 |    6224092.34
    40743 | Cecilia             | Barrera Trujillo      |                 1 |    6219581.20
   144982 | Jaime Rubén         | Suárez Bastidas       |                 1 |    6219207.75
    93515 | Aníbal              | Salazar Rangel        |                 1 |    6218203.48
      629 | Jorge               | Duque González        |                 1 |    6217826.80
   125879 | Ricardo             | Lozano López          |                 1 |    6215764.17
    97880 | Yeison              | Medina Caicedo        |                 1 |    6214421.20
     2136 | Álvaro              | Montoya Chamorro      |                 1 |    6210363.43
   149381 | Rafael Orlando      | Guerrero Vargas       |                 1 |    6200722.30
      427 | Óscar Jaime         | Villamizar Bedoya     |                 2 |    6198706.88
    21122 | Rodrigo Ricardo     | Barrera Mosquera      |                 1 |    6195376.70
    17376 | Mónica              | Serrano Montoya       |                 1 |    6191380.08
    53730 | Hugo Javier         | Henao Betancur        |                 1 |    6190340.52
    13091 | Nicolás             | Ruiz Osorio           |                 1 |    6189703.14
    34416 | Yuliana Diana       | Contreras Rivera      |                 1 |    6188021.20
    43461 | Dora                | Lozano Guerrero       |                 1 |    6187991.80
    25159 | Diego               | Pérez Mejía           |                 1 |    6187962.60
    69387 | Fernando            | Herrera Galvis        |                 1 |    6187454.50
   105366 | Jazmín              | Flórez López          |                 1 |    6187355.81
    24150 | Andrea              | Caicedo Zapata        |                 1 |    6184008.88
   108186 | Gladys              | Perdomo Lasso         |                 1 |    6182157.27
    30612 | Camila              | Marín Erazo           |                 1 |    6181676.80
    66059 | Mateo               | López Cardona         |                 1 |    6179945.35
    27286 | Brayan              | Arias Cárdenas        |                 1 |    6179839.27
    98492 | Liliana             | Londoño Castillo      |                 1 |    6177825.83
    76214 | Camila              | Mejía Vargas          |                 1 |    6174899.11
    47885 | Cecilia Manuela     | Ramírez Zuluaga       |                 1 |    6174419.40
   101681 | Yolanda Cecilia     | Medina Burbano        |                 1 |    6171557.18
    76589 | Francisco Heriberto | Cárdenas Martínez     |                 2 |    6169053.02
    44119 | Mateo               | Vargas Arias          |                 1 |    6164489.52
    18893 | David               | Hernández Osorio      |                 1 |    6163082.10
     6862 | Mario               | Vera Cabrera          |                 1 |    6162500.48
   115898 | Lucía               | Flórez Herrera        |                 1 |    6162029.69
    18319 | Andrés Wilson       | Mosquera Pinzón       |                 1 |    6161022.08
   116131 | Nelson              | Bastidas Bedoya       |                 1 |    6158632.44
   149648 | Guillermo           | Mejía Arias           |                 1 |    6155282.01
   125489 | Camila              | Osorio Bedoya         |                 1 |    6154787.98
   140931 | Fabio               | Peña Calderón         |                 1 |    6153763.70
    12742 | Esperanza           | López Henao           |                 1 |    6152342.02
     7178 | Hugo                | Muñoz Chamorro        |                 1 |    6151990.65
    64837 | Andrés Yeison       | Quintero Rivera       |                 1 |    6151040.35
    42699 | Guillermo Francisco | Ospina Torres         |                 1 |    6148233.96
    21282 | Mario               | Lozano López          |                 1 |    6142454.01
   109291 | Valentina           | Rodríguez Álvarez     |                 1 |    6142379.58
     2067 | Alba Blanca         | Trujillo Serrano      |                 1 |    6139786.98
   129480 | Beatriz             | Prada Peña            |                 1 |    6136471.78
    85006 | Rafael              | Molina Vargas         |                 1 |    6136130.44
    98655 | Wilmer Julián       | Suárez Vélez          |                 1 |    6131312.58
   139130 | David               | Rivera Peña           |                 1 |    6123920.40
    78438 | Leidy               | Delgado Sandoval      |                 1 |    6123908.85
     5835 | Javier Mauricio     | Duque Jaimes          |                 1 |    6123867.36
   112472 | Diego Héctor        | Benavides Niño        |                 1 |    6121570.74
    96276 | Alberto             | Moreno Álvarez        |                 1 |    6119875.50
   113843 | Rodrigo             | Uribe Duque           |                 1 |    6118062.85
   129811 | Juliana             | Carrillo Serrano      |                 1 |    6116230.53
    18737 | Gladys              | Agudelo Ruiz          |                 1 |    6115536.57
   113708 | Santiago            | Marín Álvarez         |                 1 |    6114585.11
    37980 | Emilio              | Peña Duque            |                 1 |    6106857.60
   135083 | Nelson              | García Moreno         |                 1 |    6105515.00
   134561 | Alberto             | Rincón Torres         |                 1 |    6102393.43
    71016 | Abelardo            | Londoño Contreras     |                 1 |    6100938.56
   135398 | Stella Fanny        | García Zapata         |                 1 |    6087882.20
    16031 | Leidy               | Díaz Ortiz            |                 1 |    6087809.85
   110290 | Andrés              | Mora Rangel           |                 1 |    6086015.00
   135451 | Fabio               | Delgado Sánchez       |                 1 |    6080133.95
    11593 | Arturo              | Galvis Perdomo        |                 1 |    6079114.80
   136566 | Jazmín              | Gómez Rangel          |                 1 |    6075211.82
   139117 | Alberto             | Tovar Calderón        |                 1 |    6075018.00
   106121 | Álvaro              | Hernández Betancur    |                 1 |    6073706.73
   111989 | Martha              | Duarte Ríos           |                 1 |    6072500.70
   141093 | Germán Jairo        | Vargas Martínez       |                 1 |    6070571.39
   123963 | Libardo             | Delgado Rangel        |                 1 |    6067912.68
   132742 | Héctor              | Valencia Duque        |                 1 |    6063768.00
   106977 | Mercedes Mónica     | Álvarez Villamizar    |                 1 |    6059459.37
    79488 | Aníbal              | Sánchez Pabón         |                 1 |    6056965.06
    78371 | Paola               | Parra Ospina          |                 1 |    6056646.53
    32853 | Ancízar             | Ospina Bedoya         |                 1 |    6054755.70
    43517 | Alejandro           | Molina Giraldo        |                 1 |    6053685.96
    55208 | Lorena              | Pérez Montoya         |                 1 |    6052691.68
   129352 | Samuel              | Ramos Rojas           |                 1 |    6051124.48
   147266 | Wilmer              | Rodríguez Burbano     |                 1 |    6049523.80
    36177 | Inés                | Rojas Cabrera         |                 1 |    6042335.00
    11394 | Aura                | Torres Londoño        |                 1 |    6038754.77
    95887 | Guillermo           | Valencia Arias        |                 1 |    6037768.93
    95687 | Óscar               | Duarte Rincón         |                 1 |    6035337.88
     8855 | Patricia Sandra     | Hernández Cabrera     |                 1 |    6035070.72
    84999 | Andrea              | Correa Rincón         |                 1 |    6033241.11
     4329 | Felipe              | Vélez Medina          |                 1 |    6032806.71
    28427 | Alejandro           | Cárdenas Gutiérrez    |                 2 |    6032720.07
    47334 | Luz Yolanda         | Guerrero Vargas       |                 1 |    6028645.10
   147347 | Andrea Ana          | Torres Barrera        |                 1 |    6027115.10
    38032 | Mónica Nicolás      | Betancur Molina       |                 1 |    6026929.47
    87934 | Arturo Wilson       | Carrillo Henao        |                 1 |    6025957.89
   149128 | Paola               | Niño Agudelo          |                 1 |    6024047.30
    74855 | Sebastián           | Rodríguez Silva       |                 1 |    6023871.75
   126917 | Fernando Manuel     | Bonilla Zuluaga       |                 1 |    6022353.61
    66592 | Cecilia             | Prada Torres          |                 1 |    6018284.83
    38130 | Nubia Sara          | Tovar Castro          |                 2 |    6017378.28
    34161 | Abelardo            | Ramírez Pabón         |                 1 |    6016020.80
    33260 | Luisa               | Vargas Arango         |                 1 |    6015121.44
    25718 | Mauricio            | Mora Erazo            |                 1 |    6014935.29
     4027 | Mariana             | Díaz Romero           |                 1 |    6013296.30
    55156 | Stella              | Chamorro Lasso        |                 1 |    6009766.75
   121603 | Teresa              | Burbano Pabón         |                 1 |    6009381.84
    48675 | Antonio             | Rincón Ramírez        |                 1 |    6008330.71
    58069 | Teresa              | Rangel Ríos           |                 1 |    6007443.84
    59076 | Rafael              | Gómez López           |                 1 |    6000703.20
    26560 | Nelson              | Erazo Ramos           |                 1 |    6000098.11
    88197 | Sebastián           | Flórez Bonilla        |                 1 |    5999808.02
    60395 | Cecilia             | Mora Cáceres          |                 1 |    5999604.15
   127763 | Rubén               | Acevedo Ríos          |                 1 |    5996940.47
   122861 | Isabella            | Díaz Álvarez          |                 1 |    5993881.82
    23611 | Libardo Wilson      | Rangel Valencia       |                 1 |    5992926.69
   122067 | Claudia             | Herrera Duque         |                 1 |    5989818.93
    51557 | Alejandro           | Lozano Correa         |                 1 |    5988352.92
    58732 | Daniel              | Castro Prada          |                 1 |    5983889.52
    96799 | Paola               | López Martínez        |                 1 |    5979240.70
    79356 | Álvaro              | Arango González       |                 2 |    5975897.51
    51800 | Abelardo            | Martínez Cáceres      |                 1 |    5975776.02
    17770 | María               | Barrera Montoya       |                 1 |    5974610.73
     2715 | Libardo Andrés      | Perdomo Calderón      |                 1 |    5972787.75
   138862 | Camilo              | Moreno Ibarra         |                 1 |    5971486.43
    93598 | Jazmín              | Mejía Zuluaga         |                 1 |    5970803.96
    70512 | Édgar Mateo         | Peña Valencia         |                 1 |    5966129.40
    73629 | Daniel              | Ramos Losada          |                 1 |    5965815.36
      716 | Carlos              | Quintero Ibarra       |                 1 |    5965003.19
    96058 | Álvaro              | Vargas Medina         |                 1 |    5964640.46
    97491 | Nelson              | Delgado Lasso         |                 1 |    5963770.10
    77515 | Diego Carlos        | Suárez Acevedo        |                 1 |    5963723.54
    28169 | Gabriela Lorena     | Erazo Bedoya          |                 1 |    5963102.92
    20543 | Carolina            | Cáceres Pabón         |                 1 |    5960544.41
   102440 | Ancízar             | Muñoz Delgado         |                 1 |    5959205.28
      925 | Amparo              | Pérez Serrano         |                 1 |    5956974.80
    82454 | Diana Elsa          | Ospina Tovar          |                 1 |    5956842.69
   104089 | Fabio Francisco     | Giraldo Ospina        |                 1 |    5956450.20
    43415 | Fanny               | Losada Castillo       |                 1 |    5956270.92
    37717 | Fernando            | Moreno Arias          |                 1 |    5955644.64
    97972 | Erika               | Tovar Benavides       |                 1 |    5955488.50
   126384 | Valentina Lorena    | Hernández Jiménez     |                 1 |    5954793.39
   101181 | Mario               | Rojas Losada          |                 1 |    5951494.08
    11086 | Reinaldo            | Ruiz Agudelo          |                 1 |    5948622.65
    81502 | Libardo             | López Zuluaga         |                 1 |    5947864.95
    66597 | Natalia             | Torres Duarte         |                 1 |    5947566.52
   128412 | Marcela             | Polanía Calderón      |                 1 |    5944279.96
   101575 | Ricardo             | Villamizar Contreras  |                 1 |    5944067.68
   147336 | Rodrigo             | Bastidas Díaz         |                 1 |    5942552.14
    40695 | Sofía Elsa          | Bermúdez Delgado      |                 2 |    5937755.72
    80375 | Abelardo            | Quintero Losada       |                 1 |    5935103.07
    45452 | Sandra              | Trujillo Ospina       |                 1 |    5934290.01
   103382 | Teresa              | Castro Tovar          |                 1 |    5928570.48
    44746 | Fabio               | Narváez Suárez        |                 1 |    5927578.25
   118027 | Carolina            | Lasso Medina          |                 1 |    5926154.00
    51981 | Isabella Blanca     | Correa López          |                 1 |    5918122.61
     1488 | Édgar               | Montoya Molina        |                 1 |    5917958.88
       88 | Santiago Fabio      | Marín Caicedo         |                 1 |    5916801.08
    27329 | Myriam              | Rodríguez Mora        |                 1 |    5916451.72
    20386 | Ana Beatriz         | Ruiz Cáceres          |                 1 |    5914568.85
   108908 | Fabio               | Correa Mosquera       |                 1 |    5913098.35
   148434 | Jairo               | Marín Cabrera         |                 1 |    5912833.75
    70820 | Gloria              | Mosquera Ruiz         |                 1 |    5912377.71
   141035 | Mario               | Carrillo Uribe        |                 1 |    5909220.77
    79432 | Amparo Alba         | Gómez Sandoval        |                 1 |    5908037.88
   145738 | Alejandra           | Castillo Mora         |                 1 |    5903580.16
   116915 | Iván                | Rivera Londoño        |                 1 |    5902943.80
   111259 | Antonio Nelson      | Silva Cuéllar         |                 1 |    5902583.60
    15378 | Héctor              | Muñoz Salazar         |                 1 |    5898549.86
   149521 | Sebastián           | Flórez Galvis         |                 1 |    5897498.03
     2280 | Jorge Samuel        | Torres Cabrera        |                 1 |    5896779.33
    39548 | Wilson Javier       | Sandoval Contreras    |                 1 |    5895782.24
   103680 | Ricardo             | Jaimes Silva          |                 1 |    5894044.20
    73079 | Emilio              | Ortiz Prada           |                 1 |    5893467.18
    65906 | Álvaro Nelson       | Parra Londoño         |                 1 |    5886934.89
    89652 | Rubén Rafael        | Rojas Bedoya          |                 1 |    5886899.59
   141490 | Juan                | Serrano Calderón      |                 1 |    5885684.04
    55379 | Francisco           | Arango Pérez          |                 1 |    5880526.20
    27600 | Orlando             | Henao Vargas          |                 1 |    5878803.50
    32800 | David               | Ibarra Uribe          |                 1 |    5877026.40
   102182 | Andrea              | Bonilla Mejía         |                 1 |    5875369.44
   146598 | Camila Laura        | Ortega Parra          |                 1 |    5869850.10
    39638 | Ana Nubia           | Bonilla Chamorro      |                 1 |    5869506.34
   113810 | Gilberto            | Londoño Villamizar    |                 1 |    5867540.34
    59959 | Iván Esteban        | Silva Gutiérrez       |                 1 |    5862817.22
    39562 | Rocío               | Salazar Quintero      |                 1 |    5862395.87
    39806 | Mateo               | Ramírez Martínez      |                 1 |    5859301.79
    44204 | Miguel Sebastián    | Herrera Molina        |                 1 |    5857207.40
    15962 | Isabella Laura      | Erazo Salazar         |                 1 |    5856986.00
    59247 | Nelson              | Peña Contreras        |                 1 |    5856631.20
    20477 | Mateo Fabio         | González Prada        |                 2 |    5855072.91
    33276 | Nicolás             | Rivera Rodríguez      |                 2 |    5854877.53
    70717 | Paola               | Rincón Gómez          |                 1 |    5854837.86
    12579 | Mauricio            | Molina Rangel         |                 1 |    5852904.72
   104567 | Edilma Teresa       | Vargas Ramos          |                 1 |    5852019.50
    10604 | David               | Marín Perdomo         |                 1 |    5851365.00
   125316 | Orlando             | Medina Romero         |                 1 |    5851002.24
    38849 | Diego               | Ríos Moreno           |                 1 |    5847781.18
    51608 | José Germán         | Mosquera Duque        |                 1 |    5846390.22
    47449 | Gustavo             | Mejía Medina          |                 1 |    5843256.31
   124674 | Andrés              | Ortega Medina         |                 1 |    5843021.52
   133197 | Diego José          | Jaimes Henao          |                 1 |    5841976.02
   148493 | Dora Yolanda        | Cardona Osorio        |                 1 |    5841608.43
    63088 | Manuel              | Mejía Valencia        |                 2 |    5836397.02
   107973 | Yesenia             | Perdomo Castro        |                 1 |    5836194.00
    13565 | Alba Valentina      | Vargas Arango         |                 1 |    5833558.31
    48273 | Aura Rocío          | Lasso Londoño         |                 1 |    5833320.80
    81444 | Abelardo            | Henao Barrera         |                 1 |    5829364.07
    31138 | Cristian Manuel     | Correa Suárez         |                 1 |    5828801.80
    65035 | Francisco           | Benavides Narváez     |                 1 |    5827681.08
    90118 | Camilo              | Rivera Torres         |                 1 |    5826188.64
    14309 | Jorge               | Molina Parra          |                 1 |    5826067.42
   106812 | Antonio             | Ortiz Mosquera        |                 1 |    5825832.40
    40426 | Nicolás Francisco   | Vélez Giraldo         |                 1 |    5824004.16
     1026 | Ana                 | Rodríguez Galvis      |                 1 |    5823292.22
    94867 | Laura               | Ramos Vargas          |                 1 |    5821838.39
    46493 | Daniela             | Barrera Restrepo      |                 1 |    5820737.74
    62238 | Gabriela            | Correa Sánchez        |                 1 |    5818416.97
    90842 | Andrés Rodrigo      | Jaimes Herrera        |                 1 |    5817046.51
    92606 | Andrés Abelardo     | Giraldo Trujillo      |                 1 |    5813909.73
   111823 | Heriberto           | Castillo Cardona      |                 1 |    5813292.42
    43099 | Liliana             | Restrepo Galvis       |                 1 |    5813226.95
    11011 | Alba                | Cáceres Bonilla       |                 1 |    5812564.18
   141022 | Luz                 | Losada Ramírez        |                 1 |    5807752.50
    87174 | Efraín              | Ortiz Zuluaga         |                 1 |    5807384.73
    68912 | Samuel Ricardo      | Calderón Duque        |                 1 |    5806668.35
     8496 | Mario               | Muñoz Pinzón          |                 2 |    5805697.51
    27287 | Olga                | Ortiz Duque           |                 1 |    5805374.83
   140072 | Rocío Yesenia       | Rodríguez Jiménez     |                 1 |    5803968.96
    67431 | Ricardo             | Guerrero Duarte       |                 1 |    5803277.97
   125027 | Mateo               | Parra Giraldo         |                 1 |    5803249.45
    38731 | Andrea              | Mosquera Osorio       |                 1 |    5798584.96
    16361 | Wilson Samuel       | Giraldo López         |                 1 |    5797588.76
   107414 | Myriam              | Quintero Muñoz        |                 1 |    5796997.20
   144398 | Jaime Rubén         | Arias Rivera          |                 1 |    5793958.40
    61478 | Alberto             | Suárez Benavides      |                 2 |    5789416.77
   125021 | Camila              | Bastidas Burbano      |                 1 |    5787167.55
    57218 | Pedro               | Duque Vélez           |                 1 |    5782291.73
   104886 | Lorena              | Bonilla Gutiérrez     |                 1 |    5781587.04
      231 | Inés Viviana        | Burbano Sánchez       |                 1 |    5781157.65
    23195 | Juan                | López Ortiz           |                 2 |    5776240.83
    34715 | Sofía               | Henao Vera            |                 1 |    5773463.88
   108336 | Fabio               | Uribe Sánchez         |                 1 |    5771748.38
    60533 | Orlando             | Medina Mora           |                 1 |    5771365.39
    30901 | Alejandro Julián    | Vélez Duarte          |                 1 |    5771165.40
    36233 | Andrea              | Cáceres Molina        |                 1 |    5769677.18
    48781 | Claudia             | Cuéllar Silva         |                 1 |    5769440.37
    26504 | Cecilia             | Pabón Castillo        |                 1 |    5768915.93
   145711 | Alba                | González Bastidas     |                 2 |    5766342.35
    72294 | Erika               | Jiménez Duarte        |                 1 |    5766217.93
    95690 | Yolanda             | Uribe Hernández       |                 1 |    5763912.15
    40134 | Cecilia             | Pabón Cardona         |                 1 |    5762964.96
    97687 | Sandra              | Valencia Ortiz        |                 2 |    5759552.92
    21493 | Mariana Lucía       | Rincón Cáceres        |                 2 |    5759017.42
   124556 | Olga Carmen         | Betancur Pinzón       |                 1 |    5753349.60
   107135 | Luz                 | Pabón Flórez          |                 1 |    5752226.88
    36667 | Juan                | Valencia Erazo        |                 1 |    5746749.19
   100739 | Teresa              | Ruiz Burbano          |                 1 |    5742897.12
    64809 | Mauricio            | Valencia Trujillo     |                 1 |    5736352.12
   132966 | Álvaro              | Ramírez Restrepo      |                 1 |    5736090.60
    31902 | Yolanda             | Molina Medina         |                 1 |    5736050.90
    33071 | Nicolás José        | Montoya Rangel        |                 1 |    5733216.58
   120421 | Carmen              | Cárdenas Niño         |                 1 |    5727083.25
    37775 | Emilio              | Arias Londoño         |                 1 |    5725470.44
    11338 | Ricardo             | Herrera Agudelo       |                 1 |    5724920.70
   115773 | Diana               | Bermúdez Martínez     |                 1 |    5724590.75
   145210 | Manuela Sara        | Moreno Suárez         |                 1 |    5719614.66
    70547 | Manuel Édgar        | Flórez Uribe          |                 1 |    5715161.09
    86463 | Claudia             | Cuéllar Lasso         |                 1 |    5714554.38
    54779 | Rodrigo             | Restrepo Erazo        |                 2 |    5713483.47
    28704 | Manuel              | Rivera Mosquera       |                 1 |    5712970.86
    30663 | Fernando            | Gutiérrez López       |                 1 |    5709782.70
    82368 | Fanny Martha        | Herrera Quintero      |                 1 |    5697153.28
     6043 | Rubén               | Delgado Álvarez       |                 1 |    5696493.26
    83614 | Aníbal              | Uribe Cáceres         |                 1 |    5696446.39
    21861 | Reinaldo            | Rodríguez Bastidas    |                 1 |    5696167.13
     5446 | Manuel Felipe       | Castillo Villamizar   |                 1 |    5694563.76
    79983 | Esteban             | Ospina Cabrera        |                 1 |    5690002.93
    92670 | Yolanda             | Barrera Moreno        |                 1 |    5687396.50
    21734 | Gloria              | Galvis Bedoya         |                 1 |    5686355.72
    56554 | Viviana             | Restrepo Benavides    |                 1 |    5686338.24
   132588 | María               | Mejía Rincón          |                 1 |    5686054.20
    94864 | Hernando            | Suárez Bedoya         |                 1 |    5683086.80
    62672 | Alejandro           | Duarte Suárez         |                 1 |    5679536.16
    43103 | Abelardo            | Cuéllar Agudelo       |                 1 |    5675551.42
   146885 | Samuel              | Pinzón Marín          |                 1 |    5675394.76
    94165 | Andrés              | Guerrero Betancur     |                 1 |    5673950.64
    65852 | Hernando            | Rojas Cardona         |                 2 |    5671207.59
    97373 | Cecilia             | Lozano Benavides      |                 1 |    5668541.84
    47127 | Mauricio            | Zapata Rivera         |                 1 |    5668508.52
   101945 | Samuel              | Bastidas Pinzón       |                 1 |    5667428.12
   103708 | Wilmer              | Arias Serrano         |                 1 |    5665734.67
    69475 | Alberto Rubén       | Villamizar Burbano    |                 1 |    5658944.96
     6430 | Elsa                | Arango Montoya        |                 1 |    5658843.55
   123497 | David               | Vargas Agudelo        |                 1 |    5658838.97
   107163 | Wilmer Alberto      | Ruiz Barrera          |                 1 |    5658124.48
    81790 | Abelardo            | Benavides Tovar       |                 1 |    5657526.60
    53431 | Stella              | Montoya Burbano       |                 1 |    5656712.74
   141543 | Natalia             | Ortega Sandoval       |                 1 |    5655760.78
   119403 | Álvaro              | Ruiz Londoño          |                 1 |    5655307.35
   107118 | Édgar               | Vargas Ospina         |                 1 |    5654328.66
    61719 | Viviana             | Acevedo Serrano       |                 1 |    5652717.48
    79947 | Santiago Juan       | Cáceres García        |                 1 |    5649431.19
   149808 | María               | Cárdenas Cardona      |                 1 |    5647824.00
    49057 | Héctor              | Ospina Zuluaga        |                 1 |    5646532.16
   136872 | Elsa                | Ibarra Pinzón         |                 1 |    5646292.12
   125395 | Cecilia             | Londoño Pérez         |                 1 |    5645288.25
    11850 | Blanca              | Agudelo Silva         |                 1 |    5642290.82
    37623 | Fabio Nicolás       | Marín Duarte          |                 1 |    5642230.36
    51848 | Fernando Fabio      | Pérez Erazo           |                 2 |    5642094.09
     2323 | Gilberto            | Sánchez Restrepo      |                 1 |    5640173.42
    61899 | Jorge               | Vera Lasso            |                 1 |    5639931.76
    54151 | Brayan              | Flórez Bermúdez       |                 1 |    5635828.00
    24002 | Amparo              | Bedoya Romero         |                 1 |    5629990.52
    39505 | Gustavo             | Ríos Duque            |                 1 |    5627116.58
   106780 | Felipe Ricardo      | López Trujillo        |                 1 |    5625491.49
   130945 | Inés Paola          | Suárez Medina         |                 1 |    5620834.44
   101992 | Juan Alberto        | Betancur Bastidas     |                 1 |    5618190.24
    49083 | Ana                 | Losada Flórez         |                 1 |    5617208.25
   119413 | Beatriz             | Galvis Ríos           |                 1 |    5616657.00
    13311 | Germán Wilmer       | Correa Tovar          |                 1 |    5611684.56
    58879 | Nelson              | Castro Londoño        |                 1 |    5610611.21
   109600 | Myriam Gladys       | Sánchez Ruiz          |                 1 |    5609846.34
   125390 | Alejandro           | Ramos Suárez          |                 1 |    5609594.16
    51983 | Valentina           | Henao Sandoval        |                 1 |    5603597.75
     1138 | Libardo             | Ríos Osorio           |                 1 |    5602558.62
   102084 | Olga                | Ramírez Cabrera       |                 1 |    5602394.70
    89108 | Alejandro           | Bedoya García         |                 1 |    5601118.96
    91783 | Martha              | Álvarez Gómez         |                 2 |    5597462.67
   120113 | Óscar               | Erazo Valencia        |                 1 |    5596556.07
     7499 | Manuel Fabio        | Castro Rangel         |                 1 |    5594567.86
    37882 | Hernando            | Duarte Duque          |                 1 |    5591836.80
   123612 | Wilson Efraín       | Bonilla Ramos         |                 1 |    5590879.32
    41874 | Elsa                | Londoño Correa        |                 1 |    5590587.17
    51041 | Teresa Nubia        | Duque Rodríguez       |                 1 |    5590390.36
     9834 | Luis                | Mejía Duque           |                 1 |    5587246.26
    20515 | Carlos              | Rodríguez Muñoz       |                 1 |    5586544.08
    56801 | Isabella Fanny      | Gómez Arias           |                 1 |    5584080.11
   120664 | Abelardo            | Cáceres Ruiz          |                 1 |    5581486.56
   120872 | Rubén               | Osorio Cabrera        |                 2 |    5580975.43
    49016 | Alberto             | Rincón Ríos           |                 1 |    5580111.67
    93913 | Javier              | Ortiz Montoya         |                 1 |    5579274.22
   118738 | Carmen Beatriz      | Flórez Bastidas       |                 1 |    5575491.22
    23303 | Mauricio Javier     | Salazar Castro        |                 1 |    5572436.82
    45496 | Aura                | Prada Chamorro        |                 1 |    5568837.45
    27061 | Rafael              | Rivera Arias          |                 1 |    5567699.56
    74325 | Reinaldo            | Cardona Tovar         |                 1 |    5567249.27
    90430 | Carlos Brayan       | Villamizar Galvis     |                 1 |    5563041.44
    34275 | Sebastián           | Guerrero Muñoz        |                 1 |    5560813.48
    14849 | Fanny               | Quintero Trujillo     |                 1 |    5557722.10
    19840 | Manuel Álvaro       | Narváez Ramírez       |                 1 |    5555943.47
    67127 | Óscar Aníbal        | Hernández Lasso       |                 1 |    5551293.13
    43059 | Guillermo           | Ruiz Rojas            |                 1 |    5550656.30
   145987 | Yuliana             | Duarte Chamorro       |                 1 |    5549333.08
   141541 | Ana Sandra          | Mora Quintero         |                 1 |    5549281.14
    26465 | Santiago Javier     | Ramos Guerrero        |                 1 |    5547872.00
    93758 | Óscar Reinaldo      | Trujillo Cardona      |                 1 |    5544166.56
    11833 | Alejandra           | Duque Polanía         |                 1 |    5542401.43
    24393 | Mario Felipe        | Bermúdez Mejía        |                 1 |    5542388.24
   148164 | Camilo              | Delgado Peña          |                 1 |    5539302.10
    78816 | Ancízar Diego       | Gómez Polanía         |                 1 |    5538477.36
    14002 | Blanca              | Tovar Correa          |                 1 |    5538381.32
    81256 | Natalia             | Rangel Perdomo        |                 1 |    5537853.60
    54876 | Alejandra           | Ramírez Calderón      |                 1 |    5536802.23
    65969 | María               | Lozano Castillo       |                 1 |    5535768.60
   118574 | Jorge               | Ibarra Uribe          |                 1 |    5534213.40
    15246 | Marcela             | Mora Mosquera         |                 1 |    5531405.73
   114243 | Elsa María          | Betancur Hernández    |                 1 |    5530175.39
    42422 | Brayan              | Zapata Moreno         |                 1 |    5528977.59
    50988 | Alejandro           | Martínez Guerrero     |                 1 |    5527881.18
    12164 | Yuliana             | Pinzón Londoño        |                 1 |    5526812.73
    58898 | Orlando Álvaro      | Narváez Díaz          |                 1 |    5526124.48
     6789 | Mariana Amparo      | Losada Serrano        |                 1 |    5521616.58
    36466 | Brayan              | Sánchez Uribe         |                 2 |    5521378.49
    36265 | Martha              | Lasso Hernández       |                 1 |    5521119.46
    21147 | Santiago            | Pabón Calderón        |                 1 |    5520289.80
   101577 | Rodrigo             | Duque Uribe           |                 1 |    5520102.18
    17475 | Wilson              | Medina Mosquera       |                 1 |    5519095.21
    19133 | Santiago            | Ruiz Rojas            |                 1 |    5519086.86
     3530 | Abelardo José       | López Narváez         |                 1 |    5517612.48
    32048 | Alberto Sebastián   | Cárdenas Ríos         |                 1 |    5517360.85
   123819 | Mario               | Ibarra Carrillo       |                 1 |    5517280.98
    88940 | Luis Hugo           | Ramírez Cáceres       |                 2 |    5516906.31
    11781 | Sara                | Peña Suárez           |                 1 |    5515251.08
     4173 | Luz                 | Zapata Castillo       |                 1 |    5514739.18
    17296 | Arturo              | Osorio Ruiz           |                 1 |    5513571.53
    70893 | Olga                | Rivera Agudelo        |                 1 |    5510784.48
    45926 | Héctor              | Polanía García        |                 1 |    5510048.75
    96176 | Efraín Samuel       | Bonilla Barrera       |                 1 |    5509553.09
    36136 | Valentina           | Díaz Moreno           |                 1 |    5509089.00
    22405 | Erika               | Galvis Ortiz          |                 1 |    5509027.05
    90615 | Mercedes Yesenia    | Gómez Losada          |                 2 |    5508893.21
    73507 | Diana               | Gutiérrez Agudelo     |                 2 |    5508850.41
    61517 | Juliana             | Osorio Jiménez        |                 1 |    5508629.27
    50436 | Andrés              | Niño Calderón         |                 1 |    5507882.94
    60584 | Diego               | Castillo Burbano      |                 1 |    5505398.43
    37753 | Fernando Arturo     | Cuéllar Herrera       |                 1 |    5505020.71
    22793 | Gilberto            | Cáceres Castillo      |                 1 |    5501666.48
    60271 | Reinaldo Hugo       | Ramos Peña            |                 1 |    5499359.60
    49299 | Mateo               | Bedoya Flórez         |                 1 |    5497909.43
   119754 | Jaime Esteban       | Jiménez García        |                 1 |    5495025.51
    25279 | Mateo               | Castillo Carrillo     |                 1 |    5492865.78
    51036 | Nicolás             | González Trujillo     |                 1 |    5491099.76
   101914 | Rafael              | Díaz Castillo         |                 1 |    5490764.25
    87878 | Francisco           | Zuluaga Torres        |                 1 |    5490536.66
    47153 | Leidy               | Vélez Montoya         |                 2 |    5487780.72
   135250 | Lucía               | Uribe Contreras       |                 1 |    5487410.14
    26459 | Lucía               | Serrano Silva         |                 1 |    5487376.40
   146197 | Yesenia Alba        | Burbano Martínez      |                 1 |    5485115.35
    56893 | Cecilia Beatriz     | Bonilla Muñoz         |                 1 |    5482452.50
    14989 | Yeison              | Mejía Guerrero        |                 1 |    5482405.50
   106415 | Germán              | Pabón González        |                 1 |    5481485.01
     6648 | Diego               | Ortega Ortega         |                 1 |    5477690.85
   109175 | Arturo              | Duque Vera            |                 1 |    5475237.58
    22822 | Heriberto           | Delgado Correa        |                 1 |    5472040.85
    53899 | Libardo             | Herrera Serrano       |                 1 |    5470711.25
   113157 | Samuel              | Castro Silva          |                 1 |    5470399.23
    98592 | Teresa              | Martínez Valencia     |                 1 |    5469926.66
    67651 | Cristian            | Acevedo Duque         |                 1 |    5469097.42
   114165 | Reinaldo            | Betancur Correa       |                 1 |    5464398.00
   141609 | Stella              | González Restrepo     |                 1 |    5463484.65
    30153 | Fernando            | Lasso Rodríguez       |                 1 |    5461213.15
    21996 | Stella              | Prada Quintero        |                 1 |    5460492.00
   128595 | Reinaldo            | Pabón Losada          |                 1 |    5453162.56
     5039 | Ángela María        | Acevedo Pabón         |                 1 |    5450031.77
    16049 | Germán Efraín       | Herrera Chamorro      |                 1 |    5449834.26
   130043 | Felipe              | Agudelo López         |                 1 |    5449792.32
    97977 | Luisa               | Sandoval Trujillo     |                 1 |    5449358.31
   126398 | Nubia               | Ortega Pérez          |                 1 |    5449257.49
     6714 | Sofía               | Chamorro Prada        |                 1 |    5448809.21
    99505 | Fabio               | Zapata Marín          |                 1 |    5446927.20
    29639 | Juliana             | Salazar Betancur      |                 1 |    5446723.78
    90727 | Beatriz             | Ramos Zapata          |                 1 |    5446478.08
    69341 | Alejandro           | Jaimes Gómez          |                 1 |    5446280.35
    66092 | Alejandra           | Ortega Restrepo       |                 1 |    5445546.30
     8651 | Jorge               | Gómez Rivera          |                 1 |    5445480.55
   118259 | Esperanza Luz       | Prada Rodríguez       |                 1 |    5445279.69
    32052 | Lucía               | Arango Bermúdez       |                 1 |    5444720.63
     3396 | Álvaro Nicolás      | Trujillo Gutiérrez    |                 1 |    5441929.18
   116178 | Martha Carolina     | Londoño Restrepo      |                 1 |    5441444.17
     4485 | Yuliana Carmen      | Hernández Cardona     |                 1 |    5441385.60
   109547 | Rocío               | Ortiz Londoño         |                 1 |    5439958.41
    66961 | Fabio               | Arias Arias           |                 1 |    5432586.39
   108189 | Diana               | Muñoz Osorio          |                 2 |    5430843.44
    37723 | Sara                | Uribe Restrepo        |                 1 |    5430147.96
    61431 | Esteban Emilio      | Contreras Cuéllar     |                 2 |    5429519.52
    98984 | Yeison              | Caicedo Pabón         |                 1 |    5429451.20
    97021 | Diego               | Álvarez García        |                 1 |    5429161.38
    60709 | Ramiro              | Suárez Mejía          |                 1 |    5428656.48
     9647 | Leidy Yuliana       | Galvis Lasso          |                 1 |    5427921.98
   108464 | Abelardo            | Sánchez Ruiz          |                 1 |    5427776.95
    84686 | Amparo              | Molina Ortiz          |                 1 |    5427622.37
   100011 | Francisco Andrés    | Perdomo Salazar       |                 1 |    5427399.81
    93671 | Pedro Arturo        | Caicedo Mora          |                 1 |    5425334.38
   113444 | David               | Salazar Mejía         |                 1 |    5425187.61
   100218 | Fabio               | Pérez Ríos            |                 1 |    5421111.12
     3362 | Yeison              | Cabrera Pinzón        |                 1 |    5420981.97
    86945 | Iván                | Cárdenas Arango       |                 1 |    5420603.98
    10038 | David               | Contreras Vélez       |                 1 |    5419951.25
    60579 | Marcela             | Carrillo Arias        |                 1 |    5419932.00
    73142 | Gilberto            | Jiménez González      |                 1 |    5416766.09
   140580 | Luis                | Mora Perdomo          |                 2 |    5415917.12
   138404 | Jazmín              | Marín Tovar           |                 1 |    5415042.99
   115953 | Marcela Sandra      | Castro Chamorro       |                 1 |    5411847.98
    15036 | Julián              | Medina Betancur       |                 1 |    5409903.57
   114048 | Gladys Dora         | Martínez Moreno       |                 1 |    5405190.84
    56226 | Edilma              | Correa García         |                 1 |    5402820.90
    70256 | Jaime               | Cabrera Narváez       |                 1 |    5401644.08
    70743 | Valentina           | Pérez Rincón          |                 1 |    5400665.22
    43940 | Álvaro Sebastián    | Erazo Bermúdez        |                 1 |    5400448.62
    22975 | Javier              | Silva Arias           |                 2 |    5398606.25
    48689 | David               | Parra Castillo        |                 1 |    5394764.92
    35933 | Santiago Pedro      | Restrepo Calderón     |                 1 |    5392133.32
    13774 | Nubia Elsa          | Villamizar Perdomo    |                 1 |    5391834.20
    47462 | Teresa              | Quintero Duque        |                 1 |    5390940.93
    56915 | Stella Paola        | Flórez Suárez         |                 1 |    5389404.58
   130815 | Hugo                | Gutiérrez Jaimes      |                 1 |    5387636.54
    77511 | Claudia             | Rojas Pérez           |                 2 |    5387626.91
   137889 | Mateo               | Silva Rincón          |                 1 |    5387337.76
    18523 | Daniel              | Carrillo Henao        |                 1 |    5385205.68
   112659 | Rafael              | Cáceres Herrera       |                 1 |    5383144.13
    10358 | Juan                | Bonilla Guerrero      |                 1 |    5382816.82
    44555 | Carlos              | Trujillo Ibarra       |                 1 |    5380614.51
    30012 | Manuel              | Betancur Ortiz        |                 1 |    5379520.41
   123374 | Adriana             | Galvis López          |                 1 |    5379240.60
   140918 | Nubia Andrea        | Ibarra Ramírez        |                 1 |    5376615.18
    65228 | Héctor Abelardo     | Pérez López           |                 1 |    5371742.13
    49533 | Ruth                | Caicedo Ibarra        |                 1 |    5370349.25
    50805 | Yesenia             | Duque Vélez           |                 1 |    5368463.09
   139530 | Pedro               | Quintero Peña         |                 1 |    5364418.32
   105077 | Antonio             | Ramos Parra           |                 1 |    5361263.04
    89745 | Teresa              | Vélez Calderón        |                 1 |    5360890.43
    11898 | Gladys              | Restrepo Uribe        |                 1 |    5360742.46
   145848 | José Santiago       | Cuéllar Castillo      |                 1 |    5359401.67
   106037 | Esperanza           | Burbano Sánchez       |                 1 |    5359041.15
   143168 | Felipe Gustavo      | Parra Serrano         |                 1 |    5355052.92
    55748 | Iván                | Polanía Rodríguez     |                 2 |    5353368.82
   103665 | Erika               | Cabrera Rivera        |                 1 |    5353045.32
    77885 | Aníbal              | Burbano Cuéllar       |                 1 |    5352715.77
    15913 | Efraín              | Ortega Muñoz          |                 1 |    5350262.10
    97248 | Yesenia Blanca      | Barrera Polanía       |                 1 |    5349269.63
    87661 | Gustavo             | Ríos Burbano          |                 1 |    5348992.44
    37632 | Nelson              | Vargas Díaz           |                 1 |    5345855.63
    88741 | Erika Liliana       | Rojas Moreno          |                 1 |    5345490.96
    41105 | Inés Carmen         | Zuluaga Niño          |                 1 |    5343755.52
    15529 | Sara                | Narváez Acevedo       |                 1 |    5342252.18
    13822 | Rosa Teresa         | Cáceres Calderón      |                 1 |    5341202.88
    46003 | Edilma              | Duarte Villamizar     |                 1 |    5340845.52
    73868 | Heriberto           | Tovar Ortiz           |                 1 |    5340546.95
    32000 | Óscar Ricardo       | Marín Rincón          |                 1 |    5331514.50
   142931 | Daniel              | Lasso Cabrera         |                 1 |    5330518.53
    35099 | Álvaro              | Serrano Bedoya        |                 1 |    5328361.05
    64015 | Aura                | Agudelo Carrillo      |                 1 |    5324203.20
    38838 | Sandra              | Trujillo Ramírez      |                 1 |    5322611.85
    92158 | Paola               | Medina Guerrero       |                 1 |    5322090.86
    34873 | Guillermo           | Parra Rojas           |                 1 |    5321411.66
    37682 | Yolanda Beatriz     | Rincón Álvarez        |                 1 |    5320906.19
   131971 | Luisa Yesenia       | Ibarra Osorio         |                 1 |    5320658.28
    10530 | Esteban             | Uribe Vélez           |                 1 |    5320236.82
    31711 | Emilio              | Suárez Rangel         |                 1 |    5318858.87
   129273 | Edilma              | Cabrera Losada        |                 1 |    5318314.79
   106857 | Paola               | Quintero Niño         |                 1 |    5317934.76
   120017 | Nelson              | Valencia Cuéllar      |                 1 |    5316162.60
   127441 | Gilberto Miguel     | Villamizar Cuéllar    |                 1 |    5314292.76
    99319 | Amparo Yuliana      | Cardona Gómez         |                 1 |    5313558.34
    51634 | Pedro               | Contreras Ramos       |                 1 |    5307797.81
    70268 | Fabio Alejandro     | Martínez Losada       |                 1 |    5306241.84
   110422 | Wilmer              | Rojas Restrepo        |                 1 |    5305365.97
    23718 | Mauricio            | Herrera Betancur      |                 1 |    5303837.20
   117072 | David Nicolás       | Contreras Ospina      |                 1 |    5301434.86
    65403 | Teresa Paola        | Herrera Jaimes        |                 1 |    5299450.77
   103824 | Diego Sebastián     | Rodríguez Vera        |                 1 |    5297366.60
    13592 | Edilma              | Contreras Salazar     |                 2 |    5294829.95
   110448 | Álvaro              | Mora Moreno           |                 1 |    5294765.19
    64563 | Blanca              | Delgado Tovar         |                 1 |    5284986.42
    61411 | Sebastián           | Prada Romero          |                 1 |    5284382.00
   134815 | Miguel Rubén        | Betancur Duque        |                 1 |    5284334.61
    59827 | Luz                 | Lasso Mora            |                 1 |    5283518.24
   144793 | Elsa                | Lozano Cuéllar        |                 1 |    5282491.03
    36105 | Édgar               | Sánchez Cuéllar       |                 1 |    5280756.17
     3457 | Isabella            | Duque Parra           |                 1 |    5277939.16
   128708 | Aníbal              | Restrepo Burbano      |                 1 |    5277783.32
   110399 | Yeison              | Herrera Giraldo       |                 1 |    5276932.54
    96894 | Natalia Blanca      | Tovar Sánchez         |                 2 |    5272433.86
   135071 | Brayan              | García Ortiz          |                 1 |    5268198.88
   122647 | Jazmín              | Salazar Bastidas      |                 1 |    5263085.04
    75822 | Brayan              | Gómez Acevedo         |                 1 |    5263006.71
   113769 | Camilo              | Burbano Marín         |                 1 |    5262730.20
    57755 | Amparo              | Niño Castro           |                 1 |    5262568.16
   106729 | Rocío               | Duarte Burbano        |                 1 |    5261986.08
    89829 | Antonio             | Polanía Cáceres       |                 1 |    5261114.30
    38643 | Reinaldo            | Polanía García        |                 1 |    5260343.88
    54166 | Hugo                | Rivera Sánchez        |                 1 |    5258375.91
   113139 | Daniel Wilmer       | Contreras Serrano     |                 1 |    5257867.52
     8125 | Arturo              | Guerrero Ríos         |                 1 |    5256779.20
   116204 | Santiago            | Medina Narváez        |                 1 |    5253656.57
   137957 | Arturo              | Restrepo Mora         |                 1 |    5251161.60
   125605 | Aura                | Peña Benavides        |                 1 |    5250352.75
    23159 | Daniela             | Losada Narváez        |                 1 |    5250119.37
    46730 | Jazmín Martha       | Cabrera Giraldo       |                 1 |    5248231.06
   101482 | Rafael              | Restrepo Mora         |                 1 |    5245684.50
   132813 | Aura                | Vera Cuéllar          |                 1 |    5244159.40
   148050 | Liliana             | Valencia Tovar        |                 1 |    5243603.43
    84506 | Julián              | Villamizar Vélez      |                 1 |    5242998.87
    98705 | Daniela             | Vélez Serrano         |                 1 |    5239735.76
    92481 | Jaime               | Losada Guerrero       |                 1 |    5239103.24
    83937 | Adriana             | Rangel Rodríguez      |                 1 |    5238754.57
    32309 | Fanny               | Galvis Martínez       |                 1 |    5238581.18
    67401 | Luz Sofía           | Álvarez Bonilla       |                 1 |    5237058.78
   109968 | Alba                | Lasso López           |                 1 |    5236025.60
    75339 | Álvaro Luis         | Pabón Arango          |                 1 |    5235031.32
    58861 | Beatriz             | Villamizar Montoya    |                 1 |    5231206.51
   145966 | Rosa                | Herrera Cardona       |                 1 |    5229409.02
    50421 | Marcela             | Lasso Caicedo         |                 1 |    5227159.92
    23158 | Natalia Gladys      | Díaz Duque            |                 1 |    5225479.35
    33045 | Yeison              | Castillo Benavides    |                 1 |    5225222.70
    97626 | Gloria Lucía        | Lozano Calderón       |                 1 |    5223815.86
    52188 | Stella              | Narváez Osorio        |                 1 |    5223495.38
     5985 | Francisco           | Guerrero Benavides    |                 1 |    5222461.59
   134521 | Guillermo           | García Ruiz           |                 1 |    5222444.00
    23375 | Hernando Heriberto  | Guerrero Guerrero     |                 1 |    5220812.17
    13204 | Francisco Luis      | Mosquera Arias        |                 1 |    5218321.92
    38121 | Carolina Patricia   | Guerrero Lozano       |                 1 |    5216602.05
   132636 | Aníbal              | Castillo Salazar      |                 1 |    5215650.43
    29486 | Sofía               | Cabrera Rincón        |                 2 |    5215366.24
   100015 | Jaime               | Vargas Caicedo        |                 1 |    5214765.39
    57949 | Édgar               | Torres Medina         |                 1 |    5209048.60
    29693 | Carolina Myriam     | Parra Bermúdez        |                 1 |    5204012.68
    79965 | Santiago Carlos     | Polanía Montoya       |                 1 |    5203175.62
    49717 | Aníbal Orlando      | Lasso Cáceres         |                 1 |    5202855.36
     6315 | Fabio Emilio        | Lozano Gómez          |                 1 |    5201726.06
    16021 | Libardo             | Osorio Lozano         |                 1 |    5201490.00
    68799 | Iván                | Losada Tovar          |                 1 |    5201042.86
    55990 | Rubén               | Castro Vera           |                 1 |    5196999.96
   126335 | Isabella            | Ortiz Suárez          |                 1 |    5195941.20
    90480 | Libardo             | Sánchez Molina        |                 1 |    5194477.40
    30932 | Orlando Álvaro      | Arias Londoño         |                 1 |    5193197.07
    61115 | Laura               | Niño Erazo            |                 1 |    5190251.96
    28358 | Daniel Nicolás      | Lozano Vera           |                 1 |    5190189.76
    54059 | Gladys Dora         | Cuéllar Caicedo       |                 1 |    5189678.20
    15274 | Hernando            | Erazo Medina          |                 1 |    5188496.04
    93593 | Juliana             | García Moreno         |                 1 |    5185016.15
    19715 | Dora                | Erazo Molina          |                 1 |    5184786.01
   134314 | Alberto             | Ibarra Romero         |                 1 |    5183353.32
    62647 | Abelardo            | Quintero Cárdenas     |                 1 |    5182783.90
    91628 | Alberto Gilberto    | Galvis Ibarra         |                 1 |    5181351.30
   103472 | Jaime               | Rodríguez Quintero    |                 1 |    5180176.61
    84979 | Alberto             | Jiménez Barrera       |                 1 |    5179719.92
   114653 | Germán              | Rojas Rangel          |                 1 |    5179657.38
    65662 | Édgar               | Vera Perdomo          |                 1 |    5179448.05
    42793 | Guillermo Alberto   | Marín González        |                 1 |    5176636.97
     9943 | Luisa               | Villamizar Villamizar |                 1 |    5175565.38
    50941 | Esperanza           | Valencia Cardona      |                 1 |    5175286.94
     6861 | Andrés              | Caicedo Marín         |                 1 |    5175280.30
     1184 | Blanca              | Sánchez López         |                 1 |    5174760.54
    29093 | Daniel              | Sandoval Ospina       |                 1 |    5174034.05
    13478 | Édgar               | Agudelo Losada        |                 1 |    5173946.52
    85139 | Emilio              | Zapata Flórez         |                 1 |    5172618.22
    33998 | Teresa              | Villamizar Medina     |                 1 |    5172434.78
   133973 | Gladys Patricia     | López Bastidas        |                 1 |    5171046.72
    52746 | Carolina            | Bermúdez Trujillo     |                 1 |    5170961.84
    51562 | Luisa               | Betancur Burbano      |                 1 |    5170125.00
   132540 | Sandra              | Vera Cabrera          |                 1 |    5169361.01
   100616 | Liliana             | Castro Gutiérrez      |                 1 |    5167622.53
   111765 | Diego Cristian      | Gómez Gómez           |                 1 |    5166524.27
    97970 | Viviana             | Duque Burbano         |                 1 |    5165206.41
     3562 | Mariana             | Restrepo Herrera      |                 1 |    5163991.06
   108933 | Alejandro           | Ortiz Niño            |                 1 |    5160117.89
    98583 | Jairo Mario         | Benavides Romero      |                 1 |    5159041.20
    72288 | Mauricio Mateo      | Vélez Jaimes          |                 1 |    5154635.12
    62559 | Alejandro Aníbal    | Betancur Ortiz        |                 1 |    5154465.03
   130525 | Alba                | Gómez Perdomo         |                 1 |    5150788.89
   109675 | Valentina           | Ortega Henao          |                 1 |    5145817.55
   129866 | Luis                | Cabrera Osorio        |                 1 |    5141842.78
   113853 | Francisco           | Cuéllar Duque         |                 1 |    5139712.55
    19507 | Olga Mercedes       | Sánchez Salazar       |                 1 |    5135239.60
    86902 | Alberto             | Niño Duarte           |                 1 |    5134113.74
    17379 | Blanca              | Jaimes Ruiz           |                 1 |    5133706.02
    78046 | Felipe              | Acevedo Prada         |                 1 |    5130466.99
    57613 | Pedro Juan          | Rodríguez Bermúdez    |                 1 |    5128252.95
    22129 | Gloria              | Martínez Caicedo      |                 1 |    5128236.48
    91491 | Manuel              | Ríos Ortega           |                 1 |    5123887.34
   113483 | Hernando            | Arias Cárdenas        |                 1 |    5122044.13
    12662 | Elsa Ángela         | Correa Muñoz          |                 1 |    5120279.64
    53095 | Aura                | Torres Acevedo        |                 1 |    5119214.76
   135063 | Ramiro              | Sandoval Serrano      |                 1 |    5117511.27
    12933 | Sofía               | Perdomo Cardona       |                 1 |    5116227.20
    40378 | Gustavo             | Losada Torres         |                 1 |    5114678.80
   126803 | Dora                | Torres Tovar          |                 1 |    5114308.77
   111041 | Julián Emilio       | Cárdenas Sánchez      |                 1 |    5113897.42
      470 | Andrés              | Niño Ramos            |                 1 |    5113777.24
    77043 | Amparo Sara         | Molina Zuluaga        |                 1 |    5111094.90
    17016 | Stella              | Galvis Lozano         |                 1 |    5108905.61
    38001 | Felipe Camilo       | Caicedo Sandoval      |                 1 |    5107973.31
   142791 | Gladys              | Acevedo Bastidas      |                 1 |    5107782.96
    15658 | Reinaldo            | Arias Calderón        |                 1 |    5105899.03
    26149 | Alejandro           | Gutiérrez Quintero    |                 1 |    5105620.84
   148938 | Nelson Samuel       | Bastidas Osorio       |                 1 |    5100150.29
   142500 | Rubén Alberto       | Herrera Marín         |                 1 |    5091967.68
   115426 | Lucía               | Mora Pinzón           |                 1 |    5091472.90
   121209 | Julián José         | Ríos Perdomo          |                 1 |    5091051.46
    95917 | Cristian Óscar      | Narváez Rincón        |                 1 |    5088545.06
   106150 | Mario               | Suárez Herrera        |                 1 |    5088083.94
   138542 | Isabella Mariana    | López Mejía           |                 1 |    5087855.55
    90566 | Paola               | Arango Duarte         |                 1 |    5087790.40
    55789 | Wilson Juan         | Chamorro Londoño      |                 1 |    5086823.52
   109190 | Yesenia             | Cardona Rojas         |                 1 |    5086019.13
   133213 | Carlos              | Henao Burbano         |                 1 |    5085244.25
   109664 | Alba                | Villamizar Perdomo    |                 1 |    5084882.88
    99919 | Juan                | Rangel Villamizar     |                 1 |    5084064.27
    95225 | Efraín              | Molina Galvis         |                 1 |    5083199.46
   132338 | Gabriela            | Restrepo Narváez      |                 1 |    5081512.80
    20666 | Javier              | Ramírez Duque         |                 1 |    5079739.71
    41001 | Aura                | Flórez Rangel         |                 1 |    5078644.63
    97696 | Alejandro           | Erazo Narváez         |                 1 |    5075889.30
    47338 | Yolanda             | Zuluaga Cardona       |                 1 |    5073251.04
    75705 | Rodrigo             | Lasso Castillo        |                 1 |    5072545.39
   110110 | Ramiro              | Barrera Serrano       |                 2 |    5072116.13
   148385 | Elsa Carolina       | Erazo Bedoya          |                 1 |    5072083.64
    10002 | Édgar               | Álvarez Zuluaga       |                 1 |    5069289.16
    74068 | Diana               | Correa Restrepo       |                 1 |    5067584.65
    20416 | Gloria              | Burbano López         |                 1 |    5067039.52
    13514 | Marleny Amparo      | Lasso Salazar         |                 1 |    5066776.32
   143263 | Libardo             | Niño Peña             |                 1 |    5065501.36
    13237 | Guillermo           | Molina Mora           |                 1 |    5064694.05
    99848 | Sebastián           | Zuluaga Arango        |                 1 |    5063586.09
   128000 | Alejandra           | Cáceres Burbano       |                 1 |    5062190.27
     3479 | Rosa                | Ríos Álvarez          |                 1 |    5061074.95
   132078 | Álvaro Rubén        | Flórez Barrera        |                 1 |    5060948.64
    87116 | Álvaro              | Erazo Martínez        |                 2 |    5059947.71
    39425 | José                | Barrera Bermúdez      |                 1 |    5058012.70
    54585 | Brayan Pedro        | Acevedo Caicedo       |                 2 |    5055543.27
    18852 | Sandra              | Trujillo Vera         |                 1 |    5051911.02
   106020 | Mario               | Martínez Duque        |                 1 |    5051193.87
    37741 | Amparo Rocío        | Peña Ibarra           |                 1 |    5050832.05
    77245 | Nicolás             | Cabrera Pérez         |                 1 |    5049991.87
   118593 | Camilo              | Ramos Molina          |                 1 |    5048800.12
    36845 | Natalia             | Correa Vargas         |                 1 |    5045413.63
   113703 | Rocío               | Gutiérrez Londoño     |                 1 |    5041774.63
    53179 | Rodrigo Reinaldo    | Agudelo Ortega        |                 1 |    5032865.55
    85335 | José                | Pinzón Castro         |                 1 |    5031453.35
   134297 | Teresa Martha       | Caicedo Ramírez       |                 1 |    5028996.48
   141750 | Rafael              | Galvis Erazo          |                 2 |    5026552.27
   114420 | Amparo Aura         | Polanía Carrillo      |                 1 |    5024670.00
    68868 | Mariana             | Jiménez Gutiérrez     |                 1 |    5024013.95
    53639 | Brayan              | Losada Sandoval       |                 1 |    5023983.51
    88242 | Orlando Gilberto    | Suárez Agudelo        |                 1 |    5022987.99
    49982 | Felipe              | Cardona Betancur      |                 1 |    5022628.25
    32273 | Yolanda             | Pinzón Carrillo       |                 1 |    5014771.88
    50631 | Miguel              | Zapata Silva          |                 1 |    5013706.66
    59961 | Libardo             | Villamizar Carrillo   |                 1 |    5012611.09
    71463 | Yeison              | Contreras Cardona     |                 1 |    5012573.40
   149858 | Wilson              | Rincón Benavides      |                 1 |    5011332.00
   119546 | Francisco           | García Silva          |                 1 |    5011102.14
   116497 | Erika               | Silva Salazar         |                 1 |    5010299.84
     6057 | Jazmín              | Hernández Flórez      |                 1 |    5010191.24
    84944 | Libardo             | Narváez López         |                 1 |    5010059.92
    73964 | Yolanda             | Cardona Ospina        |                 2 |    5009632.43
    61787 | Mariana             | Parra Prada           |                 1 |    5008920.60
   125424 | Alberto Gustavo     | Gómez Polanía         |                 1 |    5008824.62
    73870 | Manuel              | Díaz Montoya          |                 1 |    5008791.04
    14535 | Iván                | Trujillo Zapata       |                 1 |    5008624.79
   128957 | Yeison Óscar        | Losada Henao          |                 1 |    5006347.42
    65657 | Cristian Hugo       | Cuéllar Hernández     |                 1 |    5002036.38
    57961 | Myriam Marleny      | Cuéllar Álvarez       |                 1 |    5001717.57
    12133 | Rodrigo Santiago    | Silva Lasso           |                 1 |    5001708.29
   125934 | Natalia             | Bonilla Lozano        |                 1 |    5000973.17
    20292 | Álvaro              | Rodríguez Ramos       |                 1 |    5000810.13
     3881 | Daniel              | Mora Torres           |                 1 |    5000184.96
(1286 filas)
*/