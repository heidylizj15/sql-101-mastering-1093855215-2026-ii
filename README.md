# Coffee Coop DB — Caso de Estudio

**Estudiante:** Heidy Lizeth Conde Jaimes  
**Asignatura:** Bases de Datos I  
**Institución:** Universidad de Pamplona  
**Fecha de Inicio:** 15 de Octubre de 2026  

---

# Coffee Coop DB — Guía de configuración

Creado: 15 de octubre de 2026

## Historial de versiones

### Historial de entregas de estudiante

| Estudiante | Descripción | Fecha |
|---|---|---|
| **Heidy Lizeth Conde Jaimes** | Montaje de la base de datos `coffee_coop_db`, ejecución de scripts DDL (01, 02, 03) y validación de tablas/restricciones en entorno local | 15 oct 2026 |

---

### Historial de versiones del proyecto

| Autor | Descripción | Fecha |
|---|---|---|
| Juan Alejandro Carrillo Jaimes | Primera versión: MER, modelo relacional, modelo físico y DDL | 14 oct 2026 |
| Juan Alejandro Carrillo Jaimes | Modelo sin entidades débiles; cardinalidad junto a cada relación en el MER | 14 oct 2026 |
| Juan Alejandro Carrillo Jaimes | Documento del caso de estudio en `docs/` | 14 oct 2026 |
| Juan Alejandro Carrillo Jaimes | `02` solo con tablas y PK; FK, UNIQUE y CHECK en `03`; sin índices; CHECK simplificados | 14 oct 2026 |
| Juan Alejandro Carrillo Jaimes | Llaves de entregas, análisis, liquidaciones y pagos como códigos `VARCHAR` (prefijo + fecha + consecutivo) | 14 oct 2026 |

---

## ¿Qué es esta base de datos?

`coffee_coop_db` es una base de datos PostgreSQL que modela una **cooperativa cafetera**: asociados, fincas, lotes, entregas de café, análisis de calidad, liquidaciones y pagos. Tiene **15 tablas** distribuidas en cuatro esquemas.

La descripción completa del caso (contexto, requerimientos y casos de uso) está en [`docs/Coffee_Coop.pdf`](docs/Coffee_Coop.pdf).

Todos los nombres de la estructura (esquemas, tablas, columnas y constraints) están en **inglés**. La documentación está en español.

| Esquema | Responsabilidad |
|---|---|
| `geo` | Geografía — departamentos y municipios (códigos DANE) |
| `farm` | Producción — caficultores, fincas, lotes, variedades y certificaciones |
| `buy` | Compras — puntos de compra, precio del día, entregas y análisis de calidad |
| `pay` | Pagos — liquidaciones y pagos |

### Tablas

| Tabla | Significado |
|---|---|
| `geo.departments` | Departamentos |
| `geo.municipalities` | Municipios |
| `farm.farmers` | Caficultores (asociados) |
| `farm.farms` | Fincas |
| `farm.plots` | Lotes |
| `farm.coffee_varieties` | Variedades de café |
| `farm.plot_varieties` | Variedades sembradas por lote (N:M) |
| `farm.certifications` | Certificaciones |
| `farm.farm_certifications` | Certificaciones por finca, con vigencia (N:M) |
| `buy.collection_points` | Puntos de compra (acopio) |
| `buy.daily_prices` | Precio del día por punto de compra |
| `buy.deliveries` | Entregas de café |
| `buy.quality_analyses` | Análisis de calidad (1:1 con la entrega) |
| `pay.settlements` | Liquidaciones (1:1 con la entrega) |
| `pay.payments` | Pagos de una liquidación |

### Conteo de objetos

| Objeto | Cantidad |
|---|---|
| Esquemas | 4 |
| Tablas | 15 |
| PRIMARY KEY | 15 |
| FOREIGN KEY | 17 |
| UNIQUE | 16 |
| CHECK | 20 |
| Columnas calculadas (`GENERATED`) | 2 |

La base se entrega **sin datos**. El conteo de registros se agregará cuando se genere la carga de datos.

---

## Requisitos previos

- **PostgreSQL 16** o superior
- Un cliente SQL: [pgAdmin](https://www.pgadmin.org/) o [DBeaver](https://dbeaver.io/)

---

## Tutorial — Cómo montar la base de datos en tu máquina

Ejecuta los scripts en orden numérico.

### Paso 1 — Crea el usuario y la base de datos

Como superusuario (`postgres`). Antes, cambia la contraseña `'*'` del script:

```sh
psql -U postgres -h localhost -f scripts/ddl/01-create-database.sql