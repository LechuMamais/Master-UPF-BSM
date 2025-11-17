--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET default_tablespace = '';
SET default_with_oids = false;

---
--- drop tables
---

DROP TABLE IF EXISTS arbitraje;
DROP TABLE IF EXISTS historial_entrenamiento;
DROP TABLE IF EXISTS clasificacion_premio;
DROP TABLE IF EXISTS participacion_partido;
DROP TABLE IF EXISTS partido;
DROP TABLE IF EXISTS ronda_tipo; -- Añadida nueva tabla
DROP TABLE IF EXISTS jugador;
DROP TABLE IF EXISTS arbitro;
DROP TABLE IF EXISTS entrenador;
DROP TABLE IF EXISTS evento;
DROP TABLE IF EXISTS pais;
DROP TABLE IF EXISTS olimpiada;

--
-- Name: olimpiada; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE olimpiada (
    id_olimpiada SERIAL NOT NULL PRIMARY KEY,
    anio smallint NOT NULL,
    ciudad character varying(30) NOT NULL,
    pais_sede character varying(30) NOT NULL
);

--
-- Name: pais; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE pais (
    id_pais SERIAL NOT NULL PRIMARY KEY,
    nombre_pais character varying(50) NOT NULL,
    codigo_iso character varying(3) NOT NULL
);

--
-- Name: entrenador; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE entrenador (
    id_entrenador SERIAL NOT NULL PRIMARY KEY,
    nombre character varying(40) NOT NULL,
    apellido character varying(40) NOT NULL
);

--
-- Name: arbitro; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE arbitro (
    id_arbitro SERIAL NOT NULL PRIMARY KEY,
    nombre character varying(40) NOT NULL,
    apellido character varying(40) NOT NULL
);

--
-- Name: evento; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE evento (
    id_evento SERIAL NOT NULL PRIMARY KEY,
    nombre_evento character varying(50) NOT NULL,
    tipo character varying(20) NOT NULL
);

--
-- Name: ronda_tipo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
-- ¡NUEVA TABLA CREADA POR TU SUGERENCIA!
CREATE TABLE ronda_tipo (
    id_ronda SERIAL NOT NULL PRIMARY KEY,
    nombre_ronda character varying(30) NOT NULL UNIQUE
);

--
-- Name: jugador; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE jugador (
    id_jugador SERIAL NOT NULL PRIMARY KEY,
    nombre character varying(40) NOT NULL,
    apellido character varying(40) NOT NULL,
    genero character varying(10) NOT NULL,
    id_pais smallint NOT NULL,
    FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
);

--
-- Name: partido; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
-- ¡TABLA MODIFICADA! 'ronda' (varchar) -> 'id_ronda' (FK)
CREATE TABLE partido (
    id_partido SERIAL NOT NULL PRIMARY KEY,
    id_olimpiada smallint NOT NULL,
    id_evento smallint NOT NULL,
    id_ronda smallint NOT NULL, -- MODIFICADO (Era: ronda character varying(20))
    fecha_partido date,
    resultado_final character varying(20),
    FOREIGN KEY (id_olimpiada) REFERENCES olimpiada(id_olimpiada),
    FOREIGN KEY (id_evento) REFERENCES evento(id_evento),
    FOREIGN KEY (id_ronda) REFERENCES ronda_tipo(id_ronda) -- NUEVA FK
);

--
-- Name: participacion_partido; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE participacion_partido (
    id_partido smallint NOT NULL,
    id_jugador smallint NOT NULL,
    es_jugador1 boolean NOT NULL,
    es_ganador boolean NOT NULL,
    PRIMARY KEY (id_partido, id_jugador),
    FOREIGN KEY (id_partido) REFERENCES partido(id_partido),
    FOREIGN KEY (id_jugador) REFERENCES jugador(id_jugador)
);

--
-- Name: arbitraje; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE arbitraje (
    id_partido smallint NOT NULL,
    id_arbitro smallint NOT NULL,
    PRIMARY KEY (id_partido, id_arbitro),
    FOREIGN KEY (id_partido) REFERENCES partido(id_partido),
    FOREIGN KEY (id_arbitro) REFERENCES arbitro(id_arbitro)
);

--
-- Name: clasificacion_premio; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE clasificacion_premio (
    id_clasificacion SERIAL NOT NULL PRIMARY KEY,
    id_olimpiada smallint NOT NULL,
    id_evento smallint NOT NULL,
    id_jugador smallint NOT NULL,
    posicion_final smallint NOT NULL,
    premio_usd REAL,
    FOREIGN KEY (id_olimpiada) REFERENCES olimpiada(id_olimpiada),
    FOREIGN KEY (id_evento) REFERENCES evento(id_evento),
    FOREIGN KEY (id_jugador) REFERENCES jugador(id_jugador)
);

--
-- Name: historial_entrenamiento; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE historial_entrenamiento (
    id_jugador smallint NOT NULL,
    id_entrenador smallint NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date,
    PRIMARY KEY (id_jugador, id_entrenador, fecha_inicio),
    FOREIGN KEY (id_jugador) REFERENCES jugador(id_jugador),
    FOREIGN KEY (id_entrenador) REFERENCES entrenador(id_entrenador)
);