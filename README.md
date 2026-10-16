# **Coffee Coop DB — Caso de Estudio**

## **Estudiante:** Heidy Lizeth Conde Jaimes

## **Asignatura:** Bases de Datos I

## **Institución:** Universidad de Pamplona

## **Fecha de Inicio:**  15 Octubre 2026

sql-101-mastering-1093855215-2026-ii

===

\# Coffee Coop DB — Guía de configuración



> Creado: 15 de octubre de 2026



\## Historial de versiones

\### Historial de versiones del proyecto



| Autor | Descripción | Fecha |

|---|---|---|

| Juan Alejandro Carrillo Jaimes | Primera versión: MER, modelo relacional, modelo físico y DDL | 14 oct 2026 |

| Juan Alejandro Carrillo Jaimes | Modelo sin entidades débiles; cardinalidad junto a cada relación en el MER | 14 oct 2026 |

| Juan Alejandro Carrillo Jaimes | Documento del caso de estudio en `docs/` | 14 oct 2026 |

| Juan Alejandro Carrillo Jaimes | `02` solo con tablas y PK; FK, UNIQUE y CHECK en `03`; sin índices; CHECK simplificados | 14 oct 2026 |

| Juan Alejandro Carrillo Jaimes | Llaves de entregas, análisis, liquidaciones y pagos como códigos `VARCHAR` (prefijo + fecha + consecutivo) | 14 oct 2026 |



\---



\### Historial de entregas de estudiante



| Estudiante | Descripción | Fecha |

|---|---|---|

| \*\*Heidy Lizeth Conde Jaimes\*\* | Montaje de la base de datos `coffee\_coop\_db`, ejecución de scripts DDL (01, 02, 03) y validación de tablas/restricciones en entorno local | 15 oct 2026 |---



\## ¿Qué es esta base de datos?



`coffee\_coop\_db` es una base de datos PostgreSQL que modela una \*\*cooperativa cafetera\*\*: asociados, fincas, lotes, entregas de café, análisis de calidad, liquidaciones y pagos. Tiene \*\*15 tablas\*\* distribuidas en cuatro esquemas.



La descripción completa del caso (contexto, requerimientos y casos de uso) está en \[`docs/Coffee\_Coop.pdf`](docs/Coffee\_Coop.pdf).



> Todos los nombres de la estructura (esquemas, tablas, columnas y constraints) están en \*\*inglés\*\*. La documentación está en español.



| Esquema | Responsabilidad |

|---|---|

| `geo` | Geografía — departamentos y municipios (códigos DANE) |

| `farm` | Producción — caficultores, fincas, lotes, variedades y certificaciones |

| `buy` | Compras — puntos de compra, precio del día, entregas y análisis de calidad |

| `pay` | Pagos — liquidaciones y pagos |



\### Tablas



| Tabla | Significado |

|---|---|

| `geo.departments` | Departamentos |

| `geo.municipalities` | Municipios |

| `farm.farmers` | Caficultores (asociados) |

| `farm.farms` | Fincas |

| `farm.plots` | Lotes |

| `farm.coffee\_varieties` | Variedades de café |

| `farm.plot\_varieties` | Variedades sembradas por lote (N:M) |

| `farm.certifications` | Certificaciones |

| `farm.farm\_certifications` | Certificaciones por finca, con vigencia (N:M) |

| `buy.collection\_points` | Puntos de compra (acopio) |

| `buy.daily\_prices` | Precio del día por punto de compra |

| `buy.deliveries` | Entregas de café |

| `buy.quality\_analyses` | Análisis de calidad (1:1 con la entrega) |

| `pay.settlements` | Liquidaciones (1:1 con la entrega) |

| `pay.payments` | Pagos de una liquidación |



\### Conteo de objetos



| Objeto | Cantidad |

|---|---|

| Esquemas | 4 |

| Tablas | 15 |

| PRIMARY KEY | 15 |

| FOREIGN KEY | 17 |

| UNIQUE | 16 |

| CHECK | 20 |

| Columnas calculadas (`GENERATED`) | 2 |



> La base se entrega \*\*sin datos\*\*. El conteo de registros se agregará cuando se genere la carga de datos.



\---



\## Requisitos previos



\- \*\*PostgreSQL 16\*\* o superior

