--
-- DATOS MÍNIMOS Y CONSISTENTES (VERSIÓN NORMALIZADA FINAL)
--

---
--- 1. Edición de los juegos olímpicos (4 filas)
---
INSERT INTO tm_olympic_edition (cod_edition_year, city, host_country) VALUES
(2004, 'Atenas', 'Grecia'),
(2008, 'Pekín', 'China'),
(2012, 'Londres', 'Reino Unido'),
(2016, 'Río de Janeiro', 'Brasil');

---
--- 2. Países participantes (11 filas)
---
INSERT INTO tm_country (country_name, cod_iso_code) VALUES
('China', 'CHN'),
('Alemania', 'GER'),
('Japón', 'JPN'),
('Corea del Sur', 'KOR'),
('Suecia', 'SWE'),
('Francia', 'FRA'),
('Brasil', 'BRA'),
('Nigeria', 'NGR'),
('Estados Unidos', 'USA'),
('Austria', 'AUT');

---
--- 3. Entrenadores (15 filas)
---
INSERT INTO tm_coach (first_name, last_name) VALUES
('Chen', 'Wei'),
('Jürgen', 'Mayer'),
('Mario', 'Tome'),
('Li', 'Sun'),
('Ross', 'Kopf'),
('Jorg', 'Persson'),
('Wang', 'Hao'),
('Liu', 'Guoliang'),
('Uli', 'Stumper'),
('Akira', 'Sato'),
('Kim', 'Taek-Soo'),
('Babatunde', 'Obisanya'),
('Lin', 'Hao'),
('Pascal', 'Dubois'),
('Kazuki', 'Tanaka');

---
--- 4. arbitro (4 filas)
---
INSERT INTO tm_referee (first_name, last_name) VALUES
('Maria', 'Santos'),
('Aisha', 'Khan'),
('Viktor', 'Kovacs'),
('Hans', 'Müller'),
('Sofia', 'Velasco'),
('Kenji', 'Sato'),
('Olga', 'Petrova'),
('Jamal', 'Ali'),
('Laura', 'Gomez'),
('Marco', 'Rossi'),
('Fei', 'Wang'),
('David', 'Smith'),
('Nadia', 'Belaid'),
('Elias', 'Mendes'),
('Chloé', 'Petit');

---
--- 5. tm_competition_format (5 filas)
---
-- CORREGIDO: Se usa competition_name
INSERT INTO tm_competition_format (competition_name, category_type) VALUES
('Individual Masculino', 'Individual'),
('Individual Femenino', 'Individual'),
('Dobles Mixto', 'Dobles'),
('Equipo Masculino', 'Equipo'),
('Equipo Femenino', 'Equipo');

---
--- 5b. de_round_type (NUEVA INSERCIÓN)
---
-- CORREGIDO: Se usa round_name
INSERT INTO de_round_type (round_name) VALUES
('1.Final'),
('2.Tercer Puesto'),
('3.Semifinales'),
('4.Cuartos de Final');

---
--- 6. Jugadores (4 tm_playeres clave)
---
-- NOTA: fk_country ahora apunta a la columna pk_country en tm_country
-- --- China (CHN) ---
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Ma', 'Long', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Fan', 'Zhendong', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Chen', 'Meng', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Sun', 'Yingsha', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';

-- --- Alemania (GER) ---
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Timo', 'Boll', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'GER';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Dimitrij', 'Ovtcharov', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'GER';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Han', 'Ying', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'GER';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Nina', 'Mittelham', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'GER';

-- --- Japón (JPN) ---
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Tomokazu', 'Harimoto', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'JPN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Koki', 'Niwa', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'JPN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Mima', 'Ito', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'JPN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Kasumi', 'Ishikawa', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'JPN';

-- --- Corea del Sur (KOR) ---
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Jang', 'Woojin', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'KOR';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Lee', 'Sang-su', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'KOR';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Jeon', 'Ji-hee', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'KOR';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Shin', 'Yubin', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'KOR';

-- --- Brasil (BRA) ---
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Hugo', 'Calderano', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'BRA';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Bruna', 'Takahashi', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'BRA';

-- --- Nigeria (NGR) ---
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Quadri', 'Aruna', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'NGR';

-- --- Suecia (SWE) ---
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Mattias', 'Falck', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'SWE';

-- =================================================================
-- INICIO: Expansión de Jugadores (13M, 15F)
-- =================================================================

-- --- 16 Jugadores Masculinos Adicionales ---

-- CHN (Agregamos 2M)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Xu', 'Xin', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Liang', 'Jingkun', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
-- GER (Agregamos 2M)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Patrick', 'Franziska', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'GER';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Ruwen', 'Filus', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'GER';
-- JPN (Agregamos 1M)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Masataka', 'Morizono', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'JPN';
-- KOR (Agregamos 2M)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'An', 'Jae-hyun', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'KOR';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Lim', 'Jonghoon', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'KOR';
-- SWE (Agregamos 2M)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Kristian', 'Karlsson', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'SWE';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Anton', 'Kallberg', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'SWE';
-- FRA (Agregamos 3M)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Simon', 'Gauzy', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'FRA';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Emmanuel', 'Lebesson', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'FRA';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Can', 'Akkuzu', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'FRA';
-- USA (Agregamos 2M)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Kanak', 'Jha', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'USA';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Nikhil', 'Kumar', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'USA';
-- BRA (Agregamos 2M)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Gustavo', 'Tsuboi', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'BRA';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Vitor', 'Ishiy', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'BRA';

