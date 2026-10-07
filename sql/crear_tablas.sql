-- Estructura de tablas para el proyecto SolarBI
-- Esquema silver: almacenamiento de datos procesados.
-- Esquema dwh: almacenamiento de información para análisis
-- SOLARBI - Estructura de base de datos

CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS dwh;

CREATE TABLE IF NOT EXISTS silver.lectura_5min (
    ts TIMESTAMP NOT NULL,
    dispositivo_id INTEGER NOT NULL,
    p_ac_kw NUMERIC(10,3),
    irradiancia_wm2 NUMERIC(10,1),
    temp_modulo_c NUMERIC(10,1),
    PRIMARY KEY (ts, dispositivo_id)
);

CREATE TABLE IF NOT EXISTS dwh.fact_energia_dia (
    fecha DATE NOT NULL,
    dispositivo INTEGER NOT NULL,
    energia_kwh NUMERIC(12,3),
    pct_datos_validos NUMERIC(5,2),
    PRIMARY KEY (fecha, dispositivo)
);
