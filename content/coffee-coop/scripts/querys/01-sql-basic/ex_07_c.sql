-- Exercise 07
-- c
-- farms: Check the properties in municipality 54518 that do not have recorded geographic coordinates (null latitude or longitude).

SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T1.latitude AS latitude,
    T1.longitude AS longitude
FROM farm.farms AS T1
WHERE T1.municipality_code = '54518' 
  AND (T1.latitude IS NULL OR T1.longitude IS NULL);

/* 
       farm       |    rural_district    | latitude | longitude
------------------+----------------------+----------+-----------
 El Recuerdo      | Alto Grande          |          |
 La Esperanza     | El Palchal           |          |
 Las Delicias     | Caima                |          |
 Los Arrayanes    | Cabecera Municipal   |          |
 El Brillante     | PeÃ±as                |          |
 El Porvenir      | FontibÃ³n             |          |
 La Florida       | PeÃ±as                |          |
 Los Arrayanes    | Navarro              |          |
 El Guayabo       | San Francisco        |          |
 El Encanto       | FontibÃ³n             |          |
 Cafetal Viejo    | San JosÃ© De Tonchala |          |
 El Vergel        | Cabecera Municipal   |          |
 El HiguerÃ³n      | Caima                |          |
 Bella Vista Alta | El Rosal             |          |
 El Horizonte     | San JosÃ© De Tonchala |          |
 La Esperanza     | PeÃ±as                |          |
 El MesÃ³n         | Iscaligua            |          |
 Las Mercedes     | Llano Castro         |          |
 Las OrquÃ­deas    | Sabaneta Baja        |          |
 La UniÃ³n         | La Legua             |          |
 San Antonio      | Jurado               |          |
 San Luis         | Sabaneta Alta        |          |
 El Danubio       | GarcÃ­a               |          |
 Tierra Linda     | Lengua               |          |
 Tierra Linda     | Iscaligua            |          |
 Los Laureles     | PeÃ±as                |          |
 Bella Vista Alta | Sabaneta Baja        |          |
 La Argentina     | PeÃ±as                |          |
 El Triunfo       | Cabecera Municipal   |          |
 La Holanda       | Cabecera Municipal   |          |
 Los Naranjos     | El Rosal             |          |
 La Floresta      | Alcaparral           |          |
 El Guamo         | FontibÃ³n             |          |
 La Reserva       | GarcÃ­a               |          |
 El Nogal         | El Totumo            |          |
 La Loma          | Sabagua              |          |
 El Encanto       | San JosÃ© De Tonchala |          |
 El Mirador       | FontibÃ³n             |          |
 La Siberia       | Sabaneta Baja        |          |
 El HiguerÃ³n      | La â”ŒPa               |          |
 El Tesoro        | PeÃ±as                |          |
 San Antonio      | La Legua             |          |
 La Siberia       | Monteadentro         |          |
 El Refugio       | Monteadentro         |          |
 Santa Clara      | Cunuba               |          |
 La Esperanza     | El Rosal             |          |
 La Loma          | Jurado               |          |
 La Gloria        | San JosÃ© De Tonchala |          |
 La Floresta      | San JosÃ© De Tonchala |          |
 El Guamo         | FontibÃ³n             |          |
 La Cumbre        | Cabecera Municipal   |          |
 Santa BÃ¡rbara    | Caima                |          |
 La Palma         | Cunuba               |          |
 Tierra Linda     | Tampanqueba          |          |
 Los Laureles     | San JosÃ© De Tonchala |          |
 San JosÃ©         | Iscaligua            |          |
 El Brillante     | La Legua             |          |
 Altamira         | El Alizal            |          |
 La Primavera     | San JosÃ© De Tonchala |          |
 El Guayabo       | El Totumo            |          |
 La Palma         | El Escorial          |          |
 El Bosque        | Tampanqueba          |          |
 El Manantial     | Santa Matilde        |          |
 Las Margaritas   | GarcÃ­a               |          |
 Las Mercedes     | San Francisco        |          |
 Villa Rosa       | Cunuba               |          |
 San Luis         | Sabaneta Alta        |          |
 San Luis         | Tampanqueba          |          |
 El Mirador       | El Palchal           |          |
 La CabaÃ±a        | La â”ŒPa               |          |
 El EdÃ©n          | Cabecera Municipal   |          |
 Los Arrayanes    | El Palchal           |          |
 La Palma         | Tampanqueba          |          |
 Villa Rosa       | PeÃ±as                |          |
 Las Brisas       | Alto Grande          |          |
 La Siberia       | El Alizal            |          |
 El Silencio      | Iscaligua            |          |
 El Triunfo       | El Escorial          |          |
 La Quebrada      | El Totumo            |          |
 El Horizonte     | La â”ŒPa               |          |
 El Placer        | Monteadentro         |          |
 Villa Hermosa    | El Escorial          |          |
 Tierra Linda     | La Legua             |          |
 Los Laureles     | El Alizal            |          |
 Bellavista       | Cunuba               |          |
 La Carolina      | Llano Castro         |          |
 Cafetal Viejo    | La Legua             |          |
 Villa Hermosa    | El Rosal             |          |
 La Cascada       | Lengua               |          |
 Bellavista       | PeÃ±as                |          |
 San Rafael       | El Totumo            |          |
 Los Pinos        | Alcaparral           |          |
 El Refugio       | Sabaneta Baja        |          |
 Monteverde       | Tampanqueba          |          |
 San Rafael       | Tampanqueba          |          |
 Los Guaduales    | Santa Matilde        |          |
 El ParaÃ­so       | Navarro              |          |
 Miraflores       | Alcaparral           |          |
 La Isabela       | Monteadentro         |          |
 La Esperanza     | Monteadentro         |          |
 La Aurora        | El Palchal           |          |
 La Palma         | Iscaligua            |          |
 Las Margaritas   | El Palchal           |          |
 El Nogal         | Tampanqueba          |          |
 San Antonio      | Iscaligua            |          |
 El Brillante     | Navarro              |          |
 La Fortuna       | San Francisco        |          |
 La Selva         | PeÃ±as                |          |
 Las Mercedes     | Navarro              |          |
 La CabaÃ±a        | Cunuba               |          |
 Bellavista       | Alto Grande          |          |
 El Encanto       | GarcÃ­a               |          |
 La Milagrosa     | El Palchal           |          |
 El Cedro         | La Legua             |          |
 Bella Vista Alta | Alto Grande          |          |
 El Mango         | La Legua             |          |
 La Palma         | Cunuba               |          |
 Villa Rosa       | El Alizal            |          |
 La Pradera       | Sabagua              |          |
 El Mango         | La â”ŒPa               |          |
 El Diamante      | El Alizal            |          |
 El Oasis         | El Alizal            |          |
 El ParaÃ­so       | El Palchal           |          |
 El Diamante      | Monteadentro         |          |
 La Gaitana       | Cunuba               |          |
 Bellavista       | San JosÃ© De Tonchala |          |
 Las Margaritas   | FontibÃ³n             |          |
 La Argentina     | Sabaneta Baja        |          |
 El Cedro         | Iscaligua            |          |
 Cafetal Viejo    | Caima                |          |
 Mi Ranchito      | Iscaligua            |          |
 San Rafael       | San JosÃ© De Tonchala |          |
 La Floresta      | PeÃ±as                |          |
 La Granja        | El Palchal           |          |
 La Isabela       | GarcÃ­a               |          |
 El Silencio      | Jurado               |          |
 El Guayabo       | Caima                |          |
 La Quebrada      | Monteadentro         |          |
 La CabaÃ±a        | Sabagua              |          |
 Las Margaritas   | Caima                |          |
 La Cascada       | Caima                |          |
 La Milagrosa     | Jurado               |          |
 San JosÃ©         | Tampanqueba          |          |
 La Reserva       | El Escorial          |          |
 El Danubio       | Tampanqueba          |          |
 El Guayabo       | Tampanqueba          |          |
 El Retiro        | Sabaneta Alta        |          |
 Bella Vista Alta | Sabaneta Baja        |          |
 Las Palmas       | El Escorial          |          |
 Santa Clara      | La Legua             |          |
 El Refugio       | PeÃ±as                |          |
 San JosÃ©         | Santa Matilde        |          |
 La CabaÃ±a        | Lengua               |          |
(153 filas)

*/