-- --- 15 + 5 Jugadoras Femeninas Adicionales ---

-- CHN (Agregamos 2F)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Liu', 'Shiwen', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Wang', 'Manyu', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
-- GER (Agregamos 2F)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Petrissa', 'Solja', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'GER';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Sabine', 'Winter', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'GER';
-- JPN (Agregamos 2F)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Hina', 'Hayata', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'JPN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Miyuu', 'Kihara', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'JPN';
-- KOR (Agregamos 2F)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Seo', 'Hyo-won', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'KOR';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Yang', 'Ha-eun', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'KOR';
-- FRA (Agregamos 2F)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Jia Nan', 'Yuan', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'FRA';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Prithika', 'Pavade', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'FRA';
-- USA (Agregamos 2F)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Lily', 'Zhang', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'USA';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Amy', 'Wang', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'USA';
-- AUT (Agregamos 2F)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Sofia', 'Polcanova', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'AUT';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Liu', 'Jia', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'AUT';
-- NGR (Agregamos 1F)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Dina', 'Meshref', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'NGR';

-- --- Francia (FRA) ---
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Audrey', 'Zarif', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'FRA';

-- --- Estados Unidos (USA) ---
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Crystal', 'Wang', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'USA';

-- --- Austria (AUT) ---
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Amelie', 'Solja', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'AUT';

-- --- Brasil (BRA) ---
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Jessica', 'Yamada', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'BRA';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Caroline', 'Kumahara', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'BRA';

-- =================================================================
-- FIN: Expansión de Jugadores
-- =================================================================



---
--- 7. tx_coach_history (Ampliamos a los tm_playeres clave del torneo)
---

-- Ma Long (CHN) -> Liu Guoliang (CHN)
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2010-01-01', NULL
FROM tm_player J, tm_coach E
WHERE J.first_name='Ma' AND J.last_name='Long' AND E.first_name='Liu' AND E.last_name='Guoliang';

-- Fan Zhendong (CHN) -> Wang Hao (CHN)
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2014-05-01', NULL
FROM tm_player J, tm_coach E
WHERE J.first_name='Fan' AND J.last_name='Zhendong' AND E.first_name='Wang' AND E.last_name='Hao';

-- Dimitrij Ovtcharov (GER) -> Jürgen Mayer (GER)
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2008-01-01', NULL
FROM tm_player J, tm_coach E
WHERE J.first_name='Dimitrij' AND J.last_name='Ovtcharov' AND E.first_name='Jürgen' AND E.last_name='Mayer';

-- Jang Woojin (KOR) -> Kim Taek-Soo (KOR)
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2015-03-10', NULL
FROM tm_player J, tm_coach E
WHERE J.first_name='Jang' AND J.last_name='Woojin' AND E.first_name='Kim' AND E.last_name='Taek-Soo';

-- Koki Niwa (JPN) -> Akira Sato (JPN)
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2011-11-01', NULL
FROM tm_player J, tm_coach E
WHERE J.first_name='Koki' AND J.last_name='Niwa' AND E.first_name='Akira' AND E.last_name='Sato';

-- Timo Boll (GER) -> Ross Kopf (GER)
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2002-01-01', '2015-12-31'
FROM tm_player J, tm_coach E
WHERE J.first_name='Timo' AND J.last_name='Boll' AND E.first_name='Ross' AND E.last_name='Kopf';

-- Hugo Calderano (BRA) -> Mario Tome (BRA)
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2013-07-01', NULL
FROM tm_player J, tm_coach E
WHERE J.first_name='Hugo' AND J.last_name='Calderano' AND E.first_name='Mario' AND E.last_name='Tome';

-- Tomokazu Harimoto (JPN) -> Kazuki Tanaka (JPN)
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2017-01-01', NULL
FROM tm_player J, tm_coach E
WHERE J.first_name='Tomokazu' AND J.last_name='Harimoto' AND E.first_name='Kazuki' AND E.last_name='Tanaka';

-- =================================================================
-- INICIO: Historial de Entrenamiento (Jugadoras Femeninas)
-- =================================================================

-- CHN Femenino
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2015-01-01', NULL
FROM tm_player J, tm_coach E
WHERE J.first_name='Chen' AND J.last_name='Meng' AND E.first_name='Li' AND E.last_name='Sun';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2017-01-01', NULL
FROM tm_player J, tm_coach E
WHERE J.first_name='Sun' AND J.last_name='Yingsha' AND E.first_name='Li' AND E.last_name='Sun';

-- GER Femenino
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2010-01-01', NULL
FROM tm_player J, tm_coach E
WHERE J.first_name='Han' AND J.last_name='Ying' AND E.first_name='Jürgen' AND E.last_name='Mayer';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2016-01-01', NULL
FROM tm_player J, tm_coach E
WHERE J.first_name='Nina' AND J.last_name='Mittelham' AND E.first_name='Uli' AND E.last_name='Stumper';

