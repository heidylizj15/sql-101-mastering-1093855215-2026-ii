
--Exercise 02
--a
--Farmers of municipality 54518 and their farms (including farmers without farms)

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T2.farm_name AS farm
FROM farm.farmers AS T1
LEFT JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE T1.municipality_code = '54518';
/*
  document  |    first_name     |     last_name      |       farm
------------+-------------------+--------------------+------------------
 1061690671 | Guillermo Pedro   | Arias RodrÃ­guez    | La Selva
 712758473  | Wilson            | LÃ³pez Villamizar   | El Silencio
 134410171  | Orlando           | Salazar BermÃºdez   | El Diamante
 870240973  | Jairo             | Molina PabÃ³n       | El Recuerdo
 727945493  | Gloria            | MarÃ­n Rivera       | La Esperanza
 549054771  | MarÃ­a             | Burbano Duarte     | El Nogal
 549054771  | MarÃ­a             | Burbano Duarte     | La Divisa
 622105662  | Alejandra         | Molina Torres      | La Carolina
 622105662  | Alejandra         | Molina Torres      | La Cristalina
 622105662  | Alejandra         | Molina Torres      | Villa Rosa
 437443011  | JuliÃ¡n            | PeÃ±a Betancur      | Los Arrayanes
 356207226  | Luisa             | Caicedo Restrepo   | El Brillante
 356207226  | Luisa             | Caicedo Restrepo   | La Cascada
 578947645  | Mario             | Uribe CuÃ©llar      | El Porvenir
 578947645  | Mario             | Uribe CuÃ©llar      | La Primavera
 24999630   | Esperanza         | Romero Betancur    | El Oasis
 24999630   | Esperanza         | Romero Betancur    | La Florida
 914044314  | AncÃ­zar Cristian  | PolanÃ­a Delgado    | Los Arrayanes
 358946393  | Carmen            | CÃ¡rdenas Moreno    | El Horizonte
 358946393  | Carmen            | CÃ¡rdenas Moreno    | El Porvenir
 358946393  | Carmen            | CÃ¡rdenas Moreno    | La Esperanza
 358946393  | Carmen            | CÃ¡rdenas Moreno    | La Primavera
 811782754  | NicolÃ¡s           | GonzÃ¡lez RodrÃ­guez | El Guayabo
 463842401  | RocÃ­o             | Ãlvarez CÃ¡rdenas   | Bellavista
 463842401  | RocÃ­o             | Ãlvarez CÃ¡rdenas   | El Encanto
 463842401  | RocÃ­o             | Ãlvarez CÃ¡rdenas   | La Cumbre
 343256743  | Dora              | HernÃ¡ndez Correa   | Cafetal Viejo
 811557533  | Adriana           | Mosquera Ospina    | El Vergel
 811557533  | Adriana           | Mosquera Ospina    | Las Palmas
 974842644  | Arturo            | HernÃ¡ndez Uribe    | Bella Vista Alta
 974842644  | Arturo            | HernÃ¡ndez Uribe    | El HiguerÃ³n
 91091638   | Daniel            | Bonilla Duarte     | El Horizonte
 91091638   | Daniel            | Bonilla Duarte     | La Esperanza
 91091638   | Daniel            | Bonilla Duarte     | La Primavera
 42562183   | RocÃ­o Manuela     | Jaimes Cardona     | El ArrayÃ¡n
 42562183   | RocÃ­o Manuela     | Jaimes Cardona     | El Silencio
 1148351420 | InÃ©s              | JimÃ©nez Jaimes     | El Recuerdo
 1148351420 | InÃ©s              | JimÃ©nez Jaimes     | La Gaitana
 674769591  | IvÃ¡n              | Zapata Ortiz       | El MesÃ³n
 802182926  | Antonio           | DÃ­az VÃ©lez         | El Mango
 802182926  | Antonio           | DÃ­az VÃ©lez         | Las Mercedes
 802182926  | Antonio           | DÃ­az VÃ©lez         | Las OrquÃ­deas
 1117597835 | Cecilia Lorena    | DÃ­az GarcÃ­a        | La MontaÃ±a
 700421194  | Teresa            | Torres Giraldo     | El Tesoro
 406352604  | Jaime Wilmer      | Ortiz Vargas       | La UniÃ³n
 1090578662 | Gladys Patricia   | Sandoval Duarte    | La Reserva
 333176982  | Edilma            | Rivera Rivera      | San Antonio
 1168119731 | Felipe Camilo     | RÃ­os Ospina        | El Vergel
 1168119731 | Felipe Camilo     | RÃ­os Ospina        | Las Palmas
 728596637  | Mauricio          | PeÃ±a Bastidas      | El Recuerdo
 749444168  | Emilio            | Delgado Molina     | La Quebrada
 155695928  | Martha            | Giraldo Arango     | Altamira
 155695928  | Martha            | Giraldo Arango     | San Luis
 51802865   | Alejandro         | NarvÃ¡ez PolanÃ­a    | El Danubio
 137851877  | Gabriela          | RodrÃ­guez Ortega   | Tierra Linda
 211924295  | Ãlvaro            | Valencia Rivera    | Los Laureles
 211924295  | Ãlvaro            | Valencia Rivera    | Tierra Linda
 940051048  | David GermÃ¡n      | Romero Bonilla     | La Palma
 1109661392 | Fabio Luis        | Valencia RamÃ­rez   | Las Acacias
 1144582366 | David             | Zapata Arias       | El Triunfo
 1144582366 | David             | Zapata Arias       | La Argentina
 1144582366 | David             | Zapata Arias       | La Gaitana
 1144582366 | David             | Zapata Arias       | Las Acacias
 223974138  | Rodrigo Nelson    | Cabrera Villamizar | La Holanda
 866702579  | Ãlvaro            | BermÃºdez MarÃ­n     | El Retiro
 866702579  | Ãlvaro            | BermÃºdez MarÃ­n     | La Victoria
 866702579  | Ãlvaro            | BermÃºdez MarÃ­n     | Los Naranjos
 748380481  | Teresa Adriana    | Valencia Moreno    | La Floresta
 548464915  | Yuliana           | RodrÃ­guez Vargas   | El HiguerÃ³n
 548464915  | Yuliana           | RodrÃ­guez Vargas   | La Siberia
 1185360305 | IvÃ¡n              | BermÃºdez FlÃ³rez    | El Oasis
 546579335  | Wilson            | Parra Prada        | Villa Hermosa
 1001030458 | Liliana Luisa     | Chamorro VÃ©lez     | El Guamo
 554620706  | Nelson Samuel     | MejÃ­a Vera         | La Isabela
 336247561  | Francisco         | RamÃ­rez Sandoval   | El Nogal
 336247561  | Francisco         | RamÃ­rez Sandoval   | La Reserva
 10424994   | Cristian          | Herrera Zuluaga    | Los Alpes
 59388780   | Juan              | Ortega Zapata      | La Loma
 94235991   | Rafael Francisco  | RincÃ³n Romero      | El Recreo
 1171130241 | Elsa              | MejÃ­a Vera         | El Encanto
 824422301  | Hernando          | Montoya Agudelo    | El Encanto
 553185238  | Ãngela            | Tovar Lasso        | El Guayabo
 21358854   | Manuela Yolanda   | Benavides Delgado  | La Argentina
 65169775   | Aura              | Castillo Henao     | El Mirador
 65169775   | Aura              | Castillo Henao     | La CabaÃ±a
 587550249  | Gustavo           | Mosquera LÃ³pez     | El HiguerÃ³n
 587550249  | Gustavo           | Mosquera LÃ³pez     | La Siberia
 1185523747 | Elsa              | Ibarra Molina      | La Granja
 131166207  | Jaime             | MarÃ­n HernÃ¡ndez    | La Aurora
 224364120  | Valentina         | Zapata Valencia    | Villa Hermosa
 977130251  | InÃ©s LucÃ­a        | DÃ­az CuÃ©llar       | El Oasis
 356807172  | Aura              | Torres Ortega      | El Tesoro
 35147265   | Carlos            | GutiÃ©rrez PabÃ³n    | Monteverde
 502796073  | AncÃ­zar           | Arango Silva       | El Recuerdo
 712500733  | Esperanza         | Valencia Ortiz     | Bella Vista Alta
 712500733  | Esperanza         | Valencia Ortiz     | El HiguerÃ³n
 712500733  | Esperanza         | Valencia Ortiz     | El Refugio
 712500733  | Esperanza         | Valencia Ortiz     | La Siberia
 382766013  | Diana             | LondoÃ±o Ramos      | Monteverde
 922724022  | Esteban           | Salazar Parra      | Las Acacias
 374080696  | Fernando          | Galvis Duarte      | El Horizonte
 374080696  | Fernando          | Galvis Duarte      | La Esperanza
 374080696  | Fernando          | Galvis Duarte      | San Antonio
 374080696  | Fernando          | Galvis Duarte      | Santa Clara
 1027436085 | Manuela           | Bastidas Medina    | Agua Bonita
 788902052  | Camilo IvÃ¡n       | CalderÃ³n Trujillo  | La Fortuna
 1052279913 | Luis              | Jaimes Salazar     | El Silencio
 1052279913 | Luis              | Jaimes Salazar     | La Victoria
 942530661  | Javier            | PinzÃ³n JimÃ©nez     | La Loma
 290597798  | Rosa              | RÃ­os CÃ¡rdenas      | El Horizonte
 409306735  | MÃ³nica Claudia    | FlÃ³rez GonzÃ¡lez    | La Floresta
 434293037  | Hernando Miguel   | JimÃ©nez Restrepo   | La MontaÃ±a
 95544811   | InÃ©s              | Duque CÃ¡rdenas     | El Guamo
 95544811   | InÃ©s              | Duque CÃ¡rdenas     | La Loma
 571748382  | Marleny           | PinzÃ³n Delgado     | El Silencio
 811526011  | Arturo            | Tovar CalderÃ³n     | La Cumbre
 811526011  | Arturo            | Tovar CalderÃ³n     | Santa BÃ¡rbara
 1084721334 | Javier            | GonzÃ¡lez Zuluaga   | La Palma
 1135293825 | Abelardo          | PÃ©rez Castro       | Los Laureles
 1135293825 | Abelardo          | PÃ©rez Castro       | San JosÃ©
 1135293825 | Abelardo          | PÃ©rez Castro       | Tierra Linda
 252140095  | Alba              | RÃ­os RodrÃ­guez     | El Mirador
 252140095  | Alba              | RÃ­os RodrÃ­guez     | La CabaÃ±a
 756405214  | Gloria            | Tovar Benavides    | El Vergel
 756405214  | Gloria            | Tovar Benavides    | Las Palmas
 756405214  | Gloria            | Tovar Benavides    | Los Alpes
 436957556  | JazmÃ­n            | Burbano Jaimes     | Santa BÃ¡rbara
 436957556  | JazmÃ­n            | Burbano Jaimes     | Villa Hermosa
 141739132  | Alba              | Vargas Losada      | El Oasis
 141739132  | Alba              | Vargas Losada      | La Estrella
 931079279  | Edilma            | Ãlvarez Bonilla    | El Triunfo
 931079279  | Edilma            | Ãlvarez Bonilla    | La Argentina
 939635303  | Marleny           | Ãlvarez Correa     | El ArrayÃ¡n
 939635303  | Marleny           | Ãlvarez Correa     | El Silencio
 939635303  | Marleny           | Ãlvarez Correa     | La Victoria
 172555225  | Edilma Gabriela   | Arias Ãlvarez      | El Rosal
 172555225  | Edilma Gabriela   | Arias Ãlvarez      | Monteverde
 789425487  | EfraÃ­n Ricardo    | Contreras Ospina   | Altamira
 789425487  | EfraÃ­n Ricardo    | Contreras Ospina   | San Luis
 443361503  | RubÃ©n             | Villamizar MejÃ­a   | Altamira
 549847293  | Wilmer            | PÃ©rez Chamorro     | El Refugio
 637451261  | Arturo            | Contreras PeÃ±a     | La Primavera
 1189704117 | Mariana           | Ortiz Ruiz         | La Palma
 599185252  | EfraÃ­n            | PinzÃ³n Cabrera     | Monteverde
 33787285   | RubÃ©n             | Ramos Chamorro     | El Bosque
 677772599  | Guillermo         | PÃ©rez PÃ©rez        | El Retiro
 299842243  | Wilmer            | Montoya RodrÃ­guez  | El Mango
 299842243  | Wilmer            | Montoya RodrÃ­guez  | Las Mercedes
 299842243  | Wilmer            | Montoya RodrÃ­guez  | Las OrquÃ­deas
 590872233  | Reinaldo          | Romero Agudelo     | El Guayabo
 590872233  | Reinaldo          | Romero Agudelo     | Las OrquÃ­deas
 590872233  | Reinaldo          | Romero Agudelo     | Los Arrayanes
 797017145  | Isabella          | Barrera Cabrera    | San Luis
 723123018  | Diego             | NiÃ±o HernÃ¡ndez     | Buenavista
 723123018  | Diego             | NiÃ±o HernÃ¡ndez     | La Floresta
 402745033  | JuliÃ¡n Guillermo  | Valencia NarvÃ¡ez   | El Silencio
 446019320  | Fernando          | Rojas CÃ¡rdenas     | La Fortuna
 813687871  | AndrÃ©s Emilio     | Valencia Parra     | El Horizonte
 525766302  | Gustavo           | Ibarra Agudelo     | El Porvenir
 525766302  | Gustavo           | Ibarra Agudelo     | La MontaÃ±a
 425322677  | Luz Martha        | Jaimes BermÃºdez    | El Diamante
 1001674689 | Jaime Santiago    | CuÃ©llar CÃ¡ceres    | El Mirador
 1001674689 | Jaime Santiago    | CuÃ©llar CÃ¡ceres    | La CabaÃ±a
 257495692  | Myriam            | FlÃ³rez GonzÃ¡lez    | El EdÃ©n
 257495692  | Myriam            | FlÃ³rez GonzÃ¡lez    | La Ceiba
 257495692  | Myriam            | FlÃ³rez GonzÃ¡lez    | Las Palmas
 257495692  | Myriam            | FlÃ³rez GonzÃ¡lez    | Los Alpes
 166716892  | Ricardo           | Castro Contreras   | El Guayabo
 166716892  | Ricardo           | Castro Contreras   | La Palma
 166716892  | Ricardo           | Castro Contreras   | Los Arrayanes
 410167282  | Gustavo Pedro     | Romero PinzÃ³n      | El Recreo
 92240743   | Mario             | RÃ­os Ibarra        | El Recreo
 92240743   | Mario             | RÃ­os Ibarra        | Villa Rosa
 659942505  | Mariana           | Barrera Correa     | La Siberia
 520313287  | Beatriz           | HernÃ¡ndez MuÃ±oz    | La Siberia
 232229735  | Libardo           | Lasso Serrano      | El Triunfo
 232229735  | Libardo           | Lasso Serrano      | La Argentina
 232229735  | Libardo           | Lasso Serrano      | Las Acacias
 529703819  | MÃ³nica Elsa       | RamÃ­rez Castro     | La Quebrada
 529703819  | MÃ³nica Elsa       | RamÃ­rez Castro     | La Soledad
 1090968710 | Ruth              | RodrÃ­guez PÃ©rez    | El Horizonte
 756369749  | Andrea            | Cardona Ruiz       | Monte Alto
 970305595  | Alejandra Andrea  | Mosquera Moreno    | El Oasis
 970305595  | Alejandra Andrea  | Mosquera Moreno    | El Placer
 970305595  | Alejandra Andrea  | Mosquera Moreno    | La Estrella
 360667240  | Gabriela Carolina | NiÃ±o Ortiz         | El Guamo
 360667240  | Gabriela Carolina | NiÃ±o Ortiz         | La Loma
 1143295403 | Liliana           | PÃ©rez Parra        | Villa Hermosa
 483692716  | Ramiro            | Barrera Villamizar | El Oasis
 455264704  | Valentina         | Mora Rangel        | Bellavista
 455264704  | Valentina         | Mora Rangel        | Los Laureles
 455264704  | Valentina         | Mora Rangel        | San JosÃ©
 455264704  | Valentina         | Mora Rangel        | Tierra Linda
 316655568  | Nubia Natalia     | Henao RamÃ­rez      | La Carolina
 316655568  | Nubia Natalia     | Henao RamÃ­rez      | La Cristalina
 1148017860 | Fabio             | HernÃ¡ndez Lasso    | La Quebrada
 966970818  | Gustavo           | Parra Ortiz        | El Brillante
 966970818  | Gustavo           | Parra Ortiz        | La Cascada
 302345504  | Elsa              | Ramos CÃ¡rdenas     | La CabaÃ±a
 863442205  | Luz               | Rojas Torres       | Cafetal Viejo
 863442205  | Luz               | Rojas Torres       | El Danubio
 179146863  | Dora LucÃ­a        | Uribe Arango       | El Recuerdo
 793512107  | Sandra            | Henao Jaimes       | Villa Hermosa
 550093228  | Ruth              | JimÃ©nez Guerrero   | Las Mercedes
 433286601  | Esperanza         | Jaimes Vera        | La Loma
 433286601  | Esperanza         | Jaimes Vera        | Miraflores
 870262750  | Gloria Aura       | RÃ­os Vera          | La Cascada
 727121857  | Alba              | Vera CalderÃ³n      | Los Guaduales
 550696749  | Viviana           | Arias RamÃ­rez      | La Quebrada
 550696749  | Viviana           | Arias RamÃ­rez      | La Soledad
 850962053  | David             | Perdomo Mosquera   | Mi Ranchito
 765371022  | Luisa             | Montoya MejÃ­a      | El Tesoro
 765371022  | Luisa             | Montoya MejÃ­a      | La Aurora
 1180237528 | Ãngela Beatriz    | Sandoval BermÃºdez  | La Estrella
 254078333  | Alberto           | Ortiz Lasso        | El Recreo
 302059113  | Yuliana           | Sandoval Bedoya    | La Granja
 1196659084 | IvÃ¡n Jaime        | CÃ¡ceres Galvis     | El ArrayÃ¡n
 1196659084 | IvÃ¡n Jaime        | CÃ¡ceres Galvis     | El Silencio
 56877324   | Javier            | Burbano Molina     | El JardÃ­n
 699387247  | Fanny             | Montoya Valencia   | El Guayabo
 1167705984 | Teresa            | Ibarra Caicedo     | El Nogal
 846209158  | Daniel HÃ©ctor     | Duque Ruiz         | El Rosal
 846209158  | Daniel HÃ©ctor     | Duque Ruiz         | Monteverde
 897433183  | Patricia Amparo   | Rojas RÃ­os         | El Brillante
 897433183  | Patricia Amparo   | Rojas RÃ­os         | Los Guaduales
 897433183  | Patricia Amparo   | Rojas RÃ­os         | San Rafael
 649244180  | RocÃ­o             | Bastidas SuÃ¡rez    | El Triunfo
 649244180  | RocÃ­o             | Bastidas SuÃ¡rez    | La Argentina
 988262002  | JazmÃ­n            | Silva GÃ³mez        | La Esperanza
 1185160275 | Ramiro            | Zuluaga Duque      | El Tesoro
 1185160275 | Ramiro            | Zuluaga Duque      | La Aurora
 754524782  | Diana             | Lozano RincÃ³n      | El Bosque
 754524782  | Diana             | Lozano RincÃ³n      | El Vergel
 754524782  | Diana             | Lozano RincÃ³n      | La Isabela
 914235490  | Ã“scar             | Ospina GonzÃ¡lez    | La Esperanza
 734158943  | Alberto           | Bastidas RodrÃ­guez | San JosÃ©
 279649109  | Carlos            | Castillo Torres    | El Guayabo
 279649109  | Carlos            | Castillo Torres    | La Palma
 279649109  | Carlos            | Castillo Torres    | Los Arrayanes
 279649109  | Carlos            | Castillo Torres    | Santa Elena
 932437698  | Amparo            | Duarte Duque       | La Ceiba
 1167191036 | Yuliana JazmÃ­n    | MejÃ­a Rangel       | Agua Bonita
 283636187  | Gustavo           | Moreno LÃ³pez       | El ArrayÃ¡n
 283636187  | Gustavo           | Moreno LÃ³pez       | El Silencio
 478755763  | NicolÃ¡s           | Rivera Duque       | El Oasis
 449792023  | Myriam            | Sandoval Osorio    | El Nogal
 91139207   | Mario             | RincÃ³n SuÃ¡rez      | El JardÃ­n
 91139207   | Mario             | RincÃ³n SuÃ¡rez      | La Selva
 934117740  | Gustavo           | MarÃ­n Sandoval     | El Nogal
 934117740  | Gustavo           | MarÃ­n Sandoval     | La Reserva
 934117740  | Gustavo           | MarÃ­n Sandoval     | Las Margaritas
 737383707  | Yesenia           | BermÃºdez Henao     | El Diamante
 737383707  | Yesenia           | BermÃºdez Henao     | La Fortuna
 737383707  | Yesenia           | BermÃºdez Henao     | Los Naranjos
 230971064  | Manuel            | Agudelo JimÃ©nez    | El JardÃ­n
 230971064  | Manuel            | Agudelo JimÃ©nez    | La Selva
 230971064  | Manuel            | Agudelo JimÃ©nez    | Las Acacias
 808693611  | Natalia           | Ospina Burbano     | Las Mercedes
 456256773  | Luisa             | Lozano Losada      | La Victoria
 302223305  | Camilo            | Arias Mora         | Las Delicias
 1089620113 | Myriam Yuliana    | Arango NarvÃ¡ez     | Monteverde
 44817013   | AnÃ­bal            | Silva Villamizar   | Bellavista
 44817013   | AnÃ­bal            | Silva Villamizar   | El Encanto
 388108693  | Miguel            | Villamizar Correa  | Los Pinos
 641839251  | EfraÃ­n            | Ortega Correa      | La Milagrosa
 522380895  | InÃ©s              | Erazo HernÃ¡ndez    | Monte Alto
 951995464  | Wilson Yeison     | DÃ­az RamÃ­rez       | La Palma
 273193028  | Erika             | RÃ­os SuÃ¡rez        | La Holanda
 302894847  | Reinaldo Jorge    | SÃ¡nchez Agudelo    | El Cedro
 302894847  | Reinaldo Jorge    | SÃ¡nchez Agudelo    | La Granja
 302894847  | Reinaldo Jorge    | SÃ¡nchez Agudelo    | Las Brisas
 805029874  | Pedro             | RamÃ­rez Barrera    | El Tesoro
 805029874  | Pedro             | RamÃ­rez Barrera    | La Aurora
 860920785  | Hugo              | JimÃ©nez Parra      | El Silencio
 746737893  | Natalia           | Ramos Vargas       | El Oasis
 160538872  | Liliana           | Mosquera Uribe     | El Triunfo
 963176673  | Luis              | Mosquera Perdomo   | Bella Vista Alta
 963176673  | Luis              | Mosquera Perdomo   | El Refugio
 14046794   | Alberto           | Ãlvarez Villamizar | El Mango
 534023693  | Myriam            | Valencia Moreno    | El Guayabo
 534023693  | Myriam            | Valencia Moreno    | La Palma
 534023693  | Myriam            | Valencia Moreno    | Las OrquÃ­deas
 534023693  | Myriam            | Valencia Moreno    | Los Arrayanes
 765824560  | Manuel            | Quintero Arias     | Villa Rosa
 1015411133 | Santiago          | BermÃºdez Ruiz      | La CabaÃ±a
 102695503  | SofÃ­a             | MarÃ­n Rojas        | Buenavista
 699883472  | Ramiro            | Parra Trujillo     | La Pradera
 699883472  | Ramiro            | Parra Trujillo     | Las Delicias
 503402827  | Heriberto AndrÃ©s  | CuÃ©llar Romero     | El Mango
 503402827  | Heriberto AndrÃ©s  | CuÃ©llar Romero     | Las OrquÃ­deas
 503402827  | Heriberto AndrÃ©s  | CuÃ©llar Romero     | Los Arrayanes
 1060881964 | InÃ©s              | PolanÃ­a Bedoya     | La Reserva
 768461420  | Marleny           | Agudelo Sandoval   | El Diamante
 768461420  | Marleny           | Agudelo Sandoval   | El ParaÃ­so
 796884051  | Yuliana           | Zapata Parra       | La Aurora
 647948165  | Yesenia           | RincÃ³n Caicedo     | El Oasis
 1079700992 | Camila            | SÃ¡nchez PinzÃ³n     | El Diamante
 1079700992 | Camila            | SÃ¡nchez PinzÃ³n     | El ParaÃ­so
 1138270357 | Gustavo Heriberto | Torres Guerrero    | El Recuerdo
 1138270357 | Gustavo Heriberto | Torres Guerrero    | La Gaitana
 1103932523 | Amparo            | Bastidas Chamorro  | El Cafetal
 1145130870 | Elsa              | MarÃ­n Henao        | Bellavista
 1012324420 | Martha Carolina   | PÃ©rez Jaimes       | El Cedro
 614786053  | Ãlvaro            | Correa RÃ­os        | Cafetal Viejo
 1146928395 | JuliÃ¡n GermÃ¡n     | Delgado Villamizar | Mi Ranchito
 1196615388 | Fernando          | Burbano FlÃ³rez     | Altamira
 1196615388 | Fernando          | Burbano FlÃ³rez     | San Luis
 828628976  | Diana             | DÃ­az Medina        | Cafetal Viejo
 155634182  | Luz               | NiÃ±o Guerrero      | Santa Clara
 1053774538 | Isabella          | Mosquera Sandoval  | El Brillante
 1053774538 | Isabella          | Mosquera Sandoval  | Los Guaduales
 1053774538 | Isabella          | Mosquera Sandoval  | San Rafael
 1157650796 | Sara              | Losada GutiÃ©rrez   | El Cedro
 1157650796 | Sara              | Losada GutiÃ©rrez   | El JardÃ­n
 1157650796 | Sara              | Losada GutiÃ©rrez   | La Granja
 1157650796 | Sara              | Losada GutiÃ©rrez   | La Selva
 781810115  | Diana Isabella    | Molina Moreno      | El Bosque
 781810115  | Diana Isabella    | Molina Moreno      | La Isabela
 938685616  | Sandra            | Sandoval Ortega    | El Guamo
 938685616  | Sandra            | Sandoval Ortega    | La Pradera
 938685616  | Sandra            | Sandoval Ortega    | Las Delicias
 276159211  | Francisco         | Restrepo Perdomo   | El MesÃ³n
 530206966  | Daniela           | Lozano Castro      | El Silencio
 530206966  | Daniela           | Lozano Castro      | La Victoria
 793273339  | Libardo           | Trujillo Torres    | El Diamante
 610678466  | NicolÃ¡s           | SÃ¡nchez RodrÃ­guez  | El Nogal
 403413565  | Reinaldo          | SuÃ¡rez PolanÃ­a     | La Quebrada
 403413565  | Reinaldo          | SuÃ¡rez PolanÃ­a     | Mi Ranchito
 644277425  | David             | Jaimes Ruiz        | El Nogal
 644277425  | David             | Jaimes Ruiz        | La Divisa
 644277425  | David             | Jaimes Ruiz        | La Milagrosa
 697099528  | Fabio             | DÃ­az CuÃ©llar       | La UniÃ³n
 697099528  | Fabio             | DÃ­az CuÃ©llar       | Monte Alto
 754745808  | Jairo             | Romero GutiÃ©rrez   | La Quebrada
 754745808  | Jairo             | Romero GutiÃ©rrez   | La Soledad
 718906996  | Nelson            | Bedoya VÃ©lez       | La Reserva
 718906996  | Nelson            | Bedoya VÃ©lez       | Las Margaritas
 622024549  | Viviana           | GonzÃ¡lez Molina    | El Cedro
 622024549  | Viviana           | GonzÃ¡lez Molina    | El JardÃ­n
 622024549  | Viviana           | GonzÃ¡lez Molina    | La Granja
 622024549  | Viviana           | GonzÃ¡lez Molina    | Las Brisas
 142439635  | Yeison            | Medina LondoÃ±o     | El Brillante
 142439635  | Yeison            | Medina LondoÃ±o     | La Cascada
 716388403  | Emilio            | Carrillo Perdomo   | La Gloria
 716388403  | Emilio            | Carrillo Perdomo   | La Milagrosa
 478787290  | Ã“scar             | Rivera Tovar       | La MontaÃ±a
 878614263  | Stella            | MarÃ­n Osorio       | La Gaitana
 361839624  | RocÃ­o Alba        | Ortega Serrano     | Bellavista
 361839624  | RocÃ­o Alba        | Ortega Serrano     | El Encanto
 361839624  | RocÃ­o Alba        | Ortega Serrano     | San JosÃ©
 135734682  | Diego             | Rivera JimÃ©nez     | El Cafetal
 135734682  | Diego             | Rivera JimÃ©nez     | El Refugio
 141613744  | Ã‰dgar             | Burbano Arango     | La Reserva
 314914042  | Olga Luisa        | Zapata Rivera      | Mi Ranchito
 1050862619 | Yesenia           | Silva Henao        | El Retiro
 89157555   | Heriberto         | JimÃ©nez CÃ¡ceres    | Bella Vista Alta
 407150767  | Antonio           | Bastidas RodrÃ­guez | Monteverde
 536338741  | Juliana Ana       | MejÃ­a MejÃ­a        | Los Pinos
 1143372198 | Nelson            | Chamorro Vera      | Santa BÃ¡rbara
 1143372198 | Nelson            | Chamorro Vera      | Villa Hermosa
 918053770  | Nubia Juliana     | Caicedo Medina     | El HiguerÃ³n
 45024299   | Rodrigo Guillermo | BermÃºdez MuÃ±oz     | Las Palmas
 517430119  | Emilio            | BermÃºdez Rojas     | Santa Clara
 968133883  | Sandra            | Ortega GarcÃ­a      | El Porvenir
 968133883  | Sandra            | Ortega GarcÃ­a      | La Primavera
 1177165427 | Juliana           | Ortega Osorio      | El Refugio
 338193839  | Laura             | Zuluaga Benavides  | El Bosque
 783174188  | Luz               | Osorio CuÃ©llar     | San JosÃ©
 788628125  | MÃ³nica            | Ãlvarez Carrillo   | La CabaÃ±a
 788628125  | MÃ³nica            | Ãlvarez Carrillo   | Monteverde
(370 filas)

*/