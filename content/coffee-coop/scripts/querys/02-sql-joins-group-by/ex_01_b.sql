--Exercise 01
-- b
-- Farm name, rural district, municipality, and the farmer's first and last names in municipality 54518.
*/
SELECT 
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T2.municipality_name AS municipality,
    T3.first_name AS first_name,
    T3.last_name AS last_name
FROM farm.farms AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
INNER JOIN farm.farmers AS T3
    ON T1.farmer_id = T3.farmer_id
WHERE T1.municipality_code = '54518'
ORDER BY T3.last_name ASC;

/*
     farm       |    rural_district    | municipality |     first_name     |      last_name
------------------+----------------------+--------------+--------------------+---------------------
 El JardÃ­n        | El Escorial          | Pamplona     | Manuel             | Agudelo JimÃ©nez
 La Selva         | PeÃ±as                | Pamplona     | Manuel             | Agudelo JimÃ©nez
 El Diamante      | El Alizal            | Pamplona     | Marleny            | Agudelo Sandoval
 El Encanto       | FontibÃ³n             | Pamplona     | RocÃ­o              | Ãlvarez CÃ¡rdenas
 Bellavista       | Alto Grande          | Pamplona     | RocÃ­o              | Ãlvarez CÃ¡rdenas
 La CabaÃ±a        | Lengua               | Pamplona     | MÃ³nica             | Ãlvarez Carrillo
 Monteverde       | Lengua               | Pamplona     | MÃ³nica             | Ãlvarez Carrillo
 El ArrayÃ¡n       | Navarro              | Pamplona     | Marleny            | Ãlvarez Correa
 El Mango         | La Legua             | Pamplona     | Alberto            | Ãlvarez Villamizar
 Monteverde       | La Legua             | Pamplona     | Myriam Yuliana     | Arango NarvÃ¡ez
 El Recuerdo      | La Legua             | Pamplona     | AncÃ­zar            | Arango Silva
 El Rosal         | Navarro              | Pamplona     | Edilma Gabriela    | Arias Ãlvarez
 Monteverde       | El Palchal           | Pamplona     | Edilma Gabriela    | Arias Ãlvarez
 Las Delicias     | Sabagua              | Pamplona     | Camilo             | Arias Mora
 La Quebrada      | Navarro              | Pamplona     | Viviana            | Arias RamÃ­rez
 La Selva         | Sabaneta Baja        | Pamplona     | Guillermo Pedro    | Arias RodrÃ­guez
 San Luis         | Sabaneta Alta        | Pamplona     | Isabella           | Barrera Cabrera
 La Siberia       | El Alizal            | Pamplona     | Mariana            | Barrera Correa
 El Brillante     | La Legua             | Pamplona     | Miguel             | Barrera Osorio
 La Floresta      | San JosÃ© De Tonchala | Pamplona     | Ãngela             | Barrera PeÃ±a
 El Oasis         | El Alizal            | Pamplona     | Ramiro             | Barrera Villamizar
 Agua Bonita      | Monteadentro         | Pamplona     | Manuela            | Bastidas Medina
 Monteverde       | Alto Grande          | Pamplona     | Antonio            | Bastidas RodrÃ­guez
 Villa Rosa       | Cunuba               | Pamplona     | Fabio              | Bastidas Ruiz
 El Triunfo       | GarcÃ­a               | Pamplona     | RocÃ­o              | Bastidas SuÃ¡rez
 La Argentina     | Caima                | Pamplona     | RocÃ­o              | Bastidas SuÃ¡rez
 Los Pinos        | San Francisco        | Pamplona     | Rafael HÃ©ctor      | Bedoya PinzÃ³n
 La Reserva       | La Legua             | Pamplona     | Nelson             | Bedoya VÃ©lez
 Las Margaritas   | Caima                | Pamplona     | Nelson             | Bedoya VÃ©lez
 El JardÃ­n        | La Legua             | Pamplona     | Laura              | Benavides Ãlvarez
 La Argentina     | Lengua               | Pamplona     | Manuela Yolanda    | Benavides Delgado
 La UniÃ³n         | Santa Matilde        | Pamplona     | Carolina Alejandra | Benavides MartÃ­nez
 Santa Clara      | El Rosal             | Pamplona     | Mateo              | Benavides Rangel
 El Horizonte     | El Totumo            | Pamplona     | Gustavo            | BermÃºdez Bedoya
 El Oasis         | La â”ŒPa               | Pamplona     | IvÃ¡n               | BermÃºdez FlÃ³rez
 Villa Hermosa    | Monteadentro         | Pamplona     | Alberto            | BermÃºdez GÃ³mez
 La Fortuna       | San Francisco        | Pamplona     | Yesenia            | BermÃºdez Henao
 El Diamante      | Sabaneta Baja        | Pamplona     | Yesenia            | BermÃºdez Henao
 Los Naranjos     | El Rosal             | Pamplona     | Ãlvaro             | BermÃºdez MarÃ­n
 La Victoria      | Cunuba               | Pamplona     | Ãlvaro             | BermÃºdez MarÃ­n
 El Retiro        | GarcÃ­a               | Pamplona     | Ãlvaro             | BermÃºdez MarÃ­n
 Las Palmas       | El Escorial          | Pamplona     | Rodrigo Guillermo  | BermÃºdez MuÃ±oz
 Santa Clara      | La Legua             | Pamplona     | Emilio             | BermÃºdez Rojas
 Miraflores       | El Rosal             | Pamplona     | MÃ³nica             | Betancur Arango
 El Horizonte     | San JosÃ© De Tonchala | Pamplona     | Daniel             | Bonilla Duarte
 La Esperanza     | PeÃ±as                | Pamplona     | Daniel             | Bonilla Duarte
 La Primavera     | Sabagua              | Pamplona     | Daniel             | Bonilla Duarte
 La Reserva       | El Escorial          | Pamplona     | Ã‰dgar              | Burbano Arango
 El Nogal         | San JosÃ© De Tonchala | Pamplona     | MarÃ­a              | Burbano Duarte
 La Divisa        | Cabecera Municipal   | Pamplona     | MarÃ­a              | Burbano Duarte
 San Luis         | El Totumo            | Pamplona     | Fernando           | Burbano FlÃ³rez
 Villa Hermosa    | El Alizal            | Pamplona     | JazmÃ­n             | Burbano Jaimes
 Las Delicias     | Caima                | Pamplona     | Ã“scar              | Cabrera Bastidas
 El Porvenir      | El Palchal           | Pamplona     | Nubia              | Cabrera SÃ¡nchez
 La Holanda       | Cabecera Municipal   | Pamplona     | Rodrigo Nelson     | Cabrera Villamizar
 El Silencio      | Santa Matilde        | Pamplona     | IvÃ¡n Jaime         | CÃ¡ceres Galvis
 El ArrayÃ¡n       | Cunuba               | Pamplona     | IvÃ¡n Jaime         | CÃ¡ceres Galvis
 La Holanda       | El Palchal           | Pamplona     | Natalia            | CÃ¡ceres Salazar
 El HiguerÃ³n      | Jurado               | Pamplona     | Nubia Juliana      | Caicedo Medina
 La Cascada       | FontibÃ³n             | Pamplona     | Luisa              | Caicedo Restrepo
 El Brillante     | PeÃ±as                | Pamplona     | Luisa              | Caicedo Restrepo
 La Milagrosa     | Cabecera Municipal   | Pamplona     | Gustavo            | CalderÃ³n Bedoya
 La Fortuna       | Lengua               | Pamplona     | Camilo IvÃ¡n        | CalderÃ³n Trujillo
 La Palma         | Iscaligua            | Pamplona     | Nubia              | CÃ¡rdenas Benavides
 El Cafetal       | Sabaneta Alta        | Pamplona     | JuliÃ¡n             | CÃ¡rdenas Mora
 El Porvenir      | Iscaligua            | Pamplona     | Carmen             | CÃ¡rdenas Moreno
 La Primavera     | Tampanqueba          | Pamplona     | Carmen             | CÃ¡rdenas Moreno
 El Horizonte     | El Escorial          | Pamplona     | Carmen             | CÃ¡rdenas Moreno
 El EdÃ©n          | Santa Matilde        | Pamplona     | Aura               | Cardona Barrera
 Las Acacias      | Cunuba               | Pamplona     | Mauricio Carlos    | Carrillo Jaimes
 La Gloria        | San JosÃ© De Tonchala | Pamplona     | EfraÃ­n Gustavo     | Carrillo Moreno
 La Milagrosa     | Jurado               | Pamplona     | Emilio             | Carrillo Perdomo
 El Mirador       | FontibÃ³n             | Pamplona     | Aura               | Castillo Henao
 El Guayabo       | Caima                | Pamplona     | Francisco          | Castillo Henao
 La CabaÃ±a        | Llano Castro         | Pamplona     | Aura               | Castillo Henao
 La Palma         | San JosÃ© De Tonchala | Pamplona     | Carlos             | Castillo Torres
 Los Arrayanes    | Jurado               | Pamplona     | Carlos             | Castillo Torres
 El Guayabo       | El Rosal             | Pamplona     | Carlos             | Castillo Torres
 Santa Elena      | GarcÃ­a               | Pamplona     | Carlos             | Castillo Torres
 El Porvenir      | La â”ŒPa               | Pamplona     | Gilberto           | Castillo Villamizar
 El Guayabo       | Navarro              | Pamplona     | Ricardo            | Castro Contreras
 Los Arrayanes    | El Palchal           | Pamplona     | Ricardo            | Castro Contreras
 La Palma         | Tampanqueba          | Pamplona     | Ricardo            | Castro Contreras
 La Argentina     | Sabaneta Baja        | Pamplona     | Mateo              | Castro GarcÃ­a
 Cafetal Viejo    | Cunuba               | Pamplona     | Mercedes           | Chamorro Rangel
 El Guamo         | FontibÃ³n             | Pamplona     | Liliana Luisa      | Chamorro VÃ©lez
 Santa BÃ¡rbara    | PeÃ±as                | Pamplona     | Nelson             | Chamorro Vera
 La Primavera     | San JosÃ© De Tonchala | Pamplona     | Arturo             | Contreras PeÃ±a
 El Guayabo       | El Totumo            | Pamplona     | Miguel             | Correa Caicedo
 Cafetal Viejo    | Caima                | Pamplona     | Ãlvaro             | Correa RÃ­os
 La CabaÃ±a        | La â”ŒPa               | Pamplona     | Jaime Santiago     | CuÃ©llar CÃ¡ceres
 El Mirador       | El Palchal           | Pamplona     | Jaime Santiago     | CuÃ©llar CÃ¡ceres
 Las OrquÃ­deas    | FontibÃ³n             | Pamplona     | Heriberto AndrÃ©s   | CuÃ©llar Romero
 Los Arrayanes    | Alto Grande          | Pamplona     | Heriberto AndrÃ©s   | CuÃ©llar Romero
 El Mango         | La â”ŒPa               | Pamplona     | Heriberto AndrÃ©s   | CuÃ©llar Romero
 Mi Ranchito      | Iscaligua            | Pamplona     | JuliÃ¡n GermÃ¡n      | Delgado Villamizar
 Monte Alto       | La Legua             | Pamplona     | Fabio              | DÃ­az CuÃ©llar
 El Oasis         | FontibÃ³n             | Pamplona     | InÃ©s LucÃ­a         | DÃ­az CuÃ©llar
 Cafetal Viejo    | Lengua               | Pamplona     | Diana              | DÃ­az Medina
 Bellavista       | PeÃ±as                | Pamplona     | Alejandra          | DÃ­az Perdomo
 La Palma         | Santa Matilde        | Pamplona     | Wilson Yeison      | DÃ­az RamÃ­rez
 Santa Clara      | Lengua               | Pamplona     | Ricardo Felipe     | DÃ­az RodrÃ­guez
 Las OrquÃ­deas    | Sabaneta Baja        | Pamplona     | Antonio            | DÃ­az VÃ©lez
 Las Mercedes     | Llano Castro         | Pamplona     | Antonio            | DÃ­az VÃ©lez
 La Ceiba         | San Francisco        | Pamplona     | Amparo             | Duarte Duque
 San Antonio      | Iscaligua            | Pamplona     | Viviana            | Duque Burbano
 La Loma          | Navarro              | Pamplona     | InÃ©s               | Duque CÃ¡rdenas
 El Guamo         | FontibÃ³n             | Pamplona     | InÃ©s               | Duque CÃ¡rdenas
 El Vergel        | Sabagua              | Pamplona     | Miguel             | Duque Giraldo
 El Rosal         | Cabecera Municipal   | Pamplona     | Daniel HÃ©ctor      | Duque Ruiz
 Monteverde       | Tampanqueba          | Pamplona     | Daniel HÃ©ctor      | Duque Ruiz
 Monte Alto       | Alcaparral           | Pamplona     | InÃ©s               | Erazo HernÃ¡ndez
 Las Palmas       | El Alizal            | Pamplona     | Myriam             | FlÃ³rez GonzÃ¡lez
 El EdÃ©n          | Cabecera Municipal   | Pamplona     | Myriam             | FlÃ³rez GonzÃ¡lez
 La Ceiba         | Llano Castro         | Pamplona     | Myriam             | FlÃ³rez GonzÃ¡lez
 Los Alpes        | La Legua             | Pamplona     | Myriam             | FlÃ³rez GonzÃ¡lez
 La Floresta      | San JosÃ© De Tonchala | Pamplona     | MÃ³nica Claudia     | FlÃ³rez GonzÃ¡lez
 La Milagrosa     | El Alizal            | Pamplona     | Mauricio Luis      | FlÃ³rez Romero
 Santa Clara      | Cunuba               | Pamplona     | Fernando           | Galvis Duarte
 El Horizonte     | PeÃ±as                | Pamplona     | Fernando           | Galvis Duarte
 San Antonio      | Monteadentro         | Pamplona     | Fernando           | Galvis Duarte
 La Esperanza     | El Rosal             | Pamplona     | Fernando           | Galvis Duarte
 El Guayabo       | Tampanqueba          | Pamplona     | Jaime              | GarcÃ­a RÃ­os
 El ParaÃ­so       | Navarro              | Pamplona     | Liliana Gladys     | GarcÃ­a Vargas
 Altamira         | Sabaneta Alta        | Pamplona     | Martha             | Giraldo Arango
 San Luis         | Sabaneta Alta        | Pamplona     | Martha             | Giraldo Arango
 La Palma         | Sabagua              | Pamplona     | IvÃ¡n               | Giraldo Cabrera
 El MesÃ³n         | Llano Castro         | Pamplona     | Abelardo           | Giraldo Tovar
 El Manantial     | Santa Matilde        | Pamplona     | Jaime              | GÃ³mez Villamizar
 El Cedro         | Llano Castro         | Pamplona     | Viviana            | GonzÃ¡lez Molina
 Las Brisas       | Tampanqueba          | Pamplona     | Viviana            | GonzÃ¡lez Molina
 La Granja        | Alcaparral           | Pamplona     | Viviana            | GonzÃ¡lez Molina
 El JardÃ­n        | Cabecera Municipal   | Pamplona     | Viviana            | GonzÃ¡lez Molina
 El Guayabo       | San Francisco        | Pamplona     | NicolÃ¡s            | GonzÃ¡lez RodrÃ­guez
 La Palma         | Cunuba               | Pamplona     | Javier             | GonzÃ¡lez Zuluaga
 La Estrella      | Llano Castro         | Pamplona     | Daniela            | Guerrero GonzÃ¡lez
 La UniÃ³n         | Llano Castro         | Pamplona     | Gloria             | GutiÃ©rrez Cardona
 Villa Hermosa    | El Rosal             | Pamplona     | Mateo              | Henao Carrillo
 Villa Hermosa    | La Legua             | Pamplona     | Sandra             | Henao Jaimes
 San Luis         | Tampanqueba          | Pamplona     | Pedro Reinaldo     | Henao Molina
 La Cristalina    | El Escorial          | Pamplona     | Nubia Natalia      | Henao RamÃ­rez
 La Carolina      | Llano Castro         | Pamplona     | Nubia Natalia      | Henao RamÃ­rez
 Cafetal Viejo    | San JosÃ© De Tonchala | Pamplona     | Dora               | HernÃ¡ndez Correa
 La Quebrada      | El Alizal            | Pamplona     | Fabio              | HernÃ¡ndez Lasso
 El HiguerÃ³n      | Caima                | Pamplona     | Arturo             | HernÃ¡ndez Uribe
 Bella Vista Alta | El Rosal             | Pamplona     | Arturo             | HernÃ¡ndez Uribe
 La UniÃ³n         | La Legua             | Pamplona     | RocÃ­o Juliana      | Herrera Tovar
 Los Alpes        | Santa Matilde        | Pamplona     | Cristian           | Herrera Zuluaga
 El Porvenir      | La â”ŒPa               | Pamplona     | Gustavo            | Ibarra Agudelo
 Las Margaritas   | GarcÃ­a               | Pamplona     | HÃ©ctor             | Ibarra Ãlvarez
 El Nogal         | Alto Grande          | Pamplona     | Teresa             | Ibarra Caicedo
 El Diamante      | El Escorial          | Pamplona     | Luz Martha         | Jaimes BermÃºdez
 El Silencio      | Sabaneta Alta        | Pamplona     | RocÃ­o Manuela      | Jaimes Cardona
 El ArrayÃ¡n       | Iscaligua            | Pamplona     | RocÃ­o Manuela      | Jaimes Cardona
 Las Mercedes     | San Francisco        | Pamplona     | Aura               | Jaimes Carrillo
 La Divisa        | San Francisco        | Pamplona     | David              | Jaimes Ruiz
 El Nogal         | Tampanqueba          | Pamplona     | David              | Jaimes Ruiz
 La Milagrosa     | Cabecera Municipal   | Pamplona     | David              | Jaimes Ruiz
 La Victoria      | La â”ŒPa               | Pamplona     | Luis               | Jaimes Salazar
 Bella Vista Alta | Sabaneta Baja        | Pamplona     | Heriberto          | JimÃ©nez CÃ¡ceres
 El Recuerdo      | Monteadentro         | Pamplona     | InÃ©s               | JimÃ©nez Jaimes
 El Silencio      | Sabagua              | Pamplona     | Hugo               | JimÃ©nez Parra
 La Selva         | GarcÃ­a               | Pamplona     | Alba               | JimÃ©nez PÃ©rez
 La MontaÃ±a       | PeÃ±as                | Pamplona     | Hernando Miguel    | JimÃ©nez Restrepo
 Las Acacias      | FontibÃ³n             | Pamplona     | Libardo            | Lasso Serrano
 El Triunfo       | El Escorial          | Pamplona     | Libardo            | Lasso Serrano
 La Argentina     | FontibÃ³n             | Pamplona     | Libardo            | Lasso Serrano
 Santa Clara      | El Totumo            | Pamplona     | Mario              | LondoÃ±o Tovar
 El Cedro         | La â”ŒPa               | Pamplona     | Sara               | Losada GutiÃ©rrez
 La Selva         | Sabagua              | Pamplona     | Sara               | Losada GutiÃ©rrez
 La Granja        | El Palchal           | Pamplona     | Sara               | Losada GutiÃ©rrez
 El JardÃ­n        | Cunuba               | Pamplona     | Sara               | Losada GutiÃ©rrez
 Los Pinos        | Alcaparral           | Pamplona     | Marcela            | Losada Rivera
 El Silencio      | Jurado               | Pamplona     | Daniela            | Lozano Castro
 La Victoria      | El Escorial          | Pamplona     | Daniela            | Lozano Castro
 Tierra Linda     | El Palchal           | Pamplona     | Juliana            | Lozano Perdomo
 El Bosque        | Sabaneta Baja        | Pamplona     | Diana              | Lozano RincÃ³n
 La Isabela       | Monteadentro         | Pamplona     | Diana              | Lozano RincÃ³n
 Bellavista       | San JosÃ© De Tonchala | Pamplona     | Elsa               | MarÃ­n Henao
 La Aurora        | Jurado               | Pamplona     | Jaime              | MarÃ­n HernÃ¡ndez
 La Gaitana       | Sabagua              | Pamplona     | Stella             | MarÃ­n Osorio
 La Esperanza     | El Palchal           | Pamplona     | Gloria             | MarÃ­n Rivera
 Buenavista       | El Alizal            | Pamplona     | SofÃ­a              | MarÃ­n Rojas
 Las Margaritas   | El Palchal           | Pamplona     | Gustavo            | MarÃ­n Sandoval
 La Reserva       | Sabagua              | Pamplona     | Gustavo            | MarÃ­n Sandoval
 El Nogal         | Tampanqueba          | Pamplona     | Gustavo            | MarÃ­n Sandoval
 Cafetal Viejo    | Navarro              | Pamplona     | EfraÃ­n             | MartÃ­nez Ramos
 La Cascada       | Caima                | Pamplona     | Yeison             | Medina LondoÃ±o
 Los Pinos        | Alto Grande          | Pamplona     | Juliana Ana        | MejÃ­a MejÃ­a
 El Encanto       | Cunuba               | Pamplona     | Mateo              | MejÃ­a Mora
 Agua Bonita      | Iscaligua            | Pamplona     | Yuliana JazmÃ­n     | MejÃ­a Rangel
 Las Brisas       | Alto Grande          | Pamplona     | Paola Olga         | MejÃ­a RincÃ³n
 La Cumbre        | Jurado               | Pamplona     | JuliÃ¡n             | MejÃ­a Torres
 El Encanto       | San JosÃ© De Tonchala | Pamplona     | Elsa               | MejÃ­a Vera
 El Diamante      | San JosÃ© De Tonchala | Pamplona     | MÃ³nica Martha      | Molina Molina
 El Bosque        | Sabaneta Alta        | Pamplona     | Diana Isabella     | Molina Moreno
 La Isabela       | GarcÃ­a               | Pamplona     | Diana Isabella     | Molina Moreno
 El Recuerdo      | Alto Grande          | Pamplona     | Jairo              | Molina PabÃ³n
 Villa Rosa       | San JosÃ© De Tonchala | Pamplona     | Alejandra          | Molina Torres
 El Encanto       | San JosÃ© De Tonchala | Pamplona     | Hernando           | Montoya Agudelo
 El Tesoro        | San Francisco        | Pamplona     | Luisa              | Montoya MejÃ­a
 La Aurora        | La â”ŒPa               | Pamplona     | Luisa              | Montoya MejÃ­a
 Las Mercedes     | San Francisco        | Pamplona     | Wilmer             | Montoya RodrÃ­guez
 El Mango         | Cabecera Municipal   | Pamplona     | Wilmer             | Montoya RodrÃ­guez
 El Guayabo       | Sabaneta Baja        | Pamplona     | Fanny              | Montoya Valencia
 Los Laureles     | El Alizal            | Pamplona     | Valentina          | Mora Rangel
 Tierra Linda     | La Legua             | Pamplona     | Valentina          | Mora Rangel
 Bellavista       | Cunuba               | Pamplona     | Valentina          | Mora Rangel
 San JosÃ©         | Alcaparral           | Pamplona     | Valentina          | Mora Rangel
 La Siberia       | Sabaneta Baja        | Pamplona     | Gustavo            | Mosquera LÃ³pez
 El HiguerÃ³n      | La â”ŒPa               | Pamplona     | Gustavo            | Mosquera LÃ³pez
 El Placer        | Monteadentro         | Pamplona     | Alejandra Andrea   | Mosquera Moreno
 Las Palmas       | La Legua             | Pamplona     | Adriana            | Mosquera Ospina
 El Vergel        | Cabecera Municipal   | Pamplona     | Adriana            | Mosquera Ospina
 El Refugio       | Alto Grande          | Pamplona     | Luis               | Mosquera Perdomo
 Bella Vista Alta | Alto Grande          | Pamplona     | Luis               | Mosquera Perdomo
 San Rafael       | San JosÃ© De Tonchala | Pamplona     | Isabella           | Mosquera Sandoval
 El Brillante     | La Legua             | Pamplona     | Isabella           | Mosquera Sandoval
 Los Guaduales    | Sabaneta Alta        | Pamplona     | Isabella           | Mosquera Sandoval
 Los Alpes        | Tampanqueba          | Pamplona     | Alejandro          | MuÃ±oz PolanÃ­a
 Las Margaritas   | FontibÃ³n             | Pamplona     | Manuel             | NarvÃ¡ez CalderÃ³n
 El Danubio       | GarcÃ­a               | Pamplona     | Alejandro          | NarvÃ¡ez PolanÃ­a
 Santa Clara      | La Legua             | Pamplona     | Luz                | NiÃ±o Guerrero
 La Floresta      | PeÃ±as                | Pamplona     | Diego              | NiÃ±o HernÃ¡ndez
 Buenavista       | Alcaparral           | Pamplona     | Diego              | NiÃ±o HernÃ¡ndez
 El Guamo         | El Escorial          | Pamplona     | Gabriela Carolina  | NiÃ±o Ortiz
 La Loma          | Alto Grande          | Pamplona     | Gabriela Carolina  | NiÃ±o Ortiz
 La Milagrosa     | El Palchal           | Pamplona     | EfraÃ­n             | Ortega Correa
 El Porvenir      | El Escorial          | Pamplona     | Sandra             | Ortega GarcÃ­a
 La Primavera     | Caima                | Pamplona     | Sandra             | Ortega GarcÃ­a
 San Antonio      | La Legua             | Pamplona     | SofÃ­a Claudia      | Ortega Ortiz
 El Refugio       | PeÃ±as                | Pamplona     | Juliana            | Ortega Osorio
 Bellavista       | Sabagua              | Pamplona     | RocÃ­o Alba         | Ortega Serrano
 El Encanto       | Cunuba               | Pamplona     | RocÃ­o Alba         | Ortega Serrano
 San JosÃ©         | Tampanqueba          | Pamplona     | RocÃ­o Alba         | Ortega Serrano
 La Loma          | Sabagua              | Pamplona     | Juan               | Ortega Zapata
 El Refugio       | Sabaneta Baja        | Pamplona     | Alejandra          | Ortiz BermÃºdez
 Monteverde       | El Totumo            | Pamplona     | Wilmer             | Ortiz Betancur
 El Recreo        | Caima                | Pamplona     | Alberto            | Ortiz Lasso
 La Palma         | El Escorial          | Pamplona     | Mariana            | Ortiz Ruiz
 La UniÃ³n         | La Legua             | Pamplona     | Jaime Wilmer       | Ortiz Vargas
 San JosÃ©         | Santa Matilde        | Pamplona     | Luz                | Osorio CuÃ©llar
 Las Mercedes     | Navarro              | Pamplona     | Natalia            | Ospina Burbano
 La Esperanza     | Monteadentro         | Pamplona     | Ã“scar              | Ospina GonzÃ¡lez
 Villa Hermosa    | El Totumo            | Pamplona     | Wilson             | Parra Prada
 La Pradera       | Sabagua              | Pamplona     | Ramiro             | Parra Trujillo
 Las Delicias     | El Alizal            | Pamplona     | Ramiro             | Parra Trujillo
 El Recuerdo      | Sabaneta Baja        | Pamplona     | Mauricio           | PeÃ±a Bastidas
 Los Arrayanes    | Cabecera Municipal   | Pamplona     | JuliÃ¡n             | PeÃ±a Betancur
 Agua Bonita      | GarcÃ­a               | Pamplona     | Mauricio           | Perdomo Cabrera
 Mi Ranchito      | El Alizal            | Pamplona     | David              | Perdomo Mosquera
 Tierra Linda     | Tampanqueba          | Pamplona     | Abelardo           | PÃ©rez Castro
 Los Laureles     | San JosÃ© De Tonchala | Pamplona     | Abelardo           | PÃ©rez Castro
 San JosÃ©         | Iscaligua            | Pamplona     | Abelardo           | PÃ©rez Castro
 El Refugio       | FontibÃ³n             | Pamplona     | Wilmer             | PÃ©rez Chamorro
 El Cedro         | Iscaligua            | Pamplona     | Martha Carolina    | PÃ©rez Jaimes
 Villa Hermosa    | El Escorial          | Pamplona     | Liliana            | PÃ©rez Parra
 El Retiro        | El Totumo            | Pamplona     | Guillermo          | PÃ©rez PÃ©rez
 El Tesoro        | PeÃ±as                | Pamplona     | RocÃ­o Mariana      | PÃ©rez RodrÃ­guez
 La Divisa        | El Totumo            | Pamplona     | Abelardo           | PinzÃ³n Bonilla
 Monteverde       | El Alizal            | Pamplona     | EfraÃ­n             | PinzÃ³n Cabrera
 La Loma          | Jurado               | Pamplona     | Javier             | PinzÃ³n JimÃ©nez
 Los Arrayanes    | Navarro              | Pamplona     | AncÃ­zar Cristian   | PolanÃ­a Delgado
 El Silencio      | Iscaligua            | Pamplona     | Rafael             | Prada Moreno
 Miraflores       | Alcaparral           | Pamplona     | Mauricio           | Prada Villamizar
 Villa Rosa       | El Alizal            | Pamplona     | Manuel             | Quintero Arias
 El Tesoro        | El Alizal            | Pamplona     | Pedro              | RamÃ­rez Barrera
 La Aurora        | Llano Castro         | Pamplona     | Pedro              | RamÃ­rez Barrera
 La Carolina      | Tampanqueba          | Pamplona     | Luis               | RamÃ­rez Cardona
 La Soledad       | El Alizal            | Pamplona     | MÃ³nica Elsa        | RamÃ­rez Castro
 La Quebrada      | El Totumo            | Pamplona     | MÃ³nica Elsa        | RamÃ­rez Castro
 La Reserva       | GarcÃ­a               | Pamplona     | Francisco          | RamÃ­rez Sandoval
 El Nogal         | El Totumo            | Pamplona     | Francisco          | RamÃ­rez Sandoval
 El Bosque        | Tampanqueba          | Pamplona     | RubÃ©n              | Ramos Chamorro
 El MesÃ³n         | Navarro              | Pamplona     | Francisco          | Restrepo Perdomo
 Las Margaritas   | Llano Castro         | Pamplona     | Mateo              | Restrepo SuÃ¡rez
 La Argentina     | San JosÃ© De Tonchala | Pamplona     | Gloria             | RincÃ³n Acevedo
 La Granja        | La Legua             | Pamplona     | Miguel             | RincÃ³n Agudelo
 El Oasis         | El Alizal            | Pamplona     | Yesenia            | RincÃ³n Caicedo
 El Brillante     | Navarro              | Pamplona     | Alba               | RincÃ³n Rojas
 El Recreo        | Cunuba               | Pamplona     | Rafael Francisco   | RincÃ³n Romero
 El JardÃ­n        | PeÃ±as                | Pamplona     | Mario              | RincÃ³n SuÃ¡rez
 El Horizonte     | Tampanqueba          | Pamplona     | Rosa               | RÃ­os CÃ¡rdenas
 Villa Rosa       | PeÃ±as                | Pamplona     | Mario              | RÃ­os Ibarra
 Las Palmas       | Alto Grande          | Pamplona     | Felipe Camilo      | RÃ­os Ospina
 El Vergel        | Santa Matilde        | Pamplona     | Felipe Camilo      | RÃ­os Ospina
 La CabaÃ±a        | Santa Matilde        | Pamplona     | Alba               | RÃ­os RodrÃ­guez
 El Mirador       | San Francisco        | Pamplona     | Alba               | RÃ­os RodrÃ­guez
 La Holanda       | Caima                | Pamplona     | Erika              | RÃ­os SuÃ¡rez
 La Cascada       | Lengua               | Pamplona     | Gloria Aura        | RÃ­os Vera
 San Antonio      | Jurado               | Pamplona     | Edilma             | Rivera Rivera
 La MontaÃ±a       | Monteadentro         | Pamplona     | Ã“scar              | Rivera Tovar
 Tierra Linda     | Lengua               | Pamplona     | Gabriela           | RodrÃ­guez Ortega
 El Horizonte     | La â”ŒPa               | Pamplona     | Ruth               | RodrÃ­guez PÃ©rez
 El HiguerÃ³n      | Tampanqueba          | Pamplona     | Yuliana            | RodrÃ­guez Vargas
 La Siberia       | GarcÃ­a               | Pamplona     | Yuliana            | RodrÃ­guez Vargas
 La Fortuna       | El Palchal           | Pamplona     | Fernando           | Rojas CÃ¡rdenas
 Los Guaduales    | Santa Matilde        | Pamplona     | Patricia Amparo    | Rojas RÃ­os
 San Rafael       | Tampanqueba          | Pamplona     | Patricia Amparo    | Rojas RÃ­os
 El Brillante     | Jurado               | Pamplona     | Patricia Amparo    | Rojas RÃ­os
 Cafetal Viejo    | La Legua             | Pamplona     | Luz                | Rojas Torres
 Villa Hermosa    | PeÃ±as                | Pamplona     | MarÃ­a              | Rojas Villamizar
 Los Arrayanes    | Iscaligua            | Pamplona     | Reinaldo           | Romero Agudelo
 Las OrquÃ­deas    | Caima                | Pamplona     | Reinaldo           | Romero Agudelo
 El Guayabo       | Alto Grande          | Pamplona     | Reinaldo           | Romero Agudelo
 La Florida       | PeÃ±as                | Pamplona     | Esperanza          | Romero Betancur
 La Palma         | GarcÃ­a               | Pamplona     | David GermÃ¡n       | Romero Bonilla
 La Quebrada      | Monteadentro         | Pamplona     | Jairo              | Romero GutiÃ©rrez
 El Recreo        | La Legua             | Pamplona     | Gustavo Pedro      | Romero PinzÃ³n
 La CabaÃ±a        | Sabagua              | Pamplona     | Rafael             | Romero Prada
 El Diamante      | Tampanqueba          | Pamplona     | Orlando            | Salazar BermÃºdez
 El EdÃ©n          | Alto Grande          | Pamplona     | Alberto            | Salazar PabÃ³n
 Las Acacias      | El Alizal            | Pamplona     | Esteban            | Salazar Parra
 El Placer        | Tampanqueba          | Pamplona     | Fernando           | SÃ¡nchez Agudelo
 El Cedro         | La Legua             | Pamplona     | Reinaldo Jorge     | SÃ¡nchez Agudelo
 La Cumbre        | Sabagua              | Pamplona     | Sara               | SÃ¡nchez Arango
 El Diamante      | Monteadentro         | Pamplona     | Camila             | SÃ¡nchez PinzÃ³n
 El ParaÃ­so       | El Palchal           | Pamplona     | Camila             | SÃ¡nchez PinzÃ³n
 La Aurora        | El Palchal           | Pamplona     | Wilmer             | SÃ¡nchez Torres
 La Granja        | Iscaligua            | Pamplona     | Yuliana            | Sandoval Bedoya
 La Floresta      | PeÃ±as                | Pamplona     | Dora               | Sandoval GarcÃ­a
 Las Delicias     | El Totumo            | Pamplona     | Sandra             | Sandoval Ortega
 El Nogal         | GarcÃ­a               | Pamplona     | Myriam             | Sandoval Osorio
 La Granja        | GarcÃ­a               | Pamplona     | Andrea             | Serrano Mosquera
 El Retiro        | Sabaneta Alta        | Pamplona     | Yesenia            | Silva Henao
 El Encanto       | GarcÃ­a               | Pamplona     | AnÃ­bal             | Silva Villamizar
 Bellavista       | Alto Grande          | Pamplona     | AnÃ­bal             | Silva Villamizar
 La CabaÃ±a        | Cunuba               | Pamplona     | JuliÃ¡n Juan        | SuÃ¡rez Rivera
 La Isabela       | Cunuba               | Pamplona     | Fanny Nubia        | SuÃ¡rez Rojas
 La Gaitana       | Cunuba               | Pamplona     | Gustavo Heriberto  | Torres Guerrero
 El Recuerdo      | El Escorial          | Pamplona     | Gustavo Heriberto  | Torres Guerrero
 El Tesoro        | Llano Castro         | Pamplona     | Aura               | Torres Ortega
 Las Palmas       | El Rosal             | Pamplona     | Gloria             | Tovar Benavides
 La Cumbre        | Cabecera Municipal   | Pamplona     | Arturo             | Tovar CalderÃ³n
 Santa BÃ¡rbara    | Caima                | Pamplona     | Arturo             | Tovar CalderÃ³n
 El Diamante      | Tampanqueba          | Pamplona     | Libardo            | Trujillo Torres
 El Cedro         | La Legua             | Pamplona     | Pedro              | Trujillo VÃ©lez
 El Recuerdo      | Caima                | Pamplona     | Dora LucÃ­a         | Uribe Arango
 El Porvenir      | FontibÃ³n             | Pamplona     | Mario              | Uribe CuÃ©llar
 La Argentina     | El Escorial          | Pamplona     | Nelson             | Uribe GonzÃ¡lez
 La Milagrosa     | Lengua               | Pamplona     | Elsa Leidy         | Uribe Uribe
 El ArrayÃ¡n       | Tampanqueba          | Pamplona     | Nelson Samuel      | Valencia Herrera
 El Guayabo       | Sabaneta Baja        | Pamplona     | Myriam             | Valencia Moreno
 Los Arrayanes    | La â”ŒPa               | Pamplona     | Myriam             | Valencia Moreno
 La Palma         | Cunuba               | Pamplona     | Myriam             | Valencia Moreno
 La Floresta      | Alcaparral           | Pamplona     | Teresa Adriana     | Valencia Moreno
 El Silencio      | San Francisco        | Pamplona     | JuliÃ¡n Guillermo   | Valencia NarvÃ¡ez
 La Siberia       | Monteadentro         | Pamplona     | Esperanza          | Valencia Ortiz
 El Refugio       | Monteadentro         | Pamplona     | Esperanza          | Valencia Ortiz
 Tierra Linda     | Iscaligua            | Pamplona     | Ãlvaro             | Valencia Rivera
 Los Laureles     | PeÃ±as                | Pamplona     | Ãlvaro             | Valencia Rivera
 La Estrella      | GarcÃ­a               | Pamplona     | Alba               | Vargas Losada
 Bella Vista Alta | Sabaneta Baja        | Pamplona     | Yeison             | Vargas Perdomo
 San Rafael       | El Totumo            | Pamplona     | Rosa               | VÃ©lez Contreras
 El Caney         | Alto Grande          | Pamplona     | GermÃ¡n Rafael      | VÃ©lez Herrera
 Los Laureles     | Lengua               | Pamplona     | Erika              | VÃ©lez MarÃ­n
 Los Guaduales    | El Palchal           | Pamplona     | Alba               | Vera CalderÃ³n
 El Danubio       | Tampanqueba          | Pamplona     | Carlos Mario       | Villamizar Carrillo
 Los Pinos        | Sabaneta Alta        | Pamplona     | Miguel             | Villamizar Correa
 Altamira         | El Alizal            | Pamplona     | RubÃ©n              | Villamizar MejÃ­a
 Las Acacias      | Jurado               | Pamplona     | David              | Zapata Arias
 El Triunfo       | Cabecera Municipal   | Pamplona     | David              | Zapata Arias
 La Argentina     | PeÃ±as                | Pamplona     | David              | Zapata Arias
 La Gaitana       | La â”ŒPa               | Pamplona     | David              | Zapata Arias
 El MesÃ³n         | Iscaligua            | Pamplona     | IvÃ¡n               | Zapata Ortiz
 Villa Hermosa    | Cunuba               | Pamplona     | Valentina          | Zapata Valencia
 El Bosque        | Llano Castro         | Pamplona     | Laura              | Zuluaga Benavides
 El Tesoro        | FontibÃ³n             | Pamplona     | Ramiro             | Zuluaga Duque
(368 filas)
*/