-- JPN Femenino
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2016-01-01', NULL
FROM tm_player J, tm_coach E
WHERE J.first_name='Mima' AND J.last_name='Ito' AND E.first_name='Kazuki' AND E.last_name='Tanaka';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2010-01-01', NULL
FROM tm_player J, tm_coach E
WHERE J.first_name='Kasumi' AND J.last_name='Ishikawa' AND E.first_name='Akira' AND E.last_name='Sato';

-- KOR Femenino
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2014-01-01', NULL
FROM tm_player J, tm_coach E
WHERE J.first_name='Jeon' AND J.last_name='Ji-hee' AND E.first_name='Kim' AND E.last_name='Taek-Soo';

-- BRA Femenino
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2014-01-01', NULL
FROM tm_player J, tm_coach E
WHERE J.first_name='Bruna' AND J.last_name='Takahashi' AND E.first_name='Mario' AND E.last_name='Tome';

-- =================================================================
-- FIN: Historial de Entrenamiento (Jugadoras Femeninas)
-- =================================================================


-- =================================================================
-- INICIO: Historial de Entrenamiento (28 Jugadores Adicionales)
-- =================================================================

-- --- 13 + 3 Jugadores Masculinos ---
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2013-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Xu' AND J.last_name='Xin' AND E.first_name='Liu' AND E.last_name='Guoliang';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2016-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Liang' AND J.last_name='Jingkun' AND E.first_name='Wang' AND E.last_name='Hao';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2014-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Patrick' AND J.last_name='Franziska' AND E.first_name='Jürgen' AND E.last_name='Mayer';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2012-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Ruwen' AND J.last_name='Filus' AND E.first_name='Ross' AND E.last_name='Kopf';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2015-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Masataka' AND J.last_name='Morizono' AND E.first_name='Akira' AND E.last_name='Sato';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2017-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='An' AND J.last_name='Jae-hyun' AND E.first_name='Kim' AND E.last_name='Taek-Soo';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2016-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Lim' AND J.last_name='Jonghoon' AND E.first_name='Kim' AND E.last_name='Taek-Soo';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2013-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Kristian' AND J.last_name='Karlsson' AND E.first_name='Jorg' AND E.last_name='Persson';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2014-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Anton' AND J.last_name='Kallberg' AND E.first_name='Jorg' AND E.last_name='Persson';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2015-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Simon' AND J.last_name='Gauzy' AND E.first_name='Pascal' AND E.last_name='Dubois';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2010-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Emmanuel' AND J.last_name='Lebesson' AND E.first_name='Pascal' AND E.last_name='Dubois';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2016-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Kanak' AND J.last_name='Jha' AND E.first_name='Chen' AND E.last_name='Wei';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2017-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Nikhil' AND J.last_name='Kumar' AND E.first_name='Chen' AND E.last_name='Wei';

INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2015-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Can' AND J.last_name='Akkuzu' AND E.first_name='Pascal' AND E.last_name='Dubois';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2008-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Gustavo' AND J.last_name='Tsuboi' AND E.first_name='Mario' AND E.last_name='Tome';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2016-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Vitor' AND J.last_name='Ishiy' AND E.first_name='Mario' AND E.last_name='Tome';


-- --- 15 Jugadoras Femeninas ---
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2011-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Liu' AND J.last_name='Shiwen' AND E.first_name='Li' AND E.last_name='Sun';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2016-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Wang' AND J.last_name='Manyu' AND E.first_name='Li' AND E.last_name='Sun';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2012-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Petrissa' AND J.last_name='Solja' AND E.first_name='Uli' AND E.last_name='Stumper';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2013-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Sabine' AND J.last_name='Winter' AND E.first_name='Uli' AND E.last_name='Stumper';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2017-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Hina' AND J.last_name='Hayata' AND E.first_name='Kazuki' AND E.last_name='Tanaka';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2018-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Miyuu' AND J.last_name='Kihara' AND E.first_name='Akira' AND E.last_name='Sato';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2011-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Seo' AND J.last_name='Hyo-won' AND E.first_name='Kim' AND E.last_name='Taek-Soo';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2012-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Yang' AND J.last_name='Ha-eun' AND E.first_name='Kim' AND E.last_name='Taek-Soo';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2015-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Jia Nan' AND J.last_name='Yuan' AND E.first_name='Pascal' AND E.last_name='Dubois';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2019-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Prithika' AND J.last_name='Pavade' AND E.first_name='Pascal' AND E.last_name='Dubois';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2014-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Lily' AND J.last_name='Zhang' AND E.first_name='Chen' AND E.last_name='Wei';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2018-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Amy' AND J.last_name='Wang' AND E.first_name='Chen' AND E.last_name='Wei';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2012-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Sofia' AND J.last_name='Polcanova' AND E.first_name='Jürgen' AND E.last_name='Mayer';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2008-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Liu' AND J.last_name='Jia' AND E.first_name='Jürgen' AND E.last_name='Mayer';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2011-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Dina' AND J.last_name='Meshref' AND E.first_name='Babatunde' AND E.last_name='Obisanya';

INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2016-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Audrey' AND J.last_name='Zarif' AND E.first_name='Pascal' AND E.last_name='Dubois';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2017-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Crystal' AND J.last_name='Wang' AND E.first_name='Chen' AND E.last_name='Wei';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2014-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Amelie' AND J.last_name='Solja' AND E.first_name='Jürgen' AND E.last_name='Mayer';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2012-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Jessica' AND J.last_name='Yamada' AND E.first_name='Mario' AND E.last_name='Tome';
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2011-01-01', NULL FROM tm_player J, tm_coach E WHERE J.first_name='Caroline' AND J.last_name='Kumahara' AND E.first_name='Mario' AND E.last_name='Tome';

-- =================================================================
-- FIN: Historial de Entrenamiento (28 Jugadores Adicionales)
-- =================================================================


-- =================================================================
-- INICIO: Individual Masculino - Río 2016 (8 Partidos)
-- =================================================================

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: Ma Long (CHN) vs Koki Niwa (JPN) -> Ma Long Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2016-08-10', '4-1'
);
-- QF 2: Timo Boll (GER) vs Jang Woojin (KOR) -> Jang Woojin Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2016-08-10', '3-4'
);
-- QF 3: Dimitrij Ovtcharov (GER) vs Hugo Calderano (BRA) -> Ovtcharov Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2016-08-11', '4-2'
);
-- QF 4: Fan Zhendong (CHN) vs Tomokazu Harimoto (JPN) -> Fan Zhendong Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2016-08-11', '4-0'
);

-- SF 1: Ma Long (Gana QF1) vs Jang Woojin (Gana QF2) -> Ma Long Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2016-08-13', '4-1'
);
-- SF 2: Dimitrij Ovtcharov (Gana QF3) vs Fan Zhendong (Gana QF4) -> Fan Zhendong Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2016-08-13', '2-4'
);

-- Bronce: Jang Woojin (Pierde SF1) vs Dimitrij Ovtcharov (Pierde SF2) -> Ovtcharov Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2016-08-15', '2-4'
);
-- Final: Ma Long (Gana SF1) vs Fan Zhendong (Gana SF2) -> Ma Long Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2016-08-15', '4-0'
);

---
--- 9. d_match_participation (16 filas lógicas)
---
-- ID Evento Individual Masc = 1
-- ID Ronda Cuartos = 4, Semifinal = 3, Bronce = 2, Final = 1

-- QF 1: Ma Long (Gana) vs Koki Niwa (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1' AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1' AND J.first_name='Koki' AND J.last_name='Niwa';

-- QF 2: Jang Woojin (Gana) vs Timo Boll (Res: 3-4)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='3-4' AND J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='3-4' AND J.first_name='Timo' AND J.last_name='Boll';

-- QF 3: Ovtcharov (Gana) vs Hugo Calderano (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-2' AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-2' AND J.first_name='Hugo' AND J.last_name='Calderano';

-- QF 4: Fan Zhendong (Gana) vs Tomokazu Harimoto (Res: 4-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-0' AND J.first_name='Fan' AND J.last_name='Zhendong';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-0' AND J.first_name='Tomokazu' AND J.last_name='Harimoto';

-- SF 1: Ma Long (Gana) vs Jang Woojin (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-1' AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-1' AND J.first_name='Jang' AND J.last_name='Woojin';

-- SF 2: Fan Zhendong (Gana) vs Ovtcharov (Res: 2-4)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='2-4' AND J.first_name='Fan' AND J.last_name='Zhendong';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='2-4' AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';

-- Bronce: Ovtcharov (Gana) vs Jang Woojin (Res: 2-4)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 2 AND P.final_score='2-4' AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 2 AND P.final_score='2-4' AND J.first_name='Jang' AND J.last_name='Woojin';

-- Final: Ma Long (Gana) vs Fan Zhendong (Res: 4-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 1 AND P.final_score='4-0' AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 1 AND P.final_score='4-0' AND J.first_name='Fan' AND J.last_name='Zhendong';

---
--- 10. tx_match_referee (8 filas)
---
-- Asignamos 8 árbitros (IDs 1-8) a los 8 tx_matchs.
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'; -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 2 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='3-4'; -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 3 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-2'; -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 4 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-0'; -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 5 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-1'; -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 6 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='2-4'; -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 7 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 2 AND P.final_score='2-4'; -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 8 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 1 AND P.final_score='4-0'; -- Final

---
--- 11. tx_medal_ranking (4 filas)
---
-- Asignamos las 4 posiciones finales basadas en los resultados.
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 1, 50000.00 FROM tm_player J WHERE J.first_name='Ma' AND J.last_name='Long';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 2, 30000.00 FROM tm_player J WHERE J.first_name='Fan' AND J.last_name='Zhendong';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 3, 15000.00 FROM tm_player J WHERE J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 4, 5000.00 FROM tm_player J WHERE J.first_name='Jang' AND J.last_name='Woojin';

-- =================================================================
-- FIN: Individual Masculino - Río 2016
-- =================================================================


-- =================================================================
-- INICIO: Individual Femenino - Río 2016 (8 Partidos)
-- =================================================================
-- Jugadoras seleccionadas:
-- CHN: Chen Meng, Sun Yingsha
-- GER: Han Ying, Nina Mittelham
-- JPN: Mima Ito, Kasumi Ishikawa
-- KOR: Jeon Ji-hee, Shin Yubin
-- Árbitros seleccionados: IDs 9 al 15, y 1.

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: Chen Meng (CHN) vs Nina Mittelham (GER) -> Chen Meng Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-10', '4-0'
);
-- QF 2: Mima Ito (JPN) vs Jeon Ji-hee (KOR) -> Mima Ito Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-10', '4-2'
);
-- QF 3: Sun Yingsha (CHN) vs Shin Yubin (KOR) -> Sun Yingsha Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-11', '4-1'
);
-- QF 4: Han Ying (GER) vs Kasumi Ishikawa (JPN) -> Han Ying Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-11', '4-3'
);

-- SF 1: Chen Meng (Gana QF1) vs Mima Ito (Gana QF2) -> Chen Meng Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'), 
    '2016-08-13', '4-2'
);
-- SF 2: Sun Yingsha (Gana QF3) vs Han Ying (Gana QF4) -> Sun Yingsha Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'), 
    '2016-08-13', '4-1'
);

