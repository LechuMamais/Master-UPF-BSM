--
-- PostgreSQL database dump (Gobernanza de Datos Aplicada - FINAL)
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
-- Se eliminan las tablas por sus nombres finales y se incluyen los nombres antiguos por seguridad.

DROP TABLE IF EXISTS tx_match_referee;
DROP TABLE IF EXISTS tx_coach_history;
DROP TABLE IF EXISTS tx_medal_ranking;
DROP TABLE IF EXISTS d_match_participation;
DROP TABLE IF EXISTS tx_match;
DROP TABLE IF EXISTS de_round_type;
DROP TABLE IF EXISTS tm_player;
DROP TABLE IF EXISTS tm_referee;
DROP TABLE IF EXISTS tm_coach;
DROP TABLE IF EXISTS tm_competition_format;
DROP TABLE IF EXISTS tm_country;
DROP TABLE IF EXISTS tm_olympic_edition;

-- (Incluimos los nombres antiguos para asegurar el DROP en la primera ejecución)
DROP TABLE IF EXISTS arbitraje;
DROP TABLE IF EXISTS historial_entrenamiento;
DROP TABLE IF EXISTS clasificacion_premio;
DROP TABLE IF EXISTS participacion_partido;
DROP TABLE IF EXISTS partido;
DROP TABLE IF EXISTS ronda_tipo;
DROP TABLE IF EXISTS jugador;
DROP TABLE IF EXISTS arbitro;
DROP TABLE IF EXISTS entrenador;
DROP TABLE IF EXISTS evento;
DROP TABLE IF EXISTS pais;
DROP TABLE IF EXISTS olimpiada;


-- =================================================================
-- Tablas Maestras (TM) y Catálogos (DE)
-- =================================================================

--
-- Name: tm_olympic_edition; Type: TABLE
--
CREATE TABLE tm_olympic_edition (
    pk_olympic_edition SERIAL NOT NULL PRIMARY KEY,
    cod_edition_year SMALLINT NOT NULL,
    city character varying(30) NOT NULL,
    host_country character varying(30) NOT NULL
);


--
-- Name: tm_country; Type: TABLE
--
CREATE TABLE tm_country (
    pk_country SERIAL NOT NULL PRIMARY KEY,
    country_name character varying(50) NOT NULL,
    cod_iso_code character varying(3) NOT NULL
);


--
-- Name: tm_coach; Type: TABLE
--
CREATE TABLE tm_coach (
    pk_coach SERIAL NOT NULL PRIMARY KEY,
    first_name character varying(40) NOT NULL,
    last_name character varying(40) NOT NULL
);


--
-- Name: tm_referee; Type: TABLE
--
CREATE TABLE tm_referee (
    pk_referee SERIAL NOT NULL PRIMARY KEY,
    first_name character varying(40) NOT NULL,
    last_name character varying(40) NOT NULL
);


--
-- Name: tm_competition_format; Type: TABLE
--
CREATE TABLE tm_competition_format (
    pk_competition_format SERIAL NOT NULL PRIMARY KEY,
    competition_name character varying(50) NOT NULL,
    category_type character varying(20) NOT NULL
);


--
-- Name: de_round_type; Type: TABLE
--
CREATE TABLE de_round_type (
    pk_round_type SERIAL NOT NULL PRIMARY KEY,
    round_name character varying(30) NOT NULL UNIQUE
);


--
-- Name: tm_player; Type: TABLE
--
CREATE TABLE tm_player (
    pk_player SERIAL NOT NULL PRIMARY KEY,
    first_name character varying(40) NOT NULL,
    last_name character varying(40) NOT NULL,
    gender character varying(10) NOT NULL,
    fk_country smallint NOT NULL,
    FOREIGN KEY (fk_country) REFERENCES tm_country(pk_country)
);


-- =================================================================
-- Tablas de Hechos (TX) y Dimensiones (D)
-- =================================================================

--
-- Name: tx_match; Type: TABLE
--
CREATE TABLE tx_match (
    pk_match SERIAL NOT NULL PRIMARY KEY,
    fk_olympic_edition smallint NOT NULL,
    fk_competition_format smallint NOT NULL,
    fk_round_type smallint NOT NULL,
    fecha_match_date date,
    final_score character varying(20),
    FOREIGN KEY (fk_olympic_edition) REFERENCES tm_olympic_edition(pk_olympic_edition),
    FOREIGN KEY (fk_competition_format) REFERENCES tm_competition_format(pk_competition_format),
    FOREIGN KEY (fk_round_type) REFERENCES de_round_type(pk_round_type)
);


--
-- Name: d_match_participation; Type: TABLE
--
CREATE TABLE d_match_participation (
    fk_match smallint NOT NULL,
    fk_player smallint NOT NULL,
    ind_is_team_one boolean NOT NULL, -- IND: Indicador de Lado del Equipo
    ind_is_winner boolean NOT NULL,   -- IND: Indicador de Ganador
    PRIMARY KEY (fk_match, fk_player),
    FOREIGN KEY (fk_match) REFERENCES tx_match(pk_match),
    FOREIGN KEY (fk_player) REFERENCES tm_player(pk_player)
);


--
-- Name: tx_medal_ranking; Type: TABLE
--
CREATE TABLE tx_medal_ranking (
    pk_medal_ranking SERIAL NOT NULL PRIMARY KEY,
    fk_olympic_edition smallint NOT NULL,
    fk_competition_format smallint NOT NULL,
    fk_player smallint NOT NULL,
    final_position smallint NOT NULL,
    imp_prize_usd REAL, -- IMP: Importe
    FOREIGN KEY (fk_olympic_edition) REFERENCES tm_olympic_edition(pk_olympic_edition),
    FOREIGN KEY (fk_competition_format) REFERENCES tm_competition_format(pk_competition_format),
    FOREIGN KEY (fk_player) REFERENCES tm_player(pk_player)
);


-- =================================================================
-- Tablas de Hechos/Relacionales (TX)
-- =================================================================

--
-- Name: tx_match_referee; Type: TABLE
--
CREATE TABLE tx_match_referee (
    fk_match smallint NOT NULL,
    fk_referee smallint NOT NULL,
    PRIMARY KEY (fk_match, fk_referee),
    FOREIGN KEY (fk_match) REFERENCES tx_match(pk_match),
    FOREIGN KEY (fk_referee) REFERENCES tm_referee(pk_referee)
);


--
-- Name: tx_coach_history; Type: TABLE
--
CREATE TABLE tx_coach_history (
    fk_player smallint NOT NULL,
    fk_coach smallint NOT NULL,
    fecha_start_date date NOT NULL, -- FECHA: Fecha de inicio
    fecha_end_date date,             -- FECHA: Fecha de fin
    PRIMARY KEY (fk_player, fk_coach, fecha_start_date),
    FOREIGN KEY (fk_player) REFERENCES tm_player(pk_player),
    FOREIGN KEY (fk_coach) REFERENCES tm_coach(pk_coach)
);