\- Un cliente SQL: \[pgAdmin](https://www.pgadmin.org/) o \[DBeaver](https://dbeaver.io/)



\---



\## Tutorial — Cómo montar la base de datos en tu máquina



Ejecuta los scripts en orden numérico.



\### Paso 1 — Crea el usuario y la base de datos



Como superusuario (`postgres`). Antes, cambia la contraseña `'\*'` del script:



```sh

psql -U postgres -h localhost -f scripts/ddl/01-create-database.sql

```



> \*\*Windows:\*\* el locale `es\_CO.UTF-8` no existe. Cámbialo por `'Spanish\_Colombia.1252'` o borra las líneas `LC\_COLLATE` y `LC\_CTYPE`.



\### Paso 2 — Crea los esquemas y las tablas



Conectado a `coffee\_coop\_db` con el usuario `cc\_admin`:



```sh

psql -U cc\_admin -h localhost -d coffee\_coop\_db -f scripts/ddl/02-create-tables.sql

```



\### Paso 3 — Agrega las restricciones (FK, UNIQUE y CHECK)



```sh

psql -U cc\_admin -h localhost -d coffee\_coop\_db -f scripts/ddl/03-alter-tables.sql

```



> En pgAdmin o DBeaver: abre cada archivo en una ventana de consultas conectada a la base y con el usuario indicado, y ejecútalo con F5.



\### Paso 4 — Valida



Tablas por esquema:



```sql

SELECT table\_schema, COUNT(\*) AS total\_tables

FROM information\_schema.tables

WHERE table\_schema IN ('geo', 'farm', 'buy', 'pay')

GROUP BY table\_schema

ORDER BY table\_schema;

\-- Esperado: buy 4 · farm 7 · geo 2 · pay 2

```



Constraints por tipo:



```sql

SELECT

&#x20;   CASE c.contype

&#x20;       WHEN 'p' THEN 'PRIMARY KEY'

&#x20;       WHEN 'f' THEN 'FOREIGN KEY'

&#x20;       WHEN 'u' THEN 'UNIQUE'

&#x20;       WHEN 'c' THEN 'CHECK'

&#x20;   END AS constraint\_type,

&#x20;   COUNT(\*) AS total

FROM pg\_constraint c

JOIN pg\_namespace n ON n.oid = c.connamespace

WHERE n.nspname IN ('geo', 'farm', 'buy', 'pay')

GROUP BY c.contype

ORDER BY c.contype;

\-- Esperado: CHECK 20 · FOREIGN KEY 17 · PRIMARY KEY 15 · UNIQUE 16

```



Registros por tabla (útil después de cargar datos):



```sql

SELECT

&#x20;   schemaname,

&#x20;   tablename,

&#x20;   (xpath('/row/c/text()', query\_to\_xml(

&#x20;       format('SELECT COUNT(\*) AS c FROM %I.%I', schemaname, tablename),

&#x20;       false, true, ''))

&#x20;   )\[1]::text::int AS total\_rows

FROM pg\_catalog.pg\_tables

WHERE schemaname IN ('geo', 'farm', 'buy', 'pay')

ORDER BY schemaname, tablename;

```



\### Empezar de nuevo



```sql

\-- Como postgres

DROP DATABASE IF EXISTS coffee\_coop\_db;

DROP USER IF EXISTS cc\_admin;

```



\---



\## Modelos



| Modelo | Archivo | Cómo abrirlo |

|---|---|---|

| MER (notación Chen, sin FKs) | `models/ERD/ERD\_coffee\_coop.drawio` (+ `.png`) | \[diagrams.net](https://app.diagrams.net) o extensión Draw.io de VS Code |

| Modelo relacional | `models/LDM/mermaid-code.txt` (+ `.png`) | \[mermaid.live](https://mermaid.live) |

| Modelo físico | `models/PDM/PDM-CoffeeCoop-dbdiagram.sh` (+ `.png`) | \[dbdiagram.io](https://dbdiagram.io) |



\---



\## Referencia de scripts



```

coffee-coop/

├── README.md

├── docs/

│   └── Coffee\_Coop.pdf               # Caso de estudio: contexto, requerimientos y casos de uso

├── models/

│   ├── ERD/                          # MER en notación Chen

│   ├── LDM/                          # Modelo relacional (Mermaid)

│   └── PDM/                          # Modelo físico (DBML)

└── scripts/

&#x20;   └── ddl/                          # Definición del esquema — ejecutar en orden numérico

&#x20;       ├── 01-create-database.sql    # Usuario cc\_admin y BD coffee\_coop\_db (como postgres)

&#x20;       ├── 02-create-tables.sql      # Esquemas y tablas: columnas, tipos, NOT NULL, DEFAULT y PK

&#x20;       └── 03-alter-tables.sql       # Restricciones: FOREIGN KEY, UNIQUE y CHECK

```



\---



\## Notas técnicas



\- `pay.settlements.gross\_amount` y `net\_amount` son columnas `GENERATED ALWAYS AS … STORED`: se calculan solas y nunca se insertan manualmente.

\- Las relaciones 1:1 (`deliveries` → `quality\_analyses` y `deliveries` → `settlements`) se garantizan con `UNIQUE (delivery\_id)`.

\- Las tablas N:M (`plot\_varieties`, `farm\_certifications`) tienen llave primaria propia y un `UNIQUE` que evita duplicados, igual que `patient\_addresses` en `smart\_health`.

\- El modelo no usa entidades débiles: `farm.plots` tiene `plot\_id` como PK y la regla del código de lote se controla con `UNIQUE (farm\_id, plot\_code)`.

\- Las tablas de catálogo y maestras usan llaves `SERIAL`. Los documentos transaccionales usan un código `VARCHAR(30)` con prefijo, fecha y consecutivo, que se asigna al insertar:



&#x20; | Tabla | Llave | Ejemplo |

&#x20; |---|---|---|

&#x20; | `buy.deliveries` | `delivery\_id` | `DLV-20261013-000001` |

&#x20; | `buy.quality\_analyses` | `analysis\_id` | `QA-20261013-000001` |

&#x20; | `pay.settlements` | `settlement\_id` | `STL-20261013-000001` |

&#x20; | `pay.payments` | `payment\_id` | `PAY-20261014-000001` |



\- `02-create-tables.sql` solo define las tablas con su llave primaria. Todas las demás restricciones (FK, UNIQUE y CHECK) se agregan con `ALTER TABLE` en `03-alter-tables.sql`.

\- Las FK usan `ON UPDATE CASCADE` y `ON DELETE RESTRICT`. Solo las tablas N:M usan `ON DELETE CASCADE` desde su tabla dueña.

\- Los CHECK solo validan valores simples de una columna: listas de valores permitidos (`IN`), números positivos y rangos. Las reglas que comparan varias tablas (por ejemplo, que la suma de los pagos no supere la liquidación) quedan para la unidad de triggers.