-- Bronce: Mima Ito (Pierde SF1) vs Han Ying (Pierde SF2) -> Mima Ito Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'), 
    '2016-08-15', '4-1'
);
-- Final: Chen Meng (Gana SF1) vs Sun Yingsha (Gana SF2) -> Chen Meng Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'), 
    '2016-08-15', '4-3'
);


---
--- 9. d_match_participation (16 filas lógicas)
---
-- ID Evento Femenino = 2
-- ID Ronda Cuartos = 4, Semifinal = 3, Bronce = 2, Final = 1

-- QF 1: Chen Meng (Gana) vs Nina Mittelham (Res: 4-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-0' AND J.first_name='Chen' AND J.last_name='Meng';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-0' AND J.first_name='Nina' AND J.last_name='Mittelham';

-- QF 2: Mima Ito (Gana) vs Jeon Ji-hee (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-2' AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-2' AND J.first_name='Jeon' AND J.last_name='Ji-hee';

-- QF 3: Sun Yingsha (Gana) vs Shin Yubin (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-1' AND J.first_name='Sun' AND J.last_name='Yingsha';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-1' AND J.first_name='Shin' AND J.last_name='Yubin';

-- QF 4: Han Ying (Gana) vs Kasumi Ishikawa (Res: 4-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-3' AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-3' AND J.first_name='Kasumi' AND J.last_name='Ishikawa';

-- SF 1: Chen Meng (Gana) vs Mima Ito (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-2' AND J.first_name='Chen' AND J.last_name='Meng';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-2' AND J.first_name='Mima' AND J.last_name='Ito';

-- SF 2: Sun Yingsha (Gana) vs Han Ying (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-1' AND J.first_name='Sun' AND J.last_name='Yingsha';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-1' AND J.first_name='Han' AND J.last_name='Ying';

-- Bronce: Mima Ito (Gana) vs Han Ying (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 2 AND P.final_score='4-1' AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 2 AND P.final_score='4-1' AND J.first_name='Han' AND J.last_name='Ying';

-- Final: Chen Meng (Gana) vs Sun Yingsha (Res: 4-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 1 AND P.final_score='4-3' AND J.first_name='Chen' AND J.last_name='Meng';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J 
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 1 AND P.final_score='4-3' AND J.first_name='Sun' AND J.last_name='Yingsha';


---
--- 10. tx_match_referee (8 filas)
---
-- Asignamos 8 árbitros (IDs 9-15 y 1) a los 8 tx_matchs.
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 9 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-0'; -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 10 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-2'; -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 11 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-1'; -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 12 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-3'; -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 13 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-2'; -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 14 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-1'; -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 15 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 2 AND P.final_score='4-1'; -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 1 AND P.final_score='4-3'; -- Final

---
--- 11. tx_medal_ranking (4 filas)
---
-- Asignamos las 4 posiciones finales basadas en los resultados.
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT 
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'), 
    J.pk_player, 1, 50000.00 FROM tm_player J WHERE J.first_name='Chen' AND J.last_name='Meng';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT 
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'), 
    J.pk_player, 2, 30000.00 FROM tm_player J WHERE J.first_name='Sun' AND J.last_name='Yingsha';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT 
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'), 
    J.pk_player, 3, 15000.00 FROM tm_player J WHERE J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT 
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'), 
    J.pk_player, 4, 5000.00 FROM tm_player J WHERE J.first_name='Han' AND J.last_name='Ying';

-- =================================================================
-- FIN: Individual Femenino - Río 2016
-- =================================================================


-- =================================================================
-- INICIO: Dobles Mixto - Río 2016 (8 Partidos)
-- =================================================================
-- Evento ID = 3 (Dobles Mixto)
-- Lógica: 4 tm_playeres por tx_match (2 vs 2).
-- Parejas: CHN1 (Ma/Chen), JPN1 (Harimoto/Ito), GER1 (Boll/Han), KOR1 (Jang/Jeon)
-- CHN2 (Fan/Sun), GER2 (Ovtcharov/Mittelham), JPN2 (Niwa/Ishikawa), BRA1 (Calderano/Takahashi)

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: CHN1 (Ma/Chen) vs JPN2 (Niwa/Ishikawa) -> CHN1 Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-12', '3-1'
);
-- QF 2: GER1 (Boll/Han) vs BRA1 (Calderano/Takahashi) -> BRA1 Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-12', '2-3'
);
-- QF 3: KOR1 (Jang/Jeon) vs GER2 (Ovtcharov/Mittelham) -> GER2 Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-12', '1-3'
);
-- QF 4: JPN1 (Harimoto/Ito) vs CHN2 (Fan/Sun) -> JPN1 Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-12', '3-0'
);

-- SF 1: CHN1 (Gana QF1) vs BRA1 (Gana QF2) -> CHN1 Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'), 
    '2016-08-14', '3-0'
);
-- SF 2: GER2 (Gana QF3) vs JPN1 (Gana QF4) -> JPN1 Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'), 
    '2016-08-14', '1-3'
);

-- Bronce: BRA1 (Pierde SF1) vs GER2 (Pierde SF2) -> GER2 Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'), 
    '2016-08-16', '1-3'
);
-- Final: CHN1 (Gana SF1) vs JPN1 (Gana SF2) -> JPN1 Gana (Oro)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'), 
    '2016-08-16', '2-3'
);

