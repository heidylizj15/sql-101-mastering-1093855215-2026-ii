-- Exercise 01
--b
-- Departments: Retrieve only the department code and name, renaming the columns as "code" and "department"

SELECT 
    T1.department_code AS code, 
    T1.department_name AS department 
FROM geo.departments AS T1;

/* 
code |                        department
------+----------------------------------------------------------
 05   | Antioquia
 08   | Atlßntico
 11   | Bogotß, D.C.
 13   | BolÝvar
 15   | Boyacß
 17   | Caldas
 18   | Caquetß
 19   | Cauca
 20   | Cesar
 23   | C¾rdoba
 25   | Cundinamarca
 27   | Choc¾
 41   | Huila
 44   | La Guajira
 47   | Magdalena
 50   | Meta
 52   | Nari±o
 54   | Norte De Santander
 63   | Quindio
 66   | Risaralda
 68   | Santander
 70   | Sucre
 73   | Tolima
 76   | Valle Del Cauca
 81   | Arauca
 85   | Casanare
 86   | Putumayo
 88   | ArchipiÚlago De San AndrÚs, Providencia Y Santa Catalina
 91   | Amazonas
 94   | GuainÝa
 95   | Guaviare
 97   | VaupÚs
 99   | Vichada
(33 filas)
 */