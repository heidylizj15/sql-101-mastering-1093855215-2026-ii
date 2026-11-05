--Exercise 10
-- a
--Settlements and total net COP per farmer for September 2026
SELECT
    T4.document AS document,
    T4.first_name AS first_name,
    T4.last_name AS last_name,
    COUNT(T1.settlement_id) AS settlements_count,
    SUM(T1.net_amount_cop) AS total_net_cop
FROM pay.settlements AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.delivery_id = T2.delivery_id
INNER JOIN farm.farms AS T3
    ON T2.farm_id = T3.farm_id
INNER JOIN farm.farmers AS T4
    ON T3.farmer_id = T4.farmer_id
WHERE T1.settlement_date >= '2026-09-01'
  AND T1.settlement_date <= '2026-09-30'
GROUP BY T4.document, T4.first_name, T4.last_name
ORDER BY total_net_cop DESC;
/*
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
   111683 | Wilmer              | Torres Suárez         |                 1 |    4997662.86
   114038 | Nubia Sandra        | Hernández Cardona     |                 1 |    4997133.10
   104846 | Olga Natalia        | Quintero Flórez       |                 2 |    4996161.07
    37838 | Andrés Héctor       | Ríos Prada            |                 1 |    4993821.32
   129588 | Paola               | Mora Rojas            |                 1 |    4993671.65
   116298 | Wilmer              | Giraldo Burbano       |                 1 |    4991184.00
   103349 | Luis Wilson         | Martínez Bastidas     |                 1 |    4990017.20
    65243 | Yeison              | Villamizar Gómez      |                 1 |    4989546.10
    32802 | Adriana             | Rojas Guerrero        |                 1 |    4988486.39
    25643 | Libardo             | Jiménez Delgado       |                 1 |    4987876.27
    38330 | Wilmer              | Giraldo Giraldo       |                 1 |    4987831.74
    18570 | Héctor              | Chamorro Caicedo      |                 1 |    4987190.91
     4733 | Erika               | Uribe Osorio          |                 1 |    4986524.48
   135132 | Reinaldo Francisco  | Bedoya Cáceres        |                 1 |    4984242.56
    13896 | Ricardo             | Carrillo Arias        |                 1 |    4983110.29
    69653 | Esperanza           | Bermúdez Rojas        |                 1 |    4982407.35
    64459 | Ricardo             | Jaimes Giraldo        |                 1 |    4981777.59
     8708 | Gloria              | Moreno Hernández      |                 1 |    4978611.40
    70270 | Cecilia Claudia     | Rincón Ortiz          |                 1 |    4978167.39
    88979 | Nelson              | Sánchez Betancur      |                 1 |    4975720.53
    88000 | Rafael              | Giraldo Burbano       |                 1 |    4973771.40
    73130 | Juan                | Cáceres Romero        |                 1 |    4973198.02
    30785 | Ricardo Emilio      | Ruiz Peña             |                 1 |    4968400.02
   146767 | Erika               | Moreno Arias          |                 1 |    4965975.12
   130859 | Esteban             | Duarte Moreno         |                 1 |    4965827.33
   134971 | Wilson              | Ortega Londoño        |                 1 |    4965597.36
   125028 | Mercedes            | Bonilla Medina        |                 1 |    4964630.80
    19386 | Luis                | Hernández Ibarra      |                 1 |    4964222.97
   131926 | Mauricio            | Marín Martínez        |                 1 |    4963583.60
   138449 | Inés                | Serrano Zuluaga       |                 1 |    4960835.28
    18130 | Javier              | Martínez Pabón        |                 1 |    4960726.93
   104079 | Luisa Elsa          | Castro Giraldo        |                 1 |    4960154.72
    49627 | Carmen              | Montoya Gutiérrez     |                 1 |    4960114.71
     3108 | Alejandro           | Flórez Narváez        |                 1 |    4959182.22
     8943 | Santiago            | Pinzón Sandoval       |                 2 |    4956949.56
   122316 | Diana               | Herrera Silva         |                 1 |    4956278.88
    93342 | Javier              | Quintero Arias        |                 1 |    4953171.00
    99005 | Rubén               | Ramos Rojas           |                 1 |    4952423.67
    96553 | Carolina            | Marín Silva           |                 1 |    4950160.49
   108139 | Wilson              | Zuluaga Ríos          |                 1 |    4946740.55
    47421 | Sara                | Moreno Vera           |                 1 |    4944530.13
    30157 | Héctor              | Henao Barrera         |                 1 |    4943397.39
    85170 | Leidy               | Pinzón Trujillo       |                 1 |    4943326.50
    87824 | Laura               | Henao Cuéllar         |                 1 |    4942811.68
    35846 | Hernando Luis       | Salazar Montoya       |                 1 |    4941860.69
   137594 | Manuel              | Cardona Ramírez       |                 2 |    4941839.99
    90778 | Yeison              | Caicedo Zapata        |                 1 |    4941715.56
   104545 | Manuel              | Ríos Bastidas         |                 1 |    4941508.11
    48327 | Andrea Liliana      | Bedoya Osorio         |                 1 |    4940235.15
   142699 | Gabriela            | Salazar Montoya       |                 1 |    4938179.00
   128755 | Gabriela            | Duarte Londoño        |                 1 |    4936916.60
    41154 | Aura                | Valencia Duque        |                 1 |    4935365.88
     5099 | Mónica Erika        | Ospina Londoño        |                 2 |    4934206.82
    67187 | Jairo               | Correa Hernández      |                 1 |    4929867.64
    36029 | Nubia               | Londoño Restrepo      |                 1 |    4928394.91
    91805 | Francisco           | Ramos Cuéllar         |                 1 |    4928197.95
   131847 | Viviana             | Delgado Montoya       |                 1 |    4925392.32
   125845 | Jaime               | Uribe Romero          |                 1 |    4924502.73
   111616 | Efraín              | Bastidas Torres       |                 1 |    4922634.40
     2774 | Juan Aníbal         | Montoya Álvarez       |                 1 |    4922416.22
   105015 | Daniel              | García Duque          |                 1 |    4922055.84
   112252 | Ricardo Miguel      | Vargas Duarte         |                 1 |    4921306.64
    92240 | Mercedes Ancízar    | Galvis Medina         |                 1 |    4916791.09
    56919 | José                | Cuéllar Correa        |                 1 |    4916031.80
     4269 | Alejandro           | Bastidas Benavides    |                 1 |    4915646.38
   104246 | Cecilia             | Quintero Vera         |                 1 |    4915496.41
    95753 | Daniel              | Calderón Ospina       |                 1 |    4913666.33
   120320 | Laura Camila        | Henao Polanía         |                 1 |    4913473.53
   101116 | Jaime               | Martínez Ortiz        |                 1 |    4912581.94
      937 | Marcela             | Benavides Castillo    |                 1 |    4912541.01
   109806 | Marcela             | Mora Perdomo          |                 1 |    4912167.00
   116149 | Luis                | Castro Acevedo        |                 1 |    4911971.76
    89588 | Jaime Francisco     | Chamorro González     |                 1 |    4911913.53
    83049 | Jaime               | Montoya Pinzón        |                 1 |    4911667.20
   119132 | Mónica              | Cáceres Rojas         |                 1 |    4910782.50
   117761 | Amparo              | Ramírez Ríos          |                 1 |    4910263.25
    55034 | Miguel              | Díaz Bedoya           |                 1 |    4909051.80
    49521 | Brayan              | Perdomo Díaz          |                 1 |    4908662.17
    47216 | Valentina Martha    | Díaz Romero           |                 1 |    4907738.32
    60672 | Natalia             | Duarte Ortega         |                 1 |    4906902.71
    64007 | Carmen              | Trujillo Arango       |                 1 |    4904672.49
    90764 | Teresa Isabella     | Flórez Barrera        |                 1 |    4904427.28
    81420 | Sara                | Barrera Mora          |                 1 |    4904120.22
    47497 | Valentina           | Ruiz Gómez            |                 1 |    4903910.70
   131844 | Abelardo            | González López        |                 1 |    4902743.71
    21999 | Andrea              | Cárdenas Rojas        |                 1 |    4901275.40
    55624 | Hernando            | Ortiz Romero          |                 1 |    4900011.75
   121937 | Yeison              | López Martínez        |                 1 |    4899722.40
    65881 | Javier              | Uribe Hernández       |                 1 |    4899656.41
   121666 | Édgar Óscar         | Cuéllar Giraldo       |                 1 |    4896183.04
    15462 | Fanny               | Medina Molina         |                 1 |    4895319.78
    43065 | Samuel              | Bastidas Sánchez      |                 1 |    4895127.75
   115873 | Julián Sebastián    | Muñoz Benavides       |                 1 |    4894749.65
    17717 | Rosa Stella         | Rojas Rangel          |                 1 |    4894612.75
    70381 | Aura                | Rivera Ríos           |                 1 |    4894465.11
   126894 | Jaime               | Tovar Londoño         |                 1 |    4894192.55
   107798 | Ancízar             | Vélez Calderón        |                 1 |    4894190.13
    66211 | Gilberto            | Castillo Gutiérrez    |                 1 |    4894031.97
    21893 | Rocío               | Rodríguez Álvarez     |                 1 |    4892385.12
    34807 | Claudia Sandra      | Rojas Muñoz           |                 1 |    4891794.89
    25263 | Francisco           | Salazar Benavides     |                 1 |    4891450.54
    60804 | Natalia Alba        | Quintero Rojas        |                 1 |    4889828.28
     8244 | Camilo              | Herrera Villamizar    |                 1 |    4888622.39
    41542 | Patricia            | Arias Pinzón          |                 1 |    4887579.71
    91173 | Mauricio            | Rangel Jiménez        |                 1 |    4887452.25
    27028 | Elsa                | Suárez Rodríguez      |                 1 |    4884959.48
   140212 | Reinaldo            | Tovar Cardona         |                 1 |    4883037.78
   121617 | Gabriela            | Vera Henao            |                 1 |    4881323.40
    97706 | Yuliana Elsa        | Ríos Flórez           |                 1 |    4880124.69
    91025 | Mariana             | Ramírez Bonilla       |                 1 |    4879623.44
    85362 | Brayan Édgar        | López Vargas          |                 1 |    4877942.55
   103537 | Esteban Jorge       | Rangel Cabrera        |                 1 |    4877907.31
    77956 | Ruth                | Silva Hernández       |                 1 |    4875540.80
    93632 | Mateo               | Suárez Vera           |                 1 |    4872249.86
     3910 | Carolina            | Romero Ruiz           |                 1 |    4869088.20
    39851 | Edilma              | Bonilla López         |                 1 |    4866314.74
   111271 | José                | Jiménez Quintero      |                 1 |    4866118.66
    66507 | Antonio             | Guerrero Zapata       |                 3 |    4864976.00
   133783 | Juan Diego          | García Romero         |                 1 |    4864874.96
   110731 | Camilo              | Zapata Romero         |                 1 |    4864631.10
    70862 | Fanny               | Tovar Pérez           |                 1 |    4864106.32
   149091 | Carmen              | Pabón López           |                 1 |    4863773.44
    27845 | Lorena              | Quintero Rincón       |                 1 |    4862731.58
    39628 | Yeison Juan         | Cáceres Bastidas      |                 1 |    4862419.50
    55372 | Blanca              | Giraldo Burbano       |                 1 |    4862014.05
    79185 | Alejandro           | Torres Prada          |                 1 |    4861100.73
   112588 | Abelardo            | Álvarez Díaz          |                 1 |    4859754.78
   116630 | Ángela              | Díaz Bermúdez         |                 1 |    4859515.36
    59224 | Wilmer              | Bedoya Pérez          |                 1 |    4858951.66
    27187 | Valentina Stella    | Ortiz Carrillo        |                 1 |    4858940.32
    90544 | Liliana             | Vera Betancur         |                 1 |    4858185.15
    55557 | Esperanza           | Pinzón Ramos          |                 1 |    4858049.97
   136097 | Inés                | Benavides López       |                 1 |    4857523.92
    61761 | Sebastián           | Osorio Herrera        |                 1 |    4857039.29
    65958 | Manuela             | Rojas Agudelo         |                 1 |    4856703.19
   111030 | Fernando            | Cáceres Tovar         |                 1 |    4855936.25
    70441 | Patricia Adriana    | López Peña            |                 1 |    4853722.00
   105202 | Fernando            | Romero Suárez         |                 1 |    4852556.03
    81237 | Francisco Alejandro | Rojas Benavides       |                 1 |    4850597.46
   134565 | Edilma              | Ortiz Gutiérrez       |                 1 |    4849728.06
   117891 | Reinaldo            | Salazar Ruiz          |                 1 |    4845038.76
    25164 | Mario               | Mora Parra            |                 1 |    4844304.58
   128929 | Martha              | Quintero Jaimes       |                 1 |    4843721.35
    89087 | Lucía               | Álvarez Contreras     |                 1 |    4842614.30
     8063 | Esteban             | Zapata Silva          |                 1 |    4842223.61
    58244 | Daniel              | Benavides Duque       |                 1 |    4840301.98
    70332 | Ruth                | Ortega Cardona        |                 1 |    4839213.34
   115326 | Olga                | Ortega Cáceres        |                 1 |    4839120.04
    80998 | Yesenia             | Zapata Mejía          |                 1 |    4838548.44
   129163 | Édgar               | Torres Moreno         |                 1 |    4838095.40
   101902 | Jairo               | Betancur Arias        |                 2 |    4837309.55
    57820 | Yuliana             | Ospina Lozano         |                 1 |    4835826.24
    20226 | Mateo Gustavo       | Barrera Niño          |                 1 |    4835539.20
    91053 | Beatriz             | Calderón Londoño      |                 1 |    4835455.56
   126927 | Edilma Valentina    | Barrera Pinzón        |                 1 |    4835125.40
    89658 | Édgar Abelardo      | Rivera Agudelo        |                 1 |    4834069.24
   115952 | Aura                | Marín Giraldo         |                 2 |    4832884.37
   148657 | Camilo              | Delgado Carrillo      |                 1 |    4831990.12
    97158 | Wilmer              | Rojas Parra           |                 1 |    4831252.10
   123436 | Rosa                | Cáceres Pabón         |                 1 |    4830966.42
    10569 | José                | Silva Tovar           |                 1 |    4829377.85
   114305 | Alejandro Mateo     | Álvarez Tovar         |                 1 |    4828940.60
    12800 | Samuel Wilmer       | Londoño Calderón      |                 1 |    4828218.45
    87237 | Ricardo Nelson      | Ruiz Rincón           |                 1 |    4828209.10
    19603 | Isabella Aura       | Mora Quintero         |                 1 |    4827023.52
     3347 | Nicolás             | Ramos Narváez         |                 1 |    4826847.28
    57144 | Andrés              | Lasso Álvarez         |                 1 |    4826475.00
   128893 | Diana               | Burbano Ospina        |                 1 |    4825740.24
    89856 | Sebastián           | Vera Sandoval         |                 1 |    4825562.80
    97962 | Abelardo            | Ramos Moreno          |                 1 |    4825555.93
    34298 | Amparo              | Tovar González        |                 1 |    4825550.30
    12107 | Aníbal Hugo         | Niño Álvarez          |                 1 |    4825464.20
    75595 | Ruth Gabriela       | Martínez Ríos         |                 1 |    4825053.90
    34946 | Jaime               | Salazar Pabón         |                 1 |    4824912.16
    62437 | Orlando Gustavo     | Ortiz Ibarra          |                 1 |    4824783.36
    73447 | Heriberto Javier    | Cáceres Osorio        |                 1 |    4822779.27
    40470 | Yesenia Dora        | Uribe Duarte          |                 1 |    4821840.20
    52218 | Heriberto           | Duarte Ramos          |                 1 |    4821803.25
    59173 | Amparo              | Ortega Ibarra         |                 1 |    4821146.82
    26983 | Mercedes            | Silva Valencia        |                 1 |    4818184.20
   127940 | María               | Zapata Polanía        |                 1 |    4817802.58
   147601 | Jairo               | Ruiz Mosquera         |                 1 |    4816003.68
    68665 | Erika               | García Delgado        |                 1 |    4813399.36
    42174 | Esteban             | Bermúdez Villamizar   |                 1 |    4812626.69
      580 | Francisco           | Muñoz Muñoz           |                 1 |    4811597.70
    78577 | Leidy               | Suárez Barrera        |                 1 |    4810849.38
    66657 | David               | Valencia Burbano      |                 1 |    4810540.48
    10770 | Carmen              | Ríos Narváez          |                 1 |    4809845.23
    88626 | Cristian            | Restrepo Valencia     |                 1 |    4809532.34
   109204 | Natalia Olga        | Vargas Ramírez        |                 1 |    4809188.90
   121763 | Natalia             | Mora Díaz             |                 1 |    4808636.92
    41009 | Ruth Myriam         | Arias Cárdenas        |                 1 |    4808170.41
    43991 | Lorena              | Henao Vargas          |                 1 |    4808119.50
    64896 | Alejandro           | Arango Lasso          |                 1 |    4807871.64
     5522 | Sandra Isabella     | Molina Ramírez        |                 1 |    4807039.98
   143356 | Alberto Esteban     | Lasso Niño            |                 1 |    4806837.63
   124771 | Iván Sebastián      | González Marín        |                 1 |    4805974.72
   136167 | Rosa                | Arango Villamizar     |                 1 |    4805391.29
   133596 | Esteban             | Ramírez Ramírez       |                 1 |    4802665.42
   107175 | Camilo              | Salazar Rincón        |                 1 |    4802386.78
    63392 | Mariana Marleny     | Valencia Martínez     |                 1 |    4800629.55
    89760 | Carmen              | Jaimes Arias          |                 1 |    4799731.75
   122840 | Mario Miguel        | Ortega Ortiz          |                 1 |    4799348.62
    15570 | Hernando            | Peña Serrano          |                 1 |    4799053.44
    48009 | Yeison              | Niño Agudelo          |                 1 |    4797200.84
    15978 | Rubén               | Castillo Narváez      |                 1 |    4796288.43
   140027 | Nelson              | Díaz Contreras        |                 1 |    4794856.00
   137402 | José                | Ramírez Duque         |                 1 |    4794445.24
    26327 | Dora                | Silva Pabón           |                 1 |    4794291.25
   117016 | Mario               | Pinzón Carrillo       |                 1 |    4793056.64
   142309 | Fabio Javier        | Guerrero Duarte       |                 1 |    4790453.93
    30672 | Nelson Guillermo    | Suárez Castillo       |                 1 |    4789391.02
    39275 | Carolina Camila     | Vera Niño             |                 1 |    4788589.63
    69304 | Wilmer              | Zapata Rivera         |                 1 |    4788452.79
    66883 | Claudia Marleny     | Cárdenas Losada       |                 1 |    4787766.39
    98749 | Ramiro              | López Betancur        |                 1 |    4787467.42
   130545 | Nelson              | Betancur Ríos         |                 1 |    4787448.40
   105550 | Martha              | Guerrero Bastidas     |                 1 |    4786940.86
    62247 | Olga Gladys         | Betancur Ortiz        |                 1 |    4783144.68
   104069 | Gilberto            | Díaz Montoya          |                 1 |    4781015.07
    10984 | Mario Luis          | Moreno Lasso          |                 1 |    4778907.97
   117071 | Mariana             | Castro Acevedo        |                 1 |    4778876.75
    82129 | Jaime               | González Herrera      |                 1 |    4775683.22
    81883 | Ricardo Héctor      | Correa Hernández      |                 1 |    4774080.12
   146867 | Efraín Daniel       | Benavides Flórez      |                 1 |    4772351.36
    74001 | Hernando            | Ibarra Losada         |                 1 |    4771099.20
   146928 | Álvaro              | Sánchez Prada         |                 1 |    4771027.10
    19297 | Lorena              | Cardona Muñoz         |                 1 |    4770050.89
   138260 | Luz                 | Mora Cardona          |                 1 |    4768109.32
    81605 | Valentina           | Sánchez Díaz          |                 1 |    4766922.09
    74693 | Santiago            | Sandoval Correa       |                 1 |    4765276.20
    10854 | Juan Javier         | Losada Arango         |                 1 |    4764674.92
    39735 | Beatriz             | Ortega Romero         |                 1 |    4764670.24
    36688 | Luisa               | Tovar Guerrero        |                 1 |    4764137.68
    49726 | Felipe              | Barrera Barrera       |                 1 |    4763238.93
    84747 | Javier Libardo      | Ortiz Romero          |                 1 |    4763053.24
    28961 | Wilmer              | Bermúdez Valencia     |                 1 |    4762676.80
     4855 | Ana                 | Bedoya Villamizar     |                 2 |    4761965.88
    97951 | Yeison Brayan       | Pabón García          |                 1 |    4761763.91
    33877 | Pedro Diego         | González Hernández    |                 1 |    4759628.01
   129242 | Samuel              | Barrera Moreno        |                 1 |    4758691.14
    57486 | Ángela              | Carrillo Agudelo      |                 1 |    4756516.70
     4865 | Emilio              | Prada Moreno          |                 1 |    4750439.04
    41690 | Orlando             | Vélez Duque           |                 1 |    4750137.27
    11591 | Aura                | Osorio Rodríguez      |                 2 |    4749730.83
    27847 | Gilberto            | Jiménez Mora          |                 1 |    4749208.33
     5438 | Héctor              | Polanía Cárdenas      |                 1 |    4749089.88
    68671 | Natalia Patricia    | Ruiz Bermúdez         |                 1 |    4748477.85
    80764 | Luz Camila          | Ramírez Rivera        |                 1 |    4747781.23
    41952 | Leidy               | Parra Gómez           |                 1 |    4746020.54
    48067 | Abelardo            | Delgado Correa        |                 1 |    4745207.35
   115228 | Wilmer David        | Perdomo Pinzón        |                 1 |    4742192.52
   130528 | Daniela             | Rojas Sandoval        |                 1 |    4738166.06
   136256 | Diego               | Prada Suárez          |                 1 |    4738132.74
     9681 | Camila Carolina     | Jiménez Parra         |                 1 |    4737171.20
   130242 | Abelardo Alberto    | Ramos Cardona         |                 1 |    4735574.13
   116224 | Luisa               | Carrillo Jiménez      |                 1 |    4734559.18
   140289 | Camilo Juan         | Contreras Uribe       |                 1 |    4733274.60
    60222 | Luz                 | Sandoval Mosquera     |                 1 |    4733181.96
     2155 | Édgar               | Calderón Correa       |                 1 |    4733034.78
    92615 | Adriana Teresa      | Arango Rincón         |                 1 |    4733025.00
    93415 | Myriam              | Bonilla Carrillo      |                 1 |    4732362.21
    34736 | Manuela             | Calderón Betancur     |                 1 |    4731656.14
    56546 | Alejandra           | Bedoya Martínez       |                 1 |    4730904.35
    73794 | Edilma              | Mosquera Narváez      |                 1 |    4730534.70
    33214 | Yuliana Teresa      | Ríos Vélez            |                 1 |    4730031.80
    81536 | Emilio              | Contreras Montoya     |                 1 |    4728261.83
    61190 | Esteban             | Pérez Tovar           |                 1 |    4728065.33
   134992 | Sebastián           | Martínez Pinzón       |                 1 |    4727280.42
     7377 | Fernando            | Mora Niño             |                 1 |    4727238.72
    63005 | Ana                 | Vargas Contreras      |                 1 |    4726898.52
   132318 | Blanca              | Mora Mejía            |                 1 |    4726559.73
    80045 | Cristian            | Salazar Torres        |                 1 |    4723447.50
   126227 | Cristian            | Barrera Serrano       |                 1 |    4722920.92
   126014 | María Patricia      | Rivera Mora           |                 1 |    4722874.76
   127997 | Patricia Sofía      | Uribe Erazo           |                 1 |    4722632.64
    86570 | Rafael              | Parra Flórez          |                 1 |    4722631.88
     2704 | Samuel              | López Delgado         |                 1 |    4722268.46
    45127 | Stella              | Londoño Ospina        |                 1 |    4721387.16
     5866 | Rocío               | Bedoya Losada         |                 1 |    4721306.71
   102558 | Sofía               | Álvarez Arias         |                 1 |    4720744.11
   141175 | Elsa                | Arias Guerrero        |                 1 |    4720023.00
   129978 | Alejandro           | Pinzón Ramos          |                 1 |    4718542.44
    76222 | Gladys Edilma       | Benavides Tovar       |                 1 |    4717027.88
    26623 | Diana               | Ramírez Parra         |                 1 |    4716634.06
    73135 | Carolina            | Romero Betancur       |                 1 |    4716280.64
    86254 | Alejandra           | Jiménez Molina        |                 1 |    4715316.97
    10048 | Blanca Carolina     | Suárez Lozano         |                 1 |    4715138.78
    75449 | Fernando            | Ramírez Polanía       |                 1 |    4714924.50
    14222 | Luz                 | Bermúdez Restrepo     |                 1 |    4714337.47
    39521 | Martha Beatriz      | Marín Jiménez         |                 1 |    4713213.41
    53655 | Ana                 | García Acevedo        |                 1 |    4709618.41
    74513 | Patricia Stella     | Montoya Torres        |                 1 |    4707796.85
    46735 | Fanny               | Barrera Henao         |                 1 |    4707003.41
    35152 | Inés                | Vera Osorio           |                 1 |    4706968.08
     6967 | Fanny               | Uribe Pinzón          |                 1 |    4706527.49
    90603 | Mateo               | Cáceres Suárez        |                 1 |    4705500.16
   130948 | Francisco           | Perdomo Lasso         |                 1 |    4703357.62
    44687 | Hugo Guillermo      | Ibarra Guerrero       |                 1 |    4702532.30
   105402 | Francisco           | Tovar Benavides       |                 1 |    4700379.20
    55893 | Brayan Édgar        | Londoño Ortiz         |                 1 |    4699717.12
    23037 | Rosa                | Tovar Hernández       |                 1 |    4696808.35
    96890 | Marcela             | Polanía Parra         |                 1 |    4695048.48
    95728 | Elsa Marcela        | Valencia Ospina       |                 1 |    4694989.78
   102166 | Manuel              | García Zapata         |                 1 |    4694293.05
    26733 | Luisa               | Valencia Serrano      |                 1 |    4693722.84
    97651 | Efraín Alberto      | Ríos Sánchez          |                 1 |    4690731.78
    74042 | Ricardo             | Ríos Pérez            |                 1 |    4690240.08
     7351 | Marleny             | Gómez Losada          |                 1 |    4689745.18
    91231 | Natalia             | Villamizar Galvis     |                 1 |    4687360.98
    12960 | Claudia Martha      | Rincón Mosquera       |                 1 |    4686772.34
    57167 | Ana                 | Villamizar Giraldo    |                 1 |    4685345.56
   140807 | Cristian            | Vargas Rodríguez      |                 1 |    4684963.71
    39955 | Rafael              | Muñoz Losada          |                 1 |    4684459.33
    96834 | Martha              | Cárdenas Londoño      |                 1 |    4684257.06
    62430 | Laura Nubia         | Pinzón Erazo          |                 1 |    4684130.03
   149741 | Ricardo             | Bonilla Guerrero      |                 1 |    4682380.71
    79253 | Rubén               | García Henao          |                 1 |    4681707.96
    75657 | Yolanda Camila      | Muñoz Silva           |                 1 |    4681460.00
    69113 | Jorge               | Moreno Salazar        |                 1 |    4680536.38
   142207 | Fernando Fabio      | Acevedo Vargas        |                 1 |    4679134.10
    90923 | Mariana             | Guerrero Álvarez      |                 1 |    4678372.85
    74167 | Yeison Jaime        | Zapata Bonilla        |                 1 |    4678203.50
    21696 | Álvaro              | Pinzón Cardona        |                 1 |    4676657.02
   126155 | Mateo               | Betancur Uribe        |                 1 |    4675824.09
     6155 | Samuel José         | Marín Perdomo         |                 1 |    4675724.88
   106098 | Jaime               | Ospina Osorio         |                 1 |    4674687.78
    88804 | Amparo              | Villamizar Montoya    |                 1 |    4672674.58
     8539 | Esteban             | Polanía Medina        |                 1 |    4672281.06
    44033 | Iván                | Osorio Acevedo        |                 1 |    4671862.12
    38354 | Luis David          | Osorio Molina         |                 1 |    4671696.59
    50826 | Aníbal              | Ramos Restrepo        |                 1 |    4670674.32
    80719 | Patricia            | Pinzón Medina         |                 1 |    4670457.75
    68791 | Mauricio            | Lasso Flórez          |                 1 |    4668724.83
    91780 | Manuela             | Tovar Tovar           |                 1 |    4668306.84
    57446 | Héctor              | Ibarra Álvarez        |                 1 |    4668065.78
   139168 | Javier              | Mejía Arango          |                 1 |    4667590.31
   136032 | Fernando Juan       | González Martínez     |                 1 |    4664279.28
    95787 | Mateo Óscar         | Herrera Betancur      |                 1 |    4664077.74
     7003 | Esperanza           | Jaimes Narváez        |                 1 |    4664062.62
   133673 | Alejandro           | Bastidas Perdomo      |                 1 |    4663431.01
    32951 | Edilma              | Sánchez Caicedo       |                 1 |    4663336.44
    93860 | Fernando            | Hernández Ríos        |                 1 |    4662269.92
    59953 | Pedro               | Parra Álvarez         |                 1 |    4659543.38
   132443 | Antonio Esteban     | Ramos Cárdenas        |                 1 |    4659089.70
   147288 | Fernando            | Sánchez Torres        |                 1 |    4657929.79
    82911 | Cristian            | Martínez Vera         |                 1 |    4656457.82
   145486 | Daniela             | Ruiz Agudelo          |                 1 |    4655228.04
   120347 | Mercedes            | Ospina Londoño        |                 1 |    4654865.45
   121285 | Orlando Reinaldo    | Martínez Perdomo      |                 1 |    4653979.46
   120354 | Amparo Leidy        | Vera Vera             |                 1 |    4653900.76
    73385 | Manuel Jaime        | Ruiz Herrera          |                 1 |    4653331.77
    60424 | Gustavo             | Trujillo Rangel       |                 1 |    4653259.66
    38534 | Germán              | Bedoya Osorio         |                 1 |    4653214.65
    51986 | Mario Mauricio      | Erazo Trujillo        |                 2 |    4650919.53
   100848 | José                | Duque Gutiérrez       |                 1 |    4650555.75
   117971 | Myriam Patricia     | Betancur Losada       |                 1 |    4650095.00
   127555 | Rubén Abelardo      | Flórez Pinzón         |                 1 |    4649842.55
    57789 | Luz                 | Erazo Sánchez         |                 1 |    4649167.05
   106622 | Efraín              | Arias Ospina          |                 1 |    4648959.32
   130419 | Manuela             | Gómez Zapata          |                 1 |    4647997.00
    40310 | Pedro               | Suárez Calderón       |                 1 |    4646806.53
    85959 | Guillermo           | Ruiz Valencia         |                 1 |    4646171.04
    58171 | Lucía Dora          | Zapata Álvarez        |                 1 |    4646101.76
    91079 | Nelson              | Bastidas Pabón        |                 1 |    4645881.84
   110220 | Miguel              | Erazo Henao           |                 1 |    4645335.89
   115259 | Cecilia             | Restrepo Giraldo      |                 2 |    4644061.55
    64319 | Rafael              | Tovar Pérez           |                 1 |    4644027.99
    14055 | Álvaro              | Bastidas Martínez     |                 1 |    4643409.96
    83156 | Alba                | Caicedo Mora          |                 1 |    4642519.50
    88297 | Orlando             | Romero Tovar          |                 1 |    4641325.35
    53190 | Fernando Abelardo   | Medina Delgado        |                 1 |    4640498.57
    48931 | Reinaldo            | Villamizar Betancur   |                 1 |    4638173.61
   135258 | Dora Carolina       | Losada Henao          |                 1 |    4637743.80
    58815 | Myriam Jazmín       | Ortega Polanía        |                 1 |    4637452.98
    24673 | Gladys              | Álvarez Losada        |                 1 |    4635012.80
   132985 | Paola               | Jaimes Montoya        |                 1 |    4634813.00
    25784 | Reinaldo            | Gómez Losada          |                 1 |    4634672.41
   138804 | Ancízar             | Mosquera Montoya      |                 1 |    4633697.29
   129445 | Camilo              | Sánchez Duque         |                 1 |    4632710.32
    66461 | María Camila        | Ortiz Moreno          |                 1 |    4632665.66
    15810 | Yeison              | Martínez Vera         |                 1 |    4632047.35
   113636 | Stella              | Gutiérrez Jaimes      |                 1 |    4632006.04
   116481 | Adriana             | Castro Polanía        |                 1 |    4631923.99
   107404 | Rosa                | Gutiérrez Parra       |                 1 |    4631723.64
    39520 | Iván                | Barrera Ramos         |                 1 |    4631619.16
   113410 | Emilio              | Medina Pérez          |                 1 |    4631077.78
   141772 | Sebastián           | Polanía Sandoval      |                 1 |    4630729.70
    64714 | Paola               | Ospina Silva          |                 1 |    4630214.94
    86228 | Yeison              | Ramírez Peña          |                 1 |    4629629.83
   135281 | Mariana Carolina    | López Rincón          |                 1 |    4629253.16
    10234 | Alba                | Duarte Arango         |                 1 |    4628601.36
   100389 | Wilmer              | Bastidas Valencia     |                 1 |    4627329.93
    94248 | Natalia             | Vera Cuéllar          |                 1 |    4626106.26
    49944 | Julián              | Díaz Medina           |                 1 |    4624900.29
   125198 | Mercedes            | Pabón Herrera         |                 1 |    4623726.00
    38054 | Libardo Cristian    | Calderón Ruiz         |                 1 |    4623090.52
    42512 | Antonio             | Castro Ramos          |                 1 |    4622268.20
   116664 | Brayan              | Pabón Agudelo         |                 1 |    4622145.50
   106790 | Emilio              | González Castro       |                 1 |    4622030.34
   130031 | Aníbal              | Benavides Barrera     |                 1 |    4621735.95
    44481 | Álvaro Iván         | Cárdenas López        |                 1 |    4620799.56
    94018 | David Felipe        | López Benavides       |                 1 |    4619216.82
    65647 | Sofía Sara          | Arias Trujillo        |                 1 |    4618245.38
    94685 | Álvaro              | López Giraldo         |                 1 |    4617595.44
   123727 | Andrea Marcela      | Parra Vera            |                 1 |    4617116.45
    93183 | Álvaro              | Salazar Losada        |                 1 |    4617064.90
    82164 | Wilmer              | Torres Correa         |                 1 |    4616792.97
   128289 | Wilmer Pedro        | Herrera Gómez         |                 2 |    4613530.00
   109808 | Inés Patricia       | Lasso Losada          |                 1 |    4613489.92
    17853 | Wilmer              | Ramos Benavides       |                 2 |    4613247.18
   106719 | Alberto             | Castro Acevedo        |                 1 |    4611534.63
    94668 | Inés                | Bonilla Sánchez       |                 1 |    4611290.76
    49244 | Lucía               | Polanía Parra         |                 1 |    4610728.10
    19661 | Ramiro              | Sandoval Mosquera     |                 1 |    4609504.13
     1816 | Lucía               | Molina Villamizar     |                 1 |    4608949.86
    13266 | Nicolás             | Correa Niño           |                 1 |    4608847.14
   113884 | Édgar               | Delgado Bonilla       |                 1 |    4608032.00
    35766 | Libardo Mario       | Marín González        |                 1 |    4607421.46
    50896 | Rocío               | García Quintero       |                 1 |    4606447.11
    59658 | Miguel              | Correa Tovar          |                 1 |    4603630.40
    75483 | Isabella            | Uribe Caicedo         |                 1 |    4602014.56
    17573 | Cristian            | Suárez Vargas         |                 1 |    4600944.98
    98121 | Jorge               | Calderón Muñoz        |                 1 |    4599643.12
    88949 | David               | Burbano Cardona       |                 1 |    4598711.11
    25864 | Rosa                | Hernández Ramírez     |                 1 |    4594749.68
   124952 | Samuel              | Hernández Losada      |                 1 |    4593858.99
    58547 | Ana                 | Cardona Suárez        |                 1 |    4593037.31
    16853 | Abelardo            | Mosquera Ibarra       |                 1 |    4592877.50
   105099 | Juliana             | Moreno Ibarra         |                 1 |    4590542.76
     3046 | Diego               | Villamizar Silva      |                 1 |    4589250.54
    69855 | Rafael              | Hernández Bedoya      |                 1 |    4589021.31
    94375 | Laura               | Calderón Castillo     |                 1 |    4587832.83
    27825 | Leidy               | Barrera Carrillo      |                 1 |    4587372.34
   131284 | Daniel              | Ríos Castillo         |                 1 |    4586812.46
   145815 | Carolina Alba       | García Agudelo        |                 1 |    4586557.50
    18771 | Ricardo Gilberto    | Agudelo Cárdenas      |                 1 |    4586410.24
    40056 | Rosa                | Salazar Henao         |                 1 |    4586298.64
   145205 | Liliana             | Prada Gómez           |                 1 |    4585142.60
    20420 | Lorena Rosa         | Galvis Álvarez        |                 1 |    4584638.76
   140268 | Mauricio            | Cáceres Galvis        |                 1 |    4583895.67
    83603 | Ramiro              | Pinzón Jiménez        |                 1 |    4583669.09
   105113 | Libardo Juan        | Martínez Quintero     |                 1 |    4582962.17
    78690 | Reinaldo            | Prada Delgado         |                 1 |    4582872.58
   129318 | Nubia               | Zapata Benavides      |                 1 |    4582690.66
   116154 | Hernando Ricardo    | Londoño Sánchez       |                 1 |    4582192.61
    83274 | Beatriz             | Flórez Peña           |                 1 |    4582051.76
    62209 | Álvaro              | Castillo Molina       |                 1 |    4581651.56
    90849 | Andrés Ramiro       | Martínez Arango       |                 1 |    4580418.15
     7995 | Natalia Luisa       | Ramírez Silva         |                 1 |    4580205.04
   119988 | Heriberto           | Medina Ortega         |                 1 |    4580063.22
    71067 | Hugo                | Acevedo Pinzón        |                 1 |    4579630.65
   105516 | Natalia             | Calderón Restrepo     |                 1 |    4578446.34
    65814 | Abelardo            | Pabón Castillo        |                 1 |    4578111.73
   118487 | Julián Jairo        | Pérez González        |                 1 |    4578057.60
   146566 | Ancízar             | López Ortega          |                 1 |    4577962.80
    96798 | Gloria              | Osorio Bonilla        |                 1 |    4576391.62
    91822 | Rafael              | Rojas Torres          |                 1 |    4575188.82
   137362 | Ruth                | Parra Chamorro        |                 1 |    4574264.33
    31651 | Yolanda             | Cardona Osorio        |                 1 |    4570857.90
   119011 | Gladys              | Pinzón Pabón          |                 1 |    4569033.82
    22137 | Patricia            | Bedoya Rivera         |                 1 |    4568724.52
    52413 | Juan                | Moreno Tovar          |                 1 |    4568172.39
    62489 | Santiago            | Rincón Vera           |                 1 |    4566250.72
    60105 | Liliana             | Rojas Muñoz           |                 1 |    4565974.03
    54679 | Blanca              | Cabrera Silva         |                 1 |    4565565.41
   126337 | Libardo             | Ortega Zuluaga        |                 1 |    4565501.01
    61592 | Yesenia             | Sánchez Castro        |                 1 |    4564793.70
   145623 | Hugo                | Bonilla Jiménez       |                 1 |    4563670.86
    38498 | Miguel Felipe       | Restrepo Peña         |                 1 |    4562023.55
   146356 | Pedro               | Jaimes Vera           |                 1 |    4561977.66
   142614 | Gilberto            | Niño Henao            |                 1 |    4560021.88
     7616 | Carlos Ramiro       | Rangel Duarte         |                 2 |    4559527.14
     7149 | Camila Olga         | Mejía Losada          |                 1 |    4557321.19
    41169 | Yeison              | Rivera Ruiz           |                 1 |    4557185.95
    52793 | Viviana             | Trujillo Marín        |                 1 |    4556606.30
    49777 | Óscar               | Rojas Prada           |                 1 |    4556073.16
     4204 | Camilo              | Ríos Ramos            |                 1 |    4555817.03
     3426 | Laura               | Peña Ríos             |                 1 |    4554885.71
    17774 | Myriam              | Rivera Ortiz          |                 1 |    4554604.86
    14268 | Dora Ángela         | Peña Ramírez          |                 1 |    4554226.70
   145218 | Jairo               | Delgado Cáceres       |                 1 |    4554206.67
   138271 | Gustavo             | Benavides Erazo       |                 1 |    4553421.24
    40569 | Aura Ruth           | Sandoval Ortega       |                 1 |    4552622.27
    73701 | Libardo             | López Bastidas        |                 1 |    4548320.61
    15677 | Rosa                | Moreno Cuéllar        |                 1 |    4548186.00
    36475 | Arturo              | Muñoz Burbano         |                 1 |    4548052.80
    92725 | Ramiro Julián       | Narváez Mora          |                 1 |    4547346.53
    43365 | Mateo               | Erazo Villamizar      |                 1 |    4543715.61
     1099 | Lucía               | Barrera Ríos          |                 1 |    4543612.92
    87080 | Sara Mercedes       | Caicedo Ríos          |                 1 |    4542343.32
   110006 | Patricia Teresa     | Bedoya Cáceres        |                 1 |    4541199.12
   136624 | Luz                 | Muñoz Parra           |                 2 |    4538626.09
     4590 | Iván                | Zapata Carrillo       |                 1 |    4537943.14
    14769 | Dora                | Pinzón Ramos          |                 1 |    4537808.73
   115652 | Gloria Marleny      | Correa Mora           |                 1 |    4537419.60
   131725 | Adriana             | Betancur Delgado      |                 1 |    4535654.46
   130831 | Gustavo             | Ríos González         |                 1 |    4533884.47
   144033 | Yeison              | Álvarez Lozano        |                 1 |    4533673.66
   125288 | Rafael              | Restrepo Contreras    |                 1 |    4531315.27
     5385 | Wilmer              | Calderón Giraldo      |                 1 |    4530936.08
    54688 | Paola Cecilia       | Vera Niño             |                 2 |    4529676.61
   136483 | Pedro               | Mejía Montoya         |                 1 |    4528519.55
   147888 | Erika               | Prada González        |                 1 |    4527468.85
     5405 | Alberto             | Jiménez Pabón         |                 1 |    4526569.89
   102630 | Gabriela Alba       | Serrano Villamizar    |                 1 |    4526399.91
    10195 | Dora Teresa         | Álvarez Cárdenas      |                 1 |    4526240.25
    28437 | Ramiro              | Pérez Villamizar      |                 1 |    4524933.00
    15090 | Alejandro Daniel    | Mosquera Chamorro     |                 1 |    4524674.44
   140037 | Miguel Nelson       | Guerrero Trujillo     |                 1 |    4524276.00
    84158 | Daniel Fabio        | Sandoval Bonilla      |                 1 |    4523794.11
   115893 | Hugo                | Villamizar Romero     |                 1 |    4523664.02
    90822 | Antonio Alejandro   | Calderón Henao        |                 1 |    4523509.89
    47238 | Marcela Gladys      | Cabrera Flórez        |                 1 |    4522735.27
   108193 | Claudia             | Sánchez Muñoz         |                 1 |    4522096.08
   114612 | Francisco           | Cuéllar Londoño       |                 1 |    4521295.37
     6225 | Orlando             | Ruiz Rincón           |                 1 |    4520546.57
   148461 | Yeison              | Mosquera Silva        |                 1 |    4519787.67
    97570 | Edilma              | Henao Galvis          |                 1 |    4518688.02
    84605 | Orlando             | Peña Rangel           |                 1 |    4517488.55
    16806 | Carmen Marcela      | Cáceres Díaz          |                 1 |    4517389.20
    92365 | Patricia            | Valencia Gutiérrez    |                 1 |    4517355.60
    27901 | Rafael              | Torres Gómez          |                 1 |    4515724.96
    72994 | Manuela             | Ramos Pabón           |                 1 |    4513191.28
    88439 | David Hernando      | Contreras López       |                 1 |    4512774.10
   108134 | Cristian            | Delgado Benavides     |                 1 |    4512521.00
   141867 | Aura                | Rivera Perdomo        |                 1 |    4511806.20
    24174 | Myriam              | Peña Giraldo          |                 1 |    4510834.05
    84285 | Juan Gilberto       | Osorio Villamizar     |                 1 |    4509683.16
    50080 | Ramiro Wilson       | Acevedo Cáceres       |                 1 |    4507958.62
   139479 | Gladys Ana          | Barrera Henao         |                 1 |    4507763.47
    15332 | Diana               | Guerrero Erazo        |                 1 |    4507646.85
   127122 | Reinaldo            | García Henao          |                 1 |    4507416.96
   141903 | Gustavo             | Gutiérrez García      |                 1 |    4507366.64
   106228 | Ana                 | Medina Villamizar     |                 1 |    4507119.54
    72229 | Marcela             | Ortega Gómez          |                 1 |    4502666.76
   137283 | Esperanza           | Flórez López          |                 1 |    4501518.40
   147012 | Jairo               | Calderón Calderón     |                 1 |    4501227.60
    94727 | Gladys              | Rivera Silva          |                 1 |    4499493.40
    67892 | Yolanda             | Trujillo Rodríguez    |                 1 |    4499322.10
    19288 | Fabio               | Betancur Duque        |                 1 |    4498581.71
   141067 | Esperanza           | Hernández Gutiérrez   |                 1 |    4498534.33
   130111 | Rafael Julián       | Medina Jiménez        |                 1 |    4497144.96
   145197 | Ángela Olga         | Pabón Vélez           |                 1 |    4496834.09
    84457 | Alberto Fernando    | Guerrero Polanía      |                 1 |    4496196.79
    92630 | Teresa Isabella     | Losada Ruiz           |                 1 |    4495768.58
     3722 | Martha              | González Polanía      |                 2 |    4495468.56
    37475 | Juan                | Carrillo Betancur     |                 1 |    4495130.50
    21383 | Manuel Daniel       | Ramos Romero          |                 1 |    4494621.90
    74612 | José Orlando        | Uribe Bastidas        |                 1 |    4494400.30
    64694 | Adriana Elsa        | López Flórez          |                 1 |    4493323.15
    38482 | Héctor              | Rangel Salazar        |                 1 |    4489438.45
    21160 | Sofía               | Moreno Hernández      |                 1 |    4487351.64
   104156 | Paola               | Sandoval López        |                 1 |    4487304.24
   115547 | Germán Fabio        | Cáceres Ibarra        |                 2 |    4486894.86
     8074 | Alejandro           | Martínez Tovar        |                 1 |    4486829.54
   129547 | Alberto             | Díaz Castillo         |                 1 |    4486612.16
    27575 | Santiago            | Muñoz Acevedo         |                 1 |    4483538.92
     6817 | Elsa                | García Lasso          |                 1 |    4482760.26
    61978 | Ricardo             | Erazo Rojas           |                 2 |    4481843.89
    42856 | Fabio               | Gómez Mosquera        |                 1 |    4481236.00
    51761 | Sandra              | Niño Silva            |                 2 |    4480817.38
   112127 | Aníbal Luis         | Vélez Giraldo         |                 1 |    4480651.16
   118541 | Fabio Édgar         | Ortega Uribe          |                 1 |    4479861.18
    22082 | Olga                | Cardona Torres        |                 1 |    4479480.95
    46077 | Gabriela Carolina   | Acevedo Arango        |                 1 |    4478277.07
   135570 | Orlando             | Suárez Acevedo        |                 1 |    4477790.98
    57045 | Laura               | Bastidas García       |                 1 |    4477345.70
    70935 | Aura Olga           | Torres Agudelo        |                 1 |    4477139.37
   138760 | Dora Alejandra      | Uribe Correa          |                 1 |    4474751.65
    29382 | Mario Brayan        | Vargas Silva          |                 1 |    4474007.04
    93706 | Álvaro              | Zuluaga Díaz          |                 1 |    4473095.19
   113653 | Hernando            | Mora Ríos             |                 1 |    4472842.80
    78568 | Luis                | Herrera Cárdenas      |                 1 |    4472455.00
     5121 | Teresa              | Medina Serrano        |                 1 |    4469805.18
    68292 | Gloria              | Suárez Arias          |                 1 |    4469212.91
   103334 | Mateo Fabio         | Narváez Perdomo       |                 1 |    4465998.18
    55817 | Sofía               | Cardona Herrera       |                 1 |    4465535.62
   124036 | Wilmer              | Gutiérrez Delgado     |                 1 |    4462953.15
    69483 | Mercedes            | Castillo Serrano      |                 1 |    4462327.05
   116862 | Rocío               | Perdomo Arango        |                 1 |    4461864.60
   105876 | Marleny             | Quintero Quintero     |                 1 |    4461075.00
    31155 | Luisa Rocío         | Parra Flórez          |                 1 |    4460499.85
    11687 | Alejandro           | Salazar Jaimes        |                 1 |    4460413.40
    10044 | Abelardo Rafael     | Ruiz Medina           |                 1 |    4460281.60
   140547 | Ruth                | Serrano Marín         |                 1 |    4459606.18
    82081 | Wilson              | Contreras Gutiérrez   |                 1 |    4459070.39
    33885 | Mario               | Osorio Polanía        |                 1 |    4457745.00
   145552 | José                | Bonilla Muñoz         |                 1 |    4457390.42
    77718 | Mateo               | López Herrera         |                 1 |    4456847.10
    75130 | Amparo              | Guerrero Contreras    |                 1 |    4456249.05
   149416 | Yesenia Isabella    | Restrepo Ortega       |                 1 |    4455199.83
   143363 | Luisa               | Castillo Álvarez      |                 1 |    4454191.69
    49494 | Esperanza           | Serrano Jiménez       |                 1 |    4453972.63
   142499 | Rocío               | Castillo Hernández    |                 1 |    4452477.20
    26829 | Beatriz Lucía       | Galvis Carrillo       |                 1 |    4448769.96
   107328 | Luis                | Vélez Ramos           |                 1 |    4448177.76
    71198 | Gustavo             | Ibarra Hernández      |                 1 |    4448079.81
    61709 | Brayan              | Flórez Cáceres        |                 1 |    4447987.88
    19272 | Nelson              | Cáceres Medina        |                 1 |    4447531.05
   137096 | Ancízar             | Ibarra Rodríguez      |                 1 |    4446895.83
    81848 | Hernando            | Narváez Díaz          |                 1 |    4446194.46
   139800 | Yeison              | González Cabrera      |                 1 |    4444908.96
     7332 | Lucía               | Bastidas Erazo        |                 1 |    4443299.01
    61407 | Mateo Manuel        | Vargas Londoño        |                 1 |    4442501.13
   115243 | Cecilia Marleny     | Gutiérrez Guerrero    |                 1 |    4442282.29
   113937 | Emilio Cristian     | Flórez Salazar        |                 1 |    4441332.96
    30270 | Claudia             | Pinzón Trujillo       |                 1 |    4440486.96
   134337 | Gladys Dora         | Correa Parra          |                 1 |    4437710.77
    80886 | Laura               | Uribe Duarte          |                 1 |    4437221.41
     7822 | Luisa               | Duque García          |                 1 |    4436103.12
   100819 | Reinaldo            | Barrera Osorio        |                 1 |    4435940.88
   118002 | Camilo Julián       | Arango Molina         |                 1 |    4434488.16
   119452 | Diego               | Ríos Moreno           |                 1 |    4432416.73
    39402 | Inés Lucía          | Ospina Torres         |                 1 |    4431940.58
   129296 | Inés                | Cárdenas Calderón     |                 1 |    4431017.68
   139832 | José                | Barrera Rincón        |                 1 |    4430144.25
    97561 | Marcela             | Bedoya Parra          |                 1 |    4428127.44
    18976 | Camila              | Rojas Agudelo         |                 1 |    4427649.07
   147205 | Iván Álvaro         | Duque Galvis          |                 1 |    4427123.00
   102600 | Amparo Laura        | Romero Cuéllar        |                 1 |    4425721.64
    35322 | María Blanca        | Cárdenas Pabón        |                 1 |    4425670.08
    89392 | Andrea Sofía        | Herrera Medina        |                 1 |    4424658.84
    19336 | Esteban             | Medina Ríos           |                 1 |    4424442.12
    11978 | Rodrigo             | Quintero Jiménez      |                 1 |    4424134.40
   108898 | Blanca              | Cáceres Serrano       |                 1 |    4421847.29
    87278 | Andrea              | Cabrera Guerrero      |                 1 |    4421838.54
   106039 | Francisco           | Arango Quintero       |                 1 |    4418862.17
   107301 | Yeison              | Correa Rojas          |                 1 |    4417723.80
    97813 | Lucía               | Suárez Uribe          |                 1 |    4417552.04
    64543 | Edilma              | Moreno Sandoval       |                 1 |    4416699.28
    74403 | Iván Pedro          | Bonilla Herrera       |                 1 |    4416303.51
   124907 | Emilio              | Burbano Uribe         |                 1 |    4414513.05
    21257 | Yeison              | Uribe Vera            |                 1 |    4413541.87
   139839 | Sofía               | Rodríguez Benavides   |                 1 |    4413410.79
   113533 | Efraín              | Torres Pérez          |                 1 |    4412967.96
    93783 | Inés                | Cárdenas Arias        |                 1 |    4412956.62
    79786 | Reinaldo Juan       | Gómez Castro          |                 2 |    4411512.31
    39669 | Luz                 | Londoño Bermúdez      |                 1 |    4411469.56
   102644 | Patricia Alejandra  | Calderón Niño         |                 1 |    4410837.00
    40706 | Patricia Teresa     | Giraldo Rivera        |                 1 |    4409873.52
   115232 | Arturo              | Londoño Medina        |                 1 |    4409086.50
   135085 | Jorge               | Rivera Jaimes         |                 1 |    4409040.60
   119859 | Francisco Iván      | Silva Osorio          |                 1 |    4408614.98
    87173 | Rosa                | Valencia Muñoz        |                 1 |    4406988.53
    55331 | Amparo Rocío        | Ramírez López         |                 1 |    4403209.92
    98119 | Marcela Ruth        | Giraldo Cabrera       |                 1 |    4400677.06
    50604 | Alberto             | Quintero Contreras    |                 1 |    4398816.48
   140675 | Mauricio            | Cárdenas Bedoya       |                 1 |    4398400.49
    75836 | Yolanda Mariana     | Pinzón Jaimes         |                 1 |    4396965.82
    20658 | Ricardo             | Flórez Rangel         |                 1 |    4396751.40
   127618 | Hugo José           | Moreno Duque          |                 1 |    4396461.30
    19378 | Camilo              | Ortiz Prada           |                 1 |    4396110.79
   126081 | Nubia               | Calderón Ramos        |                 1 |    4395866.25
   110950 | Wilmer              | Gutiérrez Narváez     |                 1 |    4395786.12
   143785 | Mauricio            | Ramírez Martínez      |                 1 |    4395498.75
   134528 | Luis                | Muñoz Osorio          |                 1 |    4395316.80
    88745 | José Esteban        | Betancur Mosquera     |                 1 |    4395220.73
     1158 | Laura               | Bedoya Rincón         |                 1 |    4394037.00
   134877 | Blanca Carmen       | Torres López          |                 1 |    4393252.50
    12172 | Orlando             | Ramírez Ortiz         |                 1 |    4392965.20
   130480 | Sandra              | Giraldo Restrepo      |                 1 |    4391572.65
    33381 | Yeison Cristian     | Castillo Bonilla      |                 1 |    4391343.43
    92346 | David               | Duarte Delgado        |                 1 |    4389510.08
    38769 | Yuliana             | Bermúdez Trujillo     |                 1 |    4388365.75
   133774 | Juan                | Silva Castro          |                 1 |    4387884.67
   126260 | Fanny               | Duque Villamizar      |                 1 |    4387858.14
      466 | Andrea              | Niño Niño             |                 1 |    4387736.19
    23850 | Nubia               | Molina Ríos           |                 1 |    4386727.92
    35054 | Orlando             | Jaimes Rojas          |                 1 |    4385845.24
    36733 | Guillermo Gustavo   | Vélez Cardona         |                 1 |    4385508.64
     8451 | Patricia            | Vélez Sandoval        |                 1 |    4383417.28
   103461 | Emilio              | Lozano Díaz           |                 1 |    4382450.65
    92486 | Miguel              | Ramos Rivera          |                 1 |    4381639.32
   123719 | Esteban             | Contreras Burbano     |                 1 |    4381415.77
   112839 | Iván                | Lasso Prada           |                 1 |    4380781.28
    35337 | Inés                | Ríos Bastidas         |                 2 |    4380714.44
    64110 | Daniela             | Herrera Lasso         |                 1 |    4379592.80
    47031 | Hernando            | Gutiérrez Vargas      |                 1 |    4379144.96
   112778 | Sofía Olga          | Polanía Torres        |                 1 |    4377998.27
    23443 | Yeison Nicolás      | Zapata Tovar          |                 1 |    4377030.00
    61522 | Carlos              | Delgado Londoño       |                 1 |    4374597.45
   134333 | Sebastián           | Ibarra Perdomo        |                 1 |    4374266.19
    55488 | Rodrigo Esteban     | Parra Londoño         |                 1 |    4374114.03
    92593 | Mónica              | Ramos Niño            |                 1 |    4373416.48
   119242 | Gustavo Miguel      | Molina Ramírez        |                 1 |    4369782.62
    62599 | Natalia Beatriz     | Ramírez Mora          |                 1 |    4368518.56
   110171 | Dora Camila         | Álvarez Montoya       |                 1 |    4367923.68
     4504 | Heriberto Óscar     | Rangel Villamizar     |                 1 |    4367533.68
    33086 | Jorge               | Cuéllar Parra         |                 1 |    4366740.00
    64750 | Álvaro              | Cardona Zapata        |                 2 |    4366414.24
    60968 | Isabella            | Tovar Bastidas        |                 1 |    4366374.75
    82564 | Lorena Esperanza    | Salazar Bonilla       |                 1 |    4364155.41
   122263 | Reinaldo Juan       | Hernández Parra       |                 2 |    4363217.03
       56 | Aníbal              | Prada Delgado         |                 1 |    4362862.62
    26879 | Iván                | Guerrero Tovar        |                 1 |    4360881.77
    17999 | Stella              | Castro Ortiz          |                 1 |    4360340.40
    58167 | Javier              | González Rangel       |                 1 |    4359372.77
    30232 | Jorge               | Rivera Cárdenas       |                 1 |    4358648.58
    10017 | Rocío               | Silva Erazo           |                 1 |    4357882.07
    96785 | Juliana             | Uribe Mora            |                 1 |    4357594.80
   145178 | Daniel              | Ramírez Ramos         |                 1 |    4356672.84
    42536 | Andrea              | González Parra        |                 1 |    4356573.84
     2766 | Lucía               | Chamorro Trujillo     |                 1 |    4355751.96
   136902 | Mónica Yolanda      | Ibarra Ruiz           |                 1 |    4355747.51
    47697 | Wilmer              | Sandoval Correa       |                 1 |    4354662.99
    33002 | Jazmín Gabriela     | Suárez Bedoya         |                 1 |    4354617.52
      972 | Héctor Gustavo      | Acevedo Rincón        |                 1 |    4354598.79
    16689 | Viviana             | Barrera Ruiz          |                 1 |    4354460.09
    55910 | Guillermo           | Montoya Castro        |                 1 |    4353321.88
     1570 | Liliana             | Vera Cuéllar          |                 1 |    4353297.80
    59002 | Guillermo           | Bastidas Lasso        |                 1 |    4352361.51
    43398 | Blanca Carmen       | Silva Lozano          |                 1 |    4351723.50
    11695 | Gilberto            | Ríos Peña             |                 1 |    4351435.76
    67096 | Sofía               | Zuluaga Mosquera      |                 1 |    4350979.00
   137195 | Valentina           | Cardona Narváez       |                 1 |    4349694.44
    99477 | Luis                | Pinzón Ibarra         |                 1 |    4349385.88
   119656 | Gloria              | Rojas Molina          |                 1 |    4348114.12
   101561 | Gilberto Cristian   | Montoya Burbano       |                 1 |    4345472.95
    73058 | Myriam              | Torres Molina         |                 1 |    4341052.80
   142022 | Pedro               | González Marín        |                 1 |    4339959.36
    81321 | Sofía               | Carrillo Perdomo      |                 1 |    4339922.26
    21931 | Guillermo           | Montoya Arango        |                 1 |    4338804.20
   116797 | Javier              | Mejía Correa          |                 1 |    4338729.34
    48096 | Edilma Yolanda      | Cuéllar Duque         |                 1 |    4338197.00
    46107 | Luz Ruth            | Burbano Romero        |                 1 |    4337995.35
    73948 | Edilma Ángela       | Burbano Betancur      |                 1 |    4337319.15
    78836 | Marcela             | Ríos Díaz             |                 1 |    4336414.92
    95057 | Julián              | Sánchez Peña          |                 1 |    4332333.08
   144272 | Sandra Viviana      | Ortega Ruiz           |                 1 |    4330724.93
   145186 | Felipe Luis         | Bermúdez Mejía        |                 1 |    4328256.07
    48814 | Ricardo             | Erazo Gutiérrez       |                 1 |    4327277.91
    45985 | Jairo               | Correa Zapata         |                 1 |    4327186.05
    22961 | Elsa                | Pérez Agudelo         |                 1 |    4325455.24
    73445 | José                | Silva Zuluaga         |                 1 |    4324945.06
    24089 | María               | Vargas Prada          |                 1 |    4324391.61
    83120 | Fabio Jorge         | Galvis Molina         |                 1 |    4322348.20
   132365 | Dora Daniela        | Vera Cáceres          |                 1 |    4320413.62
   118670 | Jaime               | Londoño Parra         |                 1 |    4319332.63
    27797 | Fanny Laura         | Pabón Calderón        |                 1 |    4318878.08
   137619 | Sebastián           | Ospina Erazo          |                 1 |    4316144.32
   111940 | Fernando Fabio      | Silva Duarte          |                 1 |    4315888.92
    95024 | Fabio               | Benavides Carrillo    |                 1 |    4315371.48
   108421 | Luis                | Hernández Peña        |                 1 |    4312099.61
   104159 | Liliana Andrea      | Cuéllar Ríos          |                 1 |    4310699.19
    27300 | Mariana Carolina    | Torres Niño           |                 1 |    4310106.40
   111457 | Marcela             | Henao Martínez        |                 1 |    4309095.96
   147983 | Marleny             | González Castro       |                 1 |    4307701.62
    61349 | Alba                | Marín Bedoya          |                 1 |    4307276.40
    26705 | Patricia            | Suárez Bedoya         |                 1 |    4305666.19
    78474 | Nelson              | González Cáceres      |                 1 |    4304624.64
   135734 | Cristian Heriberto  | Jiménez Díaz          |                 1 |    4304085.43
    24203 | Guillermo           | Ramírez Prada         |                 1 |    4302767.90
    71156 | Hernando            | Henao Gómez           |                 1 |    4301683.64
   126148 | Carolina Paola      | Perdomo Niño          |                 1 |    4300917.66
   146199 | Mauricio            | Mosquera Lasso        |                 1 |    4300586.57
   106404 | Ancízar Andrés      | Serrano Moreno        |                 1 |    4299197.76
    43342 | Marleny             | Henao Duque           |                 1 |    4297903.90
   101249 | Marcela             | Duque Agudelo         |                 1 |    4297397.44
    93189 | Gilberto Esteban    | Guerrero Bedoya       |                 1 |    4296701.48
   131699 | Daniela Olga        | Londoño Medina        |                 1 |    4296615.92
   131240 | Erika               | Lozano Cardona        |                 1 |    4295433.60
    56281 | Mario               | Zuluaga Valencia      |                 1 |    4291337.70
    65596 | Wilmer              | Hernández Lasso       |                 1 |    4288285.57
   126973 | Wilmer              | Ramírez Castillo      |                 1 |    4287377.56
   125919 | Juliana             | Guerrero García       |                 1 |    4286571.34
   146211 | Esteban             | Vélez Bermúdez        |                 1 |    4285493.25
    78830 | Claudia             | Pérez Peña            |                 1 |    4284348.06
   142581 | Gustavo             | Ríos Pinzón           |                 1 |    4283732.33
    84960 | Natalia Gladys      | Polanía Gutiérrez     |                 1 |    4283505.04
   121529 | Yolanda Marleny     | Galvis Rangel         |                 1 |    4282703.36
   134005 | Pedro               | Calderón Cardona      |                 1 |    4278248.31
   145456 | Diego               | Moreno Marín          |                 1 |    4277150.17
   137143 | Heriberto           | Parra Burbano         |                 1 |    4276003.08
    86760 | Reinaldo            | Villamizar Mejía      |                 1 |    4275287.38
    42897 | Pedro               | Sánchez Herrera       |                 1 |    4273471.11
    34542 | Leidy               | Herrera Correa        |                 1 |    4271534.40
    36930 | Mariana             | Peña Villamizar       |                 1 |    4271375.12
    58037 | Diego               | Carrillo Henao        |                 1 |    4270710.64
   123140 | Yesenia Nubia       | Rivera Uribe          |                 1 |    4270416.46
    23055 | Daniel              | López Bedoya          |                 1 |    4269632.02
     7052 | Fabio               | Benavides Herrera     |                 1 |    4269628.23
    19090 | Sara                | Moreno Acevedo        |                 1 |    4268774.40
   100792 | Jairo               | Duque Correa          |                 1 |    4268260.78
    64046 | Daniel              | Pérez Ortiz           |                 1 |    4268243.75
    79166 | Abelardo            | Pabón Carrillo        |                 1 |    4267572.20
    29401 | Gilberto Mario      | Villamizar González   |                 1 |    4266362.50
    36737 | Alba                | Carrillo Villamizar   |                 1 |    4265776.45
    21889 | Gustavo             | Montoya Herrera       |                 1 |    4264291.31
     1293 | Cristian Mario      | Cabrera Jaimes        |                 1 |    4263679.74
    15017 | Mario               | Sandoval Restrepo     |                 1 |    4263570.43
   146811 | Sara Teresa         | Restrepo Serrano      |                 1 |    4260782.43
    96536 | Isabella            | Mosquera Cárdenas     |                 1 |    4260678.28
    60262 | Carlos Fabio        | Ortega Rincón         |                 1 |    4260417.29
   141308 | Reinaldo            | Arango Losada         |                 1 |    4258439.67
   130536 | Andrés              | Galvis Álvarez        |                 1 |    4258166.25
   120671 | Elsa                | Bastidas Vélez        |                 1 |    4257827.34
     5722 | Francisco           | Chamorro Serrano      |                 1 |    4257335.60
   116984 | Rosa Aura           | Narváez García        |                 1 |    4256564.30
    22294 | Carlos              | Parra Perdomo         |                 1 |    4255778.08
    66221 | Stella              | Bonilla Mosquera      |                 1 |    4255607.09
    19901 | Heriberto           | Moreno Restrepo       |                 1 |    4255309.67
   136030 | Fanny               | Castro Contreras      |                 1 |    4254652.15
    35579 | Reinaldo            | Flórez Contreras      |                 1 |    4254409.50
    86222 | Esteban             | Gutiérrez Lozano      |                 1 |    4252446.57
    74905 | Amparo              | Zuluaga Ortega        |                 1 |    4250774.23
    47350 | Iván                | Erazo Pabón           |                 1 |    4249043.95
    96974 | Gustavo Rodrigo     | Tovar Molina          |                 1 |    4248712.50
    22227 | Wilmer              | Bermúdez Cardona      |                 1 |    4248063.12
     9616 | Inés Viviana        | Arango Galvis         |                 1 |    4247597.24
    13555 | Brayan              | Montoya Jiménez       |                 1 |    4247129.01
    24447 | Édgar               | Salazar Benavides     |                 1 |    4247034.56
   136921 | Alejandro           | Losada Betancur       |                 1 |    4244130.94
   127139 | Sebastián           | Ramos Parra           |                 1 |    4243588.03
   101533 | Álvaro              | Martínez Duarte       |                 1 |    4242635.00
    71263 | Francisco Miguel    | Suárez Giraldo        |                 1 |    4242413.92
   140054 | Jaime               | Contreras Erazo       |                 2 |    4241455.56
    75656 | Adriana Mercedes    | Osorio Montoya        |                 1 |    4240748.12
    36867 | Lucía               | Arango Bedoya         |                 1 |    4240694.40
   103108 | Cristian            | Polanía Torres        |                 1 |    4240116.44
   111430 | Paola               | Londoño Londoño       |                 1 |    4239875.22
    65008 | Alejandra           | Zuluaga Molina        |                 1 |    4239827.88
    43153 | Édgar               | Trujillo Pinzón       |                 1 |    4239064.16
    63327 | Stella              | Moreno Rangel         |                 1 |    4234838.20
    82544 | Carmen              | Acevedo Pérez         |                 1 |    4234167.30
    15587 | Natalia Juliana     | Bedoya Rodríguez      |                 1 |    4233439.34
    42622 | Lorena              | Montoya Chamorro      |                 1 |    4232935.38
    51721 | Ricardo             | Castillo Rojas        |                 1 |    4232418.21
    30444 | Arturo Esteban      | Sandoval Giraldo      |                 1 |    4231301.36
    55482 | Julián              | Acevedo Zapata        |                 1 |    4230151.16
    26716 | Jairo               | Ortiz Zuluaga         |                 1 |    4228338.08
    29927 | Leidy               | Jaimes Ramírez        |                 1 |    4227946.36
   142617 | Guillermo           | Guerrero Ibarra       |                 1 |    4227342.30
    13971 | Mariana             | Medina Guerrero       |                 1 |    4226435.50
    30998 | Wilmer              | Suárez Arias          |                 1 |    4226341.55
   129526 | Miguel              | Londoño Moreno        |                 1 |    4225632.12
    40789 | Myriam              | Martínez Londoño      |                 1 |    4224744.28
    96605 | Wilson Brayan       | Bermúdez Ramos        |                 1 |    4224425.05
    22174 | Juan                | Mejía Pinzón          |                 1 |    4223480.05
    64415 | Alejandro           | Bedoya Bermúdez       |                 1 |    4222467.63
   133640 | Luis                | Salazar Duque         |                 1 |    4222130.44
    12410 | Lorena              | Jaimes Trujillo       |                 1 |    4221565.92
    68495 | Ramiro              | Narváez Ortega        |                 1 |    4221494.28
    64031 | Nelson              | Parra Carrillo        |                 1 |    4220853.80
    96204 | Gabriela            | Marín Trujillo        |                 1 |    4220276.82
   115587 | Santiago            | Pinzón Bedoya         |                 1 |    4220242.32
    95333 | Hugo Jaime          | González Ortega       |                 1 |    4220005.99
   122562 | Alejandra           | Sandoval Ospina       |                 1 |    4219222.56
    10585 | Iván                | Herrera Silva         |                 1 |    4217747.60
   124266 | Miguel              | Arias Díaz            |                 1 |    4217562.20
    32212 | María               | Vargas Perdomo        |                 1 |    4217313.20
    97256 | Aníbal              | Tovar Ruiz            |                 1 |    4214558.04
   113799 | Sandra              | Torres García         |                 1 |    4214351.38
    54184 | Ramiro              | Serrano Cabrera       |                 1 |    4213881.96
    64318 | Pedro               | Arango Álvarez        |                 1 |    4211915.25
   117001 | Alberto             | Betancur Osorio       |                 1 |    4211355.64
    15212 | Camilo Orlando      | Calderón Ospina       |                 1 |    4208280.64
   145389 | Fanny               | Acevedo Jaimes        |                 1 |    4208048.27
    53648 | Gilberto            | Duque Marín           |                 1 |    4207936.28
    33701 | Daniel Antonio      | Suárez Cuéllar        |                 1 |    4204181.61
   124418 | Teresa Ángela       | Valencia Martínez     |                 1 |    4200387.90
    52601 | Olga Jazmín         | Moreno Tovar          |                 1 |    4198693.86
   138934 | Francisco           | Giraldo Zuluaga       |                 2 |    4198583.23
    97550 | Daniela             | Rivera Restrepo       |                 1 |    4198474.45
    66101 | Óscar               | Jiménez Vargas        |                 1 |    4197624.23
    66639 | Édgar               | Correa Peña           |                 1 |    4195810.19
    16786 | Juan                | Quintero Perdomo      |                 1 |    4195150.26
    38848 | Claudia             | Tovar López           |                 2 |    4194741.98
   149446 | Ramiro              | Herrera Burbano       |                 1 |    4194235.73
   128192 | Daniel Álvaro       | Correa Trujillo       |                 1 |    4194173.52
   130202 | Camilo              | Valencia Romero       |                 1 |    4193146.08
    40564 | Wilson              | Perdomo Ríos          |                 1 |    4193138.88
     8917 | Hernando            | Burbano Muñoz         |                 1 |    4191933.78
    16821 | Carlos              | Salazar González      |                 1 |    4191714.51
    86922 | Lucía               | Moreno Sánchez        |                 1 |    4191656.77
     7637 | Alberto José        | Acevedo Marín         |                 1 |    4189531.50
    93711 | Patricia            | Valencia Romero       |                 1 |    4189293.68
    68261 | Nicolás Luis        | Castillo Castro       |                 1 |    4188953.44
   149168 | Nubia Fanny         | Molina Parra          |                 1 |    4188517.34
    71182 | Mario               | Torres Delgado        |                 1 |    4188389.37
    43851 | Gladys              | Trujillo Ramírez      |                 1 |    4188175.08
   145151 | Efraín              | Quintero Bastidas     |                 1 |    4187384.46
   102078 | Jorge               | Bonilla Villamizar    |                 1 |    4185636.93
    53749 | Abelardo Ancízar    | Lasso Ortiz           |                 1 |    4184448.30
     1061 | Francisco           | Bedoya Sandoval       |                 1 |    4181769.50
    60677 | Juan Iván           | Hernández Cardona     |                 1 |    4181454.72
    46183 | Hugo                | Molina Mosquera       |                 1 |    4180804.44
   141382 | Rocío               | Restrepo Silva        |                 1 |    4179734.62
    63908 | David               | González Polanía      |                 1 |    4178193.22
     6610 | Alba Brayan         | Calderón Rivera       |                 1 |    4176300.48
    65058 | Isabella            | Ramos Jiménez         |                 1 |    4175265.68
     4754 | Laura               | Villamizar Cáceres    |                 1 |    4174959.58
    79427 | Diego               | Arango Polanía        |                 1 |    4173249.97
   101352 | Wilson              | Erazo Bastidas        |                 1 |    4172095.17
    82956 | Beatriz             | Vargas Duque          |                 1 |    4171691.08
   129624 | Óscar               | Salazar Gómez         |                 1 |    4170703.08
     9333 | Valentina Beatriz   | Herrera Rivera        |                 1 |    4161646.15
   122614 | Iván                | Rincón Ramos          |                 1 |    4161413.96
    48638 | Nelson              | Silva Ortiz           |                 1 |    4160599.58
   127733 | Cristian            | Montoya Burbano       |                 1 |    4159277.04
    41371 | Claudia             | Calderón Bonilla      |                 1 |    4158385.07
   103541 | Javier              | Marín Ortiz           |                 1 |    4157406.68
    94912 | Alba                | Gutiérrez Herrera     |                 1 |    4156894.74
    21357 | Emilio              | Montoya Burbano       |                 1 |    4155823.07
    55719 | Diana               | Vera Rangel           |                 1 |    4154650.08
    99170 | Germán              | Erazo Cáceres         |                 1 |    4153166.34
     6439 | Abelardo            | Moreno Calderón       |                 1 |    4152449.07
    37480 | Ramiro Francisco    | Mora González         |                 1 |    4150125.83
    21851 | Nicolás             | Marín Flórez          |                 1 |    4149655.77
    45085 | Marcela Adriana     | Muñoz Marín           |                 1 |    4149470.01
    44514 | Andrea              | Moreno Álvarez        |                 1 |    4149052.16
    94371 | Rubén Daniel        | Hernández Rivera      |                 1 |    4148125.94
   126382 | Fanny               | Serrano Villamizar    |                 1 |    4139729.01
    64204 | Daniel              | Mejía Rivera          |                 1 |    4136646.98
   103764 | Gabriela            | Zapata González       |                 1 |    4135452.10
    61451 | Édgar Libardo       | Arias Rivera          |                 1 |    4135272.44
    29509 | Alejandro Guillermo | Quintero Sandoval     |                 1 |    4134624.32
   136572 | Aura                | Castro Betancur       |                 1 |    4133978.72
   144936 | Gladys Blanca       | Cáceres Serrano       |                 1 |    4132877.58
    69792 | Rosa Lorena         | Gómez Betancur        |                 1 |    4132830.91
    90436 | Hernando            | Serrano Osorio        |                 1 |    4132642.18
    45298 | Manuela             | Delgado Salazar       |                 1 |    4130932.93
    59159 | Yuliana             | Jaimes Londoño        |                 1 |    4130930.66
    59826 | Luisa               | Agudelo García        |                 1 |    4130808.36
    82076 | Daniel              | Contreras Perdomo     |                 1 |    4130518.08
    89775 | Ruth Erika          | Cabrera Cabrera       |                 1 |    4129331.94
    88401 | Valentina Gloria    | Ruiz Medina           |                 1 |    4127830.99
   121278 | Pedro Óscar         | Muñoz Cáceres         |                 1 |    4126300.46
   109371 | Nubia               | Contreras Mejía       |                 1 |    4125717.60
     5048 | Martha Ancízar      | Cáceres Pabón         |                 1 |    4125075.26
     8401 | María               | Giraldo Henao         |                 1 |    4124896.72
   109107 | Rubén               | Silva Cárdenas        |                 1 |    4124556.58
   132018 | Julián Arturo       | Villamizar Gutiérrez  |                 1 |    4123346.05
    19787 | Claudia             | Arias Rojas           |                 1 |    4122229.43
    16190 | Alberto             | Zuluaga Bedoya        |                 1 |    4121467.92
    17509 | Paola Sofía         | Ortega Londoño        |                 1 |    4119147.90
    78581 | Camilo              | Gómez Romero          |                 1 |    4116329.58
   148442 | Beatriz             | González Muñoz        |                 1 |    4115735.36
    37797 | Samuel Ramiro       | Calderón Duque        |                 1 |    4115621.95
   118268 | Julián              | Salazar Galvis        |                 1 |    4114786.65
    10101 | Martha              | Ramírez Pabón         |                 1 |    4114026.15
    93481 | Gustavo             | Vélez Niño            |                 1 |    4111509.15
   109775 | Alejandro           | Ospina Villamizar     |                 1 |    4111459.13
   127800 | Óscar               | Ospina Duque          |                 1 |    4110420.48
   136307 | Manuel              | Polanía Ramírez       |                 1 |    4107898.68
   141051 | Jairo               | Ortiz Cardona         |                 1 |    4107717.94
    62255 | Jorge               | Díaz Cuéllar          |                 1 |    4106929.92
    87451 | Amparo Liliana      | Acevedo Niño          |                 1 |    4105881.08
    44269 | Hernando            | Herrera Vera          |                 1 |    4105787.28
    89609 | Juliana             | Muñoz Chamorro        |                 1 |    4105563.40
    57700 | Luz Adriana         | Díaz Cardona          |                 1 |    4104795.36
    40927 | Marleny Ruth        | Uribe García          |                 1 |    4104579.96
   133867 | Gloria              | Ortiz Gómez           |                 1 |    4102964.01
   104213 | Andrea              | Flórez Erazo          |                 1 |    4102844.48
   103587 | Javier Gilberto     | Muñoz Arango          |                 1 |    4102434.56
    88637 | Ricardo             | Pérez Torres          |                 1 |    4101920.83
    99051 | Sebastián           | Ortiz Rivera          |                 1 |    4101918.46
    94906 | Myriam              | Ríos Galvis           |                 1 |    4100963.40
    23902 | Fabio Efraín        | Guerrero Rojas        |                 1 |    4100702.32
    32985 | Inés                | Gutiérrez Cárdenas    |                 1 |    4100022.51
   122265 | Diana               | Ortiz Calderón        |                 1 |    4099368.27
    31890 | Álvaro              | Henao Carrillo        |                 1 |    4098994.27
   132830 | Jazmín              | Ortiz Restrepo        |                 1 |    4098935.56
      458 | Hugo                | Mejía Jaimes          |                 1 |    4093123.32
   111358 | Laura               | Osorio Zapata         |                 1 |    4092702.68
   140050 | Heriberto           | Rangel Mosquera       |                 1 |    4092532.40
   145401 | Antonio             | Correa Peña           |                 1 |    4091338.92
   147209 | Arturo Yeison       | García González       |                 1 |    4089915.76
   147813 | Iván                | Zuluaga Cabrera       |                 1 |    4088924.45
   121505 | Alejandro           | Rivera Jaimes         |                 1 |    4088712.03
    18467 | Héctor              | Niño Acevedo          |                 1 |    4088603.97
   141270 | Isabella Marcela    | Romero Rangel         |                 1 |    4088478.31
     8666 | Yuliana             | Castro Montoya        |                 1 |    4087805.44
    11488 | Edilma              | Parra Ibarra          |                 1 |    4087732.99
   112877 | Fanny               | Álvarez Moreno        |                 1 |    4087160.11
    44473 | Juan                | Acevedo Rodríguez     |                 1 |    4086139.50
    83157 | María Inés          | Agudelo Mora          |                 1 |    4085886.55
    10461 | Héctor              | Bonilla Romero        |                 1 |    4085534.54
   106606 | Felipe              | Martínez Castillo     |                 1 |    4085366.64
    36600 | Efraín              | Valencia Tovar        |                 1 |    4082731.75
    94950 | Andrea Alejandra    | Cáceres Zapata        |                 1 |    4082298.88
    71019 | Edilma Cecilia      | Cabrera Restrepo      |                 1 |    4080540.70
   121229 | Édgar               | Ruiz Herrera          |                 1 |    4080425.78
     1255 | Viviana             | Torres Erazo          |                 1 |    4079759.80
    95926 | Adriana             | Castillo Álvarez      |                 1 |    4079097.92
    93087 | Manuel              | Tovar Ibarra          |                 1 |    4078347.91
     4394 | Germán              | Bedoya Muñoz          |                 1 |    4078153.92
    35583 | Wilson              | Cabrera Cárdenas      |                 1 |    4076065.83
    40826 | Jorge               | Molina Polanía        |                 1 |    4074298.82
    23700 | Rocío               | Peña Losada           |                 2 |    4074221.46
    62313 | Mercedes Claudia    | Guerrero Rangel       |                 1 |    4073718.49
   131656 | Yolanda Liliana     | Barrera Narváez       |                 1 |    4073521.56
    35954 | Gloria              | García Ortega         |                 1 |    4072577.63
    99892 | Germán              | Vélez Cabrera         |                 1 |    4070955.18
    97994 | Rocío Gloria        | Muñoz Guerrero        |                 1 |    4070421.04
    36200 | Mercedes            | Zuluaga Villamizar    |                 1 |    4069860.43
    81094 | Claudia             | Villamizar Acevedo    |                 1 |    4068847.20
    57352 | Rubén               | Ruiz Bonilla          |                 1 |    4068261.18
   112480 | Liliana             | Perdomo Herrera       |                 1 |    4068067.53
   149114 | Gabriela            | Arias Ortiz           |                 1 |    4066650.96
   104903 | Guillermo           | Restrepo Zapata       |                 1 |    4066487.06
   137173 | Iván Orlando        | Barrera Burbano       |                 1 |    4066275.20
    93013 | Ángela              | Perdomo Barrera       |                 1 |    4066178.96
    41241 | Brayan              | Mosquera Díaz         |                 1 |    4064960.43
     5217 | Jaime               | Correa Rincón         |                 1 |    4064747.40
    30047 | Stella Mónica       | Henao Trujillo        |                 1 |    4063428.50
    81916 | Héctor              | Ortiz Ortiz           |                 1 |    4062984.89
   112696 | Brayan              | Romero Losada         |                 1 |    4062425.99
    26582 | Arturo Orlando      | Martínez Silva        |                 1 |    4062345.80
    74049 | Carolina Marcela    | Ríos Cardona          |                 1 |    4061956.61
   120477 | Hernando            | Villamizar Castillo   |                 1 |    4061340.61
    17907 | Ángela Alba         | Pérez Benavides       |                 1 |    4059661.54
    53480 | Javier              | Ibarra Ramírez        |                 1 |    4057754.30
   100482 | Ángela Alejandra    | Serrano Bastidas      |                 1 |    4055947.68
    23480 | Lucía               | Bonilla Barrera       |                 1 |    4053861.71
    16851 | Yeison              | Lasso Carrillo        |                 1 |    4053156.59
    27377 | Natalia             | Londoño Losada        |                 1 |    4050356.81
    51531 | Rubén               | López Villamizar      |                 1 |    4049967.38
    64169 | Carlos Jorge        | Jiménez Rojas         |                 1 |    4049221.50
    86692 | Mercedes            | Torres Carrillo       |                 1 |    4048443.28
    23207 | Daniel              | Ibarra Restrepo       |                 1 |    4047182.99
   101055 | Libardo             | Barrera Mosquera      |                 1 |    4047028.86
   105816 | Ancízar             | Ramírez Salazar       |                 1 |    4046884.29
    44601 | Myriam              | Pinzón Quintero       |                 1 |    4041275.28
   140575 | Libardo             | Trujillo Burbano      |                 1 |    4040587.96
   143889 | Nicolás             | Vera Flórez           |                 1 |    4040512.65
    90762 | Fernando            | Zapata Bastidas       |                 1 |    4038058.85
    23912 | Germán              | Erazo Rincón          |                 1 |    4036423.59
    41425 | Rocío               | Flórez Silva          |                 1 |    4035913.35
    39812 | Mario               | Restrepo Bastidas     |                 1 |    4035651.24
    30108 | Miguel              | Martínez Benavides    |                 1 |    4035346.77
   138840 | Cristian            | Cáceres Ramírez       |                 1 |    4035268.14
    13549 | Guillermo           | Arias Martínez        |                 1 |    4033805.38
    89399 | Manuela Blanca      | Erazo Pinzón          |                 1 |    4033019.20
    29421 | Orlando             | Medina Vélez          |                 1 |    4032181.41
    90928 | Ramiro              | Mejía Villamizar      |                 1 |    4031725.28
    95712 | Yuliana Gloria      | Narváez Londoño       |                 1 |    4030842.15
   106966 | Liliana Mercedes    | Restrepo Trujillo     |                 1 |    4030669.92
    78773 | Sofía               | Caicedo Osorio        |                 1 |    4030334.55
     5763 | Héctor              | Galvis Villamizar     |                 1 |    4029102.00
     6922 | Esteban             | Zuluaga Gutiérrez     |                 1 |    4028292.45
   148955 | Rodrigo             | Agudelo Ospina        |                 1 |    4026474.76
    68978 | Andrea              | Hernández Arango      |                 1 |    4025723.56
     8800 | Leidy               | Zapata Rodríguez      |                 1 |    4024583.01
    91949 | Inés                | Benavides Sandoval    |                 1 |    4024003.32
    60649 | Édgar Hugo          | Barrera Bedoya        |                 1 |    4023252.00
    64011 | Pedro               | Gutiérrez López       |                 1 |    4022964.26
   115995 | María               | Rincón Jiménez        |                 1 |    4021198.87
   115072 | Pedro               | Salazar Bonilla       |                 1 |    4017789.30
    90528 | Viviana             | Rojas Quintero        |                 1 |    4017613.56
    62298 | Amparo Liliana      | Galvis Chamorro       |                 1 |    4015277.64
     9073 | Marleny             | Jiménez Zuluaga       |                 1 |    4015197.67
   123397 | Jaime               | Muñoz Moreno          |                 1 |    4014912.96
   142691 | Julián              | Uribe Lozano          |                 1 |    4014456.66
    72087 | Ricardo             | Caicedo Rincón        |                 1 |    4013532.28
    52422 | Diego               | Mejía Ortiz           |                 1 |    4012071.00
    90656 | Yeison              | Ramos Sánchez         |                 1 |    4010718.92
   131681 | Paola               | Bonilla Pabón         |                 1 |    4010001.84
    34765 | Alejandro           | Cabrera Rojas         |                 1 |    4009602.87
     4013 | Germán Óscar        | Díaz Herrera          |                 1 |    4008231.34
     3370 | Sebastián           | López Mora            |                 1 |    4007534.24
     8514 | Pedro               | Pabón Herrera         |                 1 |    4007337.92
    59519 | Fernando Jaime      | Pabón Lasso           |                 1 |    4005973.50
    56152 | Esteban             | Martínez Pabón        |                 1 |    4005659.43
    62391 | Alejandro           | Silva Serrano         |                 1 |    4003582.32
   119682 | Andrés              | Erazo Carrillo        |                 1 |    4002966.86
   128779 | Rosa Erika          | Polanía Díaz          |                 2 |    4002901.29
    41785 | Nicolás Nelson      | Perdomo Sandoval      |                 1 |    4002579.40
   115706 | Carlos              | Medina Burbano        |                 1 |    4002510.80
    92807 | Héctor              | Bedoya Duque          |                 1 |    4002465.51
    85994 | Brayan Francisco    | Villamizar Caicedo    |                 1 |    4002453.53
   140374 | Óscar               | Zapata Moreno         |                 1 |    4001899.28
   123890 | Ana                 | Castillo Erazo        |                 1 |    4001878.91
    85684 | Mariana             | Henao Galvis          |                 1 |    4001608.32
   122676 | Iván                | Niño Arango           |                 1 |    4001027.27
    31765 | Laura Rosa          | Delgado Vargas        |                 1 |    3999456.01
    78117 | Germán              | Serrano Cáceres       |                 1 |    3995701.71
   108929 | Ramiro              | Caicedo Acevedo       |                 1 |    3994751.92
    49721 | Juliana             | Martínez Lozano       |                 1 |    3993751.04
   121081 | Mónica Sara         | Vera Parra            |                 1 |    3993322.98
    36833 | Carlos Aníbal       | Guerrero Restrepo     |                 1 |    3991975.12
    68654 | Lorena              | Duque Chamorro        |                 1 |    3991806.54
    13741 | Ana                 | Sandoval Mora         |                 1 |    3990197.17
   132893 | Blanca              | Bonilla Mosquera      |                 1 |    3989952.07
    70525 | Brayan Fernando     | Castro Burbano        |                 1 |    3988408.25
    91640 | Paola               | Galvis Ríos           |                 2 |    3986231.07
    96254 | Esperanza           | Ibarra Silva          |                 1 |    3985708.85
   133137 | Mariana             | Sandoval Erazo        |                 1 |    3983148.44
    17075 | Hernando Guillermo  | González Ruiz         |                 1 |    3982324.92
    93982 | Manuela             | Ibarra Moreno         |                 1 |    3981900.57
     6141 | Heriberto           | Giraldo Quintero      |                 1 |    3980543.60
    38752 | Mercedes            | Jaimes Galvis         |                 1 |    3979922.88
   103815 | Yeison              | Muñoz Duque           |                 1 |    3979444.96
    76770 | Alejandro Guillermo | Osorio Zapata         |                 1 |    3977641.08
   122653 | Hernando            | Lozano Cabrera        |                 1 |    3976838.72
    81806 | Carolina Patricia   | Cabrera Torres        |                 1 |    3976354.33
   124818 | Erika Gloria        | Londoño Bonilla       |                 1 |    3976178.21
    46339 | Lorena              | Muñoz Duarte          |                 1 |    3975344.38
    10725 | Francisco Gilberto  | Carrillo Ibarra       |                 1 |    3974928.93
    56852 | Hugo                | Calderón Narváez      |                 1 |    3972666.35
    88530 | Antonio             | Ortega García         |                 1 |    3972567.35
    17553 | Mauricio            | Ortega Sánchez        |                 1 |    3972201.12
    73915 | Erika               | Contreras Erazo       |                 1 |    3970331.61
    72869 | Patricia            | Gutiérrez Quintero    |                 1 |    3970290.24
    11364 | Jairo               | Valencia Ospina       |                 1 |    3969662.84
    56934 | Ramiro              | Álvarez Rodríguez     |                 1 |    3969270.80
    87823 | Rafael Jaime        | Arias Gómez           |                 1 |    3969174.18
    27457 | Ramiro              | Jiménez Cabrera       |                 1 |    3964903.92
    77041 | Sara                | Silva Salazar         |                 1 |    3964808.63
   105178 | Camilo              | Duque Narváez         |                 1 |    3961797.06
    45783 | Miguel              | Cárdenas Duarte       |                 1 |    3961782.88
   126181 | David               | Muñoz Torres          |                 1 |    3960985.90
     5349 | Alejandro           | Marín Pérez           |                 1 |    3960784.22
   128691 | Alejandra Beatriz   | Ortiz Ortega          |                 1 |    3960204.85
   118489 | Rodrigo             | Acevedo Ortega        |                 1 |    3957946.70
    31075 | Jaime               | Flórez Suárez         |                 1 |    3955380.21
   118894 | Felipe              | Quintero Serrano      |                 1 |    3954327.60
    57579 | Mario               | Castillo Moreno       |                 1 |    3951960.84
    95551 | Arturo              | Tovar Rincón          |                 1 |    3950592.06
    44235 | Isabella Nubia      | Burbano González      |                 1 |    3950335.65
   121673 | Libardo             | Serrano Mosquera      |                 1 |    3948233.19
   120240 | Rodrigo             | Marín Bermúdez        |                 1 |    3947168.54
   107454 | Andrea              | Sánchez Romero        |                 1 |    3946745.71
    11720 | Rocío               | Bastidas Ortiz        |                 1 |    3944048.38
   143149 | Gloria              | Delgado González      |                 1 |    3943797.18
    35861 | Camila              | Benavides Gómez       |                 1 |    3943438.94
    69647 | Cecilia Gladys      | Díaz López            |                 1 |    3943030.29
    16386 | Yeison              | Villamizar Zapata     |                 1 |    3942501.68
    57388 | Wilson Miguel       | Rincón Carrillo       |                 1 |    3940954.77
   145726 | Pedro               | Mosquera Flórez       |                 1 |    3939596.48
    76941 | Cristian            | Suárez González       |                 1 |    3939580.47
    24213 | Camilo Alejandro    | Correa Romero         |                 1 |    3939360.98
    97417 | Liliana             | Lozano Castro         |                 1 |    3938700.00
   116071 | Alejandro           | González González     |                 1 |    3938502.21
    38583 | Lucía               | López Perdomo         |                 1 |    3937693.35
   129224 | Luz                 | Ortega Molina         |                 1 |    3937242.00
     8265 | Rubén               | Acevedo Agudelo       |                 1 |    3936843.22
   115984 | Camila              | Restrepo Rangel       |                 1 |    3935841.55
   109056 | Gabriela Yuliana    | Pinzón Herrera        |                 1 |    3935149.68
   128917 | Rubén               | Ortiz Jaimes          |                 1 |    3934826.28
   100256 | Jaime Abelardo      | Molina López          |                 1 |    3932678.23
   103852 | Camila              | Salazar Quintero      |                 1 |    3932241.95
     9168 | Francisco           | Duarte Romero         |                 1 |    3931649.84
    62420 | Gloria Fanny        | Correa Ibarra         |                 1 |    3929722.28
    99189 | Guillermo Santiago  | Rodríguez Mora        |                 1 |    3929008.51
   123712 | Reinaldo            | Ibarra Jaimes         |                 1 |    3929000.90
   134143 | Héctor              | Uribe Quintero        |                 1 |    3928421.43
    71399 | Reinaldo Mateo      | Villamizar Osorio     |                 1 |    3928086.30
    66884 | Emilio              | Flórez Álvarez        |                 1 |    3927361.83
    50816 | Fernando            | López Mosquera        |                 1 |    3926695.56
     5510 | Rafael              | Betancur Serrano      |                 1 |    3926533.81
    90616 | Jorge               | Gómez Guerrero        |                 1 |    3925646.72
    26626 | Javier Emilio       | Barrera Martínez      |                 1 |    3925560.40
    98638 | Beatriz             | Lozano Ortiz          |                 1 |    3924797.02
   148039 | Paola               | Molina Chamorro       |                 1 |    3924697.92
     7475 | Cristian Emilio     | Correa Medina         |                 1 |    3924624.88
    62244 | Rubén               | Mejía García          |                 1 |    3924520.16
    49741 | Esteban             | Rincón Gutiérrez      |                 1 |    3924277.20
   142354 | María Mónica        | Henao Duarte          |                 1 |    3924104.84
    86827 | Julián              | Burbano Ríos          |                 1 |    3923753.79
    89686 | Manuel              | Zuluaga Londoño       |                 1 |    3923592.20
    33710 | Gustavo             | Jaimes Serrano        |                 1 |    3923051.27
    95528 | Pedro               | Díaz Castro           |                 1 |    3922592.25
   103549 | Pedro               | Bermúdez Castillo     |                 1 |    3921908.40
   135391 | Sebastián           | Londoño Benavides     |                 1 |    3921782.70
   121186 | Marleny             | Perdomo Tovar         |                 1 |    3919490.96
    41119 | Édgar               | Duque Narváez         |                 1 |    3918832.81
    78888 | Carolina            | Serrano Bastidas      |                 1 |    3918668.94
    99601 | Antonio             | Losada Bonilla        |                 1 |    3918293.34
    64850 | Gladys              | Caicedo Correa        |                 1 |    3918133.95
   125145 | Emilio              | Salazar Díaz          |                 1 |    3917807.42
   102547 | Ricardo             | Acevedo Castillo      |                 1 |    3917091.21
    68267 | Carmen Teresa       | Betancur Ríos         |                 1 |    3916536.14
    40175 | Natalia             | Pinzón Caicedo        |                 1 |    3913892.43
    75452 | Luis                | Salazar Galvis        |                 1 |    3912544.66
    78370 | Héctor              | Duarte Peña           |                 1 |    3912459.99
    52130 | José                | Ruiz Peña             |                 1 |    3911448.13
    75213 | Rodrigo Ancízar     | Molina Osorio         |                 1 |    3910450.05
   111553 | Mariana             | Bonilla Guerrero      |                 1 |    3910190.76
    67519 | Leidy               | Bermúdez Polanía      |                 1 |    3910165.65
    54773 | Felipe              | Betancur Moreno       |                 1 |    3908769.76
    53042 | Yuliana             | Cardona Ospina        |                 1 |    3908595.99
    83476 | Santiago Jaime      | Chamorro García       |                 1 |    3907708.40
    80196 | Adriana Yolanda     | Restrepo Vera         |                 1 |    3907581.54
    69345 | Luz Gabriela        | Bermúdez Agudelo      |                 1 |    3906090.54
    73833 | Fernando Rafael     | Martínez Betancur     |                 1 |    3905785.40
   134354 | Nicolás Nelson      | Pabón Cárdenas        |                 1 |    3905124.96
    32525 | Martha Edilma       | Gómez Gómez           |                 1 |    3904960.16
   118568 | Isabella            | Zuluaga García        |                 1 |    3904269.97
   131114 | Ricardo             | Álvarez Mosquera      |                 1 |    3904250.03
    32933 | Francisco           | Contreras Pabón       |                 1 |    3904210.08
    74904 | Ricardo             | Prada Ospina          |                 1 |    3903196.47
   100102 | Alba                | Prada Vélez           |                 1 |    3900530.07
    76480 | Juliana             | Bermúdez Villamizar   |                 1 |    3900339.31
   130622 | Ramiro              | Burbano Londoño       |                 1 |    3899562.99
   137837 | Aura                | Ruiz Vargas           |                 1 |    3898447.95
    60604 | Mariana             | Pabón Mejía           |                 1 |    3897755.75
    13314 | Gladys              | Herrera Jaimes        |                 1 |    3897035.96
     1269 | Santiago Mauricio   | Jaimes Correa         |                 1 |    3896128.08
    71936 | Mariana             | Suárez Arango         |                 1 |    3896075.36
   136640 | Iván                | Giraldo Contreras     |                 1 |    3895676.40
    82815 | Álvaro              | Vélez Medina          |                 1 |    3894110.53
   106018 | Gabriela Viviana    | Romero Pérez          |                 1 |    3893530.52
     3895 | Lorena              | Zapata García         |                 1 |    3893519.51
    43809 | Édgar               | Rodríguez Polanía     |                 1 |    3893165.76
    48995 | Alejandro           | Castillo Castro       |                 1 |    3890797.85
    55369 | Lucía               | Sandoval Álvarez      |                 1 |    3889874.10
   140786 | Teresa              | Castro Bonilla        |                 1 |    3888791.82
    39880 | Paola               | Torres Álvarez        |                 1 |    3888473.62
    57695 | Orlando             | Prada Chamorro        |                 1 |    3887978.37
    17927 | Ramiro              | Duque Trujillo        |                 1 |    3885237.54
    53112 | Claudia             | Lozano Torres         |                 1 |    3884834.68
    17040 | Dora                | Ortiz Rodríguez       |                 1 |    3882296.42
   137961 | Claudia             | Molina Osorio         |                 1 |    3881500.00
     1270 | Amparo              | Ramírez Herrera       |                 1 |    3881163.82
   126920 | Mario               | Bermúdez Peña         |                 1 |    3880972.34
    58770 | Nelson Sebastián    | Cárdenas Villamizar   |                 2 |    3880022.75
    47154 | Ana Camila          | Cabrera Trujillo      |                 1 |    3879700.11
    99214 | Alejandra           | Arango Rojas          |                 1 |    3879048.49
    87705 | Wilson              | Vera Ramírez          |                 1 |    3878592.68
     6583 | Laura               | Zuluaga Niño          |                 1 |    3877601.52
   124187 | María               | Muñoz Osorio          |                 1 |    3877491.19
    50048 | Rubén Mateo         | Jiménez Vera          |                 1 |    3876789.72
    85381 | Óscar               | Ríos Cárdenas         |                 1 |    3876745.18
   126494 | Pedro               | Narváez Zapata        |                 1 |    3876332.00
    10053 | Brayan              | Castro Mora           |                 1 |    3876234.60
    94190 | Yuliana             | Losada Mosquera       |                 1 |    3875926.88
    39609 | Teresa Stella       | Zuluaga Contreras     |                 1 |    3874323.40
   135340 | Camila              | Perdomo González      |                 1 |    3873241.71
    90713 | Gloria              | Correa Sánchez        |                 1 |    3873012.66
    78227 | Edilma              | Cabrera Serrano       |                 1 |    3872264.56
   126464 | Myriam              | Uribe Galvis          |                 1 |    3871883.33
    97595 | Libardo             | Arias Lasso           |                 1 |    3870178.88
    56787 | Olga Rubén          | Gómez Silva           |                 1 |    3869451.75
    98555 | Carlos              | Rivera Ospina         |                 1 |    3868838.16
    34451 | Viviana Teresa      | Cardona Mora          |                 1 |    3868196.32
    94347 | Yuliana             | Martínez Osorio       |                 1 |    3866168.30
   125975 | Daniel              | Peña Ortiz            |                 1 |    3865492.02
   108276 | Marleny             | Burbano Duarte        |                 1 |    3865474.25
    13137 | Samuel              | Cabrera Polanía       |                 1 |    3865342.02
   110334 | Valentina           | Barrera Rincón        |                 1 |    3864500.51
     4039 | Beatriz             | Flórez Muñoz          |                 1 |    3859366.70
    77632 | Daniel              | García Restrepo       |                 1 |    3856974.80
    33520 | Yeison Andrés       | Bonilla Losada        |                 1 |    3856433.33
   103184 | Sebastián           | Castillo Marín        |                 1 |    3856392.54
    83173 | Edilma Teresa       | González Mora         |                 1 |    3855973.92
   112408 | Miguel Libardo      | Sandoval Mora         |                 1 |    3855679.00
    22022 | Diego               | Villamizar Zapata     |                 2 |    3855427.92
    61351 | Heriberto           | Bedoya Hernández      |                 1 |    3855022.35
    82216 | Hugo                | Montoya Ruiz          |                 1 |    3852770.52
   148219 | Blanca              | Montoya Suárez        |                 1 |    3850786.50
   107542 | Wilson Mateo        | Burbano Molina        |                 1 |    3849875.81
    89286 | Rafael Ricardo      | Betancur Mejía        |                 1 |    3848712.82
    11575 | Andrés Antonio      | Calderón Delgado      |                 1 |    3848330.82
    76435 | Andrés              | Restrepo Contreras    |                 1 |    3846826.58
     5666 | Mateo               | Niño Silva            |                 1 |    3846196.47
   112819 | Gladys              | Cabrera Herrera       |                 1 |    3846122.50
    11465 | Rodrigo             | Narváez Osorio        |                 1 |    3845324.31
     3244 | Yesenia             | Chamorro Niño         |                 1 |    3844768.20
    20708 | Olga                | Sandoval Narváez      |                 1 |    3842099.63
    76406 | Arturo              | Polanía Pinzón        |                 1 |    3841611.47
     2294 | Wilmer Fabio        | Carrillo Torres       |                 1 |    3841579.92
    47900 | Jorge Yeison        | Díaz Cárdenas         |                 1 |    3839515.25
    75622 | Lorena              | Castillo Carrillo     |                 1 |    3839360.58
    40105 | Édgar               | Rojas Pinzón          |                 1 |    3839207.65
   149640 | Sandra              | Torres Niño           |                 1 |    3838569.36
    67900 | Lucía Luisa         | Rojas Correa          |                 1 |    3837211.74
    75420 | Nelson              | Londoño Carrillo      |                 1 |    3837098.41
   114834 | Hugo                | Arias Mosquera        |                 1 |    3836783.64
   126322 | Luz                 | García Medina         |                 1 |    3836277.90
    32173 | Ancízar Samuel      | Osorio Ospina         |                 1 |    3836085.00
   116966 | Germán Arturo       | Calderón Narváez      |                 1 |    3834822.30
    61025 | Ramiro Luis         | Pabón Agudelo         |                 1 |    3832656.91
    93019 | Santiago Yeison     | Calderón Castro       |                 1 |    3831449.52
    63373 | Felipe              | Valencia Bonilla      |                 1 |    3829846.32
    98625 | Laura               | Rincón Moreno         |                 1 |    3828890.05
   127188 | Rodrigo Wilmer      | Bastidas Acevedo      |                 1 |    3827826.09
    39979 | Rosa                | Carrillo Vélez        |                 1 |    3826999.50
    93459 | Gloria              | Ruiz García           |                 1 |    3823941.20
    61714 | Javier              | Bastidas Zuluaga      |                 1 |    3823370.13
    75961 | Hugo Arturo         | Giraldo Parra         |                 1 |    3821585.62
    17008 | Daniela             | Mosquera Arias        |                 1 |    3821039.53
    24344 | Yolanda             | Vera Gutiérrez        |                 1 |    3820936.95
    63014 | Alejandro           | Duque Montoya         |                 1 |    3820936.69
    73749 | Liliana             | Vélez Perdomo         |                 1 |    3820453.60
   113986 | Nicolás             | Guerrero Prada        |                 1 |    3820033.26
    40075 | David               | Cáceres Silva         |                 1 |    3819680.28
    45757 | Inés                | Rodríguez Suárez      |                 1 |    3819072.10
    27749 | Hernando Aníbal     | Vera Moreno           |                 1 |    3819068.19
   141410 | Blanca              | Polanía Tovar         |                 1 |    3818622.50
   100495 | Esteban             | Ríos Vargas           |                 1 |    3818446.52
   141511 | Rocío               | Ortiz Hernández       |                 1 |    3818075.31
   124490 | Yeison              | Jiménez Rincón        |                 1 |    3817765.44
   143582 | Germán Álvaro       | Ortega Contreras      |                 1 |    3817068.43
    84028 | Cecilia             | Ríos Bermúdez         |                 1 |    3817043.93
    77934 | Yeison              | Chamorro Polanía      |                 1 |    3816756.00
   136585 | Nubia               | Sánchez Zapata        |                 1 |    3816261.27
    55326 | Aníbal              | Arias Rivera          |                 1 |    3815437.80
   149135 | Rocío               | Bermúdez Ospina       |                 1 |    3815288.64
    94121 | Yeison Javier       | Losada Ospina         |                 1 |    3814933.44
   128331 | Mauricio Javier     | Mora Torres           |                 1 |    3814780.39
   104037 | Álvaro Juan         | Pabón Cabrera         |                 2 |    3813631.22
    39378 | Óscar               | Ramírez Flórez        |                 1 |    3812005.80
   132703 | Sebastián           | Uribe Henao           |                 1 |    3811621.60
   149512 | Cecilia María       | Ríos Ríos             |                 1 |    3810875.38
     3583 | Rafael              | Villamizar Rivera     |                 1 |    3809842.96
   141494 | Yeison              | Suárez Ríos           |                 1 |    3809785.35
   102628 | Orlando             | Ríos Ramos            |                 1 |    3809652.26
    58218 | Miguel              | Vélez Cabrera         |                 1 |    3809258.69
    63681 | Andrea              | Cuéllar Niño          |                 1 |    3808662.67
   112555 | Aníbal Julián       | Agudelo Zapata        |                 1 |    3807377.38
   129325 | Heriberto           | Ortiz Romero          |                 1 |    3807329.49
   110056 | Martha Ricardo      | Peña Pérez            |                 1 |    3807258.85
    75682 | Orlando             | García Arias          |                 1 |    3807034.39
   119416 | Mauricio            | Burbano Bermúdez      |                 1 |    3806166.98
    11250 | Yuliana Laura       | Sánchez Chamorro      |                 1 |    3805888.10
    94334 | Juliana             | Benavides Ramos       |                 1 |    3804751.50
    85091 | Gabriela Fanny      | Quintero Sánchez      |                 1 |    3804606.72
    41311 | Hernando Miguel     | Jiménez Restrepo      |                 1 |    3803764.58
   147577 | Alba Blanca         | Lozano Carrillo       |                 1 |    3803492.00
    36734 | Natalia             | Vélez Trujillo        |                 1 |    3803094.65
    24520 | Manuela             | Bastidas Londoño      |                 1 |    3802471.48
    74948 | Abelardo            | Arango Restrepo       |                 1 |    3802105.30
   141029 | Jazmín              | Mora Cárdenas         |                 1 |    3801354.35
    56060 | Cecilia             | Medina Rojas          |                 1 |    3800812.50
   126109 | Martha Mariana      | Mosquera Valencia     |                 1 |    3799950.04
    92131 | Ancízar             | Rivera Rivera         |                 1 |    3799869.48
    54967 | Esteban             | Suárez Suárez         |                 1 |    3799530.00
   123171 | Mónica Nubia        | Gómez Uribe           |                 1 |    3798591.39
     7798 | Nubia               | Ortiz Herrera         |                 1 |    3797905.49
    72237 | Laura Camila        | Vargas Restrepo       |                 1 |    3797820.06
   141610 | Marcela             | Medina García         |                 1 |    3795882.60
    63909 | Nubia               | Silva Salazar         |                 1 |    3794761.52
    71746 | Germán              | Moreno Bermúdez       |                 1 |    3794123.42
    85026 | Ruth                | Silva Montoya         |                 1 |    3793971.43
    63822 | Mauricio            | Medina Rodríguez      |                 1 |    3793532.40
   109723 | Pedro               | Londoño Rivera        |                 1 |    3793470.78
    33637 | Manuela Luisa       | Bermúdez Jaimes       |                 1 |    3792526.05
    88531 | Francisco Javier    | Duarte Londoño        |                 1 |    3792452.30
   116006 | Arturo Efraín       | Losada Chamorro       |                 1 |    3792176.40
    54043 | Ricardo             | Sánchez Barrera       |                 1 |    3789802.08
   111359 | Wilmer Andrés       | Lozano Losada         |                 1 |    3788857.20
   103130 | Mauricio Héctor     | Muñoz Rivera          |                 1 |    3787830.48
    40503 | Daniel Ricardo      | Ortiz Peña            |                 1 |    3785642.97
    56646 | Martha              | Peña Ramos            |                 1 |    3785094.74
    87817 | Juan                | Ramos Duarte          |                 1 |    3784622.94
   107663 | Hugo                | Cuéllar Hernández     |                 1 |    3784546.56
   138379 | Isabella Nicolás    | Pabón Martínez        |                 1 |    3784180.80
    63186 | Heriberto Emilio    | Villamizar Tovar      |                 1 |    3781981.77
   131873 | Rodrigo             | Agudelo Vera          |                 1 |    3778448.30
    80838 | Hernando Yeison     | Cárdenas Valencia     |                 1 |    3777868.13
   134722 | Andrea              | Jaimes Moreno         |                 1 |    3777410.76
   127156 | Liliana             | Restrepo Niño         |                 1 |    3777272.04
    13277 | Gloria              | Mora Rangel           |                 1 |    3776879.75
   108386 | Antonio Ramiro      | Vélez Torres          |                 1 |    3775493.52
    23739 | Gabriela            | Pérez Ruiz            |                 1 |    3774879.06
    50782 | Carolina            | Díaz Parra            |                 1 |    3773804.25
   132371 | Manuel              | Agudelo Rojas         |                 1 |    3772542.01
   140554 | Santiago            | Burbano Rojas         |                 1 |    3771480.79
   111171 | Fabio Mateo         | Mosquera Bonilla      |                 1 |    3770925.00
   111216 | Libardo             | Salazar Cardona       |                 1 |    3770868.77
   147082 | Daniel Óscar        | Mora Calderón         |                 1 |    3770363.03
   142142 | Myriam              | Lasso Ibarra          |                 1 |    3769180.35
    55151 | Yesenia             | Muñoz Rodríguez       |                 1 |    3768724.33
   142248 | Alberto             | Tovar Rincón          |                 1 |    3766580.93
    18452 | Ricardo             | Carrillo Losada       |                 1 |    3766332.02
   146140 | Emilio              | Villamizar Peña       |                 1 |    3765277.61
    56681 | Orlando             | Sánchez Osorio        |                 1 |    3764565.72
   106367 | Adriana             | Arias Duarte          |                 1 |    3763760.28
    21937 | Diana Laura         | Restrepo Prada        |                 1 |    3761151.52
   129619 | Sandra Luisa        | Ibarra Torres         |                 1 |    3760536.54
    57869 | Patricia            | Bermúdez Arias        |                 1 |    3760059.68
    99002 | Rafael              | Delgado Montoya       |                 1 |    3759478.80
   134558 | Mariana             | Perdomo Parra         |                 2 |    3758448.68
   139217 | Esperanza Patricia  | Ríos Guerrero         |                 1 |    3758420.80
    24565 | Hernando            | Correa Barrera        |                 1 |    3757993.20
   101935 | Edilma              | Zuluaga Quintero      |                 1 |    3757548.25
   112273 | Javier              | Niño Muñoz            |                 1 |    3757231.55
   119802 | Juan Hugo           | Narváez López         |                 1 |    3756914.58
    66205 | Manuel Ancízar      | Molina Pinzón         |                 1 |    3756445.06
    60778 | Héctor              | García Niño           |                 1 |    3753263.20
    28741 | Manuel              | Sánchez Muñoz         |                 1 |    3753143.10
    72079 | Daniel              | Quintero Rojas        |                 1 |    3752984.07
    89401 | Lorena Esperanza    | Zuluaga Duque         |                 1 |    3752192.98
   121880 | Rubén               | Jiménez Bonilla       |                 1 |    3751948.03
   110651 | Mauricio            | Osorio Correa         |                 1 |    3751242.48
    81259 | Nicolás Emilio      | Bermúdez López        |                 1 |    3750774.68
   100844 | Gladys              | Medina Castro         |                 1 |    3747723.92
   143551 | Edilma              | Osorio Erazo          |                 1 |    3746923.35
   114442 | Rafael              | Ospina Castillo       |                 1 |    3746191.46
   148841 | María Inés          | Narváez Bonilla       |                 1 |    3745956.80
   140241 | Libardo             | Burbano Niño          |                 1 |    3745482.98
   106114 | Alba Blanca         | Rangel Serrano        |                 1 |    3745287.71
   104583 | Adriana             | Zuluaga Flórez        |                 1 |    3744651.48
    98885 | Juan Ramiro         | Gómez Polanía         |                 1 |    3743727.60
    14066 | Martha Daniel       | Lasso Mosquera        |                 1 |    3743723.04
    49764 | Camila Carmen       | Montoya Herrera       |                 1 |    3743200.64
   120788 | Germán              | Castro Pinzón         |                 1 |    3741177.33
    40340 | Jairo               | Hernández Mejía       |                 1 |    3740091.20
   139465 | Óscar Mario         | Sánchez Prada         |                 1 |    3740070.52
    44021 | Yuliana             | Trujillo Martínez     |                 1 |    3739954.27
    88765 | Antonio Ricardo     | Calderón Montoya      |                 1 |    3739950.36
   139360 | Óscar David         | Cáceres Polanía       |                 1 |    3737402.29
    84573 | Lucía               | Narváez Ramírez       |                 1 |    3737311.98
    22965 | Sandra              | Montoya Medina        |                 1 |    3737153.06
   118677 | Rosa Elsa           | Bedoya Hernández      |                 1 |    3736278.36
   111183 | Ramiro              | Sandoval Suárez       |                 1 |    3734110.27
     8610 | Adriana             | Herrera Arango        |                 1 |    3733488.56
    61850 | Nicolás             | Martínez Ruiz         |                 1 |    3732989.28
   104805 | Abelardo            | Medina Ramírez        |                 1 |    3732715.17
    74887 | Antonio             | Zuluaga Marín         |                 1 |    3732539.36
    55048 | Juan                | Zuluaga Tovar         |                 1 |    3730229.69
   115437 | Miguel Yeison       | Romero Ruiz           |                 1 |    3729654.94
    81260 | Miguel              | Calderón Arias        |                 1 |    3728656.60
    90079 | Rosa                | Giraldo Salazar       |                 1 |    3727579.57
     1022 | Blanca María        | Zapata Duarte         |                 1 |    3727288.82
    90906 | Guillermo Manuel    | Marín Cabrera         |                 2 |    3726433.25
   131809 | Alejandro           | Salazar Correa        |                 1 |    3723941.50
   145724 | Camilo              | Zuluaga Arango        |                 1 |    3720956.88
    34426 | Jazmín              | Bastidas Caicedo      |                 1 |    3720904.45
    78534 | Wilson Fabio        | Gutiérrez Arias       |                 1 |    3720762.82
    84243 | Stella              | Bedoya Guerrero       |                 1 |    3720335.27
    32485 | Ana                 | Sánchez Ramírez       |                 1 |    3718133.07
    52169 | Mauricio            | González Calderón     |                 1 |    3717145.75
   118050 | Diana María         | Cardona Pinzón        |                 1 |    3714794.45
   115423 | Juliana             | Betancur Castro       |                 1 |    3714377.36
    48985 | Patricia Myriam     | Castillo Valencia     |                 1 |    3713370.00
      372 | Mariana             | Prada Ríos            |                 1 |    3713259.18
    76137 | Samuel              | Mosquera Molina       |                 1 |    3712327.04
    13211 | Gilberto Diego      | Muñoz Muñoz           |                 1 |    3711561.84
    17357 | Sebastián Gilberto  | Erazo Parra           |                 1 |    3710504.84
    22285 | Fanny Claudia       | Pérez Jaimes          |                 1 |    3709852.29
   148013 | Álvaro              | Torres Uribe          |                 1 |    3709239.80
    93700 | Juan                | Barrera López         |                 1 |    3709079.28
    90284 | Arturo              | Prada Silva           |                 1 |    3708681.00
    43891 | Claudia             | Giraldo Torres        |                 1 |    3708576.30
    95187 | Abelardo Juan       | Benavides Cáceres     |                 1 |    3708407.20
   144435 | Óscar Carlos        | Ortiz Bedoya          |                 1 |    3707743.08
   140106 | Ángela              | Londoño Martínez      |                 1 |    3706614.90
    33899 | Guillermo           | Gómez Parra           |                 1 |    3704671.36
   108379 | Ruth Claudia        | Cáceres Galvis        |                 1 |    3701365.70
   121570 | Gustavo             | Niño Lasso            |                 1 |    3700913.54
    92769 | Julián              | Lasso Mosquera        |                 1 |    3700659.60
    38620 | Edilma              | López Agudelo         |                 1 |    3697929.91
    49590 | Samuel              | Pinzón Vera           |                 1 |    3697650.60
    40494 | Edilma Camila       | Serrano Vargas        |                 1 |    3696845.49
   137557 | Inés Camila         | Ramos Duarte          |                 1 |    3695685.00
   146359 | Francisco           | Narváez Rincón        |                 1 |    3695187.06
    24389 | José Manuel         | Jaimes Salazar        |                 1 |    3695096.82
   111450 | Diego               | Villamizar Tovar      |                 1 |    3694763.04
    12369 | Sara                | Guerrero Vera         |                 1 |    3692596.00
    89482 | Esteban             | Álvarez Acevedo       |                 1 |    3692311.34
    66742 | Iván                | Burbano Hernández     |                 1 |    3689563.77
   145088 | Jorge               | Salazar Restrepo      |                 1 |    3689243.50
     4961 | Daniela             | Herrera Londoño       |                 1 |    3687592.50
    92368 | Ruth                | Ríos Restrepo         |                 1 |    3686461.00
    18648 | Jazmín              | Burbano Ortega        |                 1 |    3685088.22
    52343 | Nubia               | Ortiz Cabrera         |                 1 |    3684109.26
    74469 | Iván                | Mosquera Flórez       |                 1 |    3683357.40
    70217 | Nelson              | Galvis Zapata         |                 1 |    3683174.46
     2546 | María               | Silva Montoya         |                 1 |    3682752.61
    43853 | Jairo Arturo        | Caicedo Molina        |                 1 |    3681881.01
   117425 | Ana                 | Zuluaga Jaimes        |                 1 |    3681691.50
    46143 | Héctor Manuel       | Gutiérrez Contreras   |                 1 |    3681384.20
    58045 | Orlando             | Tovar Erazo           |                 1 |    3680498.98
    76106 | Sofía               | Rincón Ortiz          |                 1 |    3680009.15
   101799 | Mercedes            | Gutiérrez González    |                 1 |    3679338.59
   138644 | Fernando            | Hernández Mosquera    |                 1 |    3679224.96
   123028 | Arturo              | Castro Ortega         |                 1 |    3678643.26
   149383 | Wilson              | Caicedo Montoya       |                 1 |    3678597.72
   146651 | Jazmín              | Marín Galvis          |                 1 |    3676257.84
    61489 | Stella              | Rojas Ríos            |                 1 |    3675122.28
    87037 | Efraín Alejandro    | Castro Delgado        |                 1 |    3674415.02
    15012 | Rodrigo Santiago    | Suárez Chamorro       |                 1 |    3674044.08
    92048 | Myriam              | Parra Uribe           |                 1 |    3671641.54
   115674 | Yesenia Erika       | Carrillo Correa       |                 1 |    3671437.28
    12554 | Rosa                | Trujillo Contreras    |                 1 |    3670620.61
    90130 | Óscar               | Cuéllar Bedoya        |                 1 |    3670274.16
    61326 | Yeison Emilio       | Romero Torres         |                 1 |    3668866.45
   110939 | Fanny Lucía         | Lasso Giraldo         |                 1 |    3667427.00
   115675 | Juliana             | Cabrera Burbano       |                 1 |    3667241.76
    99198 | Sofía               | Restrepo Henao        |                 1 |    3664460.28
    30502 | Mauricio Cristian   | Ramírez López         |                 1 |    3664436.76
   129124 | Mauricio            | Londoño Rangel        |                 1 |    3663961.28
    50347 | Gladys              | Pinzón Villamizar     |                 2 |    3663296.73
   121744 | Yuliana             | Jiménez Quintero      |                 1 |    3663079.42
    73797 | Carmen Marcela      | Calderón Rincón       |                 1 |    3662998.57
   143483 | Patricia            | Gutiérrez Romero      |                 1 |    3662928.09
   107835 | Paola               | Ibarra Zuluaga        |                 1 |    3662824.21
   114313 | Édgar               | Perdomo Galvis        |                 1 |    3662545.84
    45681 | Pedro Mario         | Correa Sandoval       |                 1 |    3662067.41
   139195 | Héctor Andrés       | Ospina Torres         |                 1 |    3661781.25
    23012 | Arturo              | Henao Hernández       |                 1 |    3661374.86
    31309 | Guillermo           | Cardona Betancur      |                 1 |    3661120.67
   144680 | Diego               | Barrera Perdomo       |                 1 |    3660758.25
   124878 | Mateo Fernando      | Ortega Polanía        |                 1 |    3659484.15
    88158 | Felipe              | Carrillo Gutiérrez    |                 1 |    3658302.46
   133860 | Jaime David         | Molina González       |                 1 |    3658048.78
    49690 | Jaime               | Contreras Correa      |                 1 |    3657721.44
    84251 | Brayan              | Erazo Zuluaga         |                 1 |    3657613.44
     2385 | Beatriz             | Bastidas Quintero     |                 1 |    3656756.34
    79224 | Wilmer              | Silva Ramírez         |                 1 |    3653992.60
    77368 | Beatriz             | Narváez López         |                 1 |    3653514.45
    39860 | Marleny             | Perdomo Gómez         |                 1 |    3652441.02
    41372 | Orlando             | Osorio Ospina         |                 1 |    3652126.78
    78804 | Juan                | Castillo López        |                 1 |    3652034.66
    13278 | Nicolás             | Romero Bermúdez       |                 1 |    3651925.32
   141806 | Ramiro              | Marín Losada          |                 1 |    3651912.80
    43432 | Reinaldo Alberto    | Losada Trujillo       |                 2 |    3651847.01
    74523 | Carolina            | Benavides García      |                 1 |    3650844.76
    99165 | Juliana Jazmín      | Ramírez Rojas         |                 1 |    3650731.48
    83802 | Rocío               | Duarte Pabón          |                 1 |    3649290.59
    39029 | Ricardo Cristian    | Perdomo Rodríguez     |                 1 |    3647818.36
    35619 | Mercedes            | Lasso Rincón          |                 1 |    3647428.00
   135629 | Rafael              | Acevedo Duarte        |                 1 |    3646049.79
   110798 | Nicolás             | Serrano Cardona       |                 1 |    3645136.25
     8232 | Esteban             | Pérez Muñoz           |                 1 |    3644454.39
   104493 | Heriberto           | Chamorro Henao        |                 1 |    3644366.25
    94687 | Ricardo             | Giraldo Arias         |                 1 |    3643777.29
   126024 | Jorge               | Zapata Duarte         |                 1 |    3643240.98
    81674 | Laura               | Romero Jaimes         |                 1 |    3642867.88
   109093 | Viviana Gustavo     | Montoya Duarte        |                 1 |    3642858.50
   104994 | Diana               | Ramos Jiménez         |                 1 |    3642779.94
    82161 | Hugo                | Medina Niño           |                 1 |    3642690.88
    76185 | Diana               | Correa Acevedo        |                 1 |    3642629.76
    18371 | Ana                 | Castro Guerrero       |                 1 |    3639558.44
   112527 | Gloria              | Serrano Ramos         |                 1 |    3638635.84
     1070 | Mario               | Bastidas Calderón     |                 1 |    3638285.91
    96059 | Esperanza Luisa     | Zuluaga Duarte        |                 1 |    3638211.23
   130598 | Arturo              | Cardona Moreno        |                 1 |    3637899.87
     6985 | Germán              | Osorio Serrano        |                 1 |    3637370.97
    81181 | Alberto             | Ortiz Ramírez         |                 1 |    3636963.70
   113267 | Olga Luisa          | Cuéllar Acevedo       |                 1 |    3635870.04
    54540 | David Abelardo      | Molina Duarte         |                 1 |    3635272.20
    46618 | Alba                | Lozano Medina         |                 1 |    3634966.43
    46825 | Efraín              | Tovar Ospina          |                 1 |    3632442.65
    82231 | Rodrigo             | Marín Giraldo         |                 1 |    3632110.24
    72976 | Isabella Ángela     | Peña Rincón           |                 1 |    3632096.65
    58908 | Ruth                | Calderón Benavides    |                 1 |    3631750.55
     5021 | Yuliana             | Díaz Bonilla          |                 1 |    3630558.33
    50332 | Cecilia             | Torres Jiménez        |                 1 |    3630328.67
    51418 | Daniel Camilo       | Vélez Osorio          |                 1 |    3629534.15
    61739 | Andrés              | Uribe Ibarra          |                 1 |    3628729.25
     7919 | Gladys              | Suárez Rojas          |                 1 |    3627980.14
    36270 | Esteban             | Lasso Vargas          |                 1 |    3627838.00
   121018 | Camilo              | Trujillo Narváez      |                 1 |    3627623.68
    38337 | Alejandro           | Gómez Sánchez         |                 1 |    3626745.80
    79093 | Valentina           | Agudelo Marín         |                 1 |    3625774.94
   110543 | Emilio              | Sandoval Gómez        |                 1 |    3625773.36
    39694 | Nelson Gilberto     | Bastidas Delgado      |                 1 |    3625277.99
   106980 | Arturo              | Salazar Ramos         |                 1 |    3624572.25
    13516 | Javier Esteban      | Guerrero Vargas       |                 1 |    3624459.54
    38627 | Fernando            | Londoño Vélez         |                 1 |    3623111.91
    58841 | Natalia             | Rivera Rojas          |                 1 |    3622693.20
    90864 | Isabella            | Vargas Castillo       |                 1 |    3621999.07
    77919 | Ángela              | Trujillo Jaimes       |                 1 |    3621120.00
    17621 | Jorge               | Delgado Carrillo      |                 1 |    3621095.50
    47844 | Natalia             | Bedoya Flórez         |                 1 |    3620794.13
    30088 | Wilson              | Duque Hernández       |                 1 |    3620444.94
    26233 | Gustavo             | Jaimes Valencia       |                 1 |    3620349.54
   103805 | Liliana             | Pérez Erazo           |                 1 |    3620314.60
    91515 | Brayan              | Quintero Lozano       |                 1 |    3620190.01
    22029 | Gilberto Arturo     | Peña Benavides        |                 1 |    3619644.89
   121092 | Guillermo           | Gómez Silva           |                 1 |    3619391.73
    24662 | Edilma Alejandra    | Vera Vera             |                 1 |    3617683.27
   149602 | Nubia               | Narváez Flórez        |                 1 |    3616731.68
    78524 | Wilmer              | Delgado Álvarez       |                 1 |    3616513.10
   149169 | Inés                | Narváez Valencia      |                 1 |    3615915.27
    71315 | Ruth                | Barrera Jaimes        |                 1 |    3613970.93
    41735 | Lorena              | Zapata Vargas         |                 1 |    3613829.96
    52467 | Gabriela            | Quintero Henao        |                 1 |    3612795.57
    51704 | Gustavo             | Álvarez Ríos          |                 1 |    3611687.86
   112008 | Jazmín              | Ortega Narváez        |                 1 |    3611342.72
    49794 | Abelardo            | Parra Herrera         |                 1 |    3611067.26
     3686 | Daniela             | Mosquera Narváez      |                 1 |    3610742.40
   124431 | Cristian            | Delgado Moreno        |                 1 |    3610690.88
    26154 | Fabio Efraín        | Carrillo Cáceres      |                 1 |    3609089.93
    63262 | Amparo              | Carrillo Calderón     |                 1 |    3608955.00
    33613 | Juan                | Bonilla Cabrera       |                 1 |    3608395.13
    57548 | Manuel              | Lasso Rojas           |                 1 |    3607612.50
   110172 | Inés                | Galvis Hernández      |                 1 |    3606911.52
    96419 | Libardo Cristian    | Ortiz Carrillo        |                 1 |    3606738.17
    15755 | Santiago            | Arango Rangel         |                 1 |    3604069.71
    87468 | Óscar Mateo         | Rincón Caicedo        |                 1 |    3603789.71
    39104 | Lucía               | Ramos Ruiz            |                 1 |    3603683.60
    38716 | Reinaldo            | García Burbano        |                 1 |    3603657.90
      943 | Juliana             | Rincón Silva          |                 1 |    3603510.32
    10757 | Alejandro Samuel    | Correa Pérez          |                 1 |    3603108.70
     4332 | Hernando            | Erazo Restrepo        |                 1 |    3602871.86
   126835 | Mariana             | Díaz Lasso            |                 1 |    3600415.28
    94052 | Nubia Aura          | Pinzón Ramos          |                 1 |    3599532.78
    26908 | Sofía               | Vargas Herrera        |                 1 |    3599391.96
     2114 | Gloria              | Medina Hernández      |                 1 |    3599137.24
   147353 | Ana                 | Cárdenas Betancur     |                 1 |    3595731.15
    53490 | Mónica Isabella     | Contreras Marín       |                 1 |    3595616.79
    74278 | Francisco           | Mejía Caicedo         |                 1 |    3594739.50
   100713 | Esperanza           | Duque Delgado         |                 1 |    3594077.86
    40859 | Andrés Libardo      | Cáceres Bedoya        |                 1 |    3592458.04
   113291 | Luz                 | Ríos Zapata           |                 1 |    3591770.75
    90649 | Andrés Jaime        | Osorio Losada         |                 1 |    3591166.53
    37731 | Stella              | Erazo Rodríguez       |                 1 |    3591000.30
    78881 | Guillermo Santiago  | Delgado Bonilla       |                 1 |    3590861.12
    41279 | Sara Mercedes       | Restrepo Castillo     |                 1 |    3590499.41
    28138 | Andrea Nubia        | Losada Silva          |                 1 |    3590314.14
    81767 | Olga                | Silva Peña            |                 1 |    3589914.86
    57279 | Antonio             | Trujillo Jaimes       |                 1 |    3588241.20
    97155 | Jaime               | Díaz Giraldo          |                 1 |    3587778.15
    33622 | Yesenia             | Prada Rivera          |                 1 |    3587412.99
    12393 | David               | Agudelo Delgado       |                 1 |    3586468.95
   110818 | Andrés              | Ospina Henao          |                 1 |    3586227.75
   119594 | María               | García Pinzón         |                 1 |    3586068.33
    99338 | Nubia               | Arango Sánchez        |                 1 |    3585869.29
   131519 | Martha              | Osorio Arias          |                 1 |    3584953.38
    96266 | Brayan              | Acevedo Ortiz         |                 1 |    3584685.15
    43712 | Javier              | Medina Agudelo        |                 1 |    3582678.80
   108619 | Inés                | Marín Barrera         |                 1 |    3582553.16
    11057 | Arturo              | Ortega Prada          |                 1 |    3582144.39
    47578 | Hernando            | Londoño Restrepo      |                 1 |    3582120.02
    47048 | Felipe              | Rojas Flórez          |                 1 |    3581693.28
     6846 | Gilberto            | Agudelo Ospina        |                 1 |    3580515.85
    78803 | Andrés              | Montoya Osorio        |                 1 |    3580069.23
    19501 | Manuela Patricia    | Cárdenas Calderón     |                 1 |    3580024.68
    32001 | Teresa              | Rangel Peña           |                 1 |    3579285.27
    24916 | Nubia               | Arango Sánchez        |                 1 |    3579254.50
   131298 | Libardo             | Díaz Caicedo          |                 1 |    3577545.40
    15306 | Juan                | Caicedo Trujillo      |                 1 |    3577519.44
   145415 | Carlos              | Jiménez Arias         |                 1 |    3577403.76
     7469 | Álvaro Jorge        | Rojas Sandoval        |                 1 |    3577388.17
    26141 | Jazmín              | Molina Niño           |                 1 |    3577181.64
     6000 | Luis Nelson         | Cardona Pabón         |                 1 |    3576767.04
   123369 | Daniel Cristian     | Parra Galvis          |                 1 |    3576683.24
    15356 | Yuliana Ana         | Suárez Osorio         |                 1 |    3576346.02
   101165 | Miguel David        | Prada López           |                 1 |    3575937.20
   149801 | Camilo Hugo         | Díaz Delgado          |                 1 |    3575868.70
    85464 | Juliana             | Ospina Herrera        |                 1 |    3575316.32
     5990 | Diana               | Castro Burbano        |                 1 |    3575162.76
   120787 | Liliana             | Álvarez Delgado       |                 1 |    3574517.82
    80492 | José                | Rivera Álvarez        |                 1 |    3574412.04
    95071 | Beatriz             | Cárdenas Erazo        |                 1 |    3574408.31
    66444 | Juan                | Vélez Ortiz           |                 1 |    3574008.89
    57727 | Martha Marcela      | González Villamizar   |                 1 |    3573904.80
    29147 | Javier              | Duque Montoya         |                 1 |    3573542.07
    62018 | Mateo Jairo         | Tovar González        |                 1 |    3573207.72
    85398 | Hugo                | Jaimes Quintero       |                 1 |    3573105.20
    64183 | Yeison              | Marín Suárez          |                 1 |    3572450.11
     4299 | Nicolás             | Castillo Lasso        |                 1 |    3571309.83
    63485 | Sebastián Felipe    | González Pinzón       |                 1 |    3570078.82
    83711 | Gilberto            | Ortiz Ramírez         |                 1 |    3569084.64
    48301 | Santiago Germán     | Flórez García         |                 1 |    3568688.73
    22040 | Antonio Cristian    | Sandoval Valencia     |                 1 |    3568443.90
    49387 | Diego               | Molina Restrepo       |                 1 |    3568037.55
   118031 | Rafael              | Castillo Jiménez      |                 1 |    3566535.36
   114395 | Patricia Blanca     | Duarte Muñoz          |                 1 |    3566501.50
    32997 | Daniel              | Ramírez Losada        |                 1 |    3565803.44
   118150 | Marcela             | Silva Lozano          |                 1 |    3565438.44
    18110 | Martha              | Vélez Ruiz            |                 1 |    3564538.23
    92998 | Nicolás             | Cárdenas Bonilla      |                 1 |    3564460.56
    51879 | Rodrigo Juan        | Rojas Sánchez         |                 1 |    3563946.61
    32403 | Claudia             | Henao Valencia        |                 1 |    3562727.98
    36875 | Wilmer              | Ospina Díaz           |                 1 |    3562222.50
   145663 | Fanny               | Cáceres Vera          |                 1 |    3562089.65
     8249 | Lorena Inés         | Villamizar Muñoz      |                 1 |    3561800.72
    59778 | Brayan              | Pinzón Tovar          |                 1 |    3561436.48
    31869 | Yuliana             | Marín Castillo        |                 1 |    3561014.30
    41576 | Rafael Héctor       | Londoño Caicedo       |                 1 |    3560986.90
    49351 | Leidy               | Lasso Cáceres         |                 1 |    3560314.34
    52146 | Wilson              | Arango Erazo          |                 1 |    3560007.97
    31423 | Alejandra           | Peña Rincón           |                 1 |    3559552.72
    72387 | Ancízar Wilson      | Ríos Bedoya           |                 1 |    3558916.14
    71286 | Samuel Mario        | Bastidas Arango       |                 1 |    3557808.04
     1960 | Alberto             | Ortiz Ramírez         |                 1 |    3557139.92
    18931 | Julián              | Delgado Romero        |                 1 |    3557127.48
    16932 | Sebastián Ancízar   | Cuéllar Arias         |                 1 |    3556463.29
    91052 | Viviana             | Restrepo Ríos         |                 1 |    3555993.96
   113578 | Alberto             | Hernández Zuluaga     |                 1 |    3555214.90
    28514 | Leidy               | Torres Romero         |                 1 |    3554961.40
   127209 | Edilma Carolina     | González Prada        |                 1 |    3554888.07
    28494 | Ramiro              | Jiménez Pabón         |                 1 |    3553922.91
    22004 | Ana                 | Ramírez Restrepo      |                 1 |    3552165.76
   101427 | Efraín              | Jaimes Losada         |                 1 |    3549537.32
    17625 | Valentina           | Zuluaga Guerrero      |                 1 |    3549492.88
    64662 | Laura               | Barrera Pinzón        |                 1 |    3548571.54
     9103 | Jaime               | Medina Lasso          |                 1 |    3548446.80
   112327 | Paola               | Castro Gómez          |                 1 |    3547638.98
   102860 | Sebastián           | Herrera Galvis        |                 1 |    3547123.68
    19853 | Esperanza           | Zapata Rodríguez      |                 1 |    3546848.80
   122442 | Laura               | Villamizar Pabón      |                 1 |    3546415.08
    64919 | Amparo Jazmín       | Montoya Marín         |                 1 |    3546231.76
    65088 | Yolanda             | Arango Chamorro       |                 1 |    3545633.91
    77419 | Héctor              | Medina Pabón          |                 1 |    3544985.42
    47092 | Diego               | Bonilla Restrepo      |                 1 |    3543894.14
    54643 | Alberto             | Moreno Torres         |                 1 |    3542583.90
   144063 | Lorena              | Serrano Ramírez       |                 1 |    3541924.60
   142066 | Felipe              | González Arias        |                 1 |    3541235.00
    36083 | Rocío               | Prada Caicedo         |                 1 |    3541220.19
    79179 | Álvaro Carlos       | Montoya Ruiz          |                 1 |    3541111.98
    65042 | Aníbal              | Castillo Romero       |                 1 |    3540756.86
    77608 | Carlos              | Duarte Cuéllar        |                 1 |    3540440.42
    41305 | Alejandro           | Pinzón Medina         |                 1 |    3540404.55
    87746 | Álvaro              | Bonilla Erazo         |                 1 |    3540404.35
    31592 | Camila              | Hernández Valencia    |                 1 |    3540287.52
   139893 | Reinaldo            | Cárdenas Serrano      |                 1 |    3540211.42
   145173 | Lorena              | Torres Perdomo        |                 1 |    3540080.87
   116432 | Andrea Amparo       | Martínez Carrillo     |                 1 |    3538857.94
   111257 | Mariana Viviana     | Bonilla Uribe         |                 1 |    3538826.40
    63144 | Yeison Hernando     | Acevedo Restrepo      |                 1 |    3538698.61
     9154 | Sara                | Rangel Uribe          |                 1 |    3538311.96
   114277 | Wilmer              | Prada Carrillo        |                 1 |    3538110.55
    33709 | Juan                | Valencia Contreras    |                 1 |    3536596.44
    69728 | Aura                | López Henao           |                 1 |    3536566.06
    14537 | Elsa                | Bastidas Ramos        |                 1 |    3535808.05
    87160 | Amparo Yesenia      | Correa Mejía          |                 1 |    3535717.60
   146141 | Mariana             | Polanía Flórez        |                 1 |    3535143.37
    68446 | Ruth                | González Quintero     |                 1 |    3534977.88
   105574 | Mateo               | Flórez Henao          |                 1 |    3534918.01
    47681 | Sandra Isabella     | Zuluaga Cabrera       |                 1 |    3532819.24
    23577 | Ramiro              | Ortiz Bastidas        |                 1 |    3532779.68
    64205 | Sandra              | Bastidas Erazo        |                 1 |    3530756.34
    80383 | Diego               | Losada Gómez          |                 1 |    3530667.22
    74627 | Édgar               | Vélez Galvis          |                 1 |    3530514.72
    48441 | Francisco           | Valencia Acevedo      |                 1 |    3530422.08
   128645 | Carolina            | Londoño Ramírez       |                 2 |    3529461.58
   115340 | Diana               | Villamizar Perdomo    |                 1 |    3527343.57
    36256 | Ruth                | Ruiz Vargas           |                 1 |    3526713.80
   147695 | Paola               | Pabón Molina          |                 1 |    3525542.32
    58842 | Inés                | Díaz Perdomo          |                 1 |    3524999.37
    39370 | Heriberto           | Molina Uribe          |                 1 |    3524623.76
    16016 | Santiago            | Duarte Duarte         |                 1 |    3523761.92
   142576 | Isabella            | Prada Cuéllar         |                 1 |    3523569.00
    94560 | Rafael Mauricio     | Gómez Pabón           |                 1 |    3522422.77
   127333 | Édgar               | Valencia Cuéllar      |                 1 |    3520100.95
    27833 | Daniela             | Agudelo Lozano        |                 1 |    3519898.38
   125141 | Héctor Emilio       | Sandoval Londoño      |                 1 |    3519620.30
    65561 | Marcela Laura       | Lozano Villamizar     |                 1 |    3517308.90
   113697 | Esteban             | Martínez Rivera       |                 1 |    3515991.83
    30912 | Erika               | Flórez Gómez          |                 1 |    3515712.58
    71127 | Felipe              | Álvarez Flórez        |                 1 |    3514663.62
   102792 | Isabella            | Barrera Rangel        |                 1 |    3514577.85
   119905 | Nubia               | Duarte Osorio         |                 1 |    3514155.05
    39838 | Rubén               | Quintero Mosquera     |                 1 |    3514134.40
   103222 | Marcela             | Gutiérrez Benavides   |                 1 |    3513600.84
    80531 | Samuel Pedro        | Niño Ruiz             |                 1 |    3513365.84
    88648 | Manuel Francisco    | Marín Pabón           |                 1 |    3512894.84
    71430 | Natalia Leidy       | Cabrera Zapata        |                 1 |    3511939.73
   144095 | Sandra              | Rojas Restrepo        |                 1 |    3511719.49
    91412 | Yuliana             | Polanía Cardona       |                 1 |    3511626.93
    25322 | Natalia             | Rincón Zuluaga        |                 1 |    3510653.30
   119819 | Manuela             | Correa Ospina         |                 1 |    3509614.86
    23245 | Marleny             | Osorio Villamizar     |                 1 |    3509417.45
    25048 | Miguel Héctor       | Uribe Henao           |                 1 |    3509187.60
    47459 | Valentina           | González Contreras    |                 1 |    3507697.57
    58182 | Antonio             | González Gómez        |                 1 |    3507480.90
     4244 | Santiago            | Montoya Moreno        |                 1 |    3506802.25
    37193 | Juliana             | Bermúdez Jaimes       |                 1 |    3506474.40
    14612 | Rocío               | Arango Cuéllar        |                 1 |    3506024.47
   108940 | María               | Cabrera Peña          |                 1 |    3505226.94
    57013 | Jaime               | Jaimes Jaimes         |                 1 |    3504853.32
   103318 | Elsa                | Pabón Romero          |                 1 |    3504541.19
    66825 | Hernando Óscar      | Trujillo Galvis       |                 1 |    3503516.40
    13901 | Stella              | Zuluaga Villamizar    |                 1 |    3503507.52
    63462 | Diana               | Betancur Tovar        |                 1 |    3503411.24
    46095 | Wilmer              | Vélez Giraldo         |                 1 |    3503172.97
    36965 | Beatriz             | Barrera Perdomo       |                 1 |    3502148.69
    47118 | Arturo              | Bonilla Gómez         |                 1 |    3501225.88
    52057 | Rocío Alejandra     | Contreras Uribe       |                 1 |    3500918.88
    73112 | Amparo              | Ríos Pérez            |                 1 |    3500237.70
   135540 | Diana               | Delgado Galvis        |                 1 |    3499768.25
   102704 | Cristian            | Londoño Barrera       |                 1 |    3499561.12
    33848 | Sebastián           | Cuéllar Agudelo       |                 1 |    3499381.86
   112301 | Abelardo            | Flórez Guerrero       |                 1 |    3499183.30
    63875 | Adriana             | Rangel Arango         |                 1 |    3498957.47
    41076 | Patricia            | Pabón Lasso           |                 1 |    3498597.89
   115418 | Hugo Francisco      | Álvarez Díaz          |                 1 |    3497712.54
    89159 | Carmen              | Díaz Rojas            |                 1 |    3496993.50
   110588 | Amparo              | Muñoz Muñoz           |                 1 |    3496718.35
   135201 | Viviana             | Carrillo Flórez       |                 1 |    3496081.89
     7600 | Germán              | Parra Cárdenas        |                 1 |    3495587.55
    18230 | Ruth                | Sandoval Cardona      |                 1 |    3493751.05
    69279 | Erika               | Rangel Zuluaga        |                 1 |    3493739.37
   128099 | Myriam              | Ruiz Carrillo         |                 1 |    3493551.51
    37552 | Edilma Beatriz      | Bastidas Pabón        |                 1 |    3492268.32
     7884 | Gladys Isabella     | Duque Erazo           |                 1 |    3491464.36
    22670 | Yuliana             | Vargas Vera           |                 1 |    3491035.20
    57101 | Natalia Julián      | Tovar Polanía         |                 1 |    3489756.80
    14488 | Adriana             | Narváez Pérez         |                 1 |    3489605.18
    36525 | Gloria              | Polanía Hernández     |                 1 |    3489305.64
   108747 | Sofía               | Restrepo Peña         |                 1 |    3488491.44
    61615 | Manuel Julián       | Quintero Díaz         |                 1 |    3488444.40
    40953 | Natalia Claudia     | Romero Silva          |                 1 |    3488397.72
   143406 | Óscar               | Giraldo Quintero      |                 1 |    3488061.42
    31913 | Myriam              | Duque Ramírez         |                 1 |    3488059.34
   118976 | Mariana             | Mora Niño             |                 1 |    3488049.54
    90541 | Cristian Óscar      | Delgado Parra         |                 1 |    3487668.45
   140881 | Fanny               | Valencia Cardona      |                 1 |    3487200.62
   131133 | Rafael Santiago     | Pinzón Gutiérrez      |                 1 |    3486473.43
    76453 | Hugo                | López Losada          |                 1 |    3485809.71
    88008 | Mercedes            | Agudelo Vera          |                 1 |    3485803.50
    35693 | Ruth                | Álvarez Restrepo      |                 1 |    3484791.53
   132273 | Aníbal              | Torres Duarte         |                 1 |    3482991.05
    58578 | Abelardo            | Pinzón Jiménez        |                 1 |    3481899.96
   104222 | Blanca              | Salazar Bonilla       |                 1 |    3480487.40
    91644 | Isabella            | Peña Galvis           |                 1 |    3480011.08
    64034 | Felipe              | Arias Arias           |                 1 |    3479954.31
    44526 | Guillermo           | Hernández Parra       |                 1 |    3479376.09
    84423 | Carmen              | Delgado Mejía         |                 1 |    3479291.40
    79034 | Hernando            | Jaimes Barrera        |                 1 |    3478940.16
    60688 | Nelson Heriberto    | Montoya Rojas         |                 1 |    3478077.78
     5281 | Leidy Alejandra     | Gómez Arango          |                 1 |    3477649.84
   115037 | Javier Jorge        | Gómez Moreno          |                 1 |    3477633.58
   103949 | Rodrigo             | Herrera Castillo      |                 1 |    3477216.82
    85380 | Andrés              | Montoya Osorio        |                 1 |    3476975.87
    76898 | Leidy Luz           | Arango Calderón       |                 1 |    3476710.55
     2311 | Luisa               | Serrano Moreno        |                 1 |    3476127.96
   110022 | Libardo Miguel      | Acevedo Agudelo       |                 1 |    3475620.80
    26739 | Álvaro              | Medina Molina         |                 1 |    3475035.10
    82480 | Liliana             | Quintero Peña         |                 1 |    3474737.92
    12729 | Sara                | Quintero López        |                 1 |    3474661.01
   113418 | Claudia             | Caicedo Medina        |                 1 |    3474451.40
     2241 | Carmen              | Medina Caicedo        |                 1 |    3474276.60
    67113 | Alba                | Duarte Ramos          |                 1 |    3473773.12
   111321 | Wilson              | Castro Álvarez        |                 1 |    3471818.02
    61679 | Mauricio            | Molina Sánchez        |                 1 |    3471167.40
   128337 | Yesenia             | Díaz Ramos            |                 1 |    3470740.30
    30963 | Cristian            | Medina Duque          |                 1 |    3470126.87
   132101 | Héctor              | Narváez Pabón         |                 1 |    3469814.23
   102802 | Natalia             | Osorio Cardona        |                 1 |    3468680.42
    19871 | Alberto             | Burbano Martínez      |                 1 |    3468094.77
    54724 | Andrea              | Betancur Ortega       |                 1 |    3467529.00
    66661 | Brayan              | Ortega Guerrero       |                 1 |    3466223.94
    15455 | Inés                | Rincón Valencia       |                 1 |    3465760.56
   133492 | Mercedes            | Molina Correa         |                 1 |    3464500.92
    28795 | Leidy               | Acevedo Bonilla       |                 1 |    3464239.80
   132954 | Fabio               | Mora Londoño          |                 1 |    3463861.01
   136996 | Mariana             | Carrillo Pabón        |                 1 |    3461966.44
    77308 | Felipe              | Marín Rangel          |                 1 |    3461042.80
    69357 | Antonio Fabio       | Hernández Vargas      |                 1 |    3460418.37
   122540 | Ricardo Rubén       | Marín Losada          |                 1 |    3460397.16
    70253 | Marleny Adriana     | Molina Castro         |                 1 |    3459418.32
    72930 | Yeison              | Castillo Ortega       |                 1 |    3457433.75
    16422 | Mario               | Arango Montoya        |                 1 |    3457066.68
    91163 | Alba                | Restrepo Bedoya       |                 1 |    3456845.80
    91781 | Amparo              | Serrano Cárdenas      |                 1 |    3455804.54
    62977 | Luisa               | Rodríguez Agudelo     |                 1 |    3453968.84
    32528 | Diana               | Guerrero Pinzón       |                 1 |    3453760.66
   137960 | Carolina            | Burbano Ruiz          |                 1 |    3453516.62
    62328 | Lucía               | Cabrera Montoya       |                 1 |    3452953.91
    71576 | Antonio Daniel      | Pinzón Agudelo        |                 1 |    3452638.64
   121538 | Efraín              | Restrepo Zuluaga      |                 1 |    3452003.97
    35111 | Marcela Camila      | Villamizar Moreno     |                 1 |    3451678.89
    73640 | Gustavo             | Ruiz Guerrero         |                 1 |    3451404.84
    27750 | Julián Pedro        | Flórez Molina         |                 1 |    3450749.28
   139325 | Mónica              | Polanía Bermúdez      |                 1 |    3450370.98
   144234 | Antonio             | Galvis Galvis         |                 1 |    3450031.24
    30509 | Mario               | Betancur Betancur     |                 1 |    3449376.05
    66457 | Reinaldo Samuel     | Torres Losada         |                 1 |    3448288.40
    67313 | Marcela Aura        | Rivera Rodríguez      |                 1 |    3447979.65
    45562 | Natalia Viviana     | Serrano Jaimes        |                 1 |    3447961.56
   127981 | David               | Mejía García          |                 1 |    3447428.32
    63329 | Ricardo             | Calderón Moreno       |                 1 |    3445133.34
    52498 | María               | Cáceres Montoya       |                 1 |    3445079.42
   107333 | José Yeison         | Rincón Vargas         |                 1 |    3443750.43
     3972 | Jairo               | Mejía Perdomo         |                 1 |    3443700.78
    35763 | Aníbal              | Molina Hernández      |                 1 |    3443452.62
    76529 | Erika               | Ramos Bermúdez        |                 1 |    3442950.53
    50591 | Guillermo           | Mosquera Cardona      |                 1 |    3442143.47
    63623 | Gilberto            | Ibarra Mosquera       |                 1 |    3441530.40
    62808 | Adriana             | Burbano Castillo      |                 1 |    3441275.11
    75861 | Sofía Luisa         | Benavides Galvis      |                 1 |    3440903.04
   110292 | Mariana             | Marín Hernández       |                 1 |    3440803.42
   130453 | Rafael              | Torres Rangel         |                 1 |    3440315.49
   121898 | Reinaldo Francisco  | González Ortega       |                 1 |    3439508.04
     8108 | Libardo Rubén       | Betancur Sánchez      |                 1 |    3439275.36
    63111 | María               | Ramos Marín           |                 1 |    3439034.64
   124719 | Gabriela            | Mora Arango           |                 1 |    3438207.51
    18557 | Elsa Beatriz        | Correa Zuluaga        |                 1 |    3437951.33
    66561 | Diana               | Rojas Benavides       |                 1 |    3437857.15
    88884 | Inés                | Medina Silva          |                 1 |    3437579.17
    29797 | Inés                | Pinzón Cuéllar        |                 1 |    3436855.00
    74610 | Jazmín              | Pabón Delgado         |                 1 |    3436680.56
    43441 | Edilma              | Zuluaga Montoya       |                 1 |    3435860.90
   144419 | Édgar               | Bonilla Arias         |                 1 |    3435859.96
    78782 | Mario               | Chamorro Tovar        |                 1 |    3435353.15
   102783 | Wilson              | Benavides Pinzón      |                 1 |    3433294.79
    44277 | Óscar               | Correa Castillo       |                 1 |    3433178.64
    35718 | Fernando            | Vargas Losada         |                 1 |    3432690.62
    46272 | Ángela              | Parra Ramírez         |                 1 |    3432112.50
    25687 | Abelardo            | Vélez Bedoya          |                 1 |    3431478.60
   116918 | Édgar Miguel        | Uribe Bermúdez        |                 1 |    3431214.71
    52001 | Daniel              | Bastidas Suárez       |                 1 |    3430977.84
    74553 | Jorge               | Parra Díaz            |                 1 |    3430946.74
    44761 | Fanny               | Castillo Benavides    |                 1 |    3430841.92
    42263 | Sofía               | Duarte Benavides      |                 1 |    3430449.08
    61836 | Adriana             | Cabrera Tovar         |                 1 |    3430096.89
    35885 | Nelson              | Silva Lozano          |                 1 |    3428352.08
    92797 | Jorge Iván          | Contreras Caicedo     |                 1 |    3428319.15
    67939 | Carolina            | Osorio Lasso          |                 1 |    3426987.69
   107493 | Orlando             | Villamizar Lozano     |                 1 |    3425875.59
    25604 | Manuel              | Tovar Rincón          |                 1 |    3425863.49
   116334 | Manuel              | Rincón Chamorro       |                 1 |    3425722.60
    61125 | Andrés              | Sandoval Valencia     |                 1 |    3425491.25
    93391 | Jorge Orlando       | Ramírez Arias         |                 1 |    3425207.24
    92787 | Inés                | Lasso Delgado         |                 1 |    3424640.60
   143459 | Jaime               | González Barrera      |                 1 |    3422477.40
   134700 | Marleny Valentina   | Marín Guerrero        |                 1 |    3421142.61
    21665 | Blanca Daniela      | Cáceres Arango        |                 1 |    3419486.00
    70061 | Carmen              | Villamizar Torres     |                 1 |    3417967.80
    88414 | Manuel              | Restrepo Zuluaga      |                 1 |    3417622.99
    66540 | Mario Hernando      | Benavides Restrepo    |                 1 |    3416956.81
   120365 | Álvaro              | Duque Jaimes          |                 1 |    3416321.26
   109907 | Juan Abelardo       | Lasso Sandoval        |                 1 |    3416304.54
    49448 | Daniel Wilmer       | Bastidas Restrepo     |                 1 |    3414585.73
    91589 | Ancízar Esteban     | Zuluaga Zuluaga       |                 1 |    3414490.08
    57299 | Leidy Yolanda       | Bedoya Niño           |                 1 |    3414012.60
   123150 | Efraín              | Cabrera Uribe         |                 1 |    3413193.97
    37353 | Daniela             | Rincón Álvarez        |                 1 |    3410962.75
    70616 | Gloria Patricia     | Niño Giraldo          |                 1 |    3410949.96
   134719 | Fernando            | Arango Ortega         |                 1 |    3410258.01
   148843 | Luis                | Cabrera Zapata        |                 1 |    3409294.30
   111227 | Carlos              | Trujillo Rodríguez    |                 1 |    3409289.89
    91802 | Sofía Edilma        | Betancur Vélez        |                 1 |    3409265.70
    87682 | Gladys              | Pérez Castillo        |                 1 |    3407915.42
    74298 | Daniel              | Rincón Londoño        |                 1 |    3407836.41
   119979 | Liliana             | Barrera Burbano       |                 1 |    3407704.41
   132391 | Diana               | Ríos Sandoval         |                 1 |    3407202.93
    55153 | Mario               | Rodríguez Uribe       |                 1 |    3405796.26
    99085 | Daniela Sara        | Medina Díaz           |                 1 |    3405761.06
    65117 | Camilo Rafael       | Montoya Martínez      |                 1 |    3405557.48
    19204 | Pedro               | Torres Mejía          |                 1 |    3405153.05
   138283 | Hernando            | Rodríguez Peña        |                 1 |    3404166.08
   131769 | Juan                | Arango Bastidas       |                 1 |    3403215.41
   102112 | Wilson              | Osorio Uribe          |                 1 |    3402832.28
    18033 | Gustavo             | Mejía Romero          |                 1 |    3402181.25
    54669 | Alejandro           | Uribe Arango          |                 1 |    3402034.93
     4522 | Hernando Édgar      | Cárdenas Londoño      |                 1 |    3401032.80
   111076 | Ruth                | Barrera Restrepo      |                 1 |    3399090.80
   126887 | Abelardo            | Cáceres Bermúdez      |                 1 |    3399090.28
   114109 | Gustavo             | Montoya Mora          |                 1 |    3398888.13
   118972 | Lucía               | Zuluaga Rincón        |                 1 |    3398120.00
     6797 | Ramiro              | López Díaz            |                 1 |    3397708.86
    15623 | Camilo              | Montoya Ruiz          |                 1 |    3396958.70
    25542 | Álvaro Miguel       | Pabón Narváez         |                 1 |    3394422.49
    52908 | Arturo              | Lozano Galvis         |                 1 |    3392576.07
    64698 | Nelson              | Lasso Londoño         |                 1 |    3391739.44
    90550 | Yolanda Martha      | Romero Calderón       |                 1 |    3391670.63
    34363 | Gustavo             | Muñoz Cabrera         |                 1 |    3391553.34
    28840 | Wilson              | Sandoval Betancur     |                 1 |    3390166.57
    19425 | Marcela             | Parra Giraldo         |                 1 |    3390159.04
    63405 | Felipe Antonio      | Rangel Bonilla        |                 1 |    3389961.29
   112837 | Fanny               | Marín Torres          |                 1 |    3388366.44
     5836 | Guillermo           | Castillo Arias        |                 1 |    3386827.60
   119232 | Valentina Camila    | Delgado Moreno        |                 1 |    3384929.73
    25706 | Hugo                | Cáceres Serrano       |                 1 |    3384379.71
    51122 | Daniela             | Muñoz Moreno          |                 1 |    3384094.80
    58187 | Mercedes            | Hernández Díaz        |                 1 |    3383862.29
    75988 | Luisa               | Valencia Serrano      |                 1 |    3383766.06
   104044 | Natalia             | Pabón Moreno          |                 1 |    3383453.50
    34722 | Carmen              | Ríos Quintero         |                 1 |    3383391.00
   108192 | Liliana             | García Martínez       |                 2 |    3381756.04
   107921 | Isabella Myriam     | Arias Londoño         |                 1 |    3378910.86
    18634 | Fanny               | Cuéllar Bastidas      |                 1 |    3377558.88
    96752 | Inés                | Rangel Zapata         |                 1 |    3377021.10
    26212 | Lorena              | Benavides Rincón      |                 1 |    3376083.34
   135358 | Ángela              | Jiménez Torres        |                 1 |    3376033.59
   110963 | Alberto             | Rodríguez Muñoz       |                 1 |    3374937.27
   103704 | Juliana             | Ramírez Bastidas      |                 1 |    3372660.15
    62746 | Mauricio            | Valencia Chamorro     |                 1 |    3372448.80
   142632 | Emilio              | Vélez Rodríguez       |                 1 |    3371737.10
    29199 | Hugo                | Lozano Herrera        |                 1 |    3371328.50
    23978 | Daniel              | Pinzón Vélez          |                 1 |    3371247.31
    22038 | Álvaro              | Rojas Londoño         |                 1 |    3369316.75
    42126 | Ángela Carolina     | Vélez Duque           |                 1 |    3368027.52
    13710 | Abelardo            | Ospina Rodríguez      |                 1 |    3367957.21
    65430 | Sebastián           | Romero Betancur       |                 1 |    3367946.40
    71245 | Édgar               | Molina Martínez       |                 1 |    3367155.00
   104580 | Mónica María        | Cáceres Flórez        |                 1 |    3366039.20
   110553 | Leidy               | Prada Agudelo         |                 1 |    3365528.15
   116921 | Manuela             | Restrepo Chamorro     |                 1 |    3364831.43
    34739 | Gloria              | Molina Flórez         |                 1 |    3363762.79
   105065 | Julián              | Jaimes Prada          |                 1 |    3362487.01
     4018 | Dora                | Castro Valencia       |                 1 |    3361744.30
    33145 | Rubén               | Rojas Castillo        |                 1 |    3361475.55
    99043 | Arturo Abelardo     | Castro Rodríguez      |                 1 |    3361344.45
   138382 | Gustavo             | Acevedo Parra         |                 1 |    3360693.78
    15338 | Rafael              | Polanía Ramírez       |                 1 |    3359575.02
    15428 | Daniel              | Galvis Acevedo        |                 1 |    3359469.01
    26552 | David               | Rangel Gómez          |                 1 |    3359413.38
    85257 | Arturo              | Vélez Medina          |                 1 |    3359342.79
    64595 | Daniel              | Betancur Polanía      |                 1 |    3356603.08
   103676 | Reinaldo Germán     | Barrera Ortega        |                 1 |    3355969.77
    73165 | Teresa Lucía        | Lozano Salazar        |                 1 |    3355794.16
   148403 | Yeison              | Delgado Moreno        |                 1 |    3355466.52
   141538 | Francisco Javier    | Pinzón Cáceres        |                 1 |    3355251.04
   125159 | Camilo              | Bonilla Perdomo       |                 1 |    3354391.63
   121576 | Sofía               | Galvis Narváez        |                 1 |    3353344.71
   141522 | Jairo               | Mosquera Rojas        |                 1 |    3352860.55
   142452 | Myriam              | Duque Torres          |                 1 |    3352140.00
    53832 | Lorena Laura        | Jaimes Lasso          |                 1 |    3351509.28
   135079 | Javier              | Lasso Jiménez         |                 1 |    3351465.33
    71359 | Erika               | Restrepo Rojas        |                 1 |    3350854.52
    42444 | Amparo              | Cuéllar Chamorro      |                 1 |    3350621.77
   103320 | Lorena Elsa         | Álvarez Osorio        |                 1 |    3350616.44
     4910 | Lorena              | Ortega Gómez          |                 1 |    3349785.32
    14440 | Arturo              | Bermúdez Arango       |                 1 |    3349617.33
    40382 | Antonio Yeison      | Contreras Pinzón      |                 1 |    3349159.12
   130057 | Guillermo           | Martínez Carrillo     |                 1 |    3348704.70
   149599 | Martha              | Peña Peña             |                 1 |    3346917.37
   126614 | Ramiro              | Ortiz Ortega          |                 1 |    3346581.42
    44411 | Carmen              | Pabón Arias           |                 1 |    3346155.00
   145149 | Ricardo Ancízar     | Losada Medina         |                 1 |    3345928.17
   128043 | Sandra              | Acevedo Zuluaga       |                 1 |    3345312.60
    73542 | Brayan              | Castro Londoño        |                 1 |    3344590.80
    98105 | Sara Claudia        | Delgado Lozano        |                 1 |    3344452.26
   114015 | Daniela             | Ramírez Jaimes        |                 1 |    3344302.06
    87210 | Ruth                | Díaz Herrera          |                 1 |    3343412.05
   122841 | Fernando            | Bastidas Prada        |                 1 |    3340169.85
    22332 | Santiago            | Cárdenas Galvis       |                 1 |    3340120.75
     3302 | Leidy Mónica        | Ortiz Narváez         |                 1 |    3338307.00
   131394 | Jaime               | Duque Ríos            |                 1 |    3337134.17
    16136 | Jairo               | Ramírez Bermúdez      |                 1 |    3336863.69
    63148 | Edilma Inés         | Ruiz Cárdenas         |                 1 |    3336785.68
    15277 | Diego               | Carrillo Ruiz         |                 1 |    3335476.44
    78088 | Santiago Arturo     | Bermúdez Cuéllar      |                 1 |    3334281.39
    93886 | Manuela             | Jaimes Silva          |                 1 |    3334164.96
    59510 | Iván Andrés         | Martínez Mejía        |                 1 |    3334129.06
   104785 | Inés                | Ortiz Correa          |                 1 |    3332043.89
   145528 | Alberto             | García Serrano        |                 1 |    3331509.53
   136929 | Leidy               | Delgado Barrera       |                 1 |    3331443.85
   110109 | Gladys Teresa       | Ortiz Ospina          |                 1 |    3330128.58
    51333 | Hugo                | Quintero Bastidas     |                 1 |    3329466.58
   109927 | Emilio              | Gutiérrez Bonilla     |                 1 |    3326949.52
   130729 | Libardo David       | Salazar Mejía         |                 1 |    3326697.36
   111888 | Stella Nubia        | Serrano Duque         |                 1 |    3326083.04
    55214 | Nicolás             | Narváez Ortiz         |                 1 |    3325360.00
   100768 | Manuel              | Álvarez Muñoz         |                 1 |    3325195.57
    26878 | Yesenia             | Betancur Cardona      |                 1 |    3324535.42
   115919 | Alberto Yeison      | González Barrera      |                 1 |    3324315.24
   131349 | Alba Manuela        | Cuéllar Zapata        |                 1 |    3324309.18
    89681 | Jazmín              | Erazo Quintero        |                 1 |    3324029.00
   148093 | Efraín Francisco    | Perdomo Rangel        |                 1 |    3323001.05
   129061 | Alba                | Pérez Medina          |                 1 |    3321662.75
     7122 | Aníbal              | Montoya Mejía         |                 1 |    3321146.60
    66234 | Esperanza           | Ortiz Álvarez         |                 2 |    3320890.47
   145870 | Olga Edilma         | Ibarra Prada          |                 1 |    3320490.09
   146779 | Claudia Luz         | Ortega Molina         |                 1 |    3320428.02
    14755 | Hernando            | Erazo Ibarra          |                 1 |    3320161.79
    40282 | José                | Pabón Osorio          |                 1 |    3319118.04
   116329 | Felipe              | Bermúdez López        |                 1 |    3318577.76
   101875 | Cristian Javier     | Uribe Pabón           |                 1 |    3317851.50
     8302 | Sandra Esteban      | Lasso Martínez        |                 1 |    3317526.26
   125481 | Jaime Iván          | Delgado Serrano       |                 1 |    3317152.76
    52599 | Reinaldo            | Bonilla Rivera        |                 1 |    3316920.75
    67672 | Álvaro              | Rangel Bedoya         |                 1 |    3314996.64
    80927 | Rubén               | Serrano Salazar       |                 1 |    3314965.09
    74752 | Erika Ruth          | Arias Martínez        |                 1 |    3314616.14
     3958 | Arturo Rafael       | Pérez Romero          |                 1 |    3314235.42
    58365 | Claudia             | García Lozano         |                 1 |    3313043.47
    61893 | Javier              | Bedoya Silva          |                 1 |    3311978.85
   115827 | Luisa               | Pinzón Contreras      |                 1 |    3311963.20
    85739 | Luis                | Ortega Peña           |                 1 |    3311822.01
    46316 | Viviana Mariana     | Castro Jaimes         |                 1 |    3310678.56
    18394 | Rocío               | Marín Molina          |                 1 |    3310277.95
    92729 | Hernando            | Bastidas Ríos         |                 1 |    3310099.74
   140943 | Gustavo             | Gutiérrez Parra       |                 1 |    3308906.63
    80386 | Andrés              | Romero Torres         |                 1 |    3308336.72
    12213 | Mónica Rosa         | Bedoya Lozano         |                 1 |    3307850.48
    54832 | Jairo               | Galvis Sandoval       |                 1 |    3307688.79
   121901 | Sebastián           | Cáceres Sandoval      |                 1 |    3307026.78
    46430 | Jairo Sebastián     | Carrillo Villamizar   |                 1 |    3306499.02
    68997 | Felipe              | Castro Duque          |                 1 |    3306114.37
     5430 | Gloria Carmen       | Duque Arias           |                 1 |    3305483.88
    76648 | Laura               | Barrera Mosquera      |                 1 |    3305317.29
   149865 | Andrea              | Serrano Díaz          |                 1 |    3304965.13
    77233 | Fanny Amparo        | Ruiz Montoya          |                 1 |    3304304.70
   139280 | Claudia             | Muñoz Mora            |                 1 |    3302556.52
   139079 | Carmen              | Uribe Duque           |                 1 |    3301719.68
    40905 | Ruth Cecilia        | Prada Arias           |                 1 |    3301647.67
   113195 | Javier              | Villamizar Muñoz      |                 1 |    3300547.50
    60472 | Daniel Efraín       | García Salazar        |                 1 |    3298588.07
    66386 | Nicolás             | Chamorro Caicedo      |                 1 |    3297928.32
    29281 | Sebastián           | Zuluaga Cuéllar       |                 1 |    3297836.08
   102226 | Luisa               | Lasso Torres          |                 1 |    3296811.87
    95509 | Valentina           | Ríos Calderón         |                 1 |    3296640.72
      860 | Diego Édgar         | Cáceres López         |                 1 |    3296566.35
    42046 | Santiago            | Delgado Lozano        |                 1 |    3296075.19
   115585 | Camilo              | Parra Acevedo         |                 1 |    3295907.16
   107576 | Luis                | Rangel Ibarra         |                 1 |    3295835.76
    62852 | Diana Mónica        | Álvarez Rodríguez     |                 1 |    3294031.18
   134674 | Gabriela            | Arango Valencia       |                 1 |    3293035.94
    89137 | Fanny               | Muñoz Marín           |                 1 |    3292707.24
   128259 | Cecilia             | Tovar Hernández       |                 1 |    3292075.29
    60144 | Luis Germán         | Caicedo Parra         |                 1 |    3290858.66
    47734 | Carmen Luz          | Chamorro Benavides    |                 1 |    3290717.91
    76514 | Ricardo             | Bonilla Losada        |                 1 |    3289908.96
   114458 | Dora                | Cuéllar Martínez      |                 1 |    3289653.42
   134409 | Gabriela Alba       | Cuéllar Rojas         |                 1 |    3289616.85
   113738 | Fernando            | Molina Giraldo        |                 1 |    3289582.52
   142305 | Liliana             | Trujillo Marín        |                 1 |    3288965.04
   146164 | Ancízar             | Salazar Serrano       |                 1 |    3287767.27
   116462 | Cecilia Yesenia     | Flórez Sandoval       |                 2 |    3286742.09
    50737 | Martha              | Cáceres García        |                 1 |    3285275.38
    90229 | Manuela             | Herrera Suárez        |                 1 |    3284910.32
   125725 | Mateo               | Moreno Cárdenas       |                 1 |    3284390.10
    61445 | Samuel              | Jiménez Niño          |                 1 |    3284137.12
   106645 | Jorge               | Díaz Valencia         |                 1 |    3282952.75
   117766 | Rosa                | Contreras Mejía       |                 1 |    3282468.77
    90513 | Arturo              | Gutiérrez Rojas       |                 1 |    3281876.19
    76873 | Reinaldo            | Martínez Jaimes       |                 1 |    3281085.93
    11176 | Amparo Beatriz      | Silva Restrepo        |                 1 |    3280881.24
   141187 | Pedro               | Gómez Chamorro        |                 1 |    3280717.16
    63455 | Marcela             | Parra Bastidas        |                 1 |    3280569.11
    42359 | Liliana             | Tovar Ortega          |                 1 |    3280103.76
    78840 | Mario               | Díaz Montoya          |                 1 |    3278569.61
    33780 | Paola Carolina      | Galvis Zuluaga        |                 1 |    3277629.85
   114638 | Santiago            | Parra Ríos            |                 1 |    3276299.68
    26645 | Yesenia Yuliana     | Osorio Narváez        |                 1 |    3274802.08
   110188 | Teresa              | Sánchez Pinzón        |                 1 |    3274765.01
    87530 | Yuliana             | Sandoval Contreras    |                 1 |    3274468.60
    18024 | María               | Rodríguez Castillo    |                 1 |    3273741.90
    99632 | Inés                | Acevedo Erazo         |                 1 |    3273224.54
    23745 | Stella              | Bermúdez Valencia     |                 1 |    3272723.91
   112630 | Heriberto Yeison    | Jaimes Ríos           |                 1 |    3272469.02
   115284 | Mariana Erika       | Vélez Narváez         |                 1 |    3272323.62
   118240 | Daniela             | Cáceres Ramírez       |                 1 |    3272222.10
    26794 | Jaime               | Calderón Calderón     |                 1 |    3272202.72
    63750 | Pedro               | Sánchez Cárdenas      |                 1 |    3271199.55
   126952 | Óscar               | Quintero Henao        |                 1 |    3270929.84
    99361 | Mónica              | Bermúdez Mejía        |                 1 |    3270610.67
     5066 | Santiago            | Cuéllar Ospina        |                 1 |    3270196.20
   116004 | Daniel              | Lozano Acevedo        |                 1 |    3268180.29
    14144 | Mario               | Silva Bermúdez        |                 1 |    3267662.58
   102309 | Esteban             | Perdomo Prada         |                 1 |    3265576.70
    12222 | Emilio              | Lasso Marín           |                 1 |    3265570.97
    12336 | Wilmer              | Acevedo Valencia      |                 1 |    3263968.96
   131901 | Daniel Javier       | Vélez Castro          |                 1 |    3262932.31
    32763 | Patricia            | Vargas Cabrera        |                 1 |    3261170.19
   116009 | Ramiro              | Bermúdez Contreras    |                 1 |    3261090.42
   122494 | Miguel              | González Ortega       |                 1 |    3260029.13
   141873 | Miguel              | Ospina Zuluaga        |                 1 |    3259114.06
     8002 | Mauricio            | Vargas García         |                 1 |    3259071.55
    63823 | Myriam              | Torres Ospina         |                 1 |    3258880.00
    82142 | José                | Caicedo Suárez        |                 1 |    3258070.93
   127973 | Nubia               | Muñoz Delgado         |                 1 |    3256443.35
   104118 | Juliana             | Serrano Vera          |                 1 |    3256229.90
     9703 | Adriana             | Henao Mosquera        |                 1 |    3256007.30
    35240 | Erika               | Pabón Rincón          |                 1 |    3254119.76
    48624 | Manuel Ramiro       | Ruiz Restrepo         |                 1 |    3251870.56
    66407 | Rubén               | Moreno Castro         |                 1 |    3251215.95
    14767 | Gabriela Marleny    | Cuéllar Vélez         |                 1 |    3250995.75
   105860 | Laura               | Carrillo Guerrero     |                 1 |    3250877.30
   103201 | Fernando            | Pinzón Agudelo        |                 1 |    3250465.08
   133863 | Felipe              | Narváez Contreras     |                 1 |    3249086.23
    41836 | Fanny               | Mejía Cardona         |                 1 |    3247827.28
    20268 | Daniel              | Mora Pabón            |                 1 |    3247636.42
    91241 | Leidy Adriana       | Contreras Suárez      |                 1 |    3247477.64
    75325 | Héctor              | Cabrera Sandoval      |                 1 |    3247294.10
     9902 | Luis                | Muñoz Contreras       |                 1 |    3245826.39
    36997 | Felipe Orlando      | Rivera Ortega         |                 1 |    3245616.62
    37219 | Valentina Manuela   | Ramírez Lasso         |                 1 |    3245383.38
    11106 | Carolina            | Henao Moreno          |                 1 |    3244720.61
    78848 | Mauricio            | Carrillo Barrera      |                 1 |    3243898.53
   108063 | Carlos              | Zuluaga Villamizar    |                 1 |    3243460.08
   124455 | Yuliana Marleny     | Gómez Rincón          |                 1 |    3243381.60
    21100 | Mario               | López Mosquera        |                 1 |    3241820.36
    55790 | Nelson              | Lasso Guerrero        |                 1 |    3241323.52
    13083 | Álvaro              | Bedoya Sánchez        |                 1 |    3240171.76
    22609 | Wilmer              | Benavides Cardona     |                 1 |    3238078.81
   119577 | Marleny             | Sánchez Pabón         |                 1 |    3238011.88
    13801 | Wilson              | Peña Arias            |                 1 |    3235992.00
    49200 | Nelson              | Peña Vélez            |                 1 |    3234453.76
    73464 | Rodrigo             | Marín Jiménez         |                 1 |    3233935.73
    11891 | Yeison              | Marín Guerrero        |                 1 |    3233720.07
   129105 | Germán              | Losada Vera           |                 1 |    3233448.57
   105377 | Diana Yuliana       | García Erazo          |                 1 |    3231124.39
   117493 | Fanny Ana           | Benavides Gómez       |                 1 |    3229601.76
   115847 | Wilson              | Henao Cabrera         |                 1 |    3229300.96
    59775 | Fernando            | Muñoz Torres          |                 1 |    3228830.32
    73406 | Héctor              | Cardona Ortega        |                 1 |    3227697.92
   140166 | Jairo               | Narváez Sánchez       |                 1 |    3227408.40
   128221 | Alejandra           | Gutiérrez Marín       |                 1 |    3226978.13
    23740 | Camilo Germán       | Duarte Pinzón         |                 1 |    3226328.01
    99977 | Ricardo             | Guerrero Losada       |                 1 |    3225655.51
    19582 | Alberto             | Mora Lozano           |                 1 |    3225629.62
    70267 | Carlos              | Rojas Rivera          |                 1 |    3225288.26
    73754 | Jairo               | Peña Cárdenas         |                 1 |    3225153.75
   149726 | Jorge               | Contreras Quintero    |                 1 |    3224658.32
    88544 | Germán              | Martínez Ramos        |                 1 |    3223901.27
    33921 | Yuliana             | Restrepo Vera         |                 1 |    3223694.28
   113190 | Rubén               | Ortega Vélez          |                 1 |    3223509.21
   148698 | Esteban Mateo       | Restrepo Flórez       |                 1 |    3223062.57
   136236 | Aura Natalia        | Restrepo García       |                 1 |    3222264.15
    78494 | David               | Suárez Calderón       |                 1 |    3221954.91
    36747 | Rodrigo             | Delgado Delgado       |                 1 |    3220158.83
   108577 | Santiago            | Serrano Parra         |                 1 |    3219358.76
     7937 | Marleny             | Vera Cuéllar          |                 1 |    3219281.96
   113435 | Jazmín Gloria       | Gutiérrez Cárdenas    |                 1 |    3219170.93
    14360 | Mario               | Vélez Correa          |                 1 |    3217626.36
   118398 | Diego               | Mora Acevedo          |                 1 |    3217567.49
   111991 | Gustavo             | Medina Carrillo       |                 1 |    3217468.32
    89491 | Yuliana             | Correa Barrera        |                 1 |    3217018.40
   135032 | Édgar               | Montoya Galvis        |                 1 |    3216588.64
    23665 | Camilo              | Ramos Henao           |                 1 |    3216384.87
   141710 | Manuel              | Zapata Carrillo       |                 1 |    3214000.56
    31277 | Sofía               | García Bedoya         |                 1 |    3213851.54
    98769 | Felipe Wilmer       | Gómez Osorio          |                 1 |    3211033.44
    81634 | Alejandro           | Polanía Losada        |                 1 |    3210913.76
    83067 | Santiago            | Duque Flórez          |                 1 |    3210754.14
   111969 | Elsa                | Restrepo Cabrera      |                 1 |    3210457.32
    88106 | Carlos Gilberto     | Valencia Muñoz        |                 1 |    3209689.55
    44891 | Álvaro              | Cárdenas Vargas       |                 1 |    3208151.55
    87614 | Diana               | Lozano Rincón         |                 1 |    3208054.00
   100991 | Cristian Wilmer     | Gutiérrez Cuéllar     |                 1 |    3206273.56
    62364 | Blanca              | Ortiz Lozano          |                 1 |    3206084.75
   126400 | Óscar               | Silva Benavides       |                 1 |    3205516.44
   125815 | Sofía               | López Montoya         |                 1 |    3205136.66
    36446 | Samuel Mario        | Álvarez Torres        |                 1 |    3205047.00
   149288 | Blanca Edilma       | Uribe Valencia        |                 1 |    3204789.84
    50967 | Laura               | Guerrero Chamorro     |                 1 |    3204361.22
    99738 | Rodrigo             | Restrepo Ramos        |                 1 |    3204339.14
    17790 | Gustavo             | Arias Cárdenas        |                 1 |    3203641.33
   117397 | Camilo Abelardo     | Giraldo Salazar       |                 1 |    3203448.00
   133803 | Óscar Hernando      | Duarte Suárez         |                 1 |    3202762.50
   139458 | Laura               | Vélez Ruiz            |                 1 |    3202731.07
   134609 | Juan Rafael         | Cabrera Ortega        |                 1 |    3202299.92
    84808 | Andrea Samuel       | Mejía Erazo           |                 1 |    3200849.46
    51134 | Diego Samuel        | Zapata Castro         |                 1 |    3200674.03
   103128 | Ancízar             | Vera Uribe            |                 1 |    3200462.19
   110282 | Yesenia             | Ríos Niño             |                 1 |    3200307.84
   139156 | Inés                | Castillo Rodríguez    |                 1 |    3199444.54
   136874 | Camilo              | Betancur Villamizar   |                 1 |    3198406.49
   104039 | Orlando             | Ríos Bermúdez         |                 1 |    3198383.69
   120368 | Rocío               | Niño Carrillo         |                 1 |    3198121.77
    13436 | Sebastián           | Pinzón Ospina         |                 1 |    3197792.79
   112351 | Luz                 | Jiménez Benavides     |                 1 |    3197782.87
    82060 | Miguel Ancízar      | Flórez Contreras      |                 1 |    3196914.84
   122567 | Alberto             | Marín Pabón           |                 1 |    3196360.98
   144604 | Carolina            | Contreras Niño        |                 1 |    3195620.91
    39819 | Édgar               | Serrano Londoño       |                 1 |    3194530.68
   143067 | Juan                | Londoño Mosquera      |                 1 |    3193263.25
    28725 | Daniel              | Vargas Calderón       |                 1 |    3192440.82
   120769 | Miguel Rafael       | Ortiz Lasso           |                 1 |    3192420.00
    57261 | Samuel              | Mosquera Hernández    |                 1 |    3192231.00
    84477 | Juliana Mercedes    | Mejía Giraldo         |                 1 |    3191477.52
   124622 | Laura               | Muñoz Carrillo        |                 1 |    3191239.17
   109809 | Carolina            | López Agudelo         |                 1 |    3190550.74
    62174 | Samuel              | Sandoval Lasso        |                 1 |    3190499.82
    99480 | Nelson              | Niño Silva            |                 1 |    3190404.60
    93196 | Yesenia Patricia    | Giraldo Torres        |                 1 |    3190349.50
    26647 | Nicolás             | Rangel Villamizar     |                 1 |    3188987.01
    71809 | Hernando Rafael     | Cuéllar Quintero      |                 1 |    3188605.14
   117380 | Rocío               | Londoño Serrano       |                 1 |    3188441.12
   141699 | José Andrés         | Caicedo Bermúdez      |                 1 |    3187180.17
     1677 | Sofía               | Bermúdez Rincón       |                 1 |    3186457.10
    30534 | Adriana             | Cabrera Caicedo       |                 1 |    3186097.74
   109475 | Efraín              | García Bonilla        |                 1 |    3183630.56
   142775 | Myriam Alejandra    | Giraldo Peña          |                 1 |    3183290.66
   143596 | Yuliana             | Prada Ramírez         |                 1 |    3183111.45
    35499 | Miguel              | Correa Jiménez        |                 1 |    3182306.40
     5098 | Sofía Viviana       | López Calderón        |                 1 |    3180397.92
    57745 | Heriberto           | Suárez Contreras      |                 1 |    3179850.06
    48396 | Dora                | Cabrera Serrano       |                 1 |    3179755.14
    83103 | Pedro Efraín        | Jaimes Suárez         |                 1 |    3179163.26
   144904 | Ramiro              | Martínez Burbano      |                 1 |    3179039.71
   140174 | Rocío               | Moreno Ramos          |                 1 |    3178491.88
   103050 | Jorge               | Narváez Castro        |                 1 |    3175154.76
   113245 | Marleny             | Galvis Mosquera       |                 1 |    3174273.18
   133079 | Alejandra Juliana   | Mejía Pinzón          |                 1 |    3174186.97
    74261 | Elsa                | Cárdenas Vera         |                 1 |    3174152.65
    11334 | Diana               | Delgado Bermúdez      |                 1 |    3174086.70
    90576 | Felipe              | Villamizar Lasso      |                 1 |    3173335.68
    65290 | Ángela Yesenia      | López Chamorro        |                 1 |    3173222.11
   146035 | Nelson              | Barrera Cuéllar       |                 1 |    3172675.68
   130571 | Camila              | Henao Rangel          |                 1 |    3170672.37
   118126 | Cristian            | Valencia Perdomo      |                 1 |    3170255.35
    83489 | Fabio Ricardo       | Acevedo Ibarra        |                 1 |    3169276.95
   141531 | Santiago            | Rincón Medina         |                 1 |    3167299.09
   114616 | José                | Carrillo Zapata       |                 1 |    3167080.17
    53364 | Rafael              | Arias Benavides       |                 1 |    3165764.77
    72498 | Esteban             | Rangel Bastidas       |                 1 |    3162984.70
    82278 | Stella              | Díaz Ospina           |                 1 |    3162030.80
    63421 | Alba Elsa           | Duarte Cabrera        |                 1 |    3161664.60
   123266 | Álvaro              | Rivera Cárdenas       |                 1 |    3161497.98
   126454 | Javier              | Quintero Narváez      |                 1 |    3158197.02
    64682 | Sara                | Calderón Vélez        |                 1 |    3157090.23
     5659 | Cristian            | Rojas Bedoya          |                 1 |    3156585.63
   117535 | Alejandro           | Montoya Arias         |                 1 |    3156506.08
    19483 | Nubia               | Cuéllar Lasso         |                 1 |    3156430.56
    93612 | Inés                | Galvis Betancur       |                 1 |    3156146.00
   140438 | Viviana             | Villamizar Moreno     |                 1 |    3154873.85
   122941 | Jaime Óscar         | Ibarra Galvis         |                 1 |    3154835.52
    12048 | Erika Sandra        | Cáceres Narváez       |                 1 |    3154251.31
   104996 | Andrés              | Delgado Rivera        |                 1 |    3153396.01
    17934 | Gloria Manuela      | Contreras Trujillo    |                 1 |    3153367.44
    96961 | Brayan Samuel       | Giraldo González      |                 1 |    3152949.20
   107611 | Camilo              | Álvarez Sandoval      |                 2 |    3151465.15
   126408 | Nicolás             | Arango Ríos           |                 1 |    3150837.90
   135784 | Camila              | Lasso Mejía           |                 1 |    3150309.17
     3051 | David               | Rangel Castro         |                 2 |    3149285.31
    60511 | Wilmer              | Rodríguez Jaimes      |                 1 |    3148300.76
    61729 | Diego               | Peña Mosquera         |                 1 |    3147776.76
    43887 | Yesenia             | Ortiz Hernández       |                 1 |    3147155.19
   146825 | Héctor Nicolás      | Flórez Delgado        |                 1 |    3146612.69
    84293 | Leidy               | Torres Losada         |                 1 |    3146388.10
    94531 | Ricardo             | Ríos Medina           |                 1 |    3146124.18
   143013 | Orlando             | Giraldo García        |                 1 |    3144892.36
     1896 | Fernando            | Ortiz Cabrera         |                 1 |    3144859.05
    27128 | Antonio Fabio       | Jaimes Rodríguez      |                 1 |    3144473.70
   142556 | Ángela Edilma       | Prada Rivera          |                 1 |    3144467.70
      290 | Wilson Pedro        | Osorio Perdomo        |                 1 |    3142458.60
    55850 | Liliana Nubia       | Galvis Narváez        |                 1 |    3142181.90
    56846 | Fernando            | Bastidas Suárez       |                 1 |    3141631.96
    81434 | Julián              | Mora Correa           |                 1 |    3141482.86
    43057 | Javier              | Ibarra Jiménez        |                 1 |    3140144.28
    26230 | Yolanda Gabriela    | Carrillo Vargas       |                 1 |    3139517.90
    92978 | Wilmer              | Lozano González       |                 1 |    3139430.43
    77928 | Aníbal Ancízar      | Correa Bonilla        |                 1 |    3139324.49
    32899 | Gustavo             | Trujillo Vélez        |                 1 |    3139114.98
   131535 | Pedro               | Hernández Calderón    |                 1 |    3139064.28
    29476 | Paola               | Cuéllar Mejía         |                 1 |    3138521.10
     2424 | Jorge               | Acevedo Parra         |                 1 |    3138033.36
    38035 | Rubén               | Álvarez Bermúdez      |                 1 |    3137532.39
   135043 | Jairo               | Sánchez Mosquera      |                 1 |    3137487.15
    18878 | Miguel              | Silva Prada           |                 1 |    3136586.21
   111198 | Diana               | García Ríos           |                 1 |    3136305.65
    81874 | Manuel              | Lasso Carrillo        |                 1 |    3135283.01
    93596 | Jairo Javier        | Londoño Caicedo       |                 1 |    3135152.38
   127257 | Blanca              | Ríos Erazo            |                 1 |    3135045.48
     2381 | Héctor              | Molina Trujillo       |                 1 |    3134924.65
    14734 | Yolanda             | Arango Cuéllar        |                 1 |    3134913.76
    26559 | Sara Leidy          | Villamizar Burbano    |                 1 |    3134378.13
    75904 | Rodrigo             | Medina Uribe          |                 1 |    3133770.22
    30706 | Camilo              | Gómez García          |                 1 |    3133158.15
    53297 | Rafael Gustavo      | Molina Correa         |                 1 |    3132920.00
    62755 | Andrea              | Salazar González      |                 1 |    3132833.05
    90272 | Héctor Jairo        | Medina Erazo          |                 1 |    3131775.49
   105921 | Abelardo            | Bedoya Cabrera        |                 1 |    3131663.11
    37605 | Germán              | Parra Bonilla         |                 1 |    3131554.37
    75604 | Camila              | Ortiz Montoya         |                 1 |    3131419.74
    52670 | Germán              | Cárdenas Jiménez      |                 1 |    3130305.07
    15924 | Diego               | Tovar Perdomo         |                 1 |    3129709.99
   108893 | Claudia             | Uribe Romero          |                 1 |    3129374.00
    19960 | Carlos              | Cabrera Ortega        |                 1 |    3129211.07
    88103 | Alejandra           | Pabón Salazar         |                 1 |    3129199.75
    42153 | Mariana             | Osorio Ibarra         |                 1 |    3127432.88
    26545 | Paola               | Castillo Flórez       |                 1 |    3127194.29
    51147 | Beatriz Isabella    | Salazar Medina        |                 1 |    3126604.52
    45084 | Óscar Alberto       | Ospina Erazo          |                 1 |    3126135.82
    90031 | Inés                | Ospina Hernández      |                 1 |    3124873.64
   114498 | Alejandro           | Villamizar Rodríguez  |                 1 |    3124433.10
      639 | Ruth                | Niño Ortega           |                 1 |    3124359.96
    34213 | Rodrigo Álvaro      | Perdomo Ortiz         |                 1 |    3124326.63
   128952 | Diego               | Bedoya Mejía          |                 1 |    3122834.55
     1486 | Mateo               | Castillo Moreno       |                 1 |    3122163.24
   134363 | Fanny               | Arango Delgado        |                 1 |    3120640.88
    99434 | Nelson Alberto      | Quintero Rincón       |                 1 |    3120525.54
    85962 | Edilma              | Medina Ríos           |                 1 |    3119986.86
    82420 | Erika               | Vélez Benavides       |                 1 |    3119746.73
   141706 | Andrés Santiago     | Moreno Agudelo        |                 1 |    3119657.43
   109489 | Rodrigo             | Jaimes Benavides      |                 1 |    3118883.40
   108916 | Fabio               | Villamizar Delgado    |                 1 |    3118453.58
    42122 | Santiago Miguel     | González Lozano       |                 1 |    3115991.02
    84140 | Lorena              | Osorio Mosquera       |                 1 |    3115818.90
    94227 | Ricardo             | Hernández Suárez      |                 1 |    3115686.88
   144644 | Ramiro Rafael       | Burbano Giraldo       |                 1 |    3114443.53
   145812 | Rafael              | Losada Mosquera       |                 1 |    3114102.50
   114328 | Samuel              | Contreras Álvarez     |                 1 |    3114051.60
     4335 | Paola               | Parra Ortega          |                 1 |    3113823.42
    38419 | Inés                | Pabón Medina          |                 1 |    3112727.54
   139884 | Stella              | Tovar López           |                 1 |    3112289.18
    57753 | Abelardo            | Correa Rojas          |                 1 |    3111454.80
    62818 | Nicolás             | Flórez Moreno         |                 1 |    3110928.04
     3442 | Carlos              | Cabrera Ramos         |                 1 |    3110882.88
     4999 | Natalia             | Delgado Uribe         |                 1 |    3110604.93
   112299 | Jorge Gilberto      | Jaimes Giraldo        |                 1 |    3110384.64
   136269 | Cristian            | Mora Peña             |                 1 |    3109527.30
    17095 | Blanca              | Díaz Martínez         |                 1 |    3108111.78
   105324 | Sofía               | Ruiz Bedoya           |                 1 |    3107659.51
    71210 | Sandra              | Delgado González      |                 1 |    3107607.83
    36650 | Adriana             | Losada Polanía        |                 1 |    3107118.43
   137651 | Natalia             | Guerrero Pabón        |                 1 |    3106834.47
    57600 | Reinaldo            | Cabrera Losada        |                 1 |    3106376.54
    26633 | Martha              | Losada Álvarez        |                 1 |    3105349.68
   106514 | Germán Héctor       | Calderón Prada        |                 1 |    3104544.79
    41417 | Myriam Rocío        | Suárez Lozano         |                 1 |    3103744.63
    23779 | Gustavo Miguel      | Ríos Villamizar       |                 1 |    3102998.13
    64759 | Nicolás             | Uribe Rojas           |                 1 |    3102145.24
   130466 | Reinaldo            | Cárdenas Lozano       |                 1 |    3102097.85
   120939 | Olga                | González Ortega       |                 1 |    3101204.29
   136290 | Antonio             | Herrera Giraldo       |                 1 |    3100978.00
    29217 | Daniel Heriberto    | Díaz Montoya          |                 1 |    3100448.00
   109549 | Fabio               | Rodríguez Pérez       |                 1 |    3100207.45
   104952 | Álvaro              | Villamizar Correa     |                 1 |    3099286.08
   113882 | Carmen              | Restrepo Medina       |                 1 |    3099264.98
     5726 | Héctor              | García Prada          |                 1 |    3099257.89
    64125 | Adriana             | Gutiérrez Bedoya      |                 1 |    3098910.92
    97433 | Valentina           | Marín Benavides       |                 1 |    3098494.32
   106932 | Leidy Gladys        | Lasso Carrillo        |                 1 |    3097974.60
    73617 | Marcela             | Peña Zuluaga          |                 1 |    3096292.44
   118973 | Heriberto Ancízar   | Mejía Ruiz            |                 1 |    3095188.69
   124549 | Diego               | Cáceres Losada        |                 1 |    3094841.68
    53102 | Pedro               | Mejía Mejía           |                 1 |    3094540.68
   135831 | Efraín              | Cuéllar Moreno        |                 1 |    3094122.40
    90529 | Fanny               | Pinzón Perdomo        |                 1 |    3094020.28
    37403 | Olga                | Mejía Mejía           |                 1 |    3092313.80
    96671 | Gustavo             | Narváez Arango        |                 1 |    3091716.36
    52817 | Nicolás             | Ortega Lasso          |                 1 |    3091421.34
   146000 | Rubén               | Tovar Moreno          |                 1 |    3089663.40
   111797 | Laura Erika         | Rivera Vargas         |                 1 |    3089214.11
    55322 | Nicolás Brayan      | Arias Osorio          |                 1 |    3089211.84
   149550 | Arturo              | Suárez Tovar          |                 1 |    3088811.70
    29390 | Marleny             | Parra Agudelo         |                 1 |    3087994.00
    60071 | Jairo Alberto       | Calderón Mejía        |                 1 |    3087693.18
    87701 | Wilson              | Uribe Sandoval        |                 1 |    3087457.41
    23959 | Diego               | Montoya Rojas         |                 1 |    3086967.35
   148173 | Myriam              | Rangel Pérez          |                 1 |    3086778.80
   120197 | Santiago            | Tovar Rangel          |                 1 |    3086022.72
    74029 | Héctor              | Torres Ortiz          |                 1 |    3085589.43
    94835 | Gabriela Nelson     | Molina Correa         |                 1 |    3084003.52
    43691 | Jaime               | Ortega Narváez        |                 1 |    3083382.45
    58248 | Fabio               | Cárdenas Bonilla      |                 1 |    3082648.80
   112611 | Abelardo Mauricio   | Torres Bedoya         |                 1 |    3079972.50
   142557 | Rodrigo             | Cáceres Jiménez       |                 1 |    3079887.65
   110529 | Reinaldo Mateo      | Quintero Zapata       |                 1 |    3079871.50
    22330 | Arturo              | Gómez Agudelo         |                 1 |    3079606.95
    61602 | Sandra              | Vera Arango           |                 1 |    3079359.36
    16038 | Francisco Emilio    | Osorio Hernández      |                 1 |    3079261.08
    52428 | Heriberto           | Londoño Herrera       |                 1 |    3078977.65
     4430 | Wilson Carlos       | Henao Zuluaga         |                 1 |    3078102.70
   120006 | Adriana             | Jiménez Correa        |                 1 |    3077664.02
    23533 | Yolanda Manuela     | Bastidas Bastidas     |                 1 |    3077062.56
    62289 | Orlando             | Flórez Barrera        |                 1 |    3076416.12
    54975 | Jazmín              | Barrera Álvarez       |                 1 |    3075649.92
   115515 | Heriberto           | Castro Pérez          |                 1 |    3074560.55
    39949 | Nelson Camilo       | Osorio Peña           |                 1 |    3073079.14
    62984 | Libardo             | Giraldo Uribe         |                 1 |    3072885.49
     3839 | Samuel              | Henao Betancur        |                 1 |    3072707.30
    84809 | Yeison              | Rodríguez Sánchez     |                 1 |    3072268.69
    15957 | Libardo             | Ríos Molina           |                 1 |    3071231.08
   128528 | Leidy               | Giraldo Vera          |                 1 |    3069276.99
    99574 | Carolina            | Duarte Mora           |                 1 |    3069023.79
   114126 | Miguel Wilson       | Lasso Bedoya          |                 1 |    3067192.09
    20195 | Martha              | Giraldo Arango        |                 1 |    3062789.00
     7445 | Esteban             | Ibarra Pabón          |                 1 |    3062643.10
   132280 | Emilio              | Álvarez Barrera       |                 1 |    3062509.76
     1479 | Édgar Fabio         | Romero Valencia       |                 1 |    3062126.34
    59239 | Camila              | López Correa          |                 1 |    3061798.76
   121212 | Mario               | Duarte Bedoya         |                 1 |    3061063.58
   110250 | Rafael              | Prada Silva           |                 1 |    3060720.42
    48044 | Emilio              | Trujillo Vera         |                 1 |    3060681.73
    16934 | Natalia Lorena      | Cuéllar Pérez         |                 1 |    3059850.70
    28722 | Rocío               | Bermúdez Uribe        |                 1 |    3059693.20
    51232 | Yeison              | Moreno Jaimes         |                 1 |    3059272.21
    34848 | Héctor              | Uribe Burbano         |                 1 |    3058880.02
   124143 | Ángela              | Gutiérrez Zuluaga     |                 1 |    3058403.10
   144312 | Carolina            | Delgado Bonilla       |                 1 |    3057090.15
    41620 | Blanca              | Perdomo Rincón        |                 1 |    3057048.89
    25062 | Myriam              | Jiménez Montoya       |                 1 |    3054824.77
     3045 | Gloria              | Sánchez Quintero      |                 1 |    3053324.16
   131928 | Jairo               | Lasso Medina          |                 1 |    3053223.95
    34894 | Juan                | Pabón Flórez          |                 1 |    3053044.53
    93501 | Cristian            | Bermúdez Rangel       |                 1 |    3052811.51
   117179 | Luis Ramiro         | Quintero García       |                 1 |    3052761.89
    50479 | Mateo               | Polanía Molina        |                 1 |    3052664.62
   138019 | Guillermo           | Henao Pabón           |                 1 |    3052375.40
    29587 | Stella              | Villamizar Restrepo   |                 1 |    3052001.76
    74478 | Gabriela Camila     | Osorio Trujillo       |                 1 |    3049841.62
    71069 | Hernando Germán     | Chamorro Flórez       |                 1 |    3048376.80
   142004 | Luz                 | Serrano Rivera        |                 1 |    3047733.13
    35611 | Elsa                | Agudelo Polanía       |                 1 |    3047532.44
   116062 | Hugo                | Pérez Bastidas        |                 1 |    3046533.99
   100106 | Sara                | Cardona Correa        |                 1 |    3046514.92
     7670 | Erika               | Ospina Bedoya         |                 1 |    3045980.10
    98763 | Fabio               | Burbano Medina        |                 1 |    3045238.46
    25671 | Gilberto            | Bastidas Ortega       |                 1 |    3044809.92
     4429 | Santiago            | Sánchez Ortiz         |                 1 |    3044327.10
    27188 | Gilberto            | Jaimes Rojas          |                 1 |    3039745.01
    19549 | Luis                | Zuluaga Gutiérrez     |                 1 |    3038898.63
   130508 | Héctor              | Osorio Trujillo       |                 1 |    3038651.11
   116673 | Fabio Julián        | Rivera Díaz           |                 1 |    3038265.36
    61215 | Fanny               | Bonilla Giraldo       |                 1 |    3038071.05
    71639 | Arturo Santiago     | Villamizar Ortiz      |                 1 |    3038049.37
   112533 | Ricardo             | Chamorro Erazo        |                 1 |    3036952.51
    78566 | Héctor              | Vargas Herrera        |                 1 |    3034624.58
   106795 | Cristian            | Caicedo Martínez      |                 1 |    3033974.40
    48870 | Rodrigo             | Valencia Benavides    |                 1 |    3032390.67
    35527 | Aníbal              | Bedoya Polanía        |                 1 |    3032175.60
    78302 | Amparo              | González Prada        |                 1 |    3031815.70
    83387 | Paola               | Jiménez Guerrero      |                 1 |    3031617.00
    39882 | Miguel              | Burbano Romero        |                 1 |    3030937.56
   119292 | Andrés Fernando     | Rojas Agudelo         |                 1 |    3030788.83
     4161 | Juan                | Molina Ríos           |                 1 |    3030250.72
     3256 | José                | Ramos Mora            |                 1 |    3029428.29
    12200 | Carlos              | Lozano Ortega         |                 1 |    3029328.00
    91835 | Patricia            | Acevedo Vera          |                 1 |    3029116.00
    41162 | Libardo             | Carrillo Cáceres      |                 1 |    3028073.40
   146797 | Gilberto Nelson     | Álvarez Betancur      |                 1 |    3027035.04
    25238 | Samuel              | Mora Álvarez          |                 1 |    3026421.27
    51202 | Yeison Rafael       | Delgado Perdomo       |                 1 |    3026309.22
    56002 | Francisco           | Medina Ríos           |                 1 |    3024589.47
     2916 | Heriberto           | Bedoya González       |                 1 |    3022668.75
   109535 | Sandra              | Cardona Pérez         |                 1 |    3021297.73
   147876 | Mariana Laura       | Mosquera Marín        |                 1 |    3021203.70
    16524 | Rodrigo             | Duarte Zuluaga        |                 1 |    3020573.60
    27989 | Miguel              | Zuluaga Bastidas      |                 1 |    3020243.26
     9226 | Javier              | Contreras Calderón    |                 1 |    3018597.30
    70567 | Manuela Mercedes    | Quintero Prada        |                 1 |    3017853.52
    94952 | Héctor              | Marín Rivera          |                 1 |    3017839.48
   147377 | Pedro               | Ríos Serrano          |                 1 |    3017634.90
    62884 | Patricia            | Galvis Galvis         |                 1 |    3017345.22
    76120 | Francisco           | Carrillo Restrepo     |                 1 |    3017006.45
   149424 | David               | Correa Pérez          |                 1 |    3016062.42
    79818 | David               | Mejía Ramos           |                 1 |    3015891.09
   115060 | Esperanza           | Trujillo Hernández    |                 1 |    3015804.00
    52184 | Daniel              | Caicedo Pérez         |                 1 |    3015394.14
    75540 | Reinaldo            | Ríos Ibarra           |                 1 |    3014608.64
    23255 | Wilmer Ramiro       | Sánchez Ramírez       |                 1 |    3014363.96
    95413 | Mariana             | Galvis Arias          |                 1 |    3014075.87
    29292 | Emilio Rafael       | Rivera Mosquera       |                 1 |    3013644.82
   106964 | Iván Ricardo        | Bastidas Losada       |                 1 |    3013594.37
   148268 | Fernando            | García Prada          |                 1 |    3012878.18
    27983 | Óscar               | Uribe Caicedo         |                 1 |    3010853.92
    24604 | Fernando            | García Narváez        |                 1 |    3010281.93
   142530 | Lucía Martha        | Bedoya Silva          |                 1 |    3010263.75
   127897 | Olga                | Cabrera Guerrero      |                 1 |    3008276.34
    93765 | Carmen              | Bonilla Gómez         |                 1 |    3007840.31
     1980 | Ramiro              | Rodríguez Flórez      |                 1 |    3006705.54
    44109 | Sandra              | Duarte Prada          |                 1 |    3006014.96
   104965 | Ancízar             | Medina Quintero       |                 1 |    3005337.62
   110115 | Camilo              | Rodríguez Tovar       |                 1 |    3005337.34
    69615 | Yolanda Sara        | Lasso Jaimes          |                 1 |    3005316.11
    83205 | Fernando Mateo      | Zapata Rivera         |                 1 |    3004556.60
    17985 | María Mónica        | Correa Vera           |                 1 |    3004022.86
    20133 | Fernando            | Montoya Cabrera       |                 1 |    3003169.33
    77926 | Manuel              | Gómez Vélez           |                 1 |    3003132.03
    16872 | Gabriela Ángela     | Cardona Trujillo      |                 1 |    3002993.56
   124312 | Blanca              | Betancur Pabón        |                 1 |    3002004.60
    42595 | José                | Arango Lasso          |                 1 |    2999993.58
   105930 | Paola               | Carrillo Bastidas     |                 1 |    2999302.95
     4323 | Gilberto            | Rojas Ríos            |                 1 |    2999114.16
    92750 | Francisco           | Rincón Romero         |                 1 |    2998214.81
    42616 | Francisco           | Ruiz Silva            |                 1 |    2997957.03
    76312 | Emilio              | Erazo Contreras       |                 1 |    2997869.14
   125325 | Aura Gabriela       | Caicedo Gutiérrez     |                 1 |    2996600.56
    79558 | Nicolás             | Cárdenas García       |                 1 |    2995384.15
   144505 | Javier Wilson       | Vargas Arias          |                 1 |    2994987.04
    47035 | Jorge               | Medina Parra          |                 1 |    2994664.27
   120236 | Efraín Ramiro       | Peña Zuluaga          |                 1 |    2993197.56
   122432 | Samuel              | Duarte Bastidas       |                 1 |    2992698.25
   145113 | Nicolás             | Castillo Cárdenas     |                 1 |    2992542.22
    12620 | Ruth                | Mora Marín            |                 1 |    2992221.68
   124855 | Yuliana             | Tovar Cárdenas        |                 1 |    2992207.53
     7842 | Heriberto           | Bedoya Lozano         |                 1 |    2991745.07
   139671 | Jaime               | Agudelo Rincón        |                 1 |    2991110.25
   126751 | Santiago            | Lozano Bermúdez       |                 1 |    2990894.88
    39441 | Juliana Ruth        | Lozano Bonilla        |                 1 |    2990365.43
    86312 | Mariana             | Vargas Henao          |                 1 |    2989830.20
     1359 | Arturo Alberto      | Ruiz Cardona          |                 1 |    2989807.00
     7542 | Nelson              | Herrera Gómez         |                 1 |    2988808.84
    94137 | Alejandro           | Barrera Castro        |                 1 |    2988472.16
      924 | Mauricio            | Calderón Ríos         |                 1 |    2988272.11
   106222 | Miguel Esteban      | Rincón Ospina         |                 1 |    2988031.08
    83213 | Pedro               | García Valencia       |                 1 |    2986798.75
    85364 | Martha              | Cárdenas Delgado      |                 1 |    2986688.08
    55622 | Manuel              | Rangel Chamorro       |                 1 |    2984773.74
    83314 | Lucía               | Uribe Moreno          |                 1 |    2984472.96
    17606 | Ana Jazmín          | Pérez Jiménez         |                 1 |    2983718.42
   138461 | Francisco           | Duarte Delgado        |                 1 |    2983206.51
    51164 | Jairo               | Medina Silva          |                 1 |    2982048.23
   121421 | Gabriela Jazmín     | Correa Álvarez        |                 1 |    2980235.19
   135226 | Rosa                | Henao Gutiérrez       |                 1 |    2980202.39
    81645 | Óscar               | García Molina         |                 1 |    2979339.39
   126833 | Gladys              | Vera Ospina           |                 1 |    2978878.14
    20825 | Germán Abelardo     | Polanía Cabrera       |                 1 |    2976610.42
    67253 | Ana Gladys          | Tovar Sandoval        |                 1 |    2976000.30
    59172 | Nelson Aníbal       | Burbano Perdomo       |                 1 |    2975830.64
    56040 | Viviana             | Osorio Caicedo        |                 1 |    2975616.00
   101870 | Laura               | Delgado Vélez         |                 1 |    2975441.99
    39655 | Andrés              | Ortiz Vargas          |                 1 |    2974705.92
     6662 | Nicolás David       | Marín Niño            |                 1 |    2972349.99
    90638 | Ramiro              | Mora Montoya          |                 1 |    2971549.00
   140996 | Yolanda             | Medina Zapata         |                 1 |    2970632.34
    74243 | Ricardo Juan        | Sánchez Castillo      |                 1 |    2970313.28
    14883 | Isabella            | Sánchez Bonilla       |                 1 |    2968387.48
    55283 | Amparo              | Delgado Serrano       |                 1 |    2968342.40
    17384 | Jorge Antonio       | Calderón Quintero     |                 1 |    2967902.48
   121512 | Francisco           | Zapata Castro         |                 1 |    2963457.23
    30743 | Claudia             | Henao Ramos           |                 1 |    2963099.70
    68607 | Natalia Leidy       | Muñoz Hernández       |                 1 |    2963030.22
   149299 | Heriberto           | Sánchez Restrepo      |                 1 |    2962892.92
    55809 | Emilio              | Chamorro Narváez      |                 1 |    2961209.37
   140194 | Sofía               | Ibarra Vargas         |                 1 |    2960286.66
    84225 | Esperanza Myriam    | Sánchez Flórez        |                 1 |    2960101.61
     4154 | Nelson              | Gómez Salazar         |                 1 |    2956204.02
    94665 | Álvaro Samuel       | Vargas Vélez          |                 1 |    2956052.85
    87659 | Héctor              | Silva Pinzón          |                 1 |    2955426.28
    42445 | Gabriela            | Perdomo Ríos          |                 1 |    2955395.15
    26717 | Ricardo             | Cuéllar Rangel        |                 1 |    2954640.05
    32291 | Mónica              | Ortega Bonilla        |                 1 |    2954055.78
   138069 | Ana                 | Cabrera Silva         |                 1 |    2953956.00
    66889 | Carlos              | Perdomo Zuluaga       |                 1 |    2953828.33
    78531 | Rodrigo             | Jaimes Molina         |                 1 |    2953316.69
   131953 | Sebastián Gustavo   | Trujillo Silva        |                 1 |    2952585.98
    19674 | Santiago Samuel     | Bastidas Salazar      |                 1 |    2951643.72
    75138 | Efraín              | Agudelo Pérez         |                 1 |    2950484.39
   126735 | Hugo                | Lozano Sánchez        |                 1 |    2948672.37
   142690 | Jairo Nicolás       | Vargas Pabón          |                 1 |    2948426.98
   149487 | Gustavo             | Prada Peña            |                 1 |    2947783.17
   139996 | Aura                | Medina Londoño        |                 1 |    2947164.27
    10049 | Arturo Hernando     | Molina Benavides      |                 1 |    2946777.96
    56793 | Juan                | Henao Vargas          |                 1 |    2946016.70
    80247 | Julián Javier       | Molina Caicedo        |                 1 |    2945972.07
    34642 | Efraín              | Calderón Uribe        |                 1 |    2945795.07
   138000 | Fabio               | Arango Chamorro       |                 1 |    2944975.76
    94661 | Alberto Fernando    | Ramírez Arango        |                 1 |    2943267.48
   139122 | Isabella            | Acevedo González      |                 1 |    2941101.72
    37936 | Pedro               | Uribe Zuluaga         |                 1 |    2940785.68
   107975 | Aníbal Óscar        | Ramírez Correa        |                 1 |    2940636.21
     4316 | Ana Mónica          | Arias Cabrera         |                 1 |    2939926.36
   132608 | Wilson              | Moreno Suárez         |                 1 |    2939089.59
     6130 | Alberto             | Cáceres Benavides     |                 1 |    2938250.23
    50668 | Gabriela            | García Medina         |                 1 |    2937047.04
    90218 | Nelson              | Rojas Cabrera         |                 1 |    2936917.80
    33641 | Mateo Héctor        | Ortiz Prada           |                 1 |    2936646.16
    91299 | Diego               | Ruiz Herrera          |                 1 |    2935895.43
    68322 | Jorge Rodrigo       | Gómez Restrepo        |                 1 |    2934482.41
   101385 | Erika               | Vargas Parra          |                 1 |    2933879.10
   136554 | Olga                | Zuluaga Vélez         |                 1 |    2932487.87
    26614 | Pedro Santiago      | Moreno Losada         |                 1 |    2932277.81
    80238 | Samuel              | Suárez Guerrero       |                 1 |    2932122.86
    30271 | Claudia Olga        | Vera Rojas            |                 1 |    2931716.48
   124933 | Gustavo             | Cárdenas Niño         |                 1 |    2931217.12
    62681 | Jairo               | Ramos Herrera         |                 1 |    2931201.48
    16845 | Alberto             | Agudelo Bedoya        |                 1 |    2930972.04
    56348 | Sebastián           | Giraldo Pinzón        |                 1 |    2930539.92
   122644 | Édgar               | Bonilla Bedoya        |                 1 |    2930385.43
    80846 | Fabio               | Castro Guerrero       |                 1 |    2930246.89
    52201 | Sebastián           | Rangel Vera           |                 1 |    2930131.20
    60982 | Mariana             | Parra Carrillo        |                 1 |    2928876.52
   142148 | Sebastián           | Chamorro Moreno       |                 1 |    2927889.60
   103558 | Felipe              | Gutiérrez Peña        |                 1 |    2926879.85
    76105 | Antonio             | Ramírez Giraldo       |                 1 |    2925364.64
    72209 | Jaime               | Hernández Álvarez     |                 1 |    2924996.94
   149935 | Jazmín              | Erazo Betancur        |                 1 |    2924952.16
    27307 | Nelson              | Polanía Serrano       |                 1 |    2924193.00
    41240 | Teresa              | Contreras Arias       |                 1 |    2923593.68
    74685 | Jaime               | Bermúdez Correa       |                 1 |    2922681.55
    95835 | Emilio              | Sandoval Uribe        |                 1 |    2922480.00
    27501 | Yolanda             | Sandoval Londoño      |                 1 |    2920941.52
    38287 | José Guillermo      | Mosquera Lasso        |                 1 |    2920340.65
    33988 | Efraín              | Hernández Jiménez     |                 1 |    2919970.80
    93006 | Olga                | Ospina Londoño        |                 1 |    2919677.45
    88853 | Jazmín              | Cardona Betancur      |                 1 |    2918908.21
   118142 | Adriana             | Castro Correa         |                 1 |    2918826.06
   136908 | Libardo             | Zuluaga Tovar         |                 1 |    2918543.67
    38497 | Yuliana             | Calderón Ortiz        |                 1 |    2918515.30
    48835 | Fernando            | Serrano Torres        |                 1 |    2916867.00
    33367 | Mónica              | Vélez Rivera          |                 1 |    2914963.13
    47099 | Sebastián           | Mosquera Uribe        |                 1 |    2911714.90
   120144 | Leidy               | Osorio Bastidas       |                 1 |    2911509.90
    24109 | Santiago            | Henao Montoya         |                 1 |    2908575.87
    44104 | Miguel              | Losada Molina         |                 1 |    2908341.96
   116332 | María               | Ortiz Acevedo         |                 1 |    2907838.44
    85757 | Efraín Óscar        | Perdomo Flórez        |                 1 |    2907448.91
     1650 | Manuela             | Cardona Erazo         |                 1 |    2905599.60
    92673 | Laura Amparo        | Ibarra Trujillo       |                 1 |    2904966.12
    94416 | Fanny               | Caicedo Mora          |                 1 |    2904008.90
   142701 | Heriberto Guillermo | Díaz Ríos             |                 1 |    2903825.60
   115524 | Alejandro           | Losada Mejía          |                 1 |    2903394.65
    25735 | Gustavo             | Perdomo Losada        |                 1 |    2902691.13
    68619 | Daniel              | Rivera Carrillo       |                 1 |    2901868.34
   137851 | Daniela             | Montoya Narváez       |                 1 |    2901045.78
    25799 | Felipe              | Sandoval Marín        |                 1 |    2900463.16
    19175 | Stella              | Pérez Flórez          |                 1 |    2899859.81
   117459 | Hernando Miguel     | Pinzón Delgado        |                 1 |    2899482.63
    60137 | Beatriz             | Molina Ruiz           |                 1 |    2899412.60
   144185 | Javier              | Arango Zapata         |                 1 |    2898956.20
     2429 | Javier              | Muñoz Jaimes          |                 1 |    2898747.35
    77728 | Yeison              | Jaimes Ibarra         |                 1 |    2898516.15
    17714 | Rafael              | Jiménez Mosquera      |                 1 |    2895886.98
    84511 | Mario               | Duque Contreras       |                 1 |    2895302.96
    88959 | Stella Isabella     | Sandoval Castillo     |                 1 |    2894031.63
    34541 | Óscar               | Molina Parra          |                 1 |    2893549.82
   120285 | Carmen Sofía        | Gutiérrez Ortega      |                 1 |    2892630.23
   134936 | Samuel              | Carrillo Mejía        |                 1 |    2892627.92
    77226 | Édgar               | Mosquera Rangel       |                 1 |    2892605.60
   110946 | Iván Aníbal         | Tovar Correa          |                 1 |    2891917.45
    64982 | Francisco Wilson    | Chamorro Arango       |                 1 |    2891602.74
   131667 | Olga Martha         | Carrillo Perdomo      |                 1 |    2890758.75
    42228 | Julián              | Ríos Barrera          |                 1 |    2890155.63
    71514 | Nelson Carlos       | Duque Pinzón          |                 1 |    2888563.16
    72458 | Óscar               | Flórez Hernández      |                 1 |    2885563.42
    72511 | Julián              | Prada Romero          |                 1 |    2884859.95
    62973 | Marleny             | Montoya Ortega        |                 1 |    2882371.13
     2913 | Camilo              | Tovar Jaimes          |                 1 |    2882072.14
    91211 | Mauricio            | Niño Benavides        |                 1 |    2881706.86
   134662 | Gladys              | Narváez Galvis        |                 1 |    2881047.72
    60834 | Nicolás             | Vargas Duarte         |                 1 |    2879476.08
    60883 | Reinaldo            | Delgado Rincón        |                 1 |    2879262.64
   105847 | Nelson              | Restrepo Vera         |                 1 |    2879155.28
    65068 | Rafael              | Polanía Correa        |                 1 |    2878723.97
    20472 | Mateo               | Delgado Lasso         |                 1 |    2877234.71
    52176 | Alejandro Fabio     | González Álvarez      |                 1 |    2873429.12
    79107 | Gladys Edilma       | Martínez Prada        |                 1 |    2872594.04
    53823 | Rubén               | Ramos Chamorro        |                 1 |    2868749.43
    57801 | Cecilia             | Vera Jiménez          |                 1 |    2866029.36
   130533 | Camila Rosa         | Giraldo Betancur      |                 1 |    2865545.82
     3539 | Antonio             | Castro Álvarez        |                 1 |    2865466.09
   136148 | Ana                 | Martínez Mosquera     |                 1 |    2865397.50
    94886 | Mercedes            | Bastidas Rivera       |                 1 |    2865396.24
       58 | Gilberto            | Álvarez González      |                 1 |    2863909.69
   111286 | Germán Alberto      | Jiménez Ramírez       |                 1 |    2862534.44
   133919 | Diana Stella        | Acevedo Salazar       |                 1 |    2862028.92
   106549 | Yolanda             | Ruiz Caicedo          |                 1 |    2861017.89
    56947 | Juan Mateo          | Lozano González       |                 1 |    2860395.47
   103685 | Arturo              | Arango Jiménez        |                 1 |    2859562.80
    58652 | Rubén               | Pinzón Perdomo        |                 1 |    2859273.48
   134678 | Hugo                | Losada Bermúdez       |                 1 |    2858639.16
   144827 | Ana                 | Villamizar Cabrera    |                 1 |    2858131.98
    74616 | Blanca Yolanda      | Villamizar Flórez     |                 1 |    2858026.69
    19562 | Martha              | Erazo Agudelo         |                 1 |    2857980.49
   129857 | Inés                | Díaz Contreras        |                 1 |    2857920.78
    89770 | Reinaldo            | Salazar Chamorro      |                 1 |    2857050.64
     3277 | Patricia            | Hernández Medina      |                 1 |    2855300.77
    66440 | Paola Myriam        | Restrepo Burbano      |                 1 |    2853839.25
    61734 | José                | Jaimes Polanía        |                 1 |    2852986.24
   133060 | Julián              | Erazo Agudelo         |                 1 |    2851143.75
    26664 | Yuliana Viviana     | Benavides Muñoz       |                 1 |    2848935.10
   144598 | Elsa                | Gutiérrez Duarte      |                 1 |    2847713.85
   101671 | Héctor Hugo         | Serrano Carrillo      |                 1 |    2847232.37
    76133 | Carlos Héctor       | López Serrano         |                 1 |    2846375.80
    97120 | Daniel              | Londoño Cárdenas      |                 1 |    2845926.24
    78104 | Laura Teresa        | Torres Carrillo       |                 1 |    2845203.67
   148986 | Diego               | Arango Ortiz          |                 1 |    2844693.90
    53085 | Pedro               | Sánchez Calderón      |                 1 |    2843565.66
    16623 | Olga                | Peña Carrillo         |                 1 |    2843308.65
    65154 | Alejandro           | Niño Niño             |                 1 |    2841894.03
   138913 | Samuel              | Burbano Galvis        |                 1 |    2840255.87
    40641 | Yolanda             | Restrepo Arias        |                 1 |    2840252.50
   102266 | Nicolás             | López Peña            |                 1 |    2839930.16
    42303 | Ricardo             | Peña Álvarez          |                 1 |    2839903.36
    37516 | Esperanza           | Lasso López           |                 1 |    2839684.75
   120466 | Germán Jairo        | Jaimes Lasso          |                 1 |    2839095.22
    93557 | Antonio Manuel      | Cárdenas Flórez       |                 1 |    2838280.96
   110734 | Gloria Lucía        | Romero Calderón       |                 1 |    2836398.13
    72895 | Nicolás             | Restrepo Tovar        |                 1 |    2836396.01
    44525 | Efraín              | Rojas Acevedo         |                 1 |    2836377.66
     9811 | Camilo              | Mora Niño             |                 1 |    2834785.44
    55183 | Camilo Fabio        | Herrera Vera          |                 1 |    2833387.14
    89684 | Carolina            | Caicedo Delgado       |                 1 |    2833257.61
   107918 | Nicolás Ricardo     | Ortega Silva          |                 1 |    2833210.35
     3471 | Rubén               | Moreno Ospina         |                 1 |    2830574.11
    34828 | Gilberto Ricardo    | Quintero Ríos         |                 1 |    2830143.62
   126077 | Santiago            | Bermúdez Rincón       |                 1 |    2829298.16
    42591 | Jairo               | Moreno Ramírez        |                 1 |    2829203.72
   117256 | Wilmer              | Cabrera Delgado       |                 1 |    2829012.78
     7601 | Rafael Ramiro       | Mosquera Cárdenas     |                 1 |    2828788.38
   132056 | Isabella            | Cardona Ruiz          |                 1 |    2828370.16
   146471 | Dora                | Vargas García         |                 1 |    2827724.15
    39848 | Jairo Álvaro        | Herrera Prada         |                 1 |    2827536.56
    86003 | Blanca Luz          | Ramírez Burbano       |                 1 |    2824428.51
     9544 | Juliana             | Pérez Flórez          |                 1 |    2822785.74
    68332 | Sofía               | Molina Ruiz           |                 1 |    2822731.38
    71959 | Leidy               | Ospina Ramos          |                 1 |    2822406.00
    89048 | Arturo              | Moreno García         |                 1 |    2820935.85
    32409 | Brayan              | Moreno Prada          |                 1 |    2819732.03
   135360 | Myriam              | Trujillo Restrepo     |                 1 |    2818714.98
   100155 | Andrea Luz          | Mora Bonilla          |                 1 |    2818004.16
    47141 | Juan                | Gómez Muñoz           |                 1 |    2817076.72
     6823 | Andrea              | Duque Vargas          |                 1 |    2816954.14
    31997 | Brayan              | Mora Vélez            |                 1 |    2816644.50
    40944 | Paola               | Sandoval Betancur     |                 2 |    2813020.18
    32823 | Gabriela            | Quintero Ospina       |                 1 |    2812425.28
    24198 | Luis                | Cardona Barrera       |                 1 |    2811388.14
    93025 | Liliana             | Ríos Muñoz            |                 1 |    2811279.39
    67183 | Santiago            | Torres Betancur       |                 1 |    2811230.28
   143943 | Wilson              | Cabrera Ospina        |                 1 |    2810965.40
    24610 | Aníbal Diego        | Salazar Guerrero      |                 1 |    2809767.30
   104443 | Pedro               | Pinzón Ramírez        |                 1 |    2807425.95
    22445 | Samuel              | Arango Mosquera       |                 1 |    2806409.08
    17235 | Rodrigo             | Muñoz Betancur        |                 1 |    2805442.78
    89705 | Dora                | Vera Gutiérrez        |                 1 |    2800960.56
   101732 | Jaime               | Narváez Henao         |                 1 |    2800509.26
    63371 | Orlando David       | Ríos Osorio           |                 1 |    2798514.00
    49842 | Ruth                | Álvarez Arango        |                 1 |    2796898.65
    11800 | Lorena              | Muñoz Valencia        |                 1 |    2795984.52
   106830 | Ricardo Reinaldo    | Trujillo Quintero     |                 1 |    2795545.46
    21564 | Laura               | Mora Henao            |                 1 |    2795282.28
    26610 | Alejandro           | Montoya García        |                 1 |    2794908.91
    74682 | Mateo               | Villamizar Vargas     |                 1 |    2794170.50
   115955 | Diego               | Ortega Marín          |                 1 |    2790248.23
    62778 | Pedro               | Vargas Torres         |                 1 |    2789884.20
    99686 | Rosa Andrea         | Flórez Benavides      |                 1 |    2789126.47
   101950 | Fernando Julián     | Díaz Álvarez          |                 1 |    2788607.28
   134622 | Wilson Esteban      | Sandoval Bedoya       |                 1 |    2788128.18
   130840 | Dora                | Giraldo Delgado       |                 1 |    2786843.84
   130262 | Ramiro              | Pérez Ortiz           |                 1 |    2786791.68
    11440 | Luz                 | Pabón Benavides       |                 1 |    2785801.22
    97095 | Daniel              | Giraldo Ríos          |                 1 |    2785637.05
      437 | Ancízar             | Villamizar Martínez   |                 1 |    2785595.73
    22699 | Francisco Carlos    | Salazar Acevedo       |                 1 |    2785259.38
    78338 | Sara                | Ortiz Castillo        |                 1 |    2784399.81
    74304 | Abelardo            | Díaz Pérez            |                 1 |    2783033.71
   120843 | Ángela              | Henao Betancur        |                 1 |    2782684.41
    98317 | Paola               | Ortiz Bermúdez        |                 1 |    2781474.10
    72366 | Mariana             | Bastidas Quintero     |                 1 |    2780727.60
    52297 | Mauricio            | Zuluaga Londoño       |                 1 |    2779324.80
    61147 | Iván                | Ramos Montoya         |                 1 |    2778314.84
   140626 | Reinaldo            | Ramírez Bedoya        |                 1 |    2777813.45
   136786 | Alejandro           | Hernández Narváez     |                 1 |    2777083.03
    57662 | Martha              | Arias Ramos           |                 1 |    2776163.41
   109958 | Sara                | Rangel Calderón       |                 1 |    2775777.12
   105846 | Camila              | Perdomo Peña          |                 1 |    2774862.24
    36693 | Samuel              | Bonilla Ruiz          |                 1 |    2774439.40
    85854 | Édgar               | Cabrera Álvarez       |                 1 |    2773306.69
   126536 | Francisco           | Quintero Arias        |                 1 |    2772292.35
   112756 | Diana               | Zuluaga Quintero      |                 1 |    2772009.68
    83415 | Jorge               | Narváez Niño          |                 1 |    2770556.77
    85631 | Samuel Rafael       | Perdomo Londoño       |                 1 |    2770413.82
   120165 | Javier              | López Montoya         |                 1 |    2769466.52
   107426 | Erika Ana           | Cabrera Flórez        |                 1 |    2769429.01
    23042 | Mario               | Cabrera Cáceres       |                 1 |    2768426.10
   120570 | Efraín              | Prada Rodríguez       |                 2 |    2766998.63
    99560 | Óscar               | Montoya Ospina        |                 1 |    2766171.30
   104831 | Marleny             | Caicedo Prada         |                 1 |    2766164.91
    41642 | Mercedes            | Caicedo Valencia      |                 1 |    2765828.39
   121869 | Ana                 | Suárez Montoya        |                 1 |    2765703.82
     2086 | Isabella            | Cardona Vera          |                 1 |    2764864.71
   133087 | Héctor              | Rivera Marín          |                 1 |    2764089.09
    62875 | Yeison              | Acevedo Castillo      |                 1 |    2763276.60
    24209 | Alejandra Ángela    | Rojas Osorio          |                 1 |    2762754.28
   117950 | Guillermo           | Ibarra Contreras      |                 1 |    2762018.71
    89606 | Yesenia             | Erazo González        |                 1 |    2760752.61
    83877 | Miguel              | Díaz Jaimes           |                 2 |    2759279.06
    36793 | Sebastián           | Marín Rojas           |                 1 |    2757962.35
   145483 | Aura                | Sandoval Trujillo     |                 1 |    2757834.30
   102980 | Rafael              | González Castro       |                 1 |    2756757.55
    15342 | Fanny               | Sánchez Rangel        |                 1 |    2755234.10
    85317 | Ramiro Pedro        | Ramos Gutiérrez       |                 1 |    2755145.35
   136581 | Rafael              | Benavides Pérez       |                 1 |    2754364.14
    69291 | Yesenia Rosa        | Betancur Herrera      |                 1 |    2754151.60
   149822 | Esteban Antonio     | Villamizar García     |                 1 |    2754076.97
    39070 | Lorena              | Burbano Agudelo       |                 1 |    2753287.12
   135965 | Teresa              | Gutiérrez Narváez     |                 1 |    2752319.40
    79278 | Ángela              | Arias Polanía         |                 1 |    2750235.71
    30972 | Santiago Carlos     | Ibarra Chamorro       |                 1 |    2744645.14
   127603 | Luisa               | Betancur Duque        |                 1 |    2744589.11
    84839 | Mariana Esperanza   | Rangel Rincón         |                 1 |    2744494.08
   113649 | Gladys              | Betancur Losada       |                 1 |    2743964.58
    53136 | Jairo               | Torres Zuluaga        |                 1 |    2742289.00
   126172 | Javier Diego        | Trujillo Duque        |                 1 |    2741888.18
    90902 | Heriberto Iván      | Rojas Bedoya          |                 1 |    2740349.10
    31470 | Cristian            | Gutiérrez Pabón       |                 1 |    2739447.65
    57540 | Dora                | Flórez Valencia       |                 1 |    2738956.35
   108592 | Camilo              | Valencia González     |                 1 |    2738772.00
   119015 | Liliana             | Castillo García       |                 1 |    2738370.40
   124812 | Ancízar             | Benavides Cardona     |                 1 |    2738157.62
    33340 | Mateo               | Barrera Sandoval      |                 1 |    2736044.60
     2717 | Samuel Ancízar      | Niño Giraldo          |                 1 |    2735145.10
     2473 | Libardo             | Moreno Arias          |                 1 |    2733303.48
   110559 | Santiago            | Henao Betancur        |                 1 |    2733198.70
    44766 | Gilberto            | Narváez Castro        |                 1 |    2732470.20
    34806 | Natalia Lorena      | Cuéllar Parra         |                 1 |    2731962.86
    50056 | Leidy               | Serrano Castro        |                 1 |    2731438.31
     3223 | Pedro               | Rangel Cáceres        |                 1 |    2730750.90
   102963 | Julián              | Delgado Correa        |                 1 |    2730682.81
    31970 | Libardo             | Pabón Bonilla         |                 1 |    2730027.49
    80134 | Ricardo             | Caicedo Martínez      |                 1 |    2729852.53
    63272 | Yesenia             | Jaimes Mosquera       |                 1 |    2728998.46
   131852 | Natalia Laura       | Ríos Marín            |                 1 |    2727895.17
    77294 | Rosa                | Osorio Duarte         |                 1 |    2727668.58
     1062 | Sofía               | Álvarez Bedoya        |                 1 |    2727507.29
     4479 | Sandra              | Díaz Martínez         |                 1 |    2727116.55
    84724 | Diego               | Bedoya Tovar          |                 1 |    2725740.90
   143415 | Orlando             | Chamorro Lozano       |                 1 |    2723514.07
   113672 | Cristian            | Jiménez Jaimes        |                 1 |    2722899.84
    26417 | Rocío Claudia       | Salazar Jiménez       |                 1 |    2722714.86
    93800 | Luz                 | Bonilla Salazar       |                 1 |    2722464.00
   124231 | Iván                | Quintero Medina       |                 1 |    2721440.89
    58194 | Rafael Sebastián    | Mejía Silva           |                 1 |    2721352.47
   149921 | Juan                | Bermúdez Quintero     |                 1 |    2719797.51
    22325 | María               | Vargas Henao          |                 1 |    2719402.56
    69289 | Manuel              | Marín Pinzón          |                 1 |    2716438.36
    71902 | Gustavo Reinaldo    | Ortiz Delgado         |                 1 |    2712962.11
   107190 | Wilson Emilio       | Molina Calderón       |                 1 |    2712919.19
    59252 | Alejandra           | Zapata Caicedo        |                 2 |    2712900.27
    46268 | Reinaldo            | Castillo Betancur     |                 1 |    2711906.30
   115627 | Antonio             | Romero Zuluaga        |                 1 |    2710808.64
    87673 | Antonio             | Vera Cuéllar          |                 1 |    2710687.65
    95125 | Héctor              | Duque Valencia        |                 1 |    2710620.46
    37636 | Mercedes            | Marín Lozano          |                 1 |    2710097.54
     2939 | Gilberto Gustavo    | Díaz Muñoz            |                 1 |    2709518.96
     6590 | Esteban Orlando     | Contreras Ortiz       |                 1 |    2705673.76
    18857 | Rosa                | Valencia Bastidas     |                 1 |    2705606.38
    12185 | Sandra              | Ramírez Bastidas      |                 1 |    2705332.23
    71197 | Ricardo             | Mora Cáceres          |                 1 |    2704190.55
   141848 | Mercedes            | Ospina Pinzón         |                 1 |    2703049.20
     8052 | Ricardo             | Valencia Bermúdez     |                 1 |    2702935.14
   149377 | Jairo               | Flórez Parra          |                 1 |    2702908.27
    64019 | Ángela              | Zuluaga Mora          |                 1 |    2702580.22
     9692 | Rocío Blanca        | Ortiz Silva           |                 1 |    2701327.85
   149900 | Ana Gabriela        | Arango Peña           |                 1 |    2700653.37
    37449 | Sandra              | Narváez Uribe         |                 1 |    2698422.00
    82593 | Jaime Óscar         | Restrepo Bastidas     |                 1 |    2697004.49
    20976 | Dora                | Duarte Barrera        |                 1 |    2696311.80
    26747 | Daniela             | Cabrera Uribe         |                 1 |    2695529.20
    61427 | Jorge               | Gómez Pérez           |                 1 |    2694260.06
    80507 | Édgar               | Díaz Ramírez          |                 1 |    2694189.96
    11215 | Andrea              | Restrepo Ibarra       |                 1 |    2693999.97
     6110 | Cecilia             | Acevedo Pinzón        |                 1 |    2693140.36
     7010 | Leidy               | Arango Díaz           |                 1 |    2692872.65
    49116 | Beatriz             | Perdomo Bermúdez      |                 1 |    2691579.90
     5785 | Esperanza Teresa    | Osorio Gutiérrez      |                 1 |    2690836.02
    84530 | Alba                | Ospina Polanía        |                 1 |    2690573.74
    96921 | Amparo              | Cáceres Sánchez       |                 1 |    2689993.02
   143042 | Abelardo            | González Cardona      |                 1 |    2689942.28
    73564 | Ramiro              | Correa Rangel         |                 1 |    2689707.74
    26675 | Carlos Santiago     | Lozano Contreras      |                 1 |    2689511.40
    58216 | Liliana             | Tovar Ortiz           |                 1 |    2689441.69
   136170 | Gilberto            | Torres Barrera        |                 1 |    2688167.61
     4064 | Stella Marcela      | Lasso Caicedo         |                 1 |    2687585.34
    72127 | Mercedes            | Salazar Prada         |                 1 |    2687399.10
    47745 | Ramiro              | Jaimes Henao          |                 1 |    2687386.27
    81505 | Sofía               | Tovar González        |                 1 |    2686679.21
    20792 | Manuel              | Polanía Ortega        |                 1 |    2685457.53
    34531 | Álvaro              | Mosquera Barrera      |                 1 |    2682634.56
    51613 | José                | Contreras Arango      |                 1 |    2681957.25
    33669 | Dora                | Díaz Valencia         |                 1 |    2681486.10
    14752 | Diego               | Cárdenas Bermúdez     |                 1 |    2680591.20
   131150 | Manuel              | Correa González       |                 1 |    2680568.84
    15288 | Viviana Inés        | Bastidas Díaz         |                 1 |    2679866.80
   142928 | Isabella            | Cabrera Delgado       |                 1 |    2678981.58
    71034 | Santiago            | Bedoya Perdomo        |                 1 |    2678271.02
     9953 | Martha              | Cáceres Cuéllar       |                 1 |    2678112.32
    92851 | Álvaro Mario        | Suárez Vargas         |                 1 |    2676872.55
    81176 | Carmen              | Prada Rivera          |                 1 |    2675534.71
    21084 | Gloria Gladys       | Rodríguez Carrillo    |                 1 |    2675019.96
    23041 | Yeison Andrés       | Castro Chamorro       |                 1 |    2674546.42
   107104 | Mauricio            | Gutiérrez Mejía       |                 1 |    2674518.44
    28366 | Liliana             | Jiménez Castro        |                 1 |    2674480.02
    74044 | Patricia Erika      | Vargas Arango         |                 1 |    2672681.22
    13772 | Mónica Inés         | Narváez Vera          |                 1 |    2672610.26
    43990 | Gloria              | Chamorro Parra        |                 1 |    2671564.16
    53504 | Alba Héctor         | Lozano Uribe          |                 1 |    2671428.16
   141835 | Gabriela            | Vargas López          |                 1 |    2671225.86
   127216 | Heriberto           | Osorio Salazar        |                 1 |    2670787.14
    26200 | Alberto             | Ortiz Ortega          |                 1 |    2669223.13
    74269 | Samuel Francisco    | Guerrero Parra        |                 1 |    2669087.75
    47119 | Yeison              | Arias Restrepo        |                 1 |    2669051.15
   118101 | Hugo                | Lasso Romero          |                 1 |    2668499.10
    16618 | Olga                | Vélez Rojas           |                 1 |    2667847.64
    25220 | Gloria Mónica       | Ramírez Serrano       |                 1 |    2664668.52
   111516 | Luisa Mónica        | Calderón Rangel       |                 1 |    2664150.21
    69471 | Wilson              | Jiménez Cáceres       |                 1 |    2662205.74
   117241 | Aníbal              | Benavides Ríos        |                 1 |    2661545.33
    73441 | David               | Gómez Pérez           |                 1 |    2659938.79
    19980 | Gustavo             | Duarte Ramos          |                 1 |    2659569.30
   115761 | Jaime Santiago      | Giraldo Muñoz         |                 1 |    2658229.25
    81047 | Heriberto           | Calderón Rincón       |                 1 |    2656742.35
   145168 | Héctor Álvaro       | Silva Álvarez         |                 1 |    2656476.78
   134494 | Andrés              | Betancur Hernández    |                 1 |    2654953.12
   119323 | Viviana             | Ramírez Vera          |                 1 |    2654494.44
    46302 | Álvaro              | Hernández Ruiz        |                 1 |    2653648.10
     6957 | Marleny             | Rivera Prada          |                 1 |    2652689.83
     6550 | Sandra              | Mosquera Niño         |                 1 |    2652556.94
    27719 | Diego               | Agudelo Pinzón        |                 1 |    2652344.44
   113330 | Amparo              | Duque Castillo        |                 1 |    2650212.16
   134819 | Cristian            | Caicedo Arias         |                 1 |    2649697.10
    86483 | Lorena              | Polanía Giraldo       |                 1 |    2649584.44
    54227 | Patricia            | Martínez Londoño      |                 1 |    2648766.66
    57119 | Edilma              | Valencia Duque        |                 1 |    2648619.90
    14040 | Myriam Leidy        | Bermúdez Rincón       |                 1 |    2648460.60
     9277 | Sebastián Emilio    | Jaimes Rodríguez      |                 1 |    2648244.08
    20057 | Patricia            | Álvarez Quintero      |                 1 |    2647187.55
    48082 | Jaime               | Acevedo Flórez        |                 1 |    2645964.72
   127085 | Alba                | Muñoz Torres          |                 1 |    2645789.34
   111130 | María Javier        | Cárdenas García       |                 1 |    2645618.62
    96501 | Manuela Lorena      | Tovar Díaz            |                 1 |    2645215.68
      516 | Guillermo Julián    | Castro Mosquera       |                 1 |    2641211.70
   112282 | Diana               | Rojas Osorio          |                 1 |    2641129.92
   130767 | Leidy               | Castillo Niño         |                 1 |    2640991.82
   102899 | Manuel              | Acevedo Cardona       |                 1 |    2640026.09
    42229 | Jorge               | Benavides Muñoz       |                 1 |    2639751.94
    66007 | Fabio               | Agudelo Tovar         |                 1 |    2639447.16
    71177 | Amparo              | Delgado Bonilla       |                 1 |    2637561.28
    57506 | Carlos              | Pinzón Giraldo        |                 1 |    2637302.05
    75211 | Luis                | Duarte Ríos           |                 1 |    2634058.94
    43434 | Yuliana             | Barrera Valencia      |                 1 |    2634008.30
    45110 | Ana Ángela          | Contreras Pérez       |                 1 |    2632525.98
    70279 | Óscar Samuel        | Caicedo Quintero      |                 1 |    2632093.75
    64794 | Manuela             | Lozano García         |                 1 |    2631156.88
   106883 | Carmen              | Mosquera Cardona      |                 1 |    2631099.75
    63434 | Gustavo             | Bastidas Pabón        |                 1 |    2630113.63
    10516 | Jazmín Sofía        | Vera Vélez            |                 1 |    2628873.78
    22450 | Libardo             | Bastidas Gutiérrez    |                 1 |    2627566.92
   145439 | José                | Giraldo Álvarez       |                 1 |    2625590.79
    71226 | Carmen              | Arango Bermúdez       |                 1 |    2624538.88
    88057 | Jairo               | Mejía Erazo           |                 1 |    2624438.46
   128564 | Miguel              | Tovar Pérez           |                 1 |    2623503.70
    45147 | Fanny               | Rangel Erazo          |                 1 |    2622375.89
    79114 | Marcela             | Bedoya Pabón          |                 1 |    2621914.97
    43254 | Arturo Miguel       | Ospina Gutiérrez      |                 1 |    2621582.88
    92047 | Efraín              | Flórez Caicedo        |                 1 |    2621384.85
    53413 | Mauricio            | Ramos Polanía         |                 1 |    2621347.92
   135767 | Alberto             | Londoño Hernández     |                 1 |    2621088.10
    23586 | Stella              | Marín Martínez        |                 1 |    2619785.36
    20313 | Guillermo           | Bermúdez Díaz         |                 1 |    2617783.73
    88869 | Daniel              | Henao Zapata          |                 1 |    2616912.32
   117302 | Luisa               | Bedoya Gutiérrez      |                 1 |    2616687.86
     1853 | Aura                | Valencia Bastidas     |                 1 |    2616402.34
    22357 | Rubén               | Giraldo Polanía       |                 1 |    2616244.58
   145622 | Fernando            | Mosquera Uribe        |                 1 |    2615929.47
   109424 | Daniela             | Ibarra Calderón       |                 1 |    2615626.67
    99594 | David               | Agudelo Restrepo      |                 1 |    2615503.65
    68909 | Daniel              | Ospina Ramírez        |                 1 |    2615219.75
     6084 | Sofía               | Parra Peña            |                 1 |    2614713.42
    56718 | Ángela              | Silva Peña            |                 1 |    2613832.07
    80686 | Sandra              | Giraldo Arias         |                 1 |    2613369.36
    61682 | Miguel              | Serrano Sandoval      |                 1 |    2613203.18
   134812 | Nelson              | Henao Prada           |                 1 |    2612170.22
    80603 | Óscar               | García Valencia       |                 1 |    2611933.72
    42412 | María               | Quintero Agudelo      |                 1 |    2611309.03
   149877 | Heriberto           | Prada Vélez           |                 1 |    2610366.46
    39747 | Ancízar             | Rojas Ríos            |                 1 |    2610198.01
    70370 | Jaime               | Díaz Rincón           |                 1 |    2608411.83
    30303 | Wilmer              | Torres Acevedo        |                 1 |    2607816.70
    32944 | Luisa               | Vera Calderón         |                 1 |    2606717.76
    42685 | Antonio             | Rincón Cáceres        |                 1 |    2606081.52
   119924 | Rubén               | Jiménez Chamorro      |                 1 |    2605915.00
   141576 | Dora                | Benavides López       |                 1 |    2604117.76
   138607 | Mauricio            | Castillo Díaz         |                 1 |    2602652.68
    63997 | Wilson              | Chamorro Molina       |                 1 |    2602020.41
    60183 | Alberto             | Bastidas Cáceres      |                 1 |    2601029.75
   128471 | Julián Guillermo    | Martínez Giraldo      |                 1 |    2599872.12
    70424 | Ancízar Libardo     | Betancur Serrano      |                 1 |    2599821.69
    17974 | Fabio               | Suárez Tovar          |                 1 |    2599333.22
   112238 | Manuela Camila      | Molina Duarte         |                 1 |    2596707.41
    81630 | Emilio              | Jaimes Pabón          |                 1 |    2596041.22
    82062 | Julián Orlando      | Arango Guerrero       |                 1 |    2595446.52
   130939 | Felipe Ricardo      | Perdomo Losada        |                 1 |    2594802.31
   131798 | Fabio Rafael        | Burbano Jiménez       |                 1 |    2593064.16
   136626 | Rubén               | Mosquera Martínez     |                 1 |    2590372.40
    42731 | Orlando Cristian    | Arias Rodríguez       |                 1 |    2589799.88
    26078 | Alejandra Erika     | Ríos Contreras        |                 1 |    2588184.52
   141563 | Mateo               | Losada Arango         |                 1 |    2587774.72
   147572 | Cecilia             | Ortiz Uribe           |                 1 |    2586293.60
   126783 | Alejandra           | Lasso Acevedo         |                 1 |    2585285.64
    54722 | Gustavo             | Álvarez Lasso         |                 1 |    2583681.63
    83733 | Nicolás             | Castillo Herrera      |                 1 |    2582918.59
    48347 | Ángela              | Quintero Galvis       |                 1 |    2580558.14
   143429 | Diana               | Silva Cáceres         |                 1 |    2579587.20
   114089 | Abelardo            | Cáceres Hernández     |                 1 |    2579414.93
     4516 | Elsa                | Guerrero Díaz         |                 1 |    2578670.94
   124426 | Alberto             | Rincón Rangel         |                 1 |    2578583.50
    94502 | Pedro Mauricio      | Martínez Ortega       |                 1 |    2577616.40
   124787 | Héctor              | Carrillo Ríos         |                 1 |    2577454.08
    92112 | Óscar               | Contreras Uribe       |                 1 |    2576402.80
    93710 | Jorge               | Álvarez Bonilla       |                 1 |    2575557.47
    65590 | Cecilia             | Vera Rivera           |                 1 |    2575336.60
   116239 | Viviana             | Díaz Perdomo          |                 1 |    2574780.84
    10552 | Edilma              | Henao Barrera         |                 1 |    2574555.04
   117100 | Cristian            | Arango Parra          |                 1 |    2572875.74
    71635 | Libardo Wilmer      | Salazar González      |                 1 |    2572869.20
   137513 | Liliana Yesenia     | Vera Gutiérrez        |                 1 |    2572596.36
    71713 | Samuel Juan         | Sánchez Suárez        |                 1 |    2571350.05
    95504 | Julián              | Tovar Duarte          |                 1 |    2570652.40
    87520 | Javier              | Caicedo Gutiérrez     |                 1 |    2569110.60
    22825 | Pedro               | Ramírez Mejía         |                 1 |    2568575.14
   147147 | Rosa                | Galvis Carrillo       |                 1 |    2568050.01
    19059 | Stella              | Uribe Ospina          |                 1 |    2567645.70
    95470 | Julián Nelson       | Sánchez Cardona       |                 1 |    2567616.26
    12607 | Andrés Sebastián    | Ortiz Salazar         |                 1 |    2567025.60
    80241 | Isabella            | Marín Salazar         |                 1 |    2565739.50
    49258 | Marleny             | Barrera Erazo         |                 1 |    2565218.00
   106423 | María               | Moreno Mosquera       |                 1 |    2563764.76
   146792 | Gilberto            | García Bastidas       |                 1 |    2562913.18
    29972 | Rafael              | Rivera Arias          |                 1 |    2562452.07
    39440 | Abelardo            | Perdomo Galvis        |                 1 |    2562413.92
     4839 | Cristian            | Londoño Mosquera      |                 1 |    2561523.80
   108287 | Abelardo            | Ramírez Correa        |                 1 |    2560539.24
    17579 | Teresa              | Jiménez Acevedo       |                 1 |    2560204.80
     2601 | Yolanda             | Montoya Silva         |                 1 |    2559693.62
   142284 | Mónica              | Tovar López           |                 1 |    2559098.50
   137669 | Pedro               | Muñoz Muñoz           |                 1 |    2559078.01
    44536 | Mercedes            | Moreno Duarte         |                 1 |    2557975.07
    14808 | Aníbal              | Romero Flórez         |                 1 |    2557671.80
   131244 | Abelardo            | Ospina Polanía        |                 1 |    2556878.45
    28086 | Inés                | Parra Salazar         |                 1 |    2556550.38
    64026 | Marcela             | Bastidas Sandoval     |                 1 |    2555511.24
    91178 | Aníbal              | Losada Marín          |                 1 |    2555504.56
    22259 | Arturo              | Contreras Hernández   |                 1 |    2554305.36
    22854 | Ruth                | Perdomo Calderón      |                 1 |    2554279.49
      513 | Fabio               | Muñoz Zapata          |                 1 |    2553456.24
   149650 | Mario               | Zapata Henao          |                 1 |    2553104.35
     7991 | Rafael              | Ríos Lasso            |                 1 |    2552717.64
    60484 | Wilmer              | Quintero Cabrera      |                 1 |    2552496.43
    50183 | Álvaro Pedro        | González Restrepo     |                 1 |    2552462.38
    49789 | Cecilia             | Peña Martínez         |                 1 |    2551575.51
   118638 | Pedro               | Serrano Erazo         |                 1 |    2550986.48
    75882 | Ancízar             | Hernández Erazo       |                 1 |    2550953.04
    88001 | Elsa                | Jiménez Losada        |                 1 |    2549011.81
    56925 | Elsa                | Vargas Benavides      |                 1 |    2548882.50
     3744 | Daniel              | Bastidas Mosquera     |                 1 |    2548360.08
    58568 | Diana               | Mejía Contreras       |                 1 |    2547804.38
    11838 | Fanny               | Serrano Guerrero      |                 1 |    2547524.88
    51245 | Hernando            | Narváez Hernández     |                 1 |    2546917.41
   124367 | Andrés              | Osorio Torres         |                 1 |    2544686.65
   148596 | Juliana             | Betancur Bedoya       |                 1 |    2543976.75
     6303 | Camila              | Bermúdez Vélez        |                 1 |    2543912.35
   134849 | Andrés Yeison       | Parra Marín           |                 1 |    2543700.89
    44917 | Carlos Nicolás      | Pérez Uribe           |                 1 |    2543270.40
    61906 | Wilson              | Cardona Ríos          |                 1 |    2541795.28
    69161 | Jazmín              | Serrano Pérez         |                 1 |    2541566.30
   134117 | Andrea              | Medina Agudelo        |                 1 |    2536740.90
    30008 | Daniela             | Carrillo Sánchez      |                 1 |    2536436.87
   135428 | Felipe              | Benavides Losada      |                 1 |    2536126.00
   142705 | Erika               | Bermúdez Molina       |                 1 |    2535412.35
   138205 | Abelardo            | Duarte Carrillo       |                 1 |    2535408.85
    80881 | Blanca              | Pinzón Osorio         |                 1 |    2534269.98
    87646 | Olga                | Barrera Correa        |                 1 |    2533804.32
    53623 | Elsa                | Calderón Mejía        |                 1 |    2532669.29
   102878 | Jaime Miguel        | Parra Moreno          |                 1 |    2532468.68
   143718 | Luisa               | Trujillo Álvarez      |                 1 |    2529829.18
    31851 | Hugo Brayan         | López Castro          |                 1 |    2529676.44
    46021 | Fernando Arturo     | Ramírez Parra         |                 1 |    2527581.98
    82526 | Felipe Rafael       | Erazo Hernández       |                 1 |    2527236.46
    76702 | Gabriela Aura       | Díaz López            |                 1 |    2526472.26
    82388 | Claudia Manuela     | Pabón Zuluaga         |                 1 |    2526399.12
   109888 | Fabio               | Molina Ramos          |                 1 |    2525792.61
   148055 | Natalia             | Salazar Erazo         |                 1 |    2525543.46
    19642 | Andrea              | Flórez Ramírez        |                 1 |    2525366.40
    92646 | Daniel              | Ortiz Torres          |                 1 |    2524309.82
    59253 | Rosa Gabriela       | Jaimes Trujillo       |                 1 |    2523506.04
    32923 | Abelardo            | Salazar González      |                 1 |    2523143.62
    58267 | Edilma              | Sandoval Rincón       |                 1 |    2522084.04
   125271 | Ricardo             | Rincón Jaimes         |                 1 |    2522032.52
    97420 | Paola               | Herrera Erazo         |                 1 |    2521790.28
    23481 | Sebastián           | Guerrero Benavides    |                 1 |    2521615.93
   102643 | Nubia Erika         | Sánchez Narváez       |                 1 |    2520511.26
   148848 | Alejandro           | Torres Burbano        |                 1 |    2518548.16
   135307 | Paola               | Muñoz Ortega          |                 1 |    2518520.62
    16512 | Julián              | Ibarra Narváez        |                 1 |    2518222.96
   124264 | Mercedes            | Romero Serrano        |                 1 |    2517860.31
     2122 | Yesenia             | Osorio López          |                 1 |    2516961.92
    47317 | Dora                | Ramos Delgado         |                 1 |    2516208.00
   112123 | Myriam Mónica       | Barrera Polanía       |                 1 |    2515994.77
   129698 | Manuel              | Ospina Quintero       |                 1 |    2515269.70
    81014 | Antonio             | Cabrera Jaimes        |                 1 |    2514802.68
    49692 | Mercedes            | Osorio Rodríguez      |                 1 |    2514204.60
    66926 | Amparo Juliana      | Romero Tovar          |                 1 |    2513341.05
    72893 | Liliana             | Suárez López          |                 1 |    2513263.55
    61062 | Heriberto Fernando  | Salazar Jaimes        |                 1 |    2513152.16
    55952 | Rafael              | Zuluaga Ortiz         |                 1 |    2512427.28
   110279 | Yeison              | Villamizar Carrillo   |                 1 |    2512274.28
    36075 | Manuel              | Losada Tovar          |                 1 |    2511932.29
    32723 | Samuel              | Losada Vargas         |                 1 |    2511607.10
    29656 | Esperanza Inés      | Correa Mosquera       |                 1 |    2509309.62
   124667 | Teresa Sofía        | Villamizar García     |                 1 |    2509058.83
    66126 | Antonio             | Ortiz García          |                 1 |    2508982.15
    86984 | Luisa               | Zuluaga Barrera       |                 1 |    2508695.01
    98387 | Yuliana             | Torres Mosquera       |                 1 |    2508629.92
    18182 | María               | Ibarra Torres         |                 1 |    2507698.80
    60226 | Esteban             | Quintero Rincón       |                 1 |    2505942.90
    25371 | Nelson              | Londoño Cáceres       |                 1 |    2505902.40
   117988 | Myriam              | Burbano Erazo         |                 1 |    2501741.97
   143555 | Mercedes            | Zapata Caicedo        |                 1 |    2501522.96
   112150 | Wilson              | Benavides Sánchez     |                 1 |    2501311.68
    74733 | Marcela             | Quintero Carrillo     |                 1 |    2501276.58
   100493 | Daniela             | Serrano Rodríguez     |                 1 |    2500532.32
   126801 | Myriam              | Rodríguez Jaimes      |                 1 |    2499284.00
   109449 | Cristian            | Cáceres Pabón         |                 1 |    2499212.40
    88762 | Isabella            | Bastidas Marín        |                 1 |    2498370.34
    92218 | Amparo              | Arias Trujillo        |                 1 |    2497514.08
    94164 | Alberto             | Pinzón Rojas          |                 1 |    2497153.85
    64246 | Sandra              | Galvis Chamorro       |                 1 |    2496752.46
    52805 | Samuel              | Benavides Correa      |                 1 |    2496045.86
    16139 | Pedro               | Salazar Duque         |                 1 |    2495823.80
     8005 | Esperanza           | Ramírez Vera          |                 1 |    2495328.00
   123653 | Carolina Aura       | Arango Sánchez        |                 1 |    2493239.66
    11884 | Esperanza           | Vargas Cáceres        |                 1 |    2491441.80
    95120 | Aníbal              | Herrera Betancur      |                 1 |    2490515.72
    45395 | Hernando Rodrigo    | Galvis Mora           |                 1 |    2490393.60
    25740 | Juliana             | Caicedo Villamizar    |                 1 |    2490196.41
    37902 | Marcela             | Ramos Castillo        |                 1 |    2489919.96
     6553 | Alejandro           | Mosquera Jaimes       |                 1 |    2489224.43
     6301 | Diego Rafael        | Ortega Narváez        |                 1 |    2488573.63
    51772 | Jairo               | Hernández Torres      |                 1 |    2488418.01
    59701 | Luis                | Narváez Giraldo       |                 1 |    2487757.03
   134172 | Gilberto Carlos     | Polanía Molina        |                 1 |    2487527.25
    75287 | Aníbal              | Bonilla Díaz          |                 1 |    2486962.35
    16202 | Beatriz Cecilia     | Flórez Agudelo        |                 1 |    2486707.08
   132463 | Gabriela            | Bastidas Bedoya       |                 1 |    2485824.39
   113480 | Sara                | Ruiz Lasso            |                 1 |    2484560.57
    67545 | Ramiro              | Vargas Burbano        |                 1 |    2484493.57
   107049 | Luis                | Guerrero Ramírez      |                 1 |    2484178.62
    65645 | Myriam              | Ruiz Henao            |                 1 |    2484013.98
    90372 | Germán              | Prada González        |                 1 |    2483577.60
   149522 | Juliana Viviana     | Muñoz Niño            |                 1 |    2483444.80
    98817 | Daniela             | Castillo Bastidas     |                 1 |    2483424.28
    24369 | Marleny Daniela     | Osorio Villamizar     |                 1 |    2483169.08
    55410 | Mauricio            | López Trujillo        |                 1 |    2482303.26
     7561 | Ancízar             | Jaimes Ramos          |                 1 |    2482099.32
    39660 | Yuliana             | Medina Agudelo        |                 1 |    2482068.05
   102119 | Samuel              | Ramos Parra           |                 1 |    2481782.90
   146699 | Rocío               | Benavides Pabón       |                 1 |    2479601.41
   133617 | Fernando Gustavo    | Parra Moreno          |                 1 |    2478863.45
   113576 | Paola               | Gómez Zuluaga         |                 1 |    2477041.92
    42668 | Fernando            | Ríos Polanía          |                 1 |    2476998.00
    73195 | Javier              | Parra Barrera         |                 1 |    2475512.96
    38052 | Gilberto Édgar      | Serrano Restrepo      |                 1 |    2475241.00
   134950 | Yeison Camilo       | Lasso Serrano         |                 1 |    2474741.16
   103076 | Manuela             | Rodríguez Parra       |                 1 |    2471931.84
    84518 | Samuel              | Narváez Mosquera      |                 1 |    2471657.97
   130771 | Santiago Rodrigo    | Henao Sánchez         |                 1 |    2471477.20
   136678 | Rafael Gustavo      | Calderón Agudelo      |                 1 |    2470991.77
   121827 | Yeison              | Ruiz Acevedo          |                 1 |    2470850.08
    22194 | Samuel Guillermo    | Uribe Prada           |                 1 |    2470772.50
    47001 | Nicolás             | López Cuéllar         |                 1 |    2470693.31
   138754 | David               | Rangel Caicedo        |                 1 |    2470663.21
    98364 | Pedro               | Mejía Jaimes          |                 1 |    2470436.58
    42878 | Carolina            | Marín Lozano          |                 1 |    2470080.04
   101313 | Diego Gustavo       | Rivera Carrillo       |                 1 |    2469461.17
    59242 | Carolina Diana      | Cáceres Chamorro      |                 1 |    2468896.20
   117410 | Rodrigo Sebastián   | Mosquera Sandoval     |                 1 |    2468826.10
   122827 | Sofía               | Pabón Castillo        |                 1 |    2468076.80
     8946 | María               | López Ortega          |                 1 |    2466849.49
   138582 | Mauricio Aníbal     | Caicedo Parra         |                 1 |    2465308.56
   126040 | Samuel              | González Niño         |                 1 |    2465195.88
    41917 | Samuel              | Gutiérrez Benavides   |                 1 |    2464105.44
    53921 | Manuela             | Molina Correa         |                 1 |    2463866.24
    75779 | Esteban             | Silva Vélez           |                 1 |    2463781.37
    43707 | Luisa               | Giraldo Mosquera      |                 1 |    2463678.80
   145737 | Pedro Samuel        | Contreras Correa      |                 1 |    2463453.62
    73336 | Olga                | Ibarra Arango         |                 1 |    2463078.75
   140164 | Mariana             | Henao Molina          |                 1 |    2462596.00
   114205 | Gustavo             | Barrera Ortiz         |                 1 |    2462543.67
    32235 | Juliana             | Agudelo Narváez       |                 1 |    2462503.88
      780 | Alejandra Rocío     | Parra Bonilla         |                 1 |    2462093.01
   129367 | Samuel              | Prada Romero          |                 1 |    2461200.00
    60632 | Ricardo             | Villamizar Polanía    |                 1 |    2460883.60
     5068 | Adriana Myriam      | Delgado García        |                 1 |    2460744.15
   114977 | Mercedes            | Sánchez Castro        |                 1 |    2460288.29
    56647 | Ruth                | Cuéllar Losada        |                 1 |    2460267.27
   126343 | Santiago            | Vélez Herrera         |                 1 |    2456888.99
    77212 | Abelardo            | Rojas Losada          |                 1 |    2456284.63
    28291 | Rafael              | Osorio Zapata         |                 1 |    2455876.39
   116947 | Inés                | Vargas Pérez          |                 1 |    2455536.22
    29708 | Luz                 | Pabón Caicedo         |                 1 |    2455502.40
   147400 | Libardo José        | Gutiérrez Polanía     |                 1 |    2455073.24
    94744 | Rodrigo             | Romero Osorio         |                 1 |    2454715.50
     1970 | Jairo               | Pérez Rojas           |                 1 |    2453348.61
    70891 | Esteban             | Burbano Tovar         |                 1 |    2452545.00
   105328 | Manuel              | Lozano Rodríguez      |                 1 |    2451764.70
    50388 | Nelson              | Vélez Cabrera         |                 1 |    2450854.41
   103041 | Brayan              | Hernández Romero      |                 1 |    2450661.55
    64065 | Reinaldo            | Serrano Burbano       |                 1 |    2448644.06
    67747 | Alba                | Narváez Bedoya        |                 1 |    2448636.00
   120871 | Marleny             | Losada Contreras      |                 1 |    2447770.12
    71589 | Hugo                | Ospina Erazo          |                 1 |    2447642.19
    91513 | Sebastián Emilio    | Arango Mora           |                 1 |    2446389.24
   146834 | Jorge               | Zapata Cárdenas       |                 1 |    2446055.68
    77894 | Reinaldo Heriberto  | Marín Bonilla         |                 1 |    2445397.17
    18274 | Esteban             | Benavides Flórez      |                 1 |    2445128.16
      222 | Stella              | Álvarez Parra         |                 1 |    2444854.42
   141724 | Alberto             | Osorio Ramos          |                 1 |    2443884.38
   118573 | Iván                | Galvis Cardona        |                 1 |    2442981.10
    31353 | Rosa                | Serrano Rincón        |                 1 |    2442085.78
    47917 | Liliana             | Erazo Ramírez         |                 1 |    2441886.50
    36936 | Juliana             | Díaz Caicedo          |                 1 |    2441865.02
   130142 | Jorge               | Cuéllar Erazo         |                 1 |    2441189.16
    82288 | María               | Barrera Cárdenas      |                 1 |    2439621.26
    40170 | Inés                | Sánchez Suárez        |                 1 |    2439024.44
    58306 | Jazmín              | Cardona Montoya       |                 1 |    2439017.62
    89725 | Orlando             | Herrera Moreno        |                 1 |    2438688.70
   142935 | Fabio               | Londoño Giraldo       |                 1 |    2437959.04
    39593 | Diego Iván          | Montoya Benavides     |                 1 |    2437818.42
   128385 | Diego               | Trujillo Arias        |                 1 |    2436002.52
    83983 | Amparo              | Osorio Betancur       |                 1 |    2435723.52
    78053 | Samuel              | Peña Pabón            |                 1 |    2435275.86
   109819 | Felipe              | Cáceres Jiménez       |                 1 |    2435274.85
   110522 | Blanca Mónica       | Sánchez Hernández     |                 1 |    2434972.71
    45699 | Jazmín Marcela      | Rincón Suárez         |                 1 |    2434860.00
    97988 | Beatriz             | Herrera Marín         |                 1 |    2434777.68
    62744 | Rubén Cristian      | Álvarez Álvarez       |                 1 |    2434456.92
    28440 | Manuela             | Bermúdez Pinzón       |                 1 |    2434345.60
   134595 | Esperanza           | Benavides Sandoval    |                 1 |    2434156.76
    62592 | Javier              | Parra Molina          |                 1 |    2433962.04
    89764 | Viviana             | Ruiz Romero           |                 1 |    2433021.76
   149636 | Hernando            | Betancur Martínez     |                 1 |    2432887.35
    92784 | Fabio               | Pabón Hernández       |                 1 |    2432533.16
    59995 | Hernando            | Calderón Henao        |                 1 |    2432082.32
   119541 | Álvaro              | Pinzón Ortiz          |                 1 |    2431516.21
    48616 | Natalia             | Moreno Contreras      |                 1 |    2431156.88
    64075 | Ramiro              | Vargas Trujillo       |                 1 |    2430960.64
    27577 | Rosa Isabella       | Rodríguez Pabón       |                 1 |    2430947.36
    72080 | Myriam              | Herrera Marín         |                 1 |    2430641.16
   141858 | María               | Sandoval Chamorro     |                 1 |    2430412.92
     5812 | Aníbal              | Quintero Duque        |                 1 |    2429116.56
    30028 | Libardo             | Marín Pabón           |                 1 |    2429050.14
    86870 | Francisco           | Ríos Álvarez          |                 1 |    2429016.84
    29102 | Nelson Gilberto     | Cárdenas Ospina       |                 1 |    2428805.68
    46623 | Ángela              | Díaz Pabón            |                 1 |    2427821.50
   137648 | Efraín              | Osorio Calderón       |                 1 |    2427543.25
    52543 | Blanca              | Jaimes Gómez          |                 1 |    2426785.92
   137539 | Efraín              | Sánchez Giraldo       |                 1 |    2425698.00
    62670 | Jazmín Luz          | Barrera Ramos         |                 1 |    2425662.36
   102250 | Carolina            | Romero Torres         |                 1 |    2425135.68
   117353 | Germán              | Pabón Losada          |                 1 |    2423404.32
   123543 | Natalia Isabella    | Álvarez Medina        |                 1 |    2423283.05
    40375 | Óscar               | Chamorro Medina       |                 1 |    2423169.05
    99527 | Camila              | Arias Medina          |                 1 |    2422958.49
   112151 | Mario               | Ramírez Sandoval      |                 1 |    2422946.90
    90796 | Antonio             | Rangel Pabón          |                 1 |    2422834.85
    94597 | Lucía               | Ibarra Guerrero       |                 1 |    2422815.52
   107460 | Yeison Alejandro    | Martínez Prada        |                 1 |    2422815.36
    93073 | Blanca              | Vera López            |                 1 |    2422203.52
    69435 | Esperanza           | Mosquera Salazar      |                 1 |    2422056.43
    89496 | José                | Marín Cáceres         |                 1 |    2420562.85
    32826 | Pedro               | Ruiz Caicedo          |                 1 |    2420005.43
    57868 | Aura                | Quintero Lozano       |                 1 |    2419819.59
   125877 | Stella              | López Díaz            |                 1 |    2419560.00
    29138 | Mauricio Reinaldo   | Acevedo Salazar       |                 1 |    2418271.98
   111056 | Ana                 | Guerrero Vargas       |                 1 |    2417709.72
    76250 | Emilio              | Jaimes Bermúdez       |                 1 |    2416556.11
    35037 | Francisco           | García Bedoya         |                 1 |    2416075.54
    91154 | Leidy               | Ortiz Herrera         |                 1 |    2416007.94
     1110 | Erika               | Duarte Flórez         |                 1 |    2415852.84
    24855 | Isabella            | Ibarra Suárez         |                 1 |    2414254.50
    37483 | Fabio               | Serrano Galvis        |                 1 |    2412720.54
   140986 | Libardo             | Hernández Bastidas    |                 1 |    2412598.71
    33457 | Jairo               | Mejía Uribe           |                 1 |    2411958.96
     5637 | Diego               | Cardona Tovar         |                 1 |    2410603.20
   107071 | Diana               | Niño González         |                 1 |    2410553.84
    20767 | Wilson              | Peña Montoya          |                 1 |    2410403.58
     6085 | Reinaldo            | Duarte Mejía          |                 1 |    2409958.46
   129541 | Luisa               | Villamizar Díaz       |                 1 |    2409825.96
   125124 | Esteban Camilo      | Ortiz Zapata          |                 1 |    2409636.00
    81110 | Claudia             | Restrepo Vélez        |                 1 |    2409331.57
    75895 | Carlos Alberto      | Villamizar Bedoya     |                 1 |    2409254.53
    55991 | Erika               | Agudelo Bastidas      |                 1 |    2408400.50
    65453 | Alejandro Wilson    | Mosquera Tovar        |                 1 |    2408173.74
    20489 | Santiago Efraín     | Bonilla Gómez         |                 1 |    2407522.45
   111630 | Yolanda             | Delgado Polanía       |                 1 |    2407231.98
   100373 | Esteban             | Sandoval Acevedo      |                 1 |    2407023.54
    53472 | Carolina            | Londoño García        |                 1 |    2406496.55
    87411 | Germán              | Pinzón Cabrera        |                 1 |    2406023.28
   148992 | Mónica              | Martínez Lasso        |                 1 |    2405395.01
   124352 | Andrés Héctor       | Rangel Peña           |                 1 |    2405000.37
   130417 | Martha              | Delgado Niño          |                 1 |    2404664.84
   142999 | Mauricio            | Erazo Medina          |                 1 |    2404323.54
    61280 | Fernando            | Osorio Parra          |                 1 |    2404012.88
   134985 | Antonio             | Jaimes Rincón         |                 1 |    2403970.59
    99609 | Abelardo Arturo     | Burbano Lozano        |                 1 |    2403925.38
    84847 | Heriberto           | Arias Montoya         |                 1 |    2403560.92
     5971 | Esteban             | Ramírez Díaz          |                 1 |    2403405.06
   148035 | Hugo                | Jiménez Arias         |                 1 |    2402618.40
   143727 | Manuela             | Jaimes Cárdenas       |                 1 |    2401663.38
    36672 | Javier              | Acevedo Gutiérrez     |                 1 |    2400912.50
    32851 | Sara                | Flórez Ibarra         |                 1 |    2400754.91
    40848 | Carmen              | Ospina Ospina         |                 1 |    2400421.00
    11187 | Alejandro           | Tovar Serrano         |                 1 |    2399699.41
    30964 | Manuela             | Chamorro Montoya      |                 1 |    2398972.07
    92363 | Brayan Rodrigo      | Cáceres Sandoval      |                 1 |    2398353.64
   133947 | Germán              | Castillo Flórez       |                 1 |    2398242.84
   111335 | Diego               | Hernández Sánchez     |                 1 |    2393322.36
   136780 | Efraín              | Ramírez Montoya       |                 1 |    2392981.15
   129115 | Liliana             | Castro Cardona        |                 1 |    2392333.48
   101943 | Rafael Germán       | Tovar Pérez           |                 1 |    2392272.91
    86613 | Beatriz             | Montoya Rojas         |                 1 |    2392232.72
   145291 | Aníbal              | Correa Guerrero       |                 1 |    2392104.15
    18113 | Iván                | Lasso Bedoya          |                 1 |    2391962.12
    54304 | Édgar               | Losada Vargas         |                 1 |    2391692.03
   134071 | Óscar               | Gómez Torres          |                 1 |    2391291.50
    30848 | Gabriela            | Peña Díaz             |                 1 |    2390828.68
   115207 | Jaime               | Carrillo Villamizar   |                 1 |    2390543.32
    32852 | Javier              | Lozano Burbano        |                 1 |    2389899.62
   131331 | Esteban             | Londoño Marín         |                 1 |    2389641.59
    79730 | Sofía               | Herrera Delgado       |                 1 |    2389585.27
   149199 | Camilo              | Duque Medina          |                 1 |    2389561.95
   117121 | Marcela Marleny     | Quintero Gómez        |                 1 |    2389551.32
    93826 | Libardo Javier      | Rincón Bonilla        |                 1 |    2389482.82
    22205 | Elsa                | Agudelo Zapata        |                 1 |    2389093.33
    76217 | Olga                | Herrera Erazo         |                 1 |    2388671.85
    66450 | Ruth Mercedes       | Rivera Ortega         |                 1 |    2388502.13
     9223 | Luis                | Guerrero Ramírez      |                 1 |    2388211.25
    64192 | Gloria              | Agudelo Osorio        |                 1 |    2388153.50
   141915 | Hernando Francisco  | Valencia Arango       |                 1 |    2386228.00
   119016 | Edilma              | Cáceres Valencia      |                 1 |    2386030.24
    96905 | Alberto             | Vargas Agudelo        |                 1 |    2385997.14
   145047 | Efraín Fabio        | Delgado García        |                 1 |    2385787.10
   105199 | Juan                | Vargas Losada         |                 1 |    2385775.77
    29672 | Sandra              | Ibarra Agudelo        |                 1 |    2385111.61
    19979 | Felipe              | Pinzón Sandoval       |                 1 |    2384611.99
   119893 | Alberto             | Vargas López          |                 1 |    2383476.71
    45860 | Jazmín              | Villamizar López      |                 1 |    2383333.52
   116055 | Cristian            | Jaimes Calderón       |                 1 |    2383069.09
    50553 | Gladys Mónica       | Rivera Moreno         |                 1 |    2382944.90
    99489 | Orlando Luis        | Trujillo Gómez        |                 1 |    2382239.28
   143430 | Luz                 | Perdomo Zuluaga       |                 1 |    2381911.77
    22223 | Dora                | Flórez Cardona        |                 1 |    2381634.19
    53790 | Elsa                | Villamizar Duque      |                 1 |    2381473.08
    21045 | Antonio Arturo      | Rincón Acevedo        |                 1 |    2381451.05
    45121 | Valentina           | Martínez Valencia     |                 1 |    2381336.11
    42017 | Beatriz             | Lozano Ortiz          |                 1 |    2381183.22
    89740 | Abelardo Gilberto   | Ramírez Narváez       |                 1 |    2380687.68
     9655 | Fernando            | Arias Ospina          |                 1 |    2379767.27
    92938 | Felipe              | Mosquera Jiménez      |                 1 |    2379080.01
   131507 | Francisco           | Pabón Lasso           |                 1 |    2378544.65
    93579 | Rubén               | Carrillo Delgado      |                 1 |    2377608.48
   140227 | Yolanda             | Pabón Rivera          |                 1 |    2377271.75
    23374 | Gustavo             | Correa González       |                 1 |    2376773.76
    33644 | Manuel              | Cuéllar Galvis        |                 1 |    2376519.80
   102584 | Teresa Yolanda      | Pérez Duarte          |                 1 |    2374368.56
    70182 | Sofía Inés          | Contreras Arias       |                 1 |    2373759.85
   147504 | Héctor              | Narváez Ortiz         |                 1 |    2372395.60
    47904 | Édgar               | Benavides Losada      |                 1 |    2372004.42
    31800 | Germán Luis         | Suárez Restrepo       |                 1 |    2371998.18
      865 | Gloria              | Castro Bermúdez       |                 1 |    2371427.89
   105345 | Antonio             | Silva Villamizar      |                 1 |    2369052.69
    49217 | Emilio              | Arango Perdomo        |                 1 |    2366870.46
    69818 | Andrés              | Delgado Ortiz         |                 1 |    2366455.95
    16110 | Cristian Mateo      | Ramírez Castillo      |                 1 |    2366325.90
    18077 | Miguel              | Ortega Henao          |                 1 |    2366025.22
    64666 | Yolanda             | Vargas Benavides      |                 1 |    2365016.94
    54247 | Yeison              | Ramos Vélez           |                 1 |    2364762.96
    99435 | Mercedes            | Benavides Bastidas    |                 1 |    2364225.49
    59687 | Adriana             | Arango Ortega         |                 1 |    2364027.39
    16589 | Yesenia             | Castro Galvis         |                 1 |    2363560.32
    17870 | Orlando Miguel      | Jiménez Bastidas      |                 1 |    2363328.00
   129279 | Pedro Efraín        | Duarte Sánchez        |                 1 |    2362786.92
    76651 | Amparo              | Trujillo Ortega       |                 1 |    2362763.32
    55275 | Yesenia             | Bermúdez Rivera       |                 1 |    2362287.84
    56319 | Rodrigo             | Narváez Caicedo       |                 1 |    2362002.37
    88444 | Carolina            | Restrepo Duarte       |                 1 |    2361755.00
    45601 | Gloria              | Barrera Giraldo       |                 1 |    2361290.46
    40649 | Rubén Esteban       | Bedoya Pabón          |                 1 |    2360881.13
   148767 | Reinaldo            | López Galvis          |                 1 |    2359662.80
   112232 | Rubén               | Jiménez Arias         |                 1 |    2359495.69
    24935 | Ángela              | Niño Lozano           |                 1 |    2359347.05
   144522 | Pedro Javier        | Rincón Delgado        |                 1 |    2359046.02
    49745 | Patricia            | Caicedo Londoño       |                 1 |    2358236.27
    82381 | Manuela             | Arias Sánchez         |                 1 |    2358205.20
   148916 | Mauricio            | Vargas Ibarra         |                 1 |    2358093.29
   146301 | Viviana             | Tovar Ortiz           |                 1 |    2357754.86
    71166 | Sandra Teresa       | Losada Calderón       |                 1 |    2357719.65
   141233 | Wilmer              | Villamizar Cabrera    |                 1 |    2357235.30
   135751 | Daniel              | González Benavides    |                 1 |    2356280.16
   147109 | Germán              | Castillo Ibarra       |                 1 |    2355439.80
    58715 | Juliana             | Medina Silva          |                 1 |    2354666.60
    44148 | Luz                 | Rincón Losada         |                 1 |    2354154.92
   140730 | Iván                | Cárdenas Galvis       |                 1 |    2353777.45
    71943 | Álvaro              | Lasso Guerrero        |                 1 |    2352249.89
   114643 | Guillermo           | Mosquera Bastidas     |                 1 |    2352134.40
    93431 | Heriberto           | Peña Parra            |                 1 |    2351806.70
    87753 | Gilberto            | Castro Galvis         |                 1 |    2351195.33
    16247 | Elsa Marleny        | Sandoval Contreras    |                 1 |    2351184.51
    30456 | Daniela             | Niño Rojas            |                 1 |    2350795.65
    39465 | Juan                | Cardona Zapata        |                 1 |    2350726.55
    57913 | Edilma Marcela      | Zuluaga Ortiz         |                 1 |    2350210.46
   110002 | Brayan Santiago     | Hernández Losada      |                 1 |    2350084.61
   107267 | Fernando            | Perdomo González      |                 1 |    2350059.24
    24688 | Stella              | Gómez Álvarez         |                 1 |    2349438.21
   128644 | Felipe Arturo       | Delgado Losada        |                 1 |    2349369.48
    40369 | Mauricio Mateo      | Serrano Henao         |                 1 |    2349353.44
   129185 | Reinaldo Antonio    | Cardona Pinzón        |                 1 |    2349316.94
   125880 | Isabella            | Henao Parra           |                 1 |    2348871.48
    50562 | Mónica Alejandra    | Duque Mejía           |                 1 |    2347677.60
    67647 | Libardo Camilo      | Rincón Prada          |                 1 |    2346971.28
    78270 | Nelson              | Rangel Lozano         |                 1 |    2346752.98
    12586 | Carlos Julián       | Peña Betancur         |                 1 |    2346407.42
    99824 | Yolanda Gloria      | Peña Martínez         |                 1 |    2346151.29
     9179 | María Lorena        | Uribe Ortiz           |                 1 |    2344454.22
     7867 | Mercedes            | Agudelo Perdomo       |                 1 |    2344401.34
   104135 | Rubén               | Osorio Calderón       |                 1 |    2343501.93
     5263 | Elsa                | Molina Peña           |                 1 |    2342880.37
    31905 | Fabio               | Martínez Rincón       |                 1 |    2341501.19
     2917 | Alberto             | Castillo Salazar      |                 1 |    2341435.00
   128948 | Javier              | Salazar Jaimes        |                 1 |    2341237.30
     5147 | Hugo                | Ortega Erazo          |                 1 |    2340947.77
    83575 | Ricardo             | Contreras Ortega      |                 1 |    2340382.91
    70635 | Jairo               | Zuluaga Mejía         |                 1 |    2340215.13
    85879 | Óscar Julián        | Castro Díaz           |                 1 |    2340032.08
    84560 | Nubia               | Vera Molina           |                 1 |    2339617.20
    75664 | Dora                | Niño Delgado          |                 1 |    2339416.77
    31036 | Alejandro           | Ramírez Muñoz         |                 1 |    2339173.19
   138188 | Cecilia             | Muñoz Castro          |                 1 |    2339029.16
    79400 | Aníbal              | Álvarez Bermúdez      |                 1 |    2338497.39
    41725 | Camila              | Correa Moreno         |                 1 |    2338349.40
   115330 | Amparo Luisa        | Muñoz Rojas           |                 1 |    2337263.13
    23513 | Reinaldo            | Villamizar García     |                 1 |    2337252.96
    64143 | Fernando            | Delgado Trujillo      |                 1 |    2337175.77
   105323 | Nicolás             | Arias Bermúdez        |                 1 |    2337172.20
   104236 | David               | Suárez Galvis         |                 1 |    2336246.01
    80637 | Heriberto           | Arias Rincón          |                 1 |    2335689.43
    48801 | Ángela              | Arias Sandoval        |                 1 |    2335659.98
    92782 | Alejandra           | Ramos Arango          |                 1 |    2334436.66
    76010 | Jairo               | Niño Ríos             |                 1 |    2332517.88
    99210 | Yesenia             | Jaimes Hernández      |                 1 |    2332262.13
    89772 | Stella              | Sánchez Acevedo       |                 1 |    2332107.40
    57100 | Adriana             | Giraldo Cabrera       |                 1 |    2331723.66
    66559 | Natalia             | Muñoz Ruiz            |                 1 |    2331209.82
     7717 | Alejandra           | Muñoz Caicedo         |                 1 |    2330530.20
    72476 | Brayan              | Álvarez Rivera        |                 1 |    2330519.62
   109772 | Javier              | Pérez Rincón          |                 1 |    2329873.11
    59311 | Marcela             | Rodríguez Ruiz        |                 1 |    2329773.58
   116648 | Laura               | Ibarra Arango         |                 1 |    2329739.10
    51908 | Lucía               | Torres Jiménez        |                 1 |    2328413.33
    86700 | Cristian            | Quintero Ruiz         |                 1 |    2328276.87
    16701 | Martha              | López Losada          |                 1 |    2327964.76
    60882 | Efraín              | Rojas Salazar         |                 1 |    2327718.69
    29569 | Adriana Ruth        | Lasso Agudelo         |                 1 |    2327300.76
   138559 | José                | Jaimes Silva          |                 1 |    2326584.35
   113085 | Fabio Jaime         | Valencia Ibarra       |                 1 |    2326322.18
    97729 | Marleny Myriam      | Pabón Bedoya          |                 1 |    2325230.32
    34525 | Adriana             | Gómez Ospina          |                 1 |    2324270.52
   135478 | Ramiro              | Gutiérrez Ríos        |                 1 |    2324070.15
    22125 | Sofía               | Romero Moreno         |                 1 |    2323927.63
    94470 | Juan                | Restrepo Peña         |                 1 |    2323903.20
    65877 | Gloria              | Carrillo Uribe        |                 1 |    2323668.32
   100004 | Yeison              | Ramírez Mosquera      |                 1 |    2321838.00
    76446 | Gilberto            | Sandoval Molina       |                 1 |    2321606.43
    25277 | Ancízar             | Cáceres Salazar       |                 1 |    2321562.10
    22255 | Carolina            | Giraldo Zuluaga       |                 1 |    2318644.54
   110907 | Abelardo            | Muñoz Cuéllar         |                 1 |    2318539.86
   122118 | Mercedes            | García Correa         |                 1 |    2318523.26
   136622 | Yuliana             | Álvarez Peña          |                 1 |    2318475.76
      730 | Diana               | Ruiz Pérez            |                 1 |    2318463.67
   149191 | Daniel Carlos       | Contreras Lozano      |                 1 |    2318090.25
    16527 | Valentina           | Benavides Restrepo    |                 1 |    2317746.39
    24352 | Iván Abelardo       | Flórez Muñoz          |                 1 |    2317297.12
    10023 | Arturo              | Martínez Ríos         |                 1 |    2317276.39
    91345 | Wilson              | Gómez Ospina          |                 1 |    2316624.57
    17203 | Mario               | Cáceres Rodríguez     |                 1 |    2316383.27
    39480 | Daniel Gilberto     | Ortiz Torres          |                 1 |    2314592.00
    52095 | Germán Yeison       | Álvarez Ortiz         |                 1 |    2312192.40
   112021 | Marleny Lorena      | Ramos Duarte          |                 1 |    2309061.97
    38917 | Rafael Juan         | Prada Quintero        |                 1 |    2307741.66
   146864 | Yolanda Marcela     | Suárez Vera           |                 1 |    2306880.67
   125485 | Alejandra Blanca    | Torres Restrepo       |                 1 |    2306208.52
    63888 | Gabriela            | Salazar Rodríguez     |                 1 |    2305969.15
   124995 | Fernando            | Duarte Betancur       |                 1 |    2304816.45
    22990 | Jairo Diego         | Herrera González      |                 1 |    2303401.76
    39619 | Fabio               | Calderón Ramos        |                 1 |    2303197.47
    20110 | Iván Gilberto       | Peña Calderón         |                 1 |    2301372.71
     2592 | Mónica              | Valencia Bastidas     |                 1 |    2301052.05
     8926 | Aura                | Valencia Castillo     |                 1 |    2300061.50
   107557 | Lucía               | Lozano Vera           |                 1 |    2299797.46
    82527 | Javier              | Ibarra Vélez          |                 1 |    2299202.72
     9630 | Guillermo           | Bonilla García        |                 1 |    2298976.45
   143081 | Isabella            | Rangel Gómez          |                 1 |    2296890.37
    19227 | Cristian            | Pinzón Perdomo        |                 1 |    2296512.75
     9781 | Leidy               | Salazar Calderón      |                 1 |    2295981.24
   107191 | Abelardo            | Mora Barrera          |                 1 |    2295912.80
    56959 | Erika               | Barrera Ramírez       |                 1 |    2295568.34
   144999 | Camila              | Losada Ospina         |                 1 |    2295301.10
      337 | Ruth Luisa          | Sánchez Erazo         |                 1 |    2295201.50
    67583 | Luis                | Moreno Ríos           |                 1 |    2294954.76
    33254 | Antonio             | Chamorro Pabón        |                 1 |    2294481.87
    11735 | Laura Manuela       | Mora Arango           |                 1 |    2294236.80
    15586 | Inés                | Rincón Burbano        |                 1 |    2293372.74
     7672 | Jaime Brayan        | Ramírez Mora          |                 1 |    2293339.37
    18050 | Samuel              | Bermúdez Contreras    |                 1 |    2293326.24
    87085 | Mauricio Esteban    | Ospina Martínez       |                 1 |    2292529.50
    35029 | Paola               | Agudelo Uribe         |                 1 |    2292136.51
   135187 | Javier              | Muñoz Niño            |                 1 |    2291906.75
    58134 | Manuela             | Osorio Guerrero       |                 1 |    2291765.01
    19069 | Édgar Óscar         | Suárez Bonilla        |                 1 |    2290631.67
    10500 | Mauricio            | Silva Calderón        |                 1 |    2290281.40
   104013 | Francisco           | Benavides Jiménez     |                 1 |    2290262.74
    14694 | Libardo             | López Tovar           |                 1 |    2290229.44
   144222 | Liliana             | Mejía Arias           |                 1 |    2288614.07
   137471 | Jazmín              | Castillo Cárdenas     |                 1 |    2287082.95
    32283 | Gustavo             | Burbano González      |                 1 |    2286936.96
    81791 | Libardo             | Ríos Zapata           |                 1 |    2286735.45
     9959 | Mario               | Trujillo Polanía      |                 1 |    2285830.52
   114419 | Hugo José           | Bermúdez Betancur     |                 1 |    2285655.67
    91768 | Mateo               | Henao Castillo        |                 1 |    2284692.84
   113740 | Manuela             | Losada Ruiz           |                 1 |    2284683.57
   119106 | Patricia            | Ortega Gutiérrez      |                 1 |    2283435.12
   129085 | Stella              | Romero Suárez         |                 1 |    2283166.73
    36619 | Ramiro Álvaro       | Bonilla Rangel        |                 1 |    2283115.59
     2201 | Marleny Sara        | Losada Agudelo        |                 1 |    2283053.24
   103965 | Rafael              | Montoya Erazo         |                 1 |    2283010.60
    59558 | Yuliana             | Arias Ortiz           |                 1 |    2282412.60
    20486 | Jazmín              | Bermúdez Cáceres      |                 1 |    2282157.77
    76363 | Gladys Isabella     | Giraldo Caicedo       |                 1 |    2281653.74
    21035 | Wilmer              | Galvis Ortiz          |                 1 |    2281391.78
    33537 | Felipe Nelson       | Uribe Galvis          |                 1 |    2281193.42
   105127 | Elsa                | Montoya Arias         |                 1 |    2280932.20
    88795 | Dora                | Trujillo Osorio       |                 1 |    2280612.40
   118784 | Valentina           | Polanía Ospina        |                 1 |    2280238.63
    11645 | Yesenia             | Perdomo Zuluaga       |                 1 |    2280020.52
    92526 | Liliana             | Moreno Ramírez        |                 1 |    2279739.12
    82193 | Fernando            | Villamizar Caicedo    |                 1 |    2279095.05
    33962 | Guillermo           | Martínez Montoya      |                 1 |    2278956.73
   108467 | Luz                 | Flórez Benavides      |                 1 |    2278324.39
     3007 | Adriana             | Muñoz Arango          |                 1 |    2277900.85
    40423 | Wilmer              | García Ramírez        |                 1 |    2277879.54
    31790 | Diana Andrea        | Correa Vélez          |                 1 |    2277399.64
    44580 | Myriam              | Torres Arias          |                 1 |    2276437.62
    67269 | María Stella        | Zuluaga González      |                 1 |    2276434.07
   129752 | Carolina            | López Ríos            |                 1 |    2275883.15
   105108 | Rubén               | Castro Zapata         |                 1 |    2275572.35
    57335 | Carlos              | Flórez Gómez          |                 1 |    2275547.56
   145089 | Edilma              | Villamizar Agudelo    |                 1 |    2275396.81
    24287 | Blanca              | Arango Parra          |                 1 |    2274731.82
   103147 | Paola Erika         | Bonilla Flórez        |                 1 |    2274437.50
   117013 | Stella Carolina     | Betancur Arias        |                 1 |    2274221.16
    49753 | Andrés              | Ruiz Hernández        |                 1 |    2272754.44
    16620 | Marleny             | Serrano Uribe         |                 1 |    2272536.15
   127111 | Guillermo           | Quintero Vera         |                 1 |    2272417.15
    95868 | Samuel Germán       | Perdomo Acevedo       |                 1 |    2272166.82
   128674 | Gustavo Abelardo    | Caicedo Contreras     |                 1 |    2271724.32
   144780 | Gloria              | Bonilla Torres        |                 1 |    2271557.00
    74581 | Rodrigo Alejandro   | Agudelo Villamizar    |                 1 |    2271183.01
    75950 | David               | Díaz Pérez            |                 1 |    2271065.56
   132948 | Héctor              | Niño Ospina           |                 1 |    2267691.43
    51614 | Hernando            | Restrepo Trujillo     |                 1 |    2265264.95
    74970 | Luisa               | Martínez Giraldo      |                 1 |    2264901.06
    44835 | Álvaro              | Zuluaga Contreras     |                 1 |    2264884.08
   118589 | Blanca Edilma       | Tovar Mora            |                 1 |    2263446.71
   125992 | Nicolás Yeison      | Niño Acevedo          |                 1 |    2263217.54
   137784 | Mariana             | Londoño Vera          |                 1 |    2263109.74
    28352 | David Wilmer        | Caicedo Zapata        |                 1 |    2263032.75
     6574 | Rosa                | Cárdenas Villamizar   |                 1 |    2262340.96
   142438 | Jaime               | Castillo Cardona      |                 1 |    2262002.49
   102312 | Germán              | Uribe Contreras       |                 1 |    2261308.26
   137646 | Luis Abelardo       | Gómez Betancur        |                 1 |    2259879.87
    59357 | Ancízar             | Díaz Suárez           |                 1 |    2259737.75
    15483 | Orlando             | Tovar Ramos           |                 1 |    2259442.19
    44775 | Efraín              | Hernández Acevedo     |                 1 |    2259245.76
    75877 | Nicolás             | Narváez Acevedo       |                 1 |    2259189.32
   129810 | Jorge Óscar         | Narváez Bastidas      |                 1 |    2259021.41
   113673 | Andrea Paola        | Perdomo Bermúdez      |                 1 |    2258068.93
      778 | Wilson Manuel       | Jaimes Losada         |                 1 |    2258067.50
    43989 | Mónica              | Prada Pabón           |                 1 |    2257793.49
   116005 | Andrés              | Ruiz Rincón           |                 1 |    2257175.98
    72631 | Javier              | Rincón González       |                 1 |    2253542.60
    59758 | Sebastián           | Cárdenas Valencia     |                 1 |    2253278.36
    30205 | Sandra              | Erazo Suárez          |                 1 |    2251605.20
    57652 | Leidy               | Restrepo Díaz         |                 1 |    2250505.32
    94699 | Viviana             | Pabón Lozano          |                 1 |    2250247.73
    82650 | Ángela Daniela      | Jiménez Rodríguez     |                 1 |    2249501.45
    39230 | Ángela              | Acevedo Bonilla       |                 1 |    2249191.20
    14372 | Aníbal              | Rangel González       |                 1 |    2249188.92
    77064 | José                | Ramírez Peña          |                 1 |    2248791.62
   106178 | Nelson              | Cáceres Trujillo      |                 1 |    2248546.32
   119464 | Mauricio Heriberto  | Díaz Correa           |                 1 |    2247815.06
    96740 | Santiago Cristian   | Lasso Moreno          |                 1 |    2247204.47
    58046 | Yolanda Rocío       | Herrera Vargas        |                 1 |    2246981.80
    38086 | Yolanda             | Herrera Ospina        |                 1 |    2246539.24
    93366 | Jorge               | Vargas Niño           |                 1 |    2246286.16
    10728 | Esperanza           | Trujillo Moreno       |                 1 |    2245294.74
    47936 | Ruth Blanca         | Duque Álvarez         |                 1 |    2245070.74
   119266 | Yolanda Sara        | Losada Niño           |                 1 |    2244484.85
    89955 | Libardo             | Montoya Ospina        |                 1 |    2243975.17
    38976 | Diego               | Prada Arias           |                 1 |    2243202.84
    14577 | Yuliana             | Álvarez Serrano       |                 1 |    2242581.12
   110803 | Alejandra           | Moreno Acevedo        |                 1 |    2240832.61
   132249 | Luis                | Ortiz Perdomo         |                 1 |    2239972.89
   120058 | Ancízar Rodrigo     | Zapata Duarte         |                 1 |    2239942.51
   119725 | Manuel              | Betancur Londoño      |                 1 |    2239468.60
    22388 | Ruth                | Arias Ramírez         |                 1 |    2239081.85
    97909 | Juliana Manuela     | Contreras Vera        |                 1 |    2238417.06
   134025 | Luis Andrés         | Acevedo Romero        |                 1 |    2236867.71
   125122 | Diana               | Gutiérrez Chamorro    |                 1 |    2236816.14
   104654 | Yolanda Teresa      | Castillo Sandoval     |                 1 |    2236552.56
    17901 | Diego               | Díaz Molina           |                 1 |    2236033.06
    42217 | Esperanza           | Parra López           |                 1 |    2235673.38
   137478 | Nelson              | Correa Parra          |                 1 |    2234573.37
    95962 | Álvaro              | Ríos Chamorro         |                 1 |    2234524.18
   103624 | Ancízar             | Restrepo Ospina       |                 1 |    2233509.59
    48079 | Edilma Alejandra    | Suárez Perdomo        |                 1 |    2232050.23
    20595 | Rosa                | Medina Tovar          |                 1 |    2230702.50
    55963 | Juliana             | Cardona Peña          |                 1 |    2230399.65
    32762 | Gloria Cecilia      | Betancur Mejía        |                 1 |    2229641.75
   116719 | Gloria              | Ortiz Tovar           |                 1 |    2229567.46
    17808 | Reinaldo            | Losada Castro         |                 1 |    2229379.27
   121118 | Stella              | Romero Vargas         |                 1 |    2229372.84
     2541 | Juliana Olga        | Sánchez Prada         |                 1 |    2228307.31
   110177 | Jaime               | Duarte Ortega         |                 1 |    2227556.39
   130832 | Libardo             | Acevedo Salazar       |                 1 |    2227349.87
   102174 | Mario Reinaldo      | Ortega Sánchez        |                 1 |    2226225.69
    73888 | Gloria              | Zuluaga Molina        |                 1 |    2226182.14
      389 | Gladys              | Agudelo Gutiérrez     |                 1 |    2224508.02
     7730 | Mario               | Ospina Osorio         |                 1 |    2223201.00
    88936 | Juan                | Vera González         |                 1 |    2221875.72
      859 | Reinaldo            | Mejía González        |                 1 |    2220400.82
    41800 | Samuel Sebastián    | Peña Erazo            |                 1 |    2219728.86
    32375 | María               | Narváez Ramos         |                 1 |    2218576.50
   114949 | Héctor              | Hernández Díaz        |                 1 |    2216992.80
    77090 | Luisa Luz           | Burbano Ramírez       |                 1 |    2216243.48
    80279 | Óscar Esteban       | Burbano Muñoz         |                 1 |    2215554.60
    76625 | Camilo Juan         | Suárez Rojas          |                 1 |    2214363.89
    30501 | Fernando            | Jaimes Herrera        |                 1 |    2214053.14
    80429 | Esteban             | Serrano Correa        |                 1 |    2213934.59
   104686 | Rafael              | Bermúdez Serrano      |                 1 |    2211926.10
   109762 | Patricia Ángela     | Henao Rivera          |                 1 |    2211746.70
    63548 | Gilberto            | Perdomo Montoya       |                 1 |    2211194.18
    15640 | Sandra              | Cabrera Perdomo       |                 1 |    2210318.40
    14443 | Jazmín              | Duque Galvis          |                 1 |    2209092.84
    84991 | Fabio               | Marín Cardona         |                 1 |    2207677.80
    44088 | Rosa Olga           | Cáceres García        |                 1 |    2207520.31
    99638 | Aura                | Parra Cardona         |                 1 |    2207485.44
    12640 | Manuela             | Restrepo Castro       |                 1 |    2206872.68
    16813 | Julián              | Medina Ortiz          |                 1 |    2206017.84
    67327 | Juliana Carmen      | Restrepo Molina       |                 1 |    2205515.19
    63356 | Patricia Marleny    | Parra Londoño         |                 1 |    2204742.73
     3421 | Alejandra Isabella  | Silva Pérez           |                 1 |    2203835.54
    77704 | Yeison              | Suárez Agudelo        |                 1 |    2201696.75
    90348 | Alejandra           | García Molina         |                 1 |    2199147.02
   130290 | Ramiro Fernando     | Bermúdez Álvarez      |                 1 |    2199036.55
   137211 | Juliana             | Cárdenas Tovar        |                 1 |    2197959.58
    17670 | Yeison              | Cardona Bedoya        |                 1 |    2197909.74
   138656 | Miguel              | Gómez Calderón        |                 1 |    2197484.32
   142208 | Jaime               | Ramírez Uribe         |                 1 |    2197455.00
    20378 | Miguel Mateo        | García Benavides      |                 1 |    2195372.17
   108544 | Luisa               | Medina Valencia       |                 1 |    2195349.34
    90830 | Luisa               | Gómez Rangel          |                 1 |    2194405.92
   109411 | Marleny Natalia     | Silva Moreno          |                 1 |    2193807.03
   144191 | Alejandro           | Osorio Montoya        |                 1 |    2192620.49
    55945 | Abelardo            | Restrepo Serrano      |                 1 |    2191211.75
   130237 | Amparo Beatriz      | Pinzón Perdomo        |                 1 |    2190611.10
    38989 | Rafael              | Burbano Sánchez       |                 1 |    2190061.33
   104261 | Amparo              | Sánchez Lozano        |                 1 |    2189364.18
    67817 | Germán              | Agudelo Contreras     |                 1 |    2189133.10
    81075 | Rodrigo             | Hernández Giraldo     |                 1 |    2188566.75
   126850 | Blanca              | Valencia Jaimes       |                 1 |    2188341.82
    89718 | Erika Laura         | García Bonilla        |                 1 |    2188338.75
   112211 | Luz                 | Rivera Parra          |                 1 |    2188079.30
   121033 | Iván Arturo         | Restrepo Bermúdez     |                 1 |    2188038.46
    84727 | Gabriela            | Gómez Acevedo         |                 1 |    2187655.95
   127598 | Lucía               | Rodríguez Restrepo    |                 1 |    2187554.88
    60856 | Claudia             | Mejía Romero          |                 1 |    2186875.38
    64594 | Amparo Ruth         | Giraldo Cárdenas      |                 1 |    2186567.12
    27953 | Mónica              | Martínez Castro       |                 1 |    2186471.60
   103865 | Ruth Jazmín         | Gutiérrez Valencia    |                 1 |    2184556.22
   104992 | Yesenia Mariana     | Niño Herrera          |                 1 |    2183498.24
    80946 | Rafael              | Cardona Cárdenas      |                 1 |    2183189.69
    91866 | Luz                 | Zuluaga Chamorro      |                 1 |    2182997.64
    73452 | José                | Jiménez Silva         |                 1 |    2181389.76
    34754 | Antonio             | Prada Tovar           |                 1 |    2180286.74
   107227 | Liliana             | Díaz Benavides        |                 1 |    2180079.36
    41945 | Leidy               | García Bermúdez       |                 1 |    2179735.12
   115491 | Luisa               | Betancur Montoya      |                 1 |    2179659.82
    49101 | Édgar               | Silva Cabrera         |                 1 |    2179381.49
    44129 | Efraín              | Carrillo Carrillo     |                 1 |    2179050.92
    22191 | Natalia             | Flórez Castro         |                 1 |    2178532.58
   116584 | Édgar               | Ibarra Bedoya         |                 1 |    2178408.00
    17682 | Sebastián Santiago  | Rojas Lasso           |                 1 |    2176618.98
    50248 | Abelardo Emilio     | Arango Salazar        |                 1 |    2175273.76
   129300 | Ángela              | Losada Delgado        |                 1 |    2173904.11
    60118 | Arturo              | Romero Chamorro       |                 1 |    2173742.00
    70022 | Antonio             | Quintero Castro       |                 1 |    2173373.50
   144187 | Martha              | Henao Díaz            |                 1 |    2169972.84
    52755 | Alejandra           | Cardona Parra         |                 1 |    2169476.66
    13569 | Luisa               | Giraldo Bonilla       |                 1 |    2168919.65
     7101 | Esteban             | Cardona Duque         |                 1 |    2168586.00
    90032 | Santiago Arturo     | Arias Rodríguez       |                 1 |    2167432.89
    71851 | Ramiro              | Moreno Sandoval       |                 1 |    2166653.50
    58155 | Valentina           | Suárez López          |                 1 |    2166591.10
    38022 | Mariana             | Calderón Agudelo      |                 1 |    2164808.30
   102411 | Abelardo            | Uribe Agudelo         |                 1 |    2164704.16
   140229 | Rosa                | Jiménez Barrera       |                 1 |    2164259.31
   118260 | Heriberto Miguel    | Contreras Londoño     |                 1 |    2164075.65
    23926 | Luis Juan           | Quintero Delgado      |                 1 |    2163878.12
    79383 | Esteban Libardo     | Cárdenas Moreno       |                 1 |    2163692.30
    66617 | Hernando            | López Medina          |                 1 |    2163551.48
   146888 | Óscar               | Guerrero Hernández    |                 1 |    2163045.12
   121838 | Wilson              | Duarte Cuéllar        |                 1 |    2162371.17
    20263 | Jaime               | Herrera Zuluaga       |                 1 |    2161312.16
    93286 | Javier Mateo        | Contreras Correa      |                 1 |    2160195.20
    53328 | Claudia Olga        | Uribe Bermúdez        |                 1 |    2159543.90
   137666 | Mauricio            | Carrillo Osorio       |                 1 |    2159297.15
    34164 | María               | Chamorro Giraldo      |                 1 |    2158984.78
    41637 | Alba                | Rangel Zapata         |                 1 |    2158206.56
    12979 | Claudia             | Marín Arias           |                 1 |    2155528.26
   149055 | Esperanza           | Cabrera Cáceres       |                 1 |    2154324.50
   115505 | Gladys Gloria       | Betancur Ramos        |                 1 |    2152951.44
   146428 | Manuel Brayan       | Osorio Tovar          |                 1 |    2152700.54
   141213 | Lucía               | López Zapata          |                 1 |    2151461.06
    24792 | Rodrigo             | Mosquera Zuluaga      |                 1 |    2150706.64
    73603 | Yolanda             | Peña Silva            |                 1 |    2148280.47
    16205 | Gabriela Dora       | Trujillo Erazo        |                 1 |    2148257.28
    55771 | Amparo              | Serrano Londoño       |                 1 |    2147586.72
   141465 | Gilberto            | Moreno Mosquera       |                 1 |    2146481.54
    15557 | Jazmín              | Muñoz Rivera          |                 1 |    2146187.31
   134747 | Mateo               | Ramos Ruiz            |                 1 |    2144583.94
   119017 | Cristian            | Betancur Pinzón       |                 1 |    2142455.94
     6096 | Paola               | Niño Martínez         |                 1 |    2142322.17
   128756 | Jairo               | Calderón Ibarra       |                 1 |    2141880.34
    34128 | Germán              | Moreno Polanía        |                 1 |    2141707.61
    96474 | Javier              | Polanía Duque         |                 1 |    2141633.80
     3574 | Abelardo            | Torres Osorio         |                 1 |    2141433.42
    94463 | Marleny Dora        | Correa Hernández      |                 1 |    2141062.95
    66815 | Camila              | González Betancur     |                 1 |    2139245.78
    39524 | Olga                | Castillo Vargas       |                 1 |    2139164.40
    30723 | Iván                | Chamorro Polanía      |                 1 |    2138726.84
    28032 | Laura               | Rodríguez Ospina      |                 1 |    2138687.10
   130657 | Ancízar             | Chamorro Castro       |                 1 |    2137503.35
    65286 | Luis                | Ortiz Calderón        |                 1 |    2137029.97
     9589 | Esteban             | Galvis Moreno         |                 1 |    2136880.08
   129934 | Abelardo Nelson     | Vargas Moreno         |                 1 |    2136754.31
    31198 | Fanny               | Guerrero Lasso        |                 1 |    2136563.85
   140078 | Iván Héctor         | Vera Zuluaga          |                 1 |    2136300.32
     1593 | Mónica              | Sandoval Galvis       |                 1 |    2135014.02
    89896 | Mauricio Libardo    | Losada Pérez          |                 1 |    2134965.71
    97559 | Antonio             | Duarte Londoño        |                 1 |    2134106.68
    99677 | Óscar Ramiro        | Galvis López          |                 1 |    2133975.13
    37205 | Manuel              | Arias Vélez           |                 1 |    2132937.90
   116117 | Wilmer Mateo        | Cáceres Rincón        |                 1 |    2131680.00
    79213 | Elsa                | Caicedo Duarte        |                 1 |    2131410.52
    19976 | Ricardo             | Quintero Londoño      |                 1 |    2130666.98
    93395 | Emilio              | Perdomo Trujillo      |                 1 |    2130064.77
    24627 | Heriberto           | Henao Moreno          |                 1 |    2130046.00
    28915 | Fabio               | Ibarra Gutiérrez      |                 1 |    2126721.87
    11114 | Liliana Sara        | Vera Silva            |                 1 |    2126451.39
    68809 | Guillermo Ramiro    | Ruiz Trujillo         |                 1 |    2126436.11
    48723 | Manuela Isabella    | Pinzón Erazo          |                 1 |    2125181.10
    20737 | Luis                | Henao Calderón        |                 1 |    2122306.32
    88657 | Rubén               | Sánchez Hernández     |                 1 |    2121778.52
    73218 | Jaime               | Rodríguez Romero      |                 1 |    2121316.56
    79387 | Erika               | Galvis Bonilla        |                 1 |    2120784.03
   125234 | Laura               | Londoño Valencia      |                 1 |    2120186.79
   104849 | Wilmer Orlando      | Hernández Peña        |                 1 |    2119939.07
   120076 | Gloria              | Pérez Calderón        |                 1 |    2119028.56
   135377 | Lucía               | López Pabón           |                 1 |    2117033.21
    31726 | Gloria              | Hernández Herrera     |                 1 |    2116874.83
    33245 | Yolanda Juliana     | Peña Betancur         |                 1 |    2116018.38
    13832 | Carolina            | Bedoya Chamorro       |                 1 |    2116014.14
    67386 | Orlando             | Duque Uribe           |                 1 |    2115484.20
   113754 | Juliana             | Erazo Perdomo         |                 1 |    2114289.21
    95061 | Pedro               | Bastidas Bonilla      |                 1 |    2114261.56
    72607 | Jairo               | Suárez Calderón       |                 1 |    2111861.69
   105867 | Luz                 | Benavides Molina      |                 1 |    2110932.24
    55463 | Carolina Alba       | Osorio González       |                 1 |    2109965.92
    12733 | Pedro               | Erazo Villamizar      |                 1 |    2108470.01
    55305 | Óscar               | Díaz García           |                 1 |    2107669.98
    41232 | Esperanza Alejandra | Contreras Pinzón      |                 1 |    2106778.18
    24663 | Jazmín              | Perdomo Rincón        |                 1 |    2106353.06
    65235 | Iván                | Parra Rivera          |                 1 |    2104332.63
    10748 | Gladys              | Muñoz Herrera         |                 1 |    2103517.74
    97456 | Andrés              | Molina Pérez          |                 1 |    2103297.00
    10672 | Mónica              | Barrera Giraldo       |                 1 |    2103233.45
    93953 | Esteban             | Flórez Cáceres        |                 1 |    2101280.36
    71217 | Fabio               | Vélez Mosquera        |                 1 |    2100819.32
   143254 | Nelson              | Barrera Mejía         |                 1 |    2100388.95
    30375 | Óscar               | Hernández Castro      |                 1 |    2099545.63
   126701 | Miguel              | Salazar Carrillo      |                 1 |    2098717.32
    25149 | Viviana             | Díaz Duque            |                 1 |    2096795.44
   108504 | Julián              | Acevedo Cáceres       |                 1 |    2096671.50
    15426 | Alba Mercedes       | Ibarra Ramos          |                 1 |    2096638.60
   136165 | Blanca              | González Bermúdez     |                 1 |    2096023.65
   119709 | Olga                | Duarte Romero         |                 1 |    2093147.67
    73887 | Édgar               | Agudelo Bastidas      |                 1 |    2092514.96
   105864 | Esteban             | Torres Tovar          |                 1 |    2092082.44
    29092 | Camila              | Rivera Sánchez        |                 1 |    2089896.28
    65813 | Ruth                | Jiménez Ríos          |                 1 |    2086819.82
    60216 | Efraín              | Ortega Lasso          |                 1 |    2086614.75
    19014 | Pedro Hernando      | Arango Osorio         |                 1 |    2086432.43
    65916 | Liliana             | Betancur Polanía      |                 1 |    2084982.00
   112434 | Arturo              | Marín Rincón          |                 1 |    2083635.02
   126644 | Iván                | Muñoz Zuluaga         |                 1 |    2083474.64
    82639 | Cristian            | Flórez Arango         |                 1 |    2083236.21
    76063 | Brayan              | Ruiz Ramírez          |                 1 |    2081924.15
    76915 | Laura               | Molina Correa         |                 1 |    2081463.34
   106346 | Marcela             | Calderón Erazo        |                 1 |    2080507.56
    34453 | Manuela             | Montoya Pinzón        |                 1 |    2080279.66
    96639 | Camila              | Rodríguez Uribe       |                 1 |    2078146.30
     6666 | Erika               | Lozano Ramírez        |                 1 |    2077331.37
    21881 | Camilo Mateo        | Jiménez Vargas        |                 1 |    2076368.22
    38401 | Sebastián           | Acevedo Cardona       |                 1 |    2076088.96
    85722 | Gladys              | Gómez Pérez           |                 1 |    2074891.59
    26508 | Liliana Manuela     | Burbano Ospina        |                 1 |    2074519.36
    39736 | Wilson              | Peña Díaz             |                 1 |    2073934.20
    25388 | Ramiro              | Niño Quintero         |                 1 |    2072893.48
    88470 | Ángela              | Guerrero Bedoya       |                 1 |    2071808.52
    85595 | Andrés              | Serrano Cáceres       |                 1 |    2070965.90
    79593 | Nicolás             | Osorio Jiménez        |                 1 |    2070759.60
   142399 | Dora                | Guerrero Mejía        |                 1 |    2070311.15
    11170 | Diana               | Vargas García         |                 1 |    2070226.26
     7741 | Germán              | Giraldo Romero        |                 1 |    2068398.54
   134047 | Fabio               | Moreno Vélez          |                 1 |    2068301.40
    95201 | Olga                | Suárez Guerrero       |                 1 |    2067861.06
    74389 | Isabella Carolina   | Duque Cuéllar         |                 1 |    2067589.11
    24514 | Esteban             | Bastidas Lasso        |                 1 |    2067328.69
       73 | Manuel Hernando     | Serrano Mora          |                 1 |    2066649.90
   123676 | Luis                | Muñoz Cáceres         |                 1 |    2066508.00
    89989 | Brayan Diego        | Duque Herrera         |                 1 |    2066124.57
   103682 | Yesenia             | Vélez Rojas           |                 1 |    2064158.04
    86874 | Yolanda             | Rivera Vélez          |                 1 |    2063351.21
   134975 | Laura               | Martínez Duarte       |                 1 |    2062361.92
   137296 | Juliana             | Erazo Correa          |                 1 |    2061912.00
    64721 | Teresa              | Ortiz Prada           |                 1 |    2060129.55
    69854 | Orlando             | Molina Duque          |                 1 |    2058881.44
    55540 | Laura Libardo       | Medina Acevedo        |                 1 |    2057454.93
   123989 | Erika Patricia      | Zuluaga Flórez        |                 1 |    2057249.72
   114324 | Mónica Viviana      | Londoño Burbano       |                 1 |    2056961.28
    52634 | Mauricio            | Delgado Perdomo       |                 1 |    2056761.49
    34927 | Blanca              | Carrillo Niño         |                 1 |    2055572.88
   139211 | Miguel              | Moreno Uribe          |                 1 |    2055269.70
   100725 | Luis Gustavo        | Tovar Rodríguez       |                 1 |    2054665.95
    18017 | Heriberto           | Zuluaga Parra         |                 1 |    2054519.04
   128882 | Marleny             | Serrano Sandoval      |                 1 |    2053346.93
   121507 | Andrés              | Osorio Sandoval       |                 1 |    2050611.04
   146044 | María               | Díaz Bastidas         |                 1 |    2050393.32
    80347 | Fanny Sofía         | Silva Barrera         |                 1 |    2050382.44
     6496 | Ricardo Santiago    | López Carrillo        |                 1 |    2047223.27
    49734 | Brayan              | López Salazar         |                 1 |    2045956.22
   147010 | Alejandra           | Narváez Guerrero      |                 1 |    2044910.55
   131314 | Blanca              | Ramos Mejía           |                 1 |    2044291.92
   111306 | Esteban             | Cuéllar Guerrero      |                 1 |    2043423.39
   104415 | Gloria              | Agudelo Chamorro      |                 1 |    2043309.42
    28811 | Mateo               | Henao Lozano          |                 1 |    2042428.47
    50352 | Alberto José        | Cárdenas Rangel       |                 1 |    2041743.71
     2197 | Alejandro           | Zapata Vélez          |                 1 |    2041465.32
    76314 | Gustavo             | Lozano Barrera        |                 1 |    2038616.02
   128716 | Pedro               | Villamizar Galvis     |                 1 |    2036970.54
    76688 | Diego Samuel        | García Sandoval       |                 2 |    2034572.51
      632 | Sebastián           | Restrepo Castillo     |                 1 |    2034120.64
   142194 | María               | Cuéllar Zuluaga       |                 1 |    2032311.58
    17103 | Daniel              | Calderón Duque        |                 1 |    2031114.36
   111241 | Beatriz             | Bermúdez Arias        |                 1 |    2028975.14
   142739 | Alba                | Uribe Ríos            |                 1 |    2028798.51
    10904 | Andrés              | Zapata Cárdenas       |                 1 |    2027713.35
    62562 | Rafael              | Vera Delgado          |                 1 |    2027076.84
    98478 | Aníbal              | Osorio Medina         |                 1 |    2026022.25
   133898 | Lucía               | Erazo Vera            |                 1 |    2021554.54
    82439 | Valentina           | Ibarra Parra          |                 1 |    2021459.48
   116081 | Rubén               | Guerrero Pérez        |                 1 |    2020812.96
   135896 | Orlando             | Ibarra Bermúdez       |                 1 |    2020533.30
   132482 | Hugo Héctor         | Lasso Carrillo        |                 1 |    2019963.20
    59523 | Jaime               | Rivera Cuéllar        |                 1 |    2019741.48
   127764 | Nubia               | Díaz Contreras        |                 1 |    2019185.39
    82680 | Guillermo           | Benavides Bonilla     |                 1 |    2019148.08
    75394 | Rosa                | Vélez Betancur        |                 1 |    2019062.37
    71622 | Gilberto            | Delgado Erazo         |                 1 |    2018468.40
   140217 | Alberto             | Parra Marín           |                 1 |    2017175.52
    54428 | Elsa Claudia        | Mora Pérez            |                 1 |    2016919.08
    69049 | Andrés              | Calderón Burbano      |                 1 |    2016734.24
    38314 | Fanny               | Silva Gutiérrez       |                 1 |    2016024.78
    76062 | Patricia Inés       | Marín Gómez           |                 1 |    2015579.62
    54726 | Diego               | Muñoz Moreno          |                 1 |    2014089.36
    19736 | Martha Amparo       | Moreno Gutiérrez      |                 1 |    2012549.59
   115968 | Óscar               | Cáceres Pinzón        |                 1 |    2011612.35
    56872 | Daniel              | Parra Pérez           |                 1 |    2011373.00
    26442 | Wilson Rubén        | Mejía Muñoz           |                 1 |    2011269.26
    87994 | Manuel Fernando     | Betancur Londoño      |                 1 |    2010493.92
    74879 | Fabio               | Sánchez Castro        |                 1 |    2010411.30
    58402 | Germán              | Rincón Burbano        |                 1 |    2009965.45
    27638 | Francisco Manuel    | Calderón Mosquera     |                 1 |    2008653.81
    15371 | Gloria              | Cuéllar Londoño       |                 1 |    2008626.77
   117414 | Abelardo            | Serrano Salazar       |                 1 |    2007858.28
   122888 | Erika Aura          | Gutiérrez Flórez      |                 1 |    2007411.12
    19625 | Natalia Sandra      | López Flórez          |                 1 |    2007116.68
    46717 | Orlando             | Prada Ruiz            |                 1 |    2006575.67
    88473 | Adriana             | Castillo Burbano      |                 1 |    2006006.90
   112411 | Luis                | Castro Ospina         |                 1 |    2005951.55
    38062 | Álvaro Daniel       | Zapata Calderón       |                 1 |    2005947.42
   146238 | Gustavo             | Gómez Mejía           |                 1 |    2004453.00
     8311 | Héctor              | Ospina Arias          |                 1 |    2003625.00
    11814 | Blanca              | Galvis Burbano        |                 1 |    2003462.86
   144550 | Óscar Andrés        | Narváez Narváez       |                 1 |    2003445.33
    16423 | Yolanda             | Mejía Romero          |                 1 |    2002195.88
   119720 | Ramiro              | Serrano Betancur      |                 1 |    2001528.32
    54807 | Elsa                | López Londoño         |                 1 |    2000681.99
     5084 | Teresa              | Benavides Contreras   |                 1 |    2000501.92
    23645 | Mauricio Édgar      | Perdomo Sandoval      |                 1 |    1997632.48
    59230 | Gustavo Gilberto    | Pinzón Uribe          |                 1 |    1996871.17
    32869 | Pedro Hugo          | Burbano Montoya       |                 1 |    1996746.16
   103957 | Esteban             | Herrera Restrepo      |                 1 |    1996682.22
   146258 | Mauricio            | Jaimes Ibarra         |                 1 |    1996638.06
      935 | Ramiro              | Lasso Gómez           |                 1 |    1996040.69
    62546 | Brayan              | Perdomo Moreno        |                 1 |    1995609.91
    16221 | Manuel Mauricio     | Marín Arango          |                 1 |    1995155.06
   121198 | Julián              | Correa Tovar          |                 1 |    1993837.11
    91739 | Lorena              | Cáceres Medina        |                 1 |    1993088.22
   145729 | Ana                 | Ortega Torres         |                 1 |    1991927.91
    60115 | Hernando Sebastián  | Molina Montoya        |                 1 |    1991505.56
   127772 | Efraín              | Sánchez López         |                 1 |    1988895.34
    52426 | Mónica              | Trujillo Hernández    |                 1 |    1988411.77
   138894 | Nubia               | Rodríguez Herrera     |                 1 |    1988152.92
    20305 | Yesenia             | Peña Flórez           |                 1 |    1987871.49
    99245 | Mariana             | Gómez Díaz            |                 1 |    1987863.69
   126500 | Rocío               | Cárdenas Benavides    |                 1 |    1987513.59
   116242 | Nicolás Antonio     | Ospina Cárdenas       |                 1 |    1987001.28
    15435 | Camilo Fernando     | Pérez Trujillo        |                 1 |    1985853.09
   119421 | Camilo Alberto      | Vélez Suárez          |                 1 |    1985308.71
   135386 | Sara                | Bastidas Moreno       |                 1 |    1984397.73
     7662 | Cristian            | Rivera Chamorro       |                 1 |    1984115.20
   142030 | Camilo Ricardo      | González Rangel       |                 1 |    1981703.31
     3931 | José                | Ramos Vargas          |                 1 |    1980625.20
    87482 | Ruth                | Henao Salazar         |                 1 |    1979603.14
     5118 | Ángela              | Castro Barrera        |                 1 |    1978320.58
   148223 | Valentina           | Álvarez Cárdenas      |                 1 |    1978275.20
    91962 | Pedro               | Suárez Acevedo        |                 1 |    1975405.75
    94497 | Nubia               | Duque Serrano         |                 1 |    1975357.58
    72477 | Mateo Francisco     | Osorio Bonilla        |                 1 |    1974399.18
   130836 | Alba Aura           | Medina Rangel         |                 1 |    1974017.50
   117065 | Teresa              | Burbano Mosquera      |                 1 |    1973883.36
    57048 | Elsa                | Serrano Villamizar    |                 1 |    1973609.76
    44583 | Gloria              | Villamizar Arango     |                 1 |    1973181.00
   127262 | Libardo Javier      | Castro Jiménez        |                 1 |    1971791.68
    33180 | Álvaro              | García Bermúdez       |                 1 |    1971445.84
    20771 | Paola               | Ramírez Suárez        |                 1 |    1970450.98
   148115 | Jorge               | Castillo Bonilla      |                 1 |    1970056.96
    88583 | Valentina Mariana   | Erazo Mora            |                 1 |    1969625.00
    48806 | Pedro Germán        | Ospina Moreno         |                 1 |    1969278.61
    19911 | Mario               | Lasso Gómez           |                 1 |    1967757.49
    27735 | Jorge               | Polanía Acevedo       |                 1 |    1966853.98
    16789 | Manuel              | Londoño Agudelo       |                 1 |    1965647.65
    14479 | Andrés              | Delgado Romero        |                 1 |    1963610.30
    45574 | Abelardo            | Parra Duque           |                 1 |    1963380.58
    95650 | Édgar               | Flórez Ortega         |                 1 |    1962360.00
    31108 | Camilo              | Vélez Zapata          |                 1 |    1962153.81
    57962 | Elsa                | Correa Zapata         |                 1 |    1961704.85
    97915 | Marleny Teresa      | Barrera Ramírez       |                 1 |    1961544.06
     3031 | Juliana Mariana     | Peña Salazar          |                 1 |    1961072.53
    38913 | Efraín              | Ibarra Moreno         |                 1 |    1960685.96
   143192 | Pedro               | Rivera Cáceres        |                 1 |    1959769.05
    20920 | Andrés Juan         | Moreno Romero         |                 1 |    1959504.75
    70259 | Fanny               | Parra Lozano          |                 1 |    1958594.44
   134081 | Nelson              | Serrano Bastidas      |                 1 |    1958335.04
   108622 | Óscar               | Marín Cuéllar         |                 1 |    1958276.33
    60045 | Daniela             | Salazar Castillo      |                 1 |    1957146.87
    75258 | Francisco           | Rincón Suárez         |                 1 |    1956012.06
   134725 | Mauricio            | Herrera Cardona       |                 1 |    1955889.00
   103331 | Paola               | Mora Gómez            |                 1 |    1955654.70
    34246 | Heriberto           | Lozano Barrera        |                 1 |    1955322.03
   137061 | Hugo                | Medina Ibarra         |                 1 |    1953417.43
    29365 | Yuliana             | Peña Vélez            |                 1 |    1952926.41
    98339 | Orlando             | Losada López          |                 1 |    1952138.40
    61301 | Alejandra Leidy     | Ortega Niño           |                 1 |    1951736.25
    73220 | Efraín              | Barrera Ospina        |                 1 |    1948921.44
    65951 | Cristian Gilberto   | Villamizar Flórez     |                 1 |    1947708.63
    32833 | Óscar Javier        | Serrano Serrano       |                 1 |    1945912.11
    77340 | Camila              | Erazo Rivera          |                 1 |    1945651.92
   120453 | Yuliana Gladys      | Vargas Delgado        |                 1 |    1945159.82
    33195 | Laura               | Perdomo Mora          |                 1 |    1944795.96
    32445 | Wilmer              | Mora Arango           |                 1 |    1944418.35
    62690 | Fabio               | Perdomo Rodríguez     |                 1 |    1943090.75
    90577 | Andrés Juan         | Molina Bermúdez       |                 1 |    1942698.49
    88254 | Mercedes            | Ibarra Delgado        |                 1 |    1942434.20
    36434 | Alba                | Jiménez Galvis        |                 1 |    1942164.89
    88147 | Luis                | Moreno Agudelo        |                 1 |    1941597.19
    50968 | Ancízar             | Ortega Carrillo       |                 1 |    1940899.59
    46737 | Rosa                | Parra Ruiz            |                 1 |    1940843.59
     1610 | Javier Hugo         | Lasso Flórez          |                 1 |    1940067.90
    83822 | Aura                | Ríos Peña             |                 1 |    1939438.43
    88395 | Beatriz             | Torres Díaz           |                 1 |    1938897.50
    78537 | Alberto             | Sánchez Jaimes        |                 1 |    1938648.67
    73530 | Hernando            | Valencia Bonilla      |                 1 |    1938569.48
   104955 | Wilson              | Vélez Trujillo        |                 1 |    1938471.36
    13491 | Gilberto Libardo    | Delgado Arias         |                 1 |    1938184.41
   141122 | Nelson              | Erazo Londoño         |                 1 |    1937814.90
   104555 | Luis Alberto        | Mosquera Arango       |                 1 |    1935987.43
    29222 | Claudia             | Bonilla Ibarra        |                 1 |    1935750.74
   135969 | Mateo               | Parra Jiménez         |                 1 |    1935595.00
    26004 | Miguel Jaime        | Parra Trujillo        |                 1 |    1934282.39
     8553 | Amparo              | Chamorro Mosquera     |                 1 |    1932537.60
    61177 | Ramiro Arturo       | Henao Marín           |                 1 |    1932448.89
     4930 | Andrés              | Ramírez Prada         |                 1 |    1932335.63
    22426 | Luisa               | Castillo Contreras    |                 1 |    1930476.96
    24558 | Rodrigo             | Calderón Gómez        |                 1 |    1930122.21
    76181 | Hugo                | Zuluaga Henao         |                 1 |    1929940.12
    93525 | Jaime               | Pabón Lasso           |                 1 |    1929471.48
    86911 | Abelardo Guillermo  | Villamizar Serrano    |                 1 |    1929063.60
   117292 | Arturo              | Sandoval Pabón        |                 1 |    1928356.31
   103459 | Heriberto           | Molina Caicedo        |                 1 |    1928017.15
   129641 | Manuela Ángela      | Chamorro Díaz         |                 1 |    1927777.32
     9240 | José                | Rojas Osorio          |                 1 |    1925380.10
    97621 | Andrea              | Vélez Mora            |                 1 |    1923415.04
    71623 | Julián              | Sandoval Cuéllar      |                 1 |    1923410.39
    33238 | Viviana             | Mejía Pabón           |                 1 |    1921809.33
    86398 | Sebastián           | Jaimes Castillo       |                 1 |    1921174.89
    21096 | Teresa              | Villamizar Agudelo    |                 1 |    1920641.80
   108512 | Marcela             | Jiménez Uribe         |                 1 |    1920562.56
   134430 | Ruth Juliana        | Molina Silva          |                 1 |    1920460.38
   116000 | Sandra              | Díaz Moreno           |                 1 |    1919559.98
    26624 | Javier              | Villamizar Rojas      |                 1 |    1919084.40
    85379 | Manuel              | Martínez Lozano       |                 1 |    1918987.14
    20211 | Amparo              | Lozano Cárdenas       |                 1 |    1918983.84
     3043 | Heriberto           | Calderón Medina       |                 1 |    1915334.02
   110488 | Sara                | Vargas Martínez       |                 1 |    1915164.76
    11233 | Viviana             | Martínez Londoño      |                 1 |    1914132.66
    90729 | Cecilia             | Suárez Guerrero       |                 1 |    1912648.68
    37630 | Sebastián           | Gómez Moreno          |                 1 |    1912428.63
   130732 | Luisa               | Serrano Rangel        |                 1 |    1910810.78
   101790 | Carlos              | Mosquera Acevedo      |                 1 |    1910108.80
    51177 | Mauricio Yeison     | Vera Cáceres          |                 1 |    1908695.00
   144247 | Juan                | Castillo Restrepo     |                 1 |    1907997.92
    63433 | Luz                 | Bermúdez Duarte       |                 1 |    1907349.60
    40770 | Jazmín Laura        | Jaimes Trujillo       |                 1 |    1906197.79
    20878 | Claudia Juliana     | Polanía Castro        |                 1 |    1904909.43
    63533 | Gabriela            | Rincón Medina         |                 1 |    1904131.40
   126349 | Samuel              | Bermúdez Duque        |                 1 |    1903258.09
    79208 | Olga                | Silva Marín           |                 1 |    1902678.17
    61546 | Diana               | Suárez Narváez        |                 1 |    1902030.72
   127945 | Edilma              | Mejía Peña            |                 1 |    1900905.00
    88076 | Edilma              | Bastidas Serrano      |                 1 |    1899902.25
    97562 | Mónica Stella       | Serrano Herrera       |                 1 |    1899633.42
     7276 | Emilio              | Galvis García         |                 1 |    1896491.62
   106302 | Guillermo Jaime     | Arias Zuluaga         |                 1 |    1896365.10
   121179 | Gilberto            | Herrera Duarte        |                 1 |    1896060.12
    65580 | Efraín              | Arango Medina         |                 1 |    1894240.64
   129783 | Mateo               | Medina Ortega         |                 1 |    1894170.78
    21360 | Martha              | Correa Zapata         |                 1 |    1893858.23
    83945 | Laura Claudia       | Molina Chamorro       |                 1 |    1893542.84
    25913 | Orlando Mario       | Rangel Polanía        |                 1 |    1893308.94
    21523 | Pedro               | Tovar Acevedo         |                 1 |    1893268.38
   115430 | Gladys Inés         | Niño Martínez         |                 1 |    1892613.96
   129988 | Lucía Lorena        | Ruiz Herrera          |                 1 |    1892063.60
   126702 | Luisa Luz           | Contreras Correa      |                 1 |    1891832.25
    97636 | Yuliana             | Quintero González     |                 1 |    1891334.83
    18782 | Héctor              | Burbano Peña          |                 1 |    1890850.02
    51771 | Daniel Alejandro    | Martínez Burbano      |                 1 |    1890285.36
    81566 | Nelson              | Galvis Correa         |                 1 |    1889994.75
    96106 | Yeison Mateo        | Burbano Galvis        |                 1 |    1888331.91
    29896 | Carlos              | Londoño Losada        |                 1 |    1888164.10
    87069 | Isabella            | Benavides Molina      |                 1 |    1887471.59
    34119 | Wilson Francisco    | Castillo Peña         |                 1 |    1886478.24
    21913 | Abelardo            | Erazo Chamorro        |                 1 |    1885979.72
    11335 | Dora                | Londoño Sandoval      |                 1 |    1885408.04
    96172 | Camila              | Cáceres Bedoya        |                 1 |    1885151.88
   141662 | Aura                | Rivera Gutiérrez      |                 1 |    1884857.23
    90279 | Sara Luisa          | Parra Cuéllar         |                 1 |    1883941.62
    65352 | Pedro               | Narváez Carrillo      |                 1 |    1880989.69
    19423 | Reinaldo Álvaro     | Vera Arango           |                 1 |    1880552.05
    32259 | Yolanda             | Acevedo Castro        |                 1 |    1880499.20
   121430 | Lorena Claudia      | Castro Bermúdez       |                 1 |    1879544.44
    39887 | Wilmer              | Flórez Henao          |                 1 |    1878699.48
    56508 | Olga                | Lasso Moreno          |                 1 |    1877302.16
   138809 | Wilson Orlando      | Barrera Herrera       |                 1 |    1874412.08
    16308 | Libardo Diego       | Calderón Perdomo      |                 1 |    1872843.10
    76552 | Carlos              | Montoya Ramos         |                 1 |    1872589.42
    39145 | Pedro               | Mora Agudelo          |                 1 |    1872131.85
    20262 | David               | Rodríguez Cuéllar     |                 1 |    1870787.10
   102151 | Laura Edilma        | García Quintero       |                 1 |    1867951.70
    31236 | Elsa                | Muñoz Jiménez         |                 1 |    1867800.38
    48029 | Pedro               | Álvarez García        |                 1 |    1867226.48
   117698 | Manuela             | Cabrera Villamizar    |                 1 |    1866664.80
    76147 | Santiago            | Lasso Ruiz            |                 1 |    1866350.03
   130099 | Andrés              | Barrera Medina        |                 1 |    1865859.90
   120607 | Nicolás             | Sánchez Betancur      |                 1 |    1865292.87
    44711 | Carolina            | Molina Pérez          |                 1 |    1864980.25
    19233 | Yolanda Sandra      | Cáceres Jaimes        |                 1 |    1864395.43
    72111 | Stella              | Cardona Arias         |                 1 |    1862917.92
    47437 | Gustavo Mario       | Delgado Pabón         |                 1 |    1862007.16
     5401 | Lorena              | Castro Parra          |                 1 |    1861764.44
    96947 | José                | Quintero Lozano       |                 1 |    1860676.02
   136465 | Mateo               | Rodríguez Silva       |                 1 |    1860670.87
    18208 | Daniel              | Castillo Salazar      |                 1 |    1859972.93
     8879 | Emilio              | Villamizar González   |                 1 |    1859871.01
   104628 | Isabella            | Rojas Pabón           |                 1 |    1859140.78
    57317 | Stella              | Ospina Carrillo       |                 1 |    1859077.68
    16143 | Abelardo            | Ortiz García          |                 1 |    1858590.09
    30879 | Heriberto           | Carrillo Erazo        |                 1 |    1858436.42
    60286 | Sofía               | Martínez Cáceres      |                 1 |    1856571.70
    76553 | Carmen Valentina    | Tovar García          |                 1 |    1856407.26
   117671 | Camilo              | Vera Quintero         |                 1 |    1856314.53
   128311 | Hugo                | Mosquera Mejía        |                 1 |    1853970.13
    41087 | Heriberto Francisco | Calderón Herrera      |                 1 |    1852097.39
    12657 | Beatriz             | Carrillo Osorio       |                 1 |    1851753.45
   107760 | Ancízar             | Niño Betancur         |                 1 |    1851442.60
    94969 | Jaime               | Rodríguez Agudelo     |                 1 |    1850573.76
   124013 | Lucía               | Zapata Peña           |                 1 |    1849213.20
   146496 | Álvaro              | Vélez Serrano         |                 1 |    1846927.21
    39098 | Daniel              | Medina Bonilla        |                 1 |    1845790.60
   127112 | Sandra              | Suárez González       |                 1 |    1845181.66
    17875 | Beatriz Jazmín      | Agudelo Ramírez       |                 1 |    1845147.34
    58883 | Reinaldo            | Romero Agudelo        |                 1 |    1845072.78
   137744 | Rodrigo             | Delgado Bedoya        |                 1 |    1844775.38
   130233 | Brayan              | Cardona Duque         |                 1 |    1844744.72
   128159 | Mariana Mercedes    | Carrillo Delgado      |                 1 |    1844534.28
   146984 | Luis                | Giraldo Zuluaga       |                 1 |    1843628.01
    59052 | Inés Blanca         | Rojas Álvarez         |                 1 |    1843439.88
   129498 | Esteban             | Cabrera Trujillo      |                 1 |    1841980.58
    99326 | Mónica Fanny        | Correa Cuéllar        |                 1 |    1840924.27
    68660 | Esperanza           | Molina Salazar        |                 1 |    1840682.34
    64873 | Camila              | Ibarra Serrano        |                 1 |    1839025.89
   131793 | Lucía               | Suárez Lozano         |                 1 |    1839010.82
   133577 | Mario Abelardo      | Acevedo Bermúdez      |                 1 |    1838252.50
    92029 | Liliana Valentina   | Jiménez Pérez         |                 1 |    1838099.76
     8440 | Óscar               | Castillo Mora         |                 1 |    1837276.66
     2696 | Juan                | Salazar Martínez      |                 1 |    1835874.03
   135077 | Rubén               | Niño Mora             |                 1 |    1834524.54
    43030 | Wilson              | Rangel Betancur       |                 1 |    1833950.36
    64891 | Claudia             | Bastidas Romero       |                 1 |    1833437.34
    54278 | Aníbal              | Sandoval Bastidas     |                 1 |    1833363.72
   128906 | Aníbal              | Contreras Bermúdez    |                 1 |    1832361.77
    80231 | Julián              | Ortega Ramos          |                 1 |    1832206.47
    72092 | Sandra              | Ramírez Suárez        |                 1 |    1832204.11
    53140 | Carolina            | López Serrano         |                 1 |    1831363.48
     2309 | Hernando            | Herrera Giraldo       |                 1 |    1830507.75
     4330 | Mario               | Pabón Erazo           |                 1 |    1829888.25
    41567 | Santiago            | Ibarra Cárdenas       |                 1 |    1829714.25
    55014 | Ramiro              | Silva Sandoval        |                 1 |    1829104.20
    30185 | Rodrigo             | Polanía Correa        |                 1 |    1828745.27
    63994 | Ancízar             | Díaz Contreras        |                 1 |    1828742.43
    38892 | Laura               | Arango Giraldo        |                 1 |    1827756.18
   126174 | Gustavo             | Zuluaga Sandoval      |                 1 |    1827636.11
    10126 | Manuel              | Duarte Moreno         |                 1 |    1826295.42
    85470 | Carlos Nelson       | Suárez Villamizar     |                 1 |    1826262.90
    35842 | Antonio Hugo        | Polanía Ramos         |                 1 |    1825826.94
   118007 | Gloria              | Polanía Agudelo       |                 1 |    1824702.28
    66498 | Rubén Luis          | Ruiz Vélez            |                 1 |    1823066.22
    11124 | Santiago            | Herrera Hernández     |                 1 |    1823052.79
    36260 | Heriberto Efraín    | Álvarez Castro        |                 1 |    1822664.48
    52896 | Emilio              | Bonilla Burbano       |                 1 |    1822431.96
   106788 | Martha Sara         | Contreras Vargas      |                 1 |    1821727.82
    64618 | Luz                 | Vera Lasso            |                 1 |    1820187.92
   127848 | Isabella            | Rodríguez Caicedo     |                 1 |    1820180.92
    10469 | Javier              | Rojas Rivera          |                 1 |    1818235.35
    39368 | Elsa                | Ruiz Rodríguez        |                 1 |    1816783.02
    27558 | Diego               | Ríos Gutiérrez        |                 1 |    1816377.04
     4462 | Rosa                | Gómez Mosquera        |                 1 |    1814702.72
    30647 | Ancízar Álvaro      | Ramírez Rojas         |                 1 |    1814208.10
    56695 | Luis Jorge          | Parra Castillo        |                 1 |    1812191.22
     6236 | Aura Marcela        | Barrera González      |                 1 |    1812061.81
    27416 | Ana                 | Cuéllar Hernández     |                 1 |    1811757.03
    32129 | María Gloria        | Quintero Polanía      |                 1 |    1810987.50
    68201 | Nicolás             | Vélez Ramos           |                 1 |    1810884.22
    80978 | Arturo              | Jiménez Restrepo      |                 1 |    1809866.80
   100123 | Stella              | Mora Ortiz            |                 1 |    1808373.01
   113662 | Sara                | Pinzón Lozano         |                 1 |    1808031.90
     3994 | Edilma Ruth         | Losada Niño           |                 1 |    1807050.28
    70407 | Daniel              | Rincón Cabrera        |                 1 |    1806268.63
   132730 | Jaime               | Silva Moreno          |                 1 |    1805971.79
      766 | Hernando            | Gutiérrez González    |                 1 |    1805096.96
   102117 | Esperanza           | Montoya Rivera        |                 1 |    1804508.49
    26818 | Yuliana             | Jaimes González       |                 1 |    1803786.81
    84916 | Marleny             | Guerrero Ruiz         |                 1 |    1803149.40
    62184 | Ana                 | Muñoz Polanía         |                 1 |    1803065.98
    93691 | Jorge               | Losada Correa         |                 1 |    1802619.48
    67576 | Mercedes Yesenia    | Acevedo Martínez      |                 1 |    1802204.25
    41333 | Fabio               | Vargas Ortega         |                 1 |    1801381.99
    49493 | Diana               | Rivera Mosquera       |                 1 |    1801249.54
    22879 | Julián              | Castillo Chamorro     |                 1 |    1800591.24
    95644 | Elsa                | Ramírez Torres        |                 1 |    1800517.20
    43029 | Juan Pedro          | Sandoval Polanía      |                 1 |    1799835.39
    30959 | Adriana Olga        | Bedoya Giraldo        |                 1 |    1799722.00
    81560 | María               | Marín Valencia        |                 1 |    1798772.04
    33177 | Rafael Manuel       | Vargas Zuluaga        |                 1 |    1798761.84
    26239 | Carolina            | Bermúdez Cáceres      |                 1 |    1798305.65
    10756 | Libardo             | Restrepo Jiménez      |                 1 |    1798011.39
   127106 | Yuliana             | Benavides Gómez       |                 1 |    1797982.52
   140672 | Ruth Diana          | Ibarra García         |                 1 |    1797644.88
    48846 | Carlos              | Restrepo Niño         |                 1 |    1797632.28
   129658 | Sara                | Henao Ospina          |                 1 |    1797339.36
   119688 | Gilberto            | Muñoz Tovar           |                 1 |    1796449.02
    70573 | Juan Germán         | Ortega Burbano        |                 1 |    1796444.76
    39292 | Blanca Elsa         | Calderón Ospina       |                 1 |    1792504.96
    78600 | Juliana             | Henao Muñoz           |                 1 |    1791709.92
    30933 | Wilson              | Ortiz Díaz            |                 1 |    1790996.26
   131294 | Marcela             | Cárdenas Ibarra       |                 1 |    1789868.47
    49730 | Ricardo David       | Sandoval Betancur     |                 1 |    1789829.02
    33596 | Antonio Alejandro   | Peña Prada            |                 1 |    1789408.99
    93605 | Felipe              | Pérez Zapata          |                 1 |    1787175.32
      654 | Sandra              | Arias Duarte          |                 1 |    1786305.71
    57180 | Wilson              | Díaz Guerrero         |                 1 |    1785861.00
    25658 | Sebastián Nelson    | Bastidas Restrepo     |                 1 |    1785413.00
    81865 | Manuel              | Muñoz Rodríguez       |                 1 |    1783864.26
    81514 | Aníbal              | Contreras Londoño     |                 1 |    1783778.10
    79712 | Alejandra           | Herrera Castro        |                 1 |    1783570.72
    21329 | Miguel              | González Peña         |                 1 |    1781937.20
    52385 | Hernando            | Rodríguez Jaimes      |                 1 |    1781833.94
   118198 | Mateo               | Giraldo Montoya       |                 1 |    1781439.24
     5273 | Cristian David      | Álvarez Romero        |                 1 |    1780979.55
   148382 | Sofía               | Henao Cáceres         |                 1 |    1778340.36
    12238 | Nicolás Camilo      | Álvarez Flórez        |                 1 |    1775881.60
   130454 | Ricardo             | Betancur Chamorro     |                 1 |    1775270.98
   110208 | Rafael Ramiro       | Rincón Rivera         |                 1 |    1775050.85
    24019 | Erika               | Niño Álvarez          |                 1 |    1774849.81
    38427 | Mauricio            | Bedoya Arias          |                 1 |    1774760.05
     9062 | Ancízar             | Ortiz Agudelo         |                 1 |    1772014.25
    48244 | Mateo               | Rodríguez Hernández   |                 1 |    1771694.62
   123063 | Gabriela Liliana    | Cuéllar Herrera       |                 1 |    1771435.52
   104480 | Yesenia             | Ibarra Castro         |                 1 |    1771232.73
   126290 | Carlos              | López Arango          |                 1 |    1770506.08
     6171 | Fernando            | Betancur Parra        |                 1 |    1769931.80
    11421 | Brayan              | Barrera Pinzón        |                 1 |    1768580.04
    27260 | Amparo Edilma       | Zuluaga Salazar       |                 1 |    1766984.28
    19506 | Claudia             | Muñoz Arias           |                 1 |    1765918.66
    16265 | Ancízar             | Serrano Romero        |                 1 |    1765208.61
    29284 | Diana Gloria        | Tovar Narváez         |                 1 |    1764914.67
   115538 | Ramiro              | Molina Cardona        |                 1 |    1764023.52
    79788 | Gabriela            | Mosquera Martínez     |                 1 |    1763996.86
     7464 | Yeison              | Flórez Trujillo       |                 1 |    1763707.35
     1204 | Ancízar             | Uribe Gómez           |                 1 |    1762888.42
    89518 | Aura                | Sandoval Romero       |                 1 |    1762798.10
    27878 | Yesenia Juliana     | Niño Ibarra           |                 1 |    1762459.58
   108776 | Alejandra           | Álvarez Caicedo       |                 1 |    1762009.20
    93649 | Liliana             | Rincón Marín          |                 1 |    1761518.58
    10110 | Ricardo             | Martínez Ortiz        |                 1 |    1760467.73
   116418 | Antonio             | Ramos Molina          |                 1 |    1758773.86
    85048 | Mauricio            | Galvis Trujillo       |                 1 |    1757941.92
    25533 | Brayan              | Benavides Sánchez     |                 1 |    1757870.40
    21571 | David               | Ramos Osorio          |                 1 |    1757187.72
   136004 | Manuel              | Duarte Rangel         |                 1 |    1756783.84
    56029 | Santiago            | Castillo Narváez      |                 1 |    1755886.67
   131288 | Orlando             | Betancur Carrillo     |                 1 |    1752713.97
   130862 | Carlos Santiago     | Londoño Ospina        |                 1 |    1752088.50
    96830 | Jaime Héctor        | Trujillo Pabón        |                 1 |    1748527.77
     4082 | Elsa                | Jaimes Niño           |                 1 |    1748254.96
    42769 | Jairo               | Medina Vélez          |                 1 |    1748222.34
   107350 | Alba Leidy          | Zuluaga Caicedo       |                 1 |    1747730.78
    71487 | Amparo              | Marín Castro          |                 1 |    1746400.46
   106064 | Édgar               | Zuluaga Mora          |                 1 |    1745935.60
    90612 | Esperanza           | Rangel Delgado        |                 1 |    1744290.32
     2339 | Juan                | Trujillo Valencia     |                 1 |    1744108.79
    47581 | Nelson              | Calderón Calderón     |                 1 |    1743304.59
     5518 | Efraín              | Flórez Rivera         |                 1 |    1742969.52
    25605 | Gladys              | Hernández Moreno      |                 1 |    1741928.20
    62110 | Laura               | Flórez Contreras      |                 1 |    1740516.47
    47291 | Camilo              | Rojas Rodríguez       |                 1 |    1740097.45
    22996 | Emilio Álvaro       | Martínez Acevedo      |                 1 |    1739991.12
    90123 | Laura               | Moreno Arango         |                 1 |    1739990.98
    41358 | María               | Valencia Sandoval     |                 1 |    1739222.13
   132199 | María               | Chamorro Uribe        |                 1 |    1737336.05
    68697 | Aníbal Heriberto    | Osorio Rodríguez      |                 1 |    1737322.22
   111710 | Carolina            | Álvarez Ortiz         |                 1 |    1737221.16
   113926 | Antonio             | Cáceres Torres        |                 1 |    1737098.74
   114430 | Aura                | Arias Castillo        |                 1 |    1734726.76
   149746 | Alberto Abelardo    | Silva Pinzón          |                 1 |    1734249.63
    13298 | Blanca              | Díaz Lozano           |                 1 |    1734114.18
    11501 | Javier              | Vargas García         |                 1 |    1733424.12
    52348 | Luis                | Lasso Bonilla         |                 1 |    1733211.09
   113381 | Esperanza           | Marín Rivera          |                 1 |    1733056.80
   148278 | Mario               | Mora Barrera          |                 1 |    1732544.07
    62642 | Aníbal              | Rivera Silva          |                 1 |    1731760.60
     1852 | Edilma Mónica       | Vargas Duque          |                 1 |    1731422.12
   129118 | Paola               | Barrera Lozano        |                 1 |    1731366.90
   131412 | Jairo               | González Contreras    |                 1 |    1729039.20
    65256 | Patricia            | Duque Romero          |                 1 |    1727275.24
     2697 | Mauricio            | Suárez Duarte         |                 1 |    1726041.46
   122536 | Gabriela            | Hernández Burbano     |                 1 |    1726024.20
    71844 | Abelardo Gustavo    | Ortega Betancur       |                 1 |    1725643.49
   146894 | Felipe              | Correa Tovar          |                 1 |    1725636.80
    28301 | Orlando Jairo       | Rodríguez Restrepo    |                 1 |    1725518.82
    39450 | José                | Londoño Erazo         |                 1 |    1724904.48
    87971 | Óscar               | Guerrero Bastidas     |                 1 |    1724356.37
    26116 | Jorge               | Herrera Parra         |                 1 |    1723412.37
   115617 | Olga Elsa           | Rojas Cáceres         |                 1 |    1723226.76
    34388 | Diego               | Valencia Cardona      |                 1 |    1723162.84
    76698 | Valentina           | Díaz Contreras        |                 1 |    1723123.58
   131447 | Yesenia             | Duarte Vera           |                 1 |    1722764.40
    74448 | Marcela Sofía       | Delgado Carrillo      |                 1 |    1722329.64
   148951 | Yolanda             | Cabrera Acevedo       |                 1 |    1721809.40
    15749 | Manuela             | Rangel Chamorro       |                 1 |    1721751.64
     8105 | Óscar               | Montoya Perdomo       |                 1 |    1721730.84
    93771 | Natalia Luz         | Ríos Guerrero         |                 1 |    1721711.77
   134112 | Amparo              | Duarte Bedoya         |                 1 |    1721548.86
   103269 | Claudia             | Mora García           |                 1 |    1721167.80
     5588 | Laura               | Silva Ortega          |                 1 |    1721105.22
   106022 | Arturo              | Uribe Álvarez         |                 1 |    1719380.00
    54262 | Nelson Luis         | Calderón Tovar        |                 1 |    1718835.50
    81652 | Rafael              | Arango Betancur       |                 1 |    1717721.76
    99382 | Fernando            | Peña Rodríguez        |                 1 |    1716224.65
    95664 | Alba                | Bermúdez Delgado      |                 1 |    1716020.47
   133997 | Mercedes            | Castillo Vera         |                 1 |    1714443.71
    39364 | Daniela Olga        | Contreras Niño        |                 1 |    1714110.36
    45248 | Mario               | Londoño Henao         |                 1 |    1713306.00
   140167 | Alberto             | Cabrera Galvis        |                 1 |    1711631.04
   129186 | Stella              | Ortega Quintero       |                 1 |    1710919.90
    59434 | Jorge               | Giraldo Vera          |                 1 |    1708723.78
   125227 | Marleny Beatriz     | Molina García         |                 1 |    1708614.73
    82708 | Abelardo Brayan     | Martínez Guerrero     |                 1 |    1707188.34
    54582 | Daniela             | Serrano Jiménez       |                 1 |    1706290.81
    98866 | Héctor              | Vera Carrillo         |                 1 |    1706143.20
    37790 | Javier              | Duque Ramos           |                 1 |    1705663.89
    66985 | Ruth                | Rodríguez Pérez       |                 1 |    1705159.78
    45634 | Jorge               | Cáceres Carrillo      |                 1 |    1703800.43
   130431 | Dora                | Contreras Jiménez     |                 1 |    1703576.17
    77061 | Natalia Diego       | Ibarra Martínez       |                 1 |    1702617.17
    62871 | Reinaldo            | Gutiérrez Suárez      |                 1 |    1702103.64
    59673 | Ramiro              | Ibarra Ríos           |                 1 |    1701993.90
   101729 | Rodrigo             | Medina Giraldo        |                 1 |    1701403.52
    23289 | Jairo               | Sánchez Cárdenas      |                 1 |    1699852.08
    91569 | Orlando             | Rojas Mejía           |                 1 |    1699785.71
    89165 | María               | Betancur Agudelo      |                 1 |    1697731.06
      377 | Jairo Miguel        | Bedoya Zuluaga        |                 1 |    1697388.69
   140448 | Fabio               | Cárdenas Delgado      |                 1 |    1696603.52
    65478 | Nelson              | Bedoya Henao          |                 1 |    1694925.02
     1051 | Beatriz             | Uribe Medina          |                 1 |    1694312.28
    24943 | Diana Gabriela      | Parra Carrillo        |                 1 |    1693069.70
   100000 | José                | Álvarez Mosquera      |                 1 |    1692032.21
    34939 | Ana                 | Mejía Restrepo        |                 1 |    1691401.56
   139346 | Álvaro              | Salazar Parra         |                 1 |    1690792.11
    82220 | Guillermo           | Uribe Martínez        |                 1 |    1688860.17
    88545 | Fanny               | Galvis Gómez          |                 1 |    1688521.01
   104970 | Aníbal              | Henao Sandoval        |                 1 |    1688440.00
    85485 | Camila              | Vera Benavides        |                 1 |    1688169.35
   117751 | Abelardo Ricardo    | Ospina Gutiérrez      |                 1 |    1687413.49
    33816 | Ancízar Reinaldo    | Muñoz Gómez           |                 1 |    1687231.95
    29253 | Sara Rosa           | Osorio Sánchez        |                 1 |    1687219.74
    23510 | Mónica              | Sandoval Mejía        |                 1 |    1685829.91
    67371 | Edilma Beatriz      | Giraldo Álvarez       |                 1 |    1685221.02
    31248 | Santiago            | Zapata Bastidas       |                 1 |    1684520.90
    26848 | Mario               | Vargas Chamorro       |                 1 |    1684077.12
     5261 | Orlando             | Perdomo Contreras     |                 1 |    1683586.62
    44595 | Nelson Germán       | Bastidas Moreno       |                 1 |    1683202.08
    93574 | Camilo              | Silva Quintero        |                 1 |    1681051.48
    96795 | Brayan Ramiro       | Jiménez Arango        |                 1 |    1680820.65
   100741 | Ángela              | Narváez Betancur      |                 1 |    1680357.60
    92512 | Fernando            | Torres Henao          |                 1 |    1679813.59
   143984 | Aníbal              | Valencia Guerrero     |                 1 |    1679573.19
   138241 | José                | Giraldo Medina        |                 1 |    1677297.82
    31215 | Blanca              | Lozano Mejía          |                 1 |    1677112.14
    60469 | Edilma              | Ortega Restrepo       |                 1 |    1674500.86
   124764 | Diego               | Vélez Cárdenas        |                 1 |    1674244.80
   141129 | Fabio               | Trujillo Losada       |                 1 |    1673926.82
    79266 | Yeison              | Barrera Díaz          |                 1 |    1673729.40
    20462 | Sebastián           | Serrano Jaimes        |                 1 |    1671284.25
    43136 | Juliana             | Quintero Guerrero     |                 1 |    1669759.17
    88032 | Mauricio            | Ortega Vélez          |                 1 |    1668625.45
   111688 | Jaime               | Correa Benavides      |                 1 |    1668527.85
   140405 | Fanny               | Castro Bedoya         |                 1 |    1667148.93
   127512 | Gabriela            | Jaimes Jiménez        |                 1 |    1664882.65
    23319 | Wilmer              | Salazar Rojas         |                 1 |    1664603.00
   124922 | Jorge               | Pabón Ortega          |                 1 |    1664589.32
    14527 | Dora                | Henao Agudelo         |                 1 |    1663847.74
     7217 | Francisco           | Betancur Rodríguez    |                 1 |    1660613.36
   119647 | Héctor              | Molina Parra          |                 1 |    1660553.27
    13416 | Javier David        | Ramos Montoya         |                 1 |    1659907.39
    29742 | Blanca              | Polanía Polanía       |                 1 |    1659795.34
    67478 | Carolina            | Henao Castillo        |                 1 |    1657273.80
     2947 | José                | Pabón Agudelo         |                 1 |    1653840.75
    11323 | Inés                | Muñoz Salazar         |                 1 |    1653602.50
   133878 | Hugo Ramiro         | Lasso Galvis          |                 1 |    1653359.79
    56492 | Mauricio            | Henao Bedoya          |                 1 |    1653339.54
    88031 | Cristian Hugo       | Villamizar Ramos      |                 1 |    1651325.00
    13090 | Myriam              | López Duque           |                 1 |    1650878.85
    74751 | Santiago Cristian   | Cardona Guerrero      |                 1 |    1648678.18
    81590 | Dora                | Agudelo Barrera       |                 1 |    1644215.20
    79095 | Dora                | Pérez Niño            |                 1 |    1643906.83
   126985 | Carolina Yolanda    | Rodríguez Álvarez     |                 1 |    1642748.40
   128767 | Andrés              | Giraldo Cardona       |                 1 |    1640767.39
   117298 | Wilmer              | Chamorro Ramos        |                 1 |    1640599.80
    48665 | Óscar               | Muñoz Mosquera        |                 1 |    1640362.76
    38588 | Iván                | Ortiz Silva           |                 1 |    1638298.08
    35316 | Fabio Cristian      | Torres Pabón          |                 1 |    1637705.73
   133605 | Carlos              | Agudelo Moreno        |                 1 |    1637699.96
   113167 | Wilson              | Ruiz Romero           |                 1 |    1636494.16
   105695 | Mauricio Mario      | Villamizar Carrillo   |                 1 |    1635181.01
    80433 | Mateo               | Polanía García        |                 1 |    1633757.65
    89626 | Leidy               | Cardona Sandoval      |                 1 |    1633388.67
    48622 | Yeison Mateo        | Muñoz García          |                 1 |    1631505.77
    85867 | Yuliana Paola       | Quintero Vélez        |                 1 |    1631187.14
    84636 | Hugo                | Jiménez Barrera       |                 1 |    1630843.12
    16941 | Alejandra           | Rodríguez Zapata      |                 1 |    1630386.80
   108035 | Antonio             | Ruiz Arias            |                 1 |    1628132.85
    97879 | Valentina           | Cardona Martínez      |                 1 |    1627755.78
    31208 | Gladys              | Agudelo Tovar         |                 1 |    1627336.09
    83275 | Iván                | Moreno Ruiz           |                 1 |    1624133.48
   119062 | Liliana Stella      | Silva Erazo           |                 1 |    1623795.60
    50638 | Diego               | Suárez Ortiz          |                 1 |    1622707.02
    91850 | Daniel              | Torres Guerrero       |                 1 |    1622675.81
    77443 | Hernando            | Prada Ruiz            |                 1 |    1621633.00
    85401 | Lorena              | Medina Montoya        |                 1 |    1621295.24
   136315 | Esteban             | Guerrero Niño         |                 1 |    1620954.49
    63027 | Martha              | Hernández Vargas      |                 1 |    1620610.42
    80926 | Paola               | Martínez Agudelo      |                 1 |    1620505.02
    70016 | Marcela             | Caicedo Lasso         |                 1 |    1620351.80
    21652 | Yeison              | Arango Carrillo       |                 1 |    1620351.20
     6002 | Francisco Juan      | Ruiz Niño             |                 1 |    1620232.90
    50020 | Emilio              | Henao Moreno          |                 1 |    1620213.92
    69949 | Daniela             | Giraldo Ortega        |                 1 |    1620063.90
    70845 | Emilio              | Carrillo Muñoz        |                 1 |    1619019.64
    37455 | Aníbal              | Valencia Marín        |                 1 |    1618099.14
    57340 | Miguel              | Salazar Delgado       |                 1 |    1617426.06
    92965 | Patricia            | Perdomo Polanía       |                 1 |    1617110.04
   145550 | Héctor              | Zuluaga Ospina        |                 1 |    1614469.15
    75256 | Claudia             | Benavides Caicedo     |                 1 |    1613983.67
    80453 | Fanny               | Pabón Ríos            |                 1 |    1613660.12
   147934 | Andrés              | Ramos Hernández       |                 1 |    1613580.50
   117005 | Rodrigo             | Lozano Rodríguez      |                 1 |    1612569.72
    59741 | Ruth                | Cabrera Polanía       |                 1 |    1611771.46
   143417 | Lucía               | Bastidas Galvis       |                 1 |    1611336.90
    41756 | Fanny Sara          | Bonilla Niño          |                 1 |    1610335.38
    43826 | Ricardo             | Villamizar Contreras  |                 1 |    1609030.90
    31446 | Beatriz Leidy       | Uribe Romero          |                 1 |    1608920.61
   140393 | Beatriz             | Mosquera Ortiz        |                 1 |    1607195.67
   138047 | Javier              | Arango Osorio         |                 1 |    1606163.99
   103870 | Isabella Aura       | Betancur Chamorro     |                 1 |    1605998.94
    50443 | Myriam              | Losada Castillo       |                 1 |    1605760.80
    32897 | Pedro               | Arias Vélez           |                 1 |    1605650.99
   124430 | Viviana             | Castro Medina         |                 1 |    1605094.65
    86022 | Lucía               | Romero Ríos           |                 1 |    1602723.35
   130371 | Juan                | Polanía Giraldo       |                 1 |    1602446.81
    22377 | Stella              | Osorio Cáceres        |                 1 |    1597497.61
   113938 | Patricia            | Vera Galvis           |                 1 |    1595473.69
    48511 | Ancízar Guillermo   | Silva Silva           |                 1 |    1595222.69
    19587 | Héctor              | Rangel Molina         |                 1 |    1594325.04
   134008 | Julián              | Niño Trujillo         |                 1 |    1594299.65
    52688 | Liliana             | Chamorro Ibarra       |                 1 |    1593764.64
   126225 | Alberto             | Narváez Ramírez       |                 1 |    1592402.28
    65322 | Diana Leidy         | Prada Gutiérrez       |                 1 |    1592270.48
     4300 | Yuliana             | Zapata Duarte         |                 1 |    1592068.20
    42762 | Wilmer              | Galvis Benavides      |                 1 |    1591978.12
    44096 | Hernando            | Lozano Londoño        |                 1 |    1591731.80
    94664 | Erika               | Giraldo Bastidas      |                 1 |    1591253.40
   126353 | Orlando Fernando    | Gómez Londoño         |                 1 |    1590888.15
    33135 | Ana                 | Medina Bonilla        |                 1 |    1588928.86
   103060 | Juliana Ángela      | Suárez Ortiz          |                 1 |    1588799.68
    71456 | Wilmer              | Barrera Herrera       |                 1 |    1588658.79
    70107 | Heriberto           | Martínez Herrera      |                 1 |    1588167.51
   146459 | Jorge Hernando      | Sánchez Agudelo       |                 1 |    1587936.15
    72036 | Rubén Ricardo       | Molina Castro         |                 1 |    1587914.99
   121464 | Wilson              | Rivera Quintero       |                 1 |    1587285.83
    58009 | Ricardo             | Ortiz Ortiz           |                 1 |    1585741.30
    33233 | Iván                | Suárez Losada         |                 1 |    1584409.26
    58850 | Gloria              | Restrepo Mosquera     |                 1 |    1582760.81
    49670 | Sandra              | Caicedo Ortega        |                 1 |    1582246.98
    76008 | Alba Lucía          | Delgado Guerrero      |                 1 |    1581234.53
    74000 | Iván José           | Vargas Bedoya         |                 1 |    1580719.69
    82075 | Iván                | Londoño Acevedo       |                 1 |    1580467.07
    45632 | María               | Bonilla Parra         |                 1 |    1580387.20
   149701 | Iván Yeison         | Niño López            |                 1 |    1579654.27
    93932 | Isabella            | Valencia Ríos         |                 1 |    1575524.65
    45359 | Abelardo            | Osorio Burbano        |                 1 |    1575250.56
    84752 | Antonio Manuel      | Chamorro Betancur     |                 1 |    1573905.99
    67616 | Yuliana Liliana     | Duarte Pinzón         |                 1 |    1571865.57
   121206 | Orlando             | Salazar Bonilla       |                 1 |    1571685.12
    65872 | Antonio             | Serrano Agudelo       |                 1 |    1571454.35
    27364 | Yesenia Leidy       | Tovar Henao           |                 1 |    1566858.80
    76612 | Fabio               | Acevedo Sánchez       |                 1 |    1566404.55
   116246 | Sara                | Marín Trujillo        |                 1 |    1563986.01
   137811 | Sofía               | Prada Bonilla         |                 1 |    1562354.74
    67761 | Gustavo             | Bastidas Ospina       |                 1 |    1560988.38
   112343 | Santiago            | Valencia Galvis       |                 1 |    1560009.76
   148303 | Nubia Luz           | Montoya Trujillo      |                 1 |    1559614.71
    60218 | Ramiro Iván         | Castillo Carrillo     |                 1 |    1558417.40
   143567 | Heriberto Antonio   | Moreno Londoño        |                 1 |    1557662.75
    99135 | Marleny             | Cabrera Barrera       |                 1 |    1557612.16
    82907 | Jairo               | Herrera Salazar       |                 1 |    1557366.44
    23977 | Julián              | Montoya Pabón         |                 1 |    1557162.24
   126992 | Nicolás             | Romero Guerrero       |                 1 |    1556889.60
    90961 | Rosa Lucía          | Torres Chamorro       |                 1 |    1556388.24
   143951 | Javier              | Betancur Romero       |                 1 |    1555306.90
    55249 | Elsa                | Giraldo Díaz          |                 1 |    1554842.06
    21887 | Hugo Fernando       | Chamorro Bermúdez     |                 1 |    1554144.70
   138692 | Pedro Gilberto      | Rangel Ríos           |                 1 |    1552406.79
     3632 | Sofía Dora          | Delgado Suárez        |                 1 |    1551930.47
    23710 | Leidy Marcela       | Barrera Sandoval      |                 1 |    1551832.84
    47882 | Gustavo Camilo      | Galvis López          |                 1 |    1551222.67
   117384 | Gladys              | Rivera Duarte         |                 1 |    1550348.80
    10138 | Francisco           | Calderón Lozano       |                 1 |    1549576.75
     1238 | Marcela             | Benavides Delgado     |                 1 |    1549446.86
    23046 | Yeison Diego        | Chamorro Pabón        |                 1 |    1548303.13
    26632 | Gustavo             | Duque González        |                 1 |    1547781.77
    48732 | Ancízar             | Acevedo Rincón        |                 1 |    1546495.24
    32601 | Mónica              | Ramírez Molina        |                 1 |    1546090.61
    37621 | María               | Quintero Duque        |                 1 |    1545649.64
    79849 | Ana                 | Polanía Vélez         |                 1 |    1544451.48
    34136 | Iván                | Hernández Chamorro    |                 1 |    1538300.64
    80486 | Carolina            | Correa Acevedo        |                 1 |    1536005.44
    16459 | Carolina Marcela    | Uribe Betancur        |                 1 |    1535526.84
    52272 | Diana Alba          | Martínez Cuéllar      |                 1 |    1535489.86
    28517 | Luisa               | Calderón Peña         |                 1 |    1533742.26
   107070 | Fabio               | Cárdenas Díaz         |                 1 |    1533715.96
    72920 | Wilmer              | Duarte Vera           |                 1 |    1531658.60
    35686 | Yesenia             | Henao Pabón           |                 1 |    1531495.63
    35697 | Francisco           | Pinzón Bermúdez       |                 1 |    1529633.41
    70544 | Lucía               | Hernández Erazo       |                 1 |    1529118.46
    30039 | Héctor              | Cardona Cuéllar       |                 1 |    1528879.92
    36671 | Álvaro              | Trujillo Caicedo      |                 1 |    1528164.90
    94061 | Orlando             | Perdomo Ortega        |                 1 |    1527079.67
   101842 | José                | Niño Henao            |                 1 |    1527061.82
    73675 | Sebastián Orlando   | Restrepo Bermúdez     |                 1 |    1526469.04
   137414 | Javier              | Perdomo Suárez        |                 1 |    1524278.65
    97255 | Óscar Julián        | Romero Betancur       |                 1 |    1522278.85
    88673 | Javier              | Bastidas Martínez     |                 1 |    1520741.57
    91205 | Rocío               | Flórez Prada          |                 1 |    1519620.51
    20448 | Daniel Heriberto    | Acevedo Londoño       |                 1 |    1518621.20
     1288 | Jaime Santiago      | Ibarra Lozano         |                 1 |    1516345.60
    63488 | Manuel Aníbal       | Lasso Lasso           |                 1 |    1513977.30
    25243 | Jaime               | Lozano García         |                 1 |    1512299.74
    83117 | Mateo               | Duarte Valencia       |                 1 |    1510760.58
   117364 | Elsa                | Londoño Villamizar    |                 1 |    1510001.11
    88260 | Francisco           | Ruiz Gómez            |                 1 |    1509048.45
   118139 | Iván                | Herrera Villamizar    |                 1 |    1508326.68
   100666 | Santiago            | Jaimes Prada          |                 1 |    1505267.41
    76588 | Antonio             | Álvarez Henao         |                 1 |    1504522.66
   147184 | Rafael              | Castillo Cardona      |                 1 |    1503913.99
    44698 | Julián Diego        | Villamizar Duarte     |                 1 |    1499179.80
   100541 | Alba                | Rincón Ramírez        |                 1 |    1491736.26
   109131 | Cristian Rubén      | Jaimes Burbano        |                 1 |    1491681.53
    55759 | Liliana             | Rivera Pabón          |                 1 |    1490201.82
     2317 | Jazmín              | Mejía Quintero        |                 1 |    1487917.64
   130794 | Sebastián           | Castro Ramírez        |                 1 |    1487566.80
    14940 | Amparo              | López Parra           |                 1 |    1485140.63
   110713 | Aníbal              | Polanía Polanía       |                 1 |    1484415.98
     2676 | Luis                | Caicedo Duarte        |                 1 |    1479862.51
     6198 | Isabella            | Duarte Bedoya         |                 1 |    1478609.69
   140404 | Luisa Beatriz       | Guerrero Vera         |                 1 |    1473790.00
   124259 | Rosa Marcela        | Cáceres Suárez        |                 1 |    1469167.56
   129415 | Alejandro           | Romero Castro         |                 1 |    1463763.86
    80060 | Jaime               | Ríos Ortiz            |                 1 |    1459165.76
    16590 | Gladys              | Delgado Arango        |                 1 |    1458696.90
    61610 | Guillermo           | Gutiérrez García      |                 1 |    1455433.26
    66892 | Alberto             | Henao Lozano          |                 1 |    1454056.11
   126936 | Libardo             | Ramírez Barrera       |                 1 |    1442935.21
   102737 | Esteban             | Perdomo Molina        |                 1 |    1408669.76
   142244 | Arturo Libardo      | Lozano Erazo          |                 1 |    1398228.24
   103722 | Francisco           | Molina Mosquera       |                 1 |    1361982.41
   117154 | Sofía Yesenia       | Chamorro Ramos        |                 1 |    1348041.69
    74460 | Daniela Ruth        | López Correa          |                 1 |    1323763.00
    12051 | Antonio             | Serrano Duarte        |                 1 |    1305199.60
    78209 | Ramiro              | Carrillo Rojas        |                 1 |    1302434.43
    32931 | Amparo              | Castillo Bedoya       |                 1 |    1280486.55
    21453 | Guillermo           | Burbano Ortiz         |                 1 |    1280486.07
   133019 | Jorge Samuel        | Cardona Ramos         |                 1 |    1279964.32
   121675 | Guillermo           | Cardona Parra         |                 1 |    1278546.88
      326 | Manuel              | Delgado Bonilla       |                 1 |    1278073.85
   130055 | Viviana Mercedes    | Rodríguez Ramírez     |                 1 |    1277617.11
    76861 | Yesenia             | Martínez Jaimes       |                 1 |    1265493.28
    72292 | Antonio Abelardo    | Ibarra Ortega         |                 1 |    1264455.54
   101241 | Emilio              | Montoya Niño          |                 1 |    1262185.00
   143522 | Luisa               | Tovar Niño            |                 1 |    1261312.11
    97529 | Guillermo Andrés    | Romero Carrillo       |                 1 |    1258810.80
    87417 | Fabio               | Bonilla Muñoz         |                 1 |    1258447.69
   137252 | Emilio              | Burbano Chamorro      |                 1 |    1255254.08
    28874 | Fernando Efraín     | Lasso Castillo        |                 1 |    1253397.55
   143999 | Andrés              | Romero Calderón       |                 1 |    1251507.51
   107845 | Óscar               | Salazar Duque         |                 1 |    1249422.54
    68224 | Gladys              | Marín Perdomo         |                 1 |    1243710.72
    57927 | Marcela             | Carrillo Agudelo      |                 1 |    1238412.80
    22819 | Jorge               | Contreras Cuéllar     |                 1 |    1234146.81
    58621 | Olga                | Jiménez Moreno        |                 1 |    1232567.05
   126752 | Libardo Pedro       | Delgado Betancur      |                 1 |    1232077.23
   111943 | Wilmer              | Rangel Londoño        |                 1 |    1230635.43
    42057 | Mauricio            | Calderón Perdomo      |                 1 |    1229483.64
   131339 | Antonio             | Arias Gómez           |                 1 |    1228803.12
   134454 | Sebastián Rodrigo   | Ramírez Cabrera       |                 1 |    1227403.80
    62296 | Carolina            | Vargas Ríos           |                 1 |    1226554.48
   104151 | Edilma              | López Calderón        |                 1 |    1225919.18
   112394 | Lorena              | Ramos Marín           |                 1 |    1221335.90
    41410 | Julián              | Cabrera Sandoval      |                 1 |    1221329.20
    61080 | Laura               | Rangel Agudelo        |                 1 |    1218408.37
    20344 | Ramiro Diego        | Ruiz Flórez           |                 1 |    1216965.36
    58550 | Cecilia Sara        | Álvarez Jiménez       |                 1 |    1216941.60
   130885 | Camilo Nelson       | Serrano Delgado       |                 1 |    1216868.10
     4950 | Lucía Adriana       | Jaimes Cuéllar        |                 1 |    1216843.93
    23379 | Gustavo             | Díaz Caicedo          |                 1 |    1211065.65
    16121 | Felipe              | Osorio Rangel         |                 1 |    1210794.30
    61525 | Beatriz Lorena      | Ospina Montoya        |                 1 |    1209834.50
     1845 | Gustavo Álvaro      | García Flórez         |                 1 |    1207700.15
   129823 | Rafael              | Carrillo Henao        |                 1 |    1207608.26
    56246 | Esteban             | Jiménez Villamizar    |                 1 |    1205975.22
    60575 | Lorena              | Cuéllar Vera          |                 1 |    1202220.18
     8267 | Cecilia             | Londoño Quintero      |                 1 |    1201015.08
   139490 | Yeison              | Caicedo Romero        |                 1 |    1200888.90
    65007 | Gladys              | Villamizar Peña       |                 1 |    1200640.53
   140531 | Isabella Ruth       | Parra Molina          |                 1 |    1200442.70
    13139 | Daniel              | Castillo Ruiz         |                 1 |    1199949.30
    20600 | Juan                | Pérez Valencia        |                 1 |    1199256.03
   138341 | Jorge               | Arias Carrillo        |                 1 |    1197947.28
   133931 | Rubén               | Losada Hernández      |                 1 |    1197762.39
    38592 | Andrés              | Acevedo Pérez         |                 1 |    1195115.83
   113011 | Francisco           | Ortiz Marín           |                 1 |    1190989.62
    36201 | Heriberto           | Osorio Medina         |                 1 |    1189552.00
    77542 | Álvaro              | Bermúdez Sánchez      |                 1 |    1189032.59
    94536 | Leidy               | Arango Hernández      |                 1 |    1188060.96
    53887 | Jairo               | Ramos Ortiz           |                 1 |    1186138.40
   110574 | Pedro               | Cardona Ibarra        |                 1 |    1184250.62
    83855 | Dora Isabella       | Calderón Londoño      |                 1 |    1184048.09
   102935 | Rubén               | Ríos Erazo            |                 1 |    1181250.57
     7984 | Iván                | Bastidas Jiménez      |                 1 |    1179513.79
    85176 | Carmen              | Duque Perdomo         |                 1 |    1178626.45
    43367 | Francisco           | Pabón Losada          |                 1 |    1178398.94
    23415 | Heriberto Orlando   | Arango Vélez          |                 1 |    1178089.44
   134754 | José                | Acevedo Vélez         |                 1 |    1177892.38
   107293 | Ricardo Alejandro   | Vera Osorio           |                 1 |    1177320.45
    10389 | Mauricio            | Zuluaga Medina        |                 1 |    1175784.64
    47305 | Ángela              | Molina Lozano         |                 1 |    1175060.48
   118137 | Yeison              | Vélez González        |                 1 |    1174238.74
    40672 | Santiago            | Salazar Prada         |                 1 |    1174205.15
    24380 | Samuel              | Galvis Niño           |                 1 |    1174018.68
    91229 | Camilo              | Prada Hernández       |                 1 |    1173652.00
    91073 | Mariana Juliana     | Ospina Parra          |                 1 |    1173625.44
    30770 | Álvaro              | Prada Prada           |                 1 |    1173403.56
    37997 | Felipe Libardo      | Duarte Flórez         |                 1 |    1173328.76
    92599 | Miguel              | Agudelo Mejía         |                 1 |    1171348.38
   126390 | Nelson              | Polanía Restrepo      |                 1 |    1171108.70
    47229 | Inés                | Erazo Castillo        |                 1 |    1171048.96
    93010 | Patricia            | Contreras Giraldo     |                 1 |    1170409.81
   146133 | Javier Reinaldo     | Zapata Ibarra         |                 1 |    1170050.84
   117034 | Diana               | Burbano Medina        |                 1 |    1168637.96
   139565 | Guillermo           | Correa Agudelo        |                 1 |    1167827.91
     3417 | Brayan Carlos       | Montoya Mejía         |                 1 |    1166175.34
   120942 | Ricardo             | Torres Vera           |                 1 |    1165645.21
    82485 | Olga                | Jiménez Rincón        |                 1 |    1162851.48
    12837 | Carmen Leidy        | Martínez García       |                 1 |    1161877.01
    43644 | Mauricio            | Guerrero Ruiz         |                 1 |    1160269.76
    97753 | Yeison              | Ospina Losada         |                 1 |    1160222.90
    37795 | Nelson              | García Lozano         |                 1 |    1158328.14
   103448 | Alejandra           | Duarte Bonilla        |                 1 |    1156616.64
   138635 | Mario               | Gutiérrez Mosquera    |                 1 |    1155878.49
    22428 | Santiago            | Vélez Pinzón          |                 1 |    1155573.36
    96823 | Martha              | Romero Bastidas       |                 1 |    1155334.50
   112414 | Wilmer              | Cárdenas Cárdenas     |                 1 |    1153883.48
    33277 | Heriberto           | Flórez Benavides      |                 1 |    1152999.94
    17749 | Fabio               | Moreno Henao          |                 1 |    1152649.25
   121246 | Álvaro              | Rivera Delgado        |                 1 |    1151646.61
   128203 | Yesenia Aura        | Cabrera Ruiz          |                 1 |    1150663.85
   148238 | Reinaldo            | Ospina Rangel         |                 1 |    1150648.18
    88285 | Nicolás             | Cuéllar Arango        |                 1 |    1150113.62
    55799 | Adriana Erika       | Betancur Ramos        |                 1 |    1149466.05
    99138 | Diego               | Barrera Barrera       |                 1 |    1149154.84
     9413 | José                | Marín Zapata          |                 1 |    1148566.25
    41665 | Antonio Jorge       | Lasso Peña            |                 1 |    1147772.14
   102992 | Hugo                | Quintero Galvis       |                 1 |    1147655.12
   118981 | Fanny               | Burbano Silva         |                 1 |    1146409.15
    38417 | Myriam              | Londoño Ibarra        |                 1 |    1146276.82
    25247 | Yesenia             | Rojas Ospina          |                 1 |    1145832.48
   115465 | Samuel              | Erazo Cáceres         |                 1 |    1145618.84
   128054 | Ramiro              | Salazar Rincón        |                 1 |    1145263.01
   143569 | Óscar               | Narváez García        |                 1 |    1142464.61
    24771 | Myriam Camila       | Molina López          |                 1 |    1141265.49
    16599 | Yesenia             | Narváez Perdomo       |                 1 |    1141054.10
    25461 | Natalia             | Uribe Pérez           |                 1 |    1140775.95
    76100 | Mariana             | Osorio Medina         |                 1 |    1140457.71
    53706 | Camilo              | Molina García         |                 1 |    1139588.34
   136329 | Fabio               | Sánchez Uribe         |                 1 |    1139370.72
   104677 | Rocío               | Pinzón Chamorro       |                 1 |    1138295.29
    55934 | David               | Flórez Contreras      |                 1 |    1137048.57
    98552 | Alberto             | Bonilla Molina        |                 1 |    1136533.66
   122406 | Valentina Daniela   | Contreras Cuéllar     |                 1 |    1136377.91
   117763 | Heriberto Orlando   | Giraldo Suárez        |                 1 |    1136079.66
    81311 | Antonio Mario       | Marín Niño            |                 1 |    1135880.00
    79831 | Manuel              | Rojas Acevedo         |                 1 |    1135846.86
    59062 | Hugo                | Parra Carrillo        |                 1 |    1134941.32
    11056 | Valentina           | Marín Bermúdez        |                 1 |    1134913.43
     3117 | Nubia Sofía         | Barrera García        |                 1 |    1131070.99
   125111 | Iván Germán         | Romero Moreno         |                 1 |    1130883.00
   143197 | Gilberto            | Ortega Castro         |                 1 |    1129880.70
    67975 | Ramiro David        | Cárdenas Narváez      |                 1 |    1129832.22
   135935 | Beatriz Yolanda     | López Quintero        |                 1 |    1128477.78
    98278 | Cecilia             | García Medina         |                 1 |    1127393.80
   114027 | Yuliana             | Agudelo Suárez        |                 1 |    1127212.84
    80001 | Luisa Carmen        | Herrera Salazar       |                 1 |    1125814.98
    47315 | Gladys Viviana      | Molina Burbano        |                 1 |    1125711.31
   104983 | Hernando            | Pinzón Niño           |                 1 |    1124929.11
   117308 | Natalia Stella      | Narváez Galvis        |                 1 |    1123538.71
   113438 | Wilson              | Perdomo Uribe         |                 1 |    1121811.60
    11165 | Édgar               | Narváez Delgado       |                 1 |    1121298.66
    95037 | Libardo             | Duque Flórez          |                 1 |    1120525.76
   134309 | Nubia Gladys        | Narváez Vargas        |                 1 |    1119923.85
    91928 | Patricia            | Ibarra Díaz           |                 1 |    1119280.50
   106709 | María Alejandra     | Agudelo Díaz          |                 1 |    1119126.69
    39012 | José                | Carrillo Ruiz         |                 1 |    1116939.74
    34273 | Diana               | Rangel Vera           |                 1 |    1115690.77
    80499 | Mercedes Rodrigo    | Bonilla Peña          |                 1 |    1115274.37
    34103 | Mercedes            | Trujillo Serrano      |                 1 |    1114729.25
    55521 | Héctor              | Agudelo Pinzón        |                 1 |    1113816.21
    16513 | Luis                | Polanía Sandoval      |                 1 |    1112882.90
   113142 | Emilio              | Zuluaga Mora          |                 1 |    1111057.78
    43727 | Juliana             | Arias Sánchez         |                 1 |    1110588.87
    88251 | Alejandra           | Moreno Cuéllar        |                 1 |    1107863.22
    93469 | Edilma              | Salazar Ramírez       |                 1 |    1107200.92
    83907 | Claudia             | Martínez Moreno       |                 1 |    1106448.52
   129336 | Marcela             | Muñoz Mosquera        |                 1 |    1105169.12
    57554 | Aníbal              | Ruiz Lozano           |                 1 |    1103938.75
    54935 | Carlos              | Narváez Pinzón        |                 1 |    1103613.75
   105759 | Mónica              | Ruiz Osorio           |                 1 |    1102322.88
    51532 | Daniel              | Martínez Salazar      |                 1 |    1102062.02
    34594 | Iván                | Rivera Burbano        |                 1 |    1101527.64
   140648 | Diana               | Delgado Guerrero      |                 1 |    1098422.36
    25925 | Wilson              | Rojas Medina          |                 1 |    1097550.55
    48140 | Reinaldo            | Ruiz Lasso            |                 1 |    1096931.33
    48921 | Esperanza           | Ibarra Montoya        |                 1 |    1096460.07
    36314 | Miguel Daniel       | Delgado Arango        |                 1 |    1093575.15
   105638 | Marcela             | Salazar Bonilla       |                 1 |    1093459.31
   145443 | Édgar Miguel        | Martínez Montoya      |                 1 |    1092264.02
    21773 | Beatriz             | Arias Álvarez         |                 1 |    1091555.57
   149002 | Esteban             | Guerrero Rangel       |                 1 |    1089405.80
   116565 | Rubén               | Martínez Cabrera      |                 1 |    1088493.97
   122489 | Elsa                | Pérez Ortiz           |                 1 |    1088432.64
    42898 | Mateo               | Restrepo Gómez        |                 1 |    1087242.95
    25905 | Rodrigo Francisco   | Bedoya Chamorro       |                 1 |    1086044.40
   113525 | Inés Erika          | Zapata Sánchez        |                 1 |    1085327.60
    69477 | David Aníbal        | Castillo Duarte       |                 1 |    1084669.73
     4790 | Mercedes            | Tovar Silva           |                 1 |    1083783.39
    38730 | Rubén Cristian      | González Flórez       |                 1 |    1082327.08
    66581 | David Cristian      | Silva Bonilla         |                 1 |    1080443.40
   128925 | Jairo               | Castro Castro         |                 1 |    1077840.39
    40227 | Patricia Liliana    | Bastidas Muñoz        |                 1 |    1077029.46
   142785 | Alejandro           | Vélez Narváez         |                 1 |    1076684.25
   135845 | Beatriz             | Losada Bermúdez       |                 1 |    1076556.74
    92590 | Luisa               | Suárez Arias          |                 1 |    1072458.80
   124168 | Marleny             | Díaz Rivera           |                 1 |    1072079.19
    60404 | Yeison              | Contreras Polanía     |                 1 |    1071919.94
    67006 | Yeison Cristian     | Chamorro Arias        |                 1 |    1071913.93
    41433 | Rocío               | Contreras López       |                 1 |    1070621.67
   145747 | Mario               | Bastidas Zuluaga      |                 1 |    1069257.58
     8547 | Esteban             | Niño Ibarra           |                 1 |    1067991.36
    37572 | Marleny             | Uribe Herrera         |                 1 |    1067547.00
     8068 | Alejandra           | Romero Burbano        |                 1 |    1066527.67
   142612 | Sofía               | Castillo Martínez     |                 1 |    1064834.94
   120425 | Heriberto Luis      | Parra Narváez         |                 1 |    1064760.76
    99855 | Inés                | Perdomo Tovar         |                 1 |    1063113.80
   147926 | Mario               | Tovar Serrano         |                 1 |    1062286.20
    43825 | Fernando            | Herrera Ibarra        |                 1 |    1061955.09
   133372 | Miguel              | Jaimes Serrano        |                 1 |    1061675.50
    87258 | Cecilia Ángela      | Ríos Caicedo          |                 1 |    1060710.39
   136183 | Jairo               | Ibarra Cuéllar        |                 1 |    1059590.21
   125828 | Mario               | Galvis Medina         |                 1 |    1059036.70
    13702 | Wilson              | Vélez Torres          |                 1 |    1058559.88
     5643 | Efraín              | Bonilla Ramos         |                 1 |    1058494.95
    76607 | Wilson              | Acevedo Niño          |                 1 |    1057890.10
     7103 | Gloria              | Villamizar Marín      |                 1 |    1055397.75
    68493 | Esteban Julián      | Gómez Zapata          |                 1 |    1053619.11
    67191 | Diego               | Vélez Losada          |                 1 |    1050732.16
    11859 | Nelson              | González Serrano      |                 1 |    1048108.04
   138970 | Reinaldo            | Cabrera Castro        |                 1 |    1046063.55
    81446 | Isabella            | Moreno Muñoz          |                 1 |    1045926.67
   137081 | Ángela              | Benavides Bermúdez    |                 1 |    1045684.55
    50070 | Arturo              | Contreras Peña        |                 1 |    1045665.12
   110054 | Andrea Laura        | Delgado Silva         |                 1 |    1044787.20
    89492 | Alejandra Liliana   | Parra Silva           |                 1 |    1044450.68
    21944 | Fernando Juan       | Correa Valencia       |                 1 |    1044398.90
    79423 | Teresa Daniela      | Jaimes Delgado        |                 1 |    1043736.69
    57301 | Julián              | Torres Pinzón         |                 1 |    1043351.50
    54473 | Libardo             | Caicedo Suárez        |                 1 |    1043085.90
     7705 | Esteban             | Jaimes Suárez         |                 1 |    1042678.10
    14089 | Luis                | Caicedo Flórez        |                 1 |    1041282.24
   145201 | Camila              | Vargas Ríos           |                 1 |    1040996.88
    81642 | Luis                | Sandoval Rangel       |                 1 |    1038621.16
    71811 | David               | Londoño Erazo         |                 1 |    1038110.55
    65822 | Ramiro              | Rodríguez Gómez       |                 1 |    1036809.24
   147431 | Mónica              | Castillo Cabrera      |                 1 |    1036618.11
    84147 | Germán              | Delgado Cáceres       |                 1 |    1035964.40
   149462 | Rubén               | Montoya Zuluaga       |                 1 |    1034711.58
    32201 | Jairo David         | Trujillo Gómez        |                 1 |    1032071.06
   104210 | David Julián        | Jaimes Serrano        |                 1 |    1031945.90
    94119 | Alberto             | Vélez Suárez          |                 1 |    1027649.70
   134343 | Emilio              | Bermúdez Erazo        |                 1 |    1026975.52
    23070 | Rubén               | Villamizar Ramírez    |                 1 |    1025045.76
    73480 | Aura                | Duarte Calderón       |                 1 |    1024949.97
    89575 | Cecilia Lorena      | Martínez Niño         |                 1 |    1023463.97
   104259 | Elsa                | Zapata Delgado        |                 1 |    1023337.72
    20908 | Edilma              | Ramos Ibarra          |                 1 |    1022495.78
    16330 | Gilberto            | Delgado Rivera        |                 1 |    1022247.14
   115865 | Óscar Germán        | Rincón Gutiérrez      |                 1 |    1022043.88
     9494 | Ramiro Mateo        | Suárez Betancur       |                 1 |    1021597.50
    13255 | Fernando            | Vera Lasso            |                 1 |    1021326.80
    77315 | Juan                | Niño Muñoz            |                 1 |    1020864.00
      647 | Brayan              | Perdomo Cardona       |                 1 |    1018636.28
    78133 | Edilma              | Suárez Acevedo        |                 1 |    1018329.36
   105858 | Orlando             | Cáceres Marín         |                 1 |    1018037.44
    19636 | Diego               | Restrepo Gutiérrez    |                 1 |    1017135.00
    97947 | Abelardo Mauricio   | Cáceres Jaimes        |                 1 |    1016631.20
    57177 | Carlos              | Flórez Mora           |                 1 |    1014443.25
    92771 | Libardo             | Martínez Gutiérrez    |                 1 |    1014012.85
    77764 | Rocío               | Barrera Vélez         |                 1 |    1013985.51
    50906 | Antonio             | Uribe Pabón           |                 1 |    1011953.22
   107565 | Aura Diana          | Cabrera Prada         |                 1 |    1009409.52
   123586 | Rafael              | López Rojas           |                 1 |    1008533.03
   100968 | Cecilia             | Polanía Valencia      |                 1 |    1008371.00
   139871 | Arturo              | Marín Niño            |                 1 |    1006306.68
   112976 | Pedro               | Muñoz Correa          |                 1 |    1003816.96
   124411 | Aura                | López Zuluaga         |                 1 |    1002320.44
   109245 | Manuela             | Polanía Correa        |                 1 |    1001921.39
   137239 | Ruth                | Peña Rincón           |                 1 |    1000214.46
   138485 | Gladys              | Flórez Zapata         |                 1 |     998073.83
    18405 | Daniel              | Correa Zuluaga        |                 1 |     997982.96
    79646 | Rosa                | Marín Mosquera        |                 1 |     997758.81
    50974 | Ruth Patricia       | Pabón Rodríguez       |                 1 |     994313.22
    89453 | Andrés Jaime        | Pinzón Álvarez        |                 1 |     993341.59
   127078 | Óscar               | Polanía Ortiz         |                 1 |     991611.91
    82332 | Luisa Manuela       | Contreras Moreno      |                 1 |     990835.20
    56059 | Gabriela            | Bermúdez Jaimes       |                 1 |     990676.57
   113620 | Sofía               | Guerrero Rincón       |                 1 |     990145.86
     3543 | Heriberto           | Rangel Lasso          |                 1 |     989246.68
    40097 | Patricia Inés       | Cárdenas Duque        |                 1 |     987348.60
    52859 | Sofía Valentina     | Flórez Caicedo        |                 1 |     986892.25
    19057 | David               | Silva Cardona         |                 1 |     986719.68
    78882 | Edilma Elsa         | Herrera Zuluaga       |                 1 |     986584.50
    81132 | Pedro               | González Cáceres      |                 1 |     986074.74
    48374 | Lorena              | Gutiérrez Henao       |                 1 |     985540.68
    11018 | Amparo              | Bonilla Erazo         |                 1 |     983159.17
   145671 | Isabella            | Calderón Londoño      |                 1 |     981527.38
   108628 | Blanca              | Mosquera Ruiz         |                 1 |     981156.33
   102296 | Wilmer Jaime        | Correa Ruiz           |                 1 |     980986.13
    51335 | Laura               | Erazo Muñoz           |                 1 |     980545.06
    31150 | Hernando            | Jaimes Bedoya         |                 1 |     979215.70
    17622 | Stella Isabella     | Erazo Salazar         |                 1 |     977939.52
    98483 | Claudia             | Trujillo Montoya      |                 1 |     976870.51
    34837 | Myriam              | Ibarra Narváez        |                 1 |     975786.24
   135039 | Elsa                | Ibarra García         |                 1 |     975006.10
    88494 | Yuliana             | Londoño Jaimes        |                 1 |     973249.50
     3633 | Luz                 | Duque Romero          |                 1 |     971973.44
    40640 | Rodrigo             | Montoya Londoño       |                 1 |     971299.89
    18418 | Amparo              | Bastidas Cuéllar      |                 1 |     969055.48
    24250 | Arturo              | Salazar Pinzón        |                 1 |     967315.23
    87068 | Sara                | Parra Rojas           |                 1 |     967195.00
      434 | Javier              | Vargas Osorio         |                 1 |     967168.61
    99176 | Jairo               | Jaimes Cabrera        |                 1 |     967100.18
   102256 | Mario Heriberto     | Montoya Rincón        |                 1 |     964659.96
    19399 | Rodrigo             | Tovar García          |                 1 |     964251.75
   114317 | Diego               | Polanía Pérez         |                 1 |     964110.71
      709 | Gustavo José        | Parra Londoño         |                 1 |     963837.19
    56907 | Esperanza Inés      | Gutiérrez Jaimes      |                 1 |     962861.83
   123959 | Santiago            | Hernández Martínez    |                 1 |     960746.16
    90171 | Erika               | Burbano Ríos          |                 1 |     960517.50
   142990 | Lucía Sofía         | Vargas Bonilla        |                 1 |     956654.28
   141263 | Iván Germán         | Londoño Bermúdez      |                 1 |     955274.92
    70078 | Andrés              | Tovar Mosquera        |                 1 |     953913.78
   141898 | Mateo               | Cárdenas García       |                 1 |     953869.92
   120886 | Juliana             | Cuéllar Cabrera       |                 1 |     950753.49
    89985 | Santiago            | Salazar Henao         |                 1 |     947199.39
   128872 | Alberto             | Martínez Gómez        |                 1 |     944914.19
    70595 | Rocío               | Contreras Bastidas    |                 1 |     944775.68
    44882 | Carolina Jazmín     | Bermúdez Perdomo      |                 1 |     944729.78
   108485 | Manuel Guillermo    | Mejía Agudelo         |                 1 |     944697.60
   107588 | Brayan Wilmer       | González Torres       |                 1 |     941665.62
   116556 | Lucía               | Cuéllar Ospina        |                 1 |     934894.22
   101008 | Juliana Isabella    | Delgado Duarte        |                 1 |     933715.78
   146635 | Esperanza           | Zapata Pinzón         |                 1 |     933561.33
   127778 | Inés                | Cardona Silva         |                 1 |     932691.34
   128805 | Santiago            | Bastidas Acevedo      |                 1 |     931585.84
    32661 | Erika               | Uribe Carrillo        |                 1 |     928607.46
   148088 | Jorge               | Perdomo Ramírez       |                 1 |     928148.49
    71921 | Nubia               | Gómez Parra           |                 1 |     927209.42
    34804 | Luis                | Jiménez Arias         |                 1 |     926261.05
   110496 | Sebastián           | Torres Uribe          |                 1 |     925850.52
    29303 | Mauricio            | Osorio Díaz           |                 1 |     923882.52
   136721 | Teresa Viviana      | Moreno Suárez         |                 1 |     923839.72
    11289 | Ancízar             | Castro Salazar        |                 1 |     923831.48
    82836 | Wilmer Yeison       | Losada Vera           |                 1 |     921492.95
    84773 | Gladys              | Trujillo Gómez        |                 1 |     920760.08
    77534 | Carmen Gladys       | Arango Cardona        |                 1 |     918894.60
    77353 | Heriberto           | Lasso Tovar           |                 1 |     917654.39
    99777 | Andrés              | Correa Calderón       |                 1 |     916783.65
    68666 | Sara                | Tovar Muñoz           |                 1 |     916405.93
    43737 | Abelardo            | Martínez Suárez       |                 1 |     915931.75
    31128 | Javier              | Niño Guerrero         |                 1 |     912547.82
    13859 | Martha              | Losada Mosquera       |                 1 |     911974.15
    90126 | Adriana Laura       | Herrera Londoño       |                 1 |     911028.09
    86847 | Heriberto Carlos    | Mora Sandoval         |                 1 |     907253.57
    75273 | Abelardo            | García Carrillo       |                 1 |     906957.69
   104901 | Andrea Sandra       | Osorio Chamorro       |                 1 |     906946.60
    77335 | Esteban             | Osorio Muñoz          |                 1 |     906355.10
    63149 | Gabriela            | Ríos Jaimes           |                 1 |     906242.47
    78515 | Gilberto            | Pérez Duarte          |                 1 |     906097.85
   110668 | Ramiro              | Jiménez Rodríguez     |                 1 |     903925.53
    71597 | Gloria              | Ospina Mosquera       |                 1 |     902227.15
     9209 | Guillermo           | Vargas Bedoya         |                 1 |     901914.99
    97194 | Patricia            | Benavides López       |                 1 |     901090.68
    58726 | Blanca Ruth         | Vera Lasso            |                 1 |     899943.60
    92873 | Pedro Julián        | Giraldo Ruiz          |                 1 |     898841.50
    66436 | Rosa                | Jaimes Chamorro       |                 1 |     898250.21
    95034 | Javier              | Castillo Castillo     |                 1 |     897701.49
    17481 | Iván                | Pabón Salazar         |                 1 |     897639.57
    46665 | Alejandra Myriam    | Molina Parra          |                 1 |     897061.90
    41788 | Marcela             | Zuluaga Guerrero      |                 1 |     893692.69
   130740 | Édgar               | Torres Pinzón         |                 1 |     893624.06
    83547 | Rosa                | Narváez Hernández     |                 1 |     891325.76
    31187 | María               | Silva Villamizar      |                 1 |     889445.50
   104033 | Yolanda             | Ortiz Montoya         |                 1 |     888876.49
    34114 | Fanny               | Osorio Medina         |                 1 |     887634.31
    49111 | Emilio              | Trujillo Mora         |                 1 |     883608.84
    30605 | Juan                | Guerrero Gómez        |                 1 |     882834.27
   130666 | Rubén               | Arango Acevedo        |                 1 |     880015.58
   108252 | Amparo              | Zapata Gómez          |                 1 |     878143.22
     7762 | Antonio             | Cáceres Villamizar    |                 1 |     876465.70
    93348 | Isabella            | García López          |                 1 |     873385.20
    10907 | Jazmín              | Pérez Gómez           |                 1 |     873191.61
    32446 | Manuela Luisa       | Burbano Ibarra        |                 1 |     872486.46
   130783 | Aníbal              | Hernández Tovar       |                 1 |     869213.18
   125618 | Amparo              | Calderón Caicedo      |                 1 |     865586.36
    97852 | Alejandro           | Torres González       |                 1 |     864058.00
    72165 | Sandra              | Castro Jaimes         |                 1 |     862875.90
    84588 | Elsa                | Rojas Muñoz           |                 1 |     862476.72
    99491 | Valentina Yolanda   | Losada Mejía          |                 1 |     862141.07
   136735 | Mateo               | Narváez Vargas        |                 1 |     861270.24
   144950 | Marleny Sandra      | Rincón Castillo       |                 1 |     859837.65
    39540 | Hugo Alejandro      | Cárdenas Chamorro     |                 1 |     859670.07
    85886 | Mauricio            | Molina Villamizar     |                 1 |     859645.80
    96607 | Alejandro           | Cardona Contreras     |                 1 |     858399.60
    93484 | Rodrigo Mauricio    | Ortiz Álvarez         |                 1 |     856596.00
    50785 | Ana Claudia         | Hernández Cáceres     |                 1 |     856127.83
   109533 | Germán              | Burbano Betancur      |                 1 |     855639.01
    33122 | Alejandra           | Sandoval Pabón        |                 1 |     854660.70
    57152 | Diego               | Chamorro Peña         |                 1 |     852805.39
   147511 | Lucía               | Rivera Guerrero       |                 1 |     852691.64
    31290 | Sebastián           | Valencia Agudelo      |                 1 |     852684.33
   103257 | Libardo             | Serrano Villamizar    |                 1 |     851524.13
     2930 | Claudia             | Arango Pabón          |                 1 |     845541.74
    71709 | Amparo              | Narváez Álvarez       |                 1 |     845077.78
   145317 | Sebastián           | Narváez Duque         |                 1 |     844992.80
   119836 | Ana                 | Ruiz Ospina           |                 1 |     844862.22
    70354 | Liliana             | Perdomo Rivera        |                 1 |     843449.66
    50959 | Ramiro              | Pabón Moreno          |                 1 |     843224.91
   145207 | Brayan              | Lasso Arias           |                 1 |     842745.08
    83808 | Jairo               | Hernández Losada      |                 1 |     842512.99
    36711 | Iván                | Pabón Barrera         |                 1 |     841360.77
    12364 | Arturo              | Bermúdez Trujillo     |                 1 |     838879.37
   121579 | Jairo               | Cabrera Cárdenas      |                 1 |     838259.78
    47599 | Héctor Mateo        | Arias Pérez           |                 1 |     835859.40
   108750 | Nelson Sebastián    | Narváez Moreno        |                 1 |     834824.49
    29229 | Marleny             | Losada Mejía          |                 1 |     834592.68
    70445 | Nelson              | Cáceres Ortiz         |                 1 |     832628.10
   139936 | Fanny               | Uribe Gutiérrez       |                 1 |     832166.44
    92031 | Dora                | Contreras Serrano     |                 1 |     830884.46
    46608 | Cristian            | Rodríguez Mosquera    |                 1 |     830705.42
   128552 | Luisa               | Ruiz Torres           |                 1 |     829374.07
    80583 | Ricardo             | Torres Suárez         |                 1 |     829027.07
    34576 | Édgar               | Ortega Betancur       |                 1 |     826307.32
    43560 | Rosa                | Sandoval Valencia     |                 1 |     825197.68
   125157 | Cristian            | Losada Rincón         |                 1 |     824816.90
   136229 | Édgar Yeison        | Marín Cárdenas        |                 1 |     821924.92
   136877 | Esteban             | Bermúdez Sánchez      |                 1 |     821108.68
    94094 | Paola Lucía         | Giraldo Cabrera       |                 1 |     820691.30
    58667 | Yesenia             | Montoya Niño          |                 1 |     820682.33
   129860 | Rodrigo Heriberto   | Mora Benavides        |                 1 |     819580.83
      141 | Liliana             | Restrepo González     |                 1 |     819383.84
    69251 | Inés                | Parra Galvis          |                 1 |     815098.52
   139060 | María               | Cabrera Contreras     |                 1 |     813524.72
   111390 | Wilson              | Romero Vera           |                 1 |     813437.22
    28556 | Ángela              | Barrera Pinzón        |                 1 |     809993.52
   132134 | Aura                | Bermúdez Zapata       |                 1 |     809628.00
    93008 | Germán              | Tovar Mosquera        |                 1 |     809311.40
    65838 | Fabio               | Bastidas Flórez       |                 1 |     808588.90
   142650 | Santiago            | Zuluaga Cárdenas      |                 1 |     808475.25
    77789 | Libardo             | Mejía Rivera          |                 1 |     807519.24
     4412 | Gloria María        | Restrepo González     |                 1 |     806274.00
   140620 | Jaime Antonio       | Jaimes Montoya        |                 1 |     804281.90
   131461 | Mario Yeison        | Rodríguez Perdomo     |                 1 |     803460.64
   140920 | Juan                | Betancur Ramos        |                 1 |     803316.24
     1343 | Emilio              | Suárez Silva          |                 1 |     802769.04
   113426 | Reinaldo            | Zuluaga Benavides     |                 1 |     802324.48
    25943 | Paola Erika         | Ortiz Medina          |                 1 |     801516.45
    46646 | Aura                | Álvarez Perdomo       |                 1 |     801148.80
   118885 | Elsa                | Agudelo Erazo         |                 1 |     799660.35
   102136 | Jazmín              | Ramos Cuéllar         |                 1 |     799054.66
   132186 | Viviana             | Hernández Rodríguez   |                 1 |     796899.20
   113077 | Marcela             | Romero Giraldo        |                 1 |     796820.00
    22875 | Daniela             | Rincón Suárez         |                 1 |     796555.30
   125426 | Sebastián Mauricio  | Chamorro Londoño      |                 1 |     796158.07
    89167 | Paola Mariana       | Pabón Lasso           |                 1 |     795680.99
    22933 | Wilmer              | Osorio Vera           |                 1 |     795028.09
    59256 | Guillermo           | Uribe Parra           |                 1 |     792581.44
    50383 | Liliana Martha      | Erazo Moreno          |                 1 |     792575.25
    64516 | Francisco           | Silva Narváez         |                 1 |     790807.68
     4116 | Luisa               | Sánchez Zapata        |                 1 |     788516.62
    29980 | Rosa                | Rodríguez Osorio      |                 1 |     785660.75
   148063 | Hernando            | Suárez Delgado        |                 1 |     784821.51
   134768 | Édgar               | Bonilla Ramírez       |                 1 |     783125.81
   115414 | Carolina            | Rangel Moreno         |                 1 |     782268.88
    16962 | Teresa              | Restrepo Muñoz        |                 1 |     778223.75
    43327 | Marcela             | Ruiz Henao            |                 1 |     776961.84
   144781 | Isabella            | Londoño Bastidas      |                 1 |     774875.86
    13845 | Dora                | Delgado Correa        |                 1 |     774445.62
    72998 | Elsa                | Díaz Silva            |                 1 |     773289.25
    69418 | Hugo Orlando        | Duarte Cárdenas       |                 1 |     772370.41
    50323 | Reinaldo Mateo      | Lasso Pérez           |                 1 |     766164.56
   132796 | Ramiro              | Perdomo Londoño       |                 1 |     762644.10
    46675 | Santiago            | Uribe Herrera         |                 1 |     761993.97
    37421 | Arturo              | Losada Vargas         |                 1 |     756325.30
   127214 | Aníbal              | Jiménez Arias         |                 1 |     756076.31
    82705 | Fernando            | Serrano Vélez         |                 1 |     755664.63
   134485 | Carlos              | Ibarra Cardona        |                 1 |     751496.84
   142627 | Teresa              | Jaimes Gómez          |                 1 |     751425.66
     2282 | Juan                | Tovar Mejía           |                 1 |     750207.36
    78996 | Nelson              | Vera Agudelo          |                 1 |     746363.52
    44161 | Cristian            | Chamorro Agudelo      |                 1 |     734976.73
    20311 | Luis Yeison         | Bonilla Duque         |                 1 |     726889.76
(6352 filas)
*/