---
--- 9. d_match_participation (32 filas lógicas, 4 por tx_match)
---
-- ID Evento Mixto = 3
-- ID Ronda Cuartos = 4, Semifinal = 3, Bronce = 2, Final = 1

-- QF 1: CHN1 (Gana) vs JPN2 (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Chen' AND J.last_name='Meng';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Kasumi' AND J.last_name='Ishikawa';

-- QF 2: BRA1 (Gana) vs GER1 (Res: 2-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='2-3' AND J.first_name='Hugo' AND J.last_name='Calderano';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='2-3' AND J.first_name='Bruna' AND J.last_name='Takahashi';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='2-3' AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='2-3' AND J.first_name='Han' AND J.last_name='Ying';

-- QF 3: GER2 (Gana) vs KOR1 (Res: 1-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='1-3' AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='1-3' AND J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='1-3' AND J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='1-3' AND J.first_name='Jeon' AND J.last_name='Ji-hee';

-- QF 4: JPN1 (Gana) vs CHN2 (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Fan' AND J.last_name='Zhendong';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Sun' AND J.last_name='Yingsha';

-- SF 1: CHN1 (Gana) vs BRA1 (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-0' AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-0' AND J.first_name='Chen' AND J.last_name='Meng';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-0' AND J.first_name='Hugo' AND J.last_name='Calderano';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-0' AND J.first_name='Bruna' AND J.last_name='Takahashi';

-- SF 2: JPN1 (Gana) vs GER2 (Res: 1-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='1-3' AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='1-3' AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='1-3' AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='1-3' AND J.first_name='Nina' AND J.last_name='Mittelham';

-- Bronce: GER2 (Gana) vs BRA1 (Res: 1-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 2 AND P.final_score='1-3' AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 2 AND P.final_score='1-3' AND J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 2 AND P.final_score='1-3' AND J.first_name='Hugo' AND J.last_name='Calderano';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 2 AND P.final_score='1-3' AND J.first_name='Bruna' AND J.last_name='Takahashi';

-- Final: JPN1 (Gana) vs CHN1 (Res: 2-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 1 AND P.final_score='2-3' AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 1 AND P.final_score='2-3' AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 1 AND P.final_score='2-3' AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 1 AND P.final_score='2-3' AND J.first_name='Chen' AND J.last_name='Meng';


---
--- 10. tx_match_referee (8 filas)
---
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1'; -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 2 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='2-3'; -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 3 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='1-3'; -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 4 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0'; -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 5 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-0'; -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 6 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='1-3'; -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 7 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 2 AND P.final_score='1-3'; -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 8 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 1 AND P.final_score='2-3'; -- Final

---
--- 11. tx_medal_ranking (8 filas - 2 por posición)
---
-- Oro: JPN1 (Harimoto/Ito)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
J.pk_player, 1, 25000.00 FROM tm_player J WHERE J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
J.pk_player, 1, 25000.00 FROM tm_player J WHERE J.first_name='Mima' AND J.last_name='Ito';

-- Plata: CHN1 (Ma Long/Chen Meng)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
J.pk_player, 2, 15000.00 FROM tm_player J WHERE J.first_name='Ma' AND J.last_name='Long';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
J.pk_player, 2, 15000.00 FROM tm_player J WHERE J.first_name='Chen' AND J.last_name='Meng';

-- Bronce: GER2 (Ovtcharov/Mittelham)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
J.pk_player, 3, 7500.00 FROM tm_player J WHERE J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
J.pk_player, 3, 7500.00 FROM tm_player J WHERE J.first_name='Nina' AND J.last_name='Mittelham';

-- 4to Lugar: BRA1 (Calderano/Takahashi)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
J.pk_player, 4, 2500.00 FROM tm_player J WHERE J.first_name='Hugo' AND J.last_name='Calderano';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
J.pk_player, 4, 2500.00 FROM tm_player J WHERE J.first_name='Bruna' AND J.last_name='Takahashi';

-- =================================================================
-- FIN: Dobles Mixto - Río 2016
-- =================================================================

-- =================================================================
-- INICIO: Equipo Masculino - Río 2016 (8 Partidos)
-- =================================================================
-- Evento ID = 4 (Equipo Masculino)
-- Lógica: 6 tm_playeres por tx_match (3 vs 3).
-- Equipos: CHN, GER, JPN, KOR, SWE, FRA, USA, BRA

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: CHN vs BRA -> CHN Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-13', '3-0'
);
-- QF 2: JPN vs USA -> JPN Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-13', '3-1'
);
-- QF 3: GER vs FRA -> GER Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-14', '3-1'
);
-- QF 4: KOR vs SWE -> KOR Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-14', '3-2'
);

-- SF 1: CHN (Gana QF1) vs JPN (Gana QF2) -> CHN Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'), 
    '2016-08-16', '3-1'
);
-- SF 2: GER (Gana QF3) vs KOR (Gana QF4) -> GER Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'), 
    '2016-08-16', '3-2'
);

-- Bronce: JPN (Pierde SF1) vs KOR (Pierde SF2) -> JPN Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'), 
    '2016-08-18', '3-1'
);
-- Final: CHN (Gana SF1) vs GER (Gana SF2) -> CHN Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'), 
    '2016-08-18', '3-1'
);


---
--- 9. d_match_participation (48 filas lógicas, 6 por tx_match)
---
-- ID Evento Equipo Masc = 4
-- ID Ronda Cuartos = 4, Semifinal = 3, Bronce = 2, Final = 1

-- QF 1: CHN (Gana) vs BRA (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Fan' AND J.last_name='Zhendong';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Xu' AND J.last_name='Xin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Hugo' AND J.last_name='Calderano';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Gustavo' AND J.last_name='Tsuboi';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Vitor' AND J.last_name='Ishiy';

-- QF 2: JPN (Gana) vs USA (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Masataka' AND J.last_name='Morizono';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Kanak' AND J.last_name='Jha';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Nikhil' AND J.last_name='Kumar';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Kai' AND J.last_name='Zhang';

-- QF 3: GER (Gana) vs FRA (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Patrick' AND J.last_name='Franziska';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Simon' AND J.last_name='Gauzy';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Emmanuel' AND J.last_name='Lebesson';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Can' AND J.last_name='Akkuzu';

-- QF 4: KOR (Gana) vs SWE (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND J.first_name='Lee' AND J.last_name='Sang-su';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND J.first_name='An' AND J.last_name='Jae-hyun';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND J.first_name='Mattias' AND J.last_name='Falck';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND J.first_name='Kristian' AND J.last_name='Karlsson';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND J.first_name='Anton' AND J.last_name='Kallberg';

-- SF 1: CHN (Gana) vs JPN (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-1' AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-1' AND J.first_name='Fan' AND J.last_name='Zhendong';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-1' AND J.first_name='Xu' AND J.last_name='Xin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-1' AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-1' AND J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-1' AND J.first_name='Masataka' AND J.last_name='Morizono';

-- SF 2: GER (Gana) vs KOR (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND J.first_name='Patrick' AND J.last_name='Franziska';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND J.first_name='Lee' AND J.last_name='Sang-su';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND J.first_name='An' AND J.last_name='Jae-hyun';

-- Bronce: JPN (Gana) vs KOR (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='3-1' AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='3-1' AND J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='3-1' AND J.first_name='Masataka' AND J.last_name='Morizono';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='3-1' AND J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='3-1' AND J.first_name='Lee' AND J.last_name='Sang-su';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='3-1' AND J.first_name='An' AND J.last_name='Jae-hyun';

-- Final: CHN (Gana) vs GER (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-1' AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-1' AND J.first_name='Fan' AND J.last_name='Zhendong';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-1' AND J.first_name='Xu' AND J.last_name='Xin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-1' AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-1' AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-1' AND J.first_name='Patrick' AND J.last_name='Franziska';


---
--- 10. tx_match_referee (8 filas)
---
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0'; -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 2 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1'; -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 3 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1'; -- QF3 (Mismo resultado que QF2, pero distinto ID_tx_match)
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 4 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2'; -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 5 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-1'; -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 6 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2'; -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 7 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='3-1'; -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 8 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-1'; -- Final

---
--- 11. tx_medal_ranking (12 filas - 3 por posición)
---
-- Oro: CHN
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Ma' AND J.last_name='Long';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Fan' AND J.last_name='Zhendong';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Xu' AND J.last_name='Xin';

-- Plata: GER
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Patrick' AND J.last_name='Franziska';

-- Bronce: JPN
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Masataka' AND J.last_name='Morizono';

-- 4to Lugar: KOR
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Lee' AND J.last_name='Sang-su';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'), 
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='An' AND J.last_name='Jae-hyun';

-- =================================================================
-- FIN: Equipo Masculino - Río 2016
-- =================================================================


-- =================================================================
-- INICIO: Equipo Femenino - Río 2016 (8 Partidos)
-- =================================================================
-- Evento ID = 5 (Equipo Femenino)
-- Lógica: 6 tm_playeras por tx_match (3 vs 3).
-- Equipos: CHN, GER, JPN, KOR, FRA, USA, AUT, BRA

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: CHN vs USA -> CHN Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-13', '3-0'
);
-- QF 2: JPN vs AUT -> JPN Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-13', '3-1'
);
-- QF 3: GER vs BRA -> GER Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-14', '3-0'
);
-- QF 4: KOR vs FRA -> KOR Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-14', '3-2'
);

-- SF 1: CHN (Gana QF1) vs JPN (Gana QF2) -> CHN Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'), 
    '2016-08-16', '3-0'
);
-- SF 2: GER (Gana QF3) vs KOR (Gana QF4) -> GER Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'), 
    '2016-08-16', '3-2'
);

-- Bronce: JPN (Pierde SF1) vs KOR (Pierde SF2) -> JPN Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'), 
    '2016-08-18', '3-1'
);
-- Final: CHN (Gana SF1) vs GER (Gana SF2) -> CHN Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'), 
    '2016-08-18', '3-0'
);


---
--- 9. d_match_participation (48 filas lógicas, 6 por tx_match)
---
-- ID Evento Equipo Fem = 5
-- ID Ronda Cuartos = 4, Semifinal = 3, Bronce = 2, Final = 1

-- QF 1: CHN (Gana) vs USA (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Chen' AND J.last_name='Meng';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Sun' AND J.last_name='Yingsha';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Liu' AND J.last_name='Shiwen';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Lily' AND J.last_name='Zhang';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Amy' AND J.last_name='Wang';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Crystal' AND J.last_name='Wang';

-- QF 2: JPN (Gana) vs AUT (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Hina' AND J.last_name='Hayata';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Sofia' AND J.last_name='Polcanova';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Liu' AND J.last_name='Jia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND J.first_name='Amelie' AND J.last_name='Solja';

-- QF 3: GER (Gana) vs BRA (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Petrissa' AND J.last_name='Solja';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Bruna' AND J.last_name='Takahashi';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Jessica' AND J.last_name='Yamada';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND J.first_name='Caroline' AND J.last_name='Kumahara';

-- QF 4: KOR (Gana) vs FRA (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND J.first_name='Seo' AND J.last_name='Hyo-won';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND J.first_name='Jia Nan' AND J.last_name='Yuan';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND J.first_name='Prithika' AND J.last_name='Pavade';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND J.first_name='Audrey' AND J.last_name='Zarif';

-- SF 1: CHN (Gana) vs JPN (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND J.first_name='Chen' AND J.last_name='Meng';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND J.first_name='Sun' AND J.last_name='Yingsha';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND J.first_name='Wang' AND J.last_name='Manyu';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND J.first_name='Hina' AND J.last_name='Hayata';

-- SF 2: GER (Gana) vs KOR (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-2' AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-2' AND J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-2' AND J.first_name='Sabine' AND J.last_name='Winter';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-2' AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-2' AND J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-2' AND J.first_name='Yang' AND J.last_name='Ha-eun';

-- Bronce: JPN (Gana) vs KOR (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='3-1' AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='3-1' AND J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='3-1' AND J.first_name='Miyuu' AND J.last_name='Kihara';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='3-1' AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='3-1' AND J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='3-1' AND J.first_name='Seo' AND J.last_name='Hyo-won';

-- Final: CHN (Gana) vs GER (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND J.first_name='Chen' AND J.last_name='Meng';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND J.first_name='Sun' AND J.last_name='Yingsha';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND J.first_name='Liu' AND J.last_name='Shiwen';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND J.first_name='Petrissa' AND J.last_name='Solja';


---
--- 10. tx_match_referee (8 filas)
---
-- (IDs 1-8 ya usados, usamos 9-15 y 1)
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 9 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0'; -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 10 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1'; -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 11 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0'; -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 12 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2'; -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 13 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0'; -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 14 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-2'; -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 15 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='3-1'; -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee) 
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0'; -- Final

---
--- 11. tx_medal_ranking (12 filas - 3 por posición)
---
-- Oro: CHN
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Chen' AND J.last_name='Meng';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Sun' AND J.last_name='Yingsha';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Liu' AND J.last_name='Shiwen';

-- Plata: GER
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Han' AND J.last_name='Ying';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Petrissa' AND J.last_name='Solja';

-- Bronce: JPN
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Hina' AND J.last_name='Hayata';

-- 4to Lugar: KOR
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'), 
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Seo' AND J.last_name='Hyo-won';

-- =================================================================
-- FIN: Equipo Femenino - Río 2016
-- =================================================================