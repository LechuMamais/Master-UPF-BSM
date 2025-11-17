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
--- 2. Países participantes
---
INSERT INTO tm_country (country_name, cod_iso_code) VALUES
('China', 'CHN'),
('Japón', 'JPN'),
('Corea del Sur', 'KOR'),
('Suecia', 'SWE'),
('Francia', 'FRA'),
('Brasil', 'BRA'),
('Nigeria', 'NGR'),
('Estados Unidos', 'USA'),
('Austria', 'AUT'),
('Bielorrusia', 'BLR'),
('Hong Kong', 'HKG'),
('Singapur', 'SGP'),
('Portugal', 'POR'),
('Rusia', 'RUS'),
('Grecia', 'GRC'),
('Reino Unido', 'GBR');
---
--- 2b. Inserción del Comité Olímpico Ruso (tm_country)
---
INSERT INTO tm_country (country_name, cod_iso_code) VALUES
('Comité Olímpico Ruso', 'COR');

---
--- 3. Entrenadores
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
('Kazuki', 'Tanaka'),
('Wang', 'Yue'),
('Peter', 'Chen'),
('Yuko', 'Nishimura'),
('Kim', 'Kyoung-ah'),
('Chen', 'Zhonghe'),
('Steffen', 'Fetzner');

---
--- 4. árbitros
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
('Chloé', 'Petit'),
('Chen', 'Ling'),
('Hiroshi', 'Takahashi'),
('Ivan', 'Popov'),
('Sven', 'Larsson'),
('Ana', 'Rodríguez'),
('Akio', 'Yamada'),
('Elena', 'Vasiliev'),
('Javier', 'Ramos'), 
('Ines', 'Silva'),
('Pedro', 'Gomes'),
('Sun', 'Li'),
('Hans', 'Andersen'),
('Maria', 'Kowalski'),
('Jean-Luc', 'Martin'),
('Alex', 'Ivanov'),
('Sofia', 'Lundgren'),
('Ahmed', 'Zaki'),
('Li', 'Wei'),
('Anna', 'Schmidt'),
('Carlos', 'Muñoz'),
('Yuki', 'Tanaka'),
('David', 'Lee'),
('Fatima', 'Al-Jamil'),
('Marek', 'Novak'),
('Olga', 'Volkova');

---
--- 5. tm_competition_format (5 filas)
---
INSERT INTO tm_competition_format (competition_name, category_type) VALUES
('Individual Masculino', 'Individual'),
('Individual Femenino', 'Individual'),
('Dobles Mixto', 'Dobles'),
('Equipo Masculino', 'Equipo'),
('Equipo Femenino', 'Equipo');

---
--- 5b. de_round_type
---
INSERT INTO de_round_type (round_name) VALUES
('1.Final'),
('2.Tercer Puesto'),
('3.Semifinales'),
('4.Cuartos de Final');

---
--- 6. Jugadores (tm_playeres)
---
-- --- China (CHN) ---
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Ma', 'Long', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Fan', 'Zhendong', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Chen', 'Meng', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Sun', 'Yingsha', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';

-- --- Comite Olimpico Ruso (COR) ---
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Timo', 'Boll', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'COR';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Dimitrij', 'Ovtcharov', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'COR';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Han', 'Ying', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'COR';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Nina', 'Mittelham', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'COR';

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

-- CHN (Agregamos 2M)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Xu', 'Xin', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Liang', 'Jingkun', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
-- COR Comite Olimpico Ruso (Agregamos 2M)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Patrick', 'Franziska', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'COR';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Ruwen', 'Filus', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'COR';
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

-- CHN (Agregamos 2F)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Liu', 'Shiwen', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Wang', 'Manyu', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
-- COR (Agregamos 2F)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Petrissa', 'Solja', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'COR';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Sabine', 'Winter', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'COR';
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

---
--- 6b. Jugadores Históricos Clave (2004-2012)
---

-- CHINA MASCULINO (Dominantes de la era 2004-2012)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Wang', 'Liqin', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Zhang', 'Jike', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';

-- CHINA FEMENINO (Dominantes de la era 2004-2012)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Zhang', 'Yining', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Guo', 'Yue', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Li', 'Xiaoxia', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'CHN';

-- ALEMANIA MASCULINO (Otro pilar de la época)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Jörg', 'Roßkopf', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'COR';

-- COREA DEL SUR MASCULINO
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Ryu', 'Seung-min', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'KOR';

-- SINGAPUR FEMENINO (Fuerza Olímpica Histórica)
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Feng', 'Tianwei', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'SGP';
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Wang', 'Yuegu', 'Femenino', pk_country FROM tm_country WHERE cod_iso_code = 'SGP';

-- HONG KONG MASCULINO
INSERT INTO tm_player (first_name, last_name, gender, fk_country)
SELECT 'Ko', 'Lai Chak', 'Masculino', pk_country FROM tm_country WHERE cod_iso_code = 'HKG';

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

-- Dimitrij Ovtcharov (COR) -> Jürgen Mayer (COR)
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

-- Timo Boll (COR) -> Ross Kopf (COR)
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

-- COR Femenino
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
-- HISTORIAL DE ENTRENAMIENTO (tx_coach_history) - JUGADORES HISTÓRICOS
-- =================================================================

-- 1. CHINA MASCULINO (Era 2004-2012)
-- Wang Liqin (CHN) -> Liu Guoliang (CHN) [Coach Principal CHN]
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2004-03-01', '2012-12-31'
FROM tm_player J, tm_coach E
WHERE J.first_name='Wang' AND J.last_name='Liqin' AND E.first_name='Liu' AND E.last_name='Guoliang';

-- Zhang Jike (CHN) -> Wang Hao (CHN) [Sucesor/Mentor]
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2008-01-01', '2016-08-30'
FROM tm_player J, tm_coach E
WHERE J.first_name='Zhang' AND J.last_name='Jike' AND E.first_name='Wang' AND E.last_name='Hao';

-- 2. CHINA FEMENINO (Era 2004-2012)
-- Zhang Yining (CHN) -> Chen Zhonghe (Entrenador Histórico)
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2003-05-01', '2009-12-31'
FROM tm_player J, tm_coach E
WHERE J.first_name='Zhang' AND J.last_name='Yining' AND E.first_name='Chen' AND E.last_name='Zhonghe';

-- Guo Yue (CHN) -> Li Sun (CHN)
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2006-08-01', '2012-07-31'
FROM tm_player J, tm_coach E
WHERE J.first_name='Guo' AND J.last_name='Yue' AND E.first_name='Li' AND E.last_name='Sun';

-- Li Xiaoxia (CHN) -> Chen Wei (CHN)
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2009-01-01', '2016-08-30'
FROM tm_player J, tm_coach E
WHERE J.first_name='Li' AND J.last_name='Xiaoxia' AND E.first_name='Chen' AND E.last_name='Wei';

-- 3. ALEMANIA MASCULINO
-- Jörg Roßkopf (COR) -> Steffen Fetzner (COR) [Compañero convertido en coach]
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2002-01-01', '2010-06-30'
FROM tm_player J, tm_coach E
WHERE J.first_name='Jörg' AND J.last_name='Roßkopf' AND E.first_name='Steffen' AND E.last_name='Fetzner';

-- 4. COREA DEL SUR MASCULINO
-- Ryu Seung-min (KOR) -> Kim Taek-Soo (KOR)
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2004-01-01', '2008-08-30'
FROM tm_player J, tm_coach E
WHERE J.first_name='Ryu' AND J.last_name='Seung-min' AND E.first_name='Kim' AND E.last_name='Taek-Soo';

-- 5. SINGAPUR FEMENINO
-- Feng Tianwei (SGP) -> Peter Chen (SGP)
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2008-05-01', '2016-08-30'
FROM tm_player J, tm_coach E
WHERE J.first_name='Feng' AND J.last_name='Tianwei' AND E.first_name='Peter' AND E.last_name='Chen';

-- Wang Yuegu (SGP) -> Yuko Nishimura (SGP)
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2007-01-01', '2012-08-30'
FROM tm_player J, tm_coach E
WHERE J.first_name='Wang' AND J.last_name='Yuegu' AND E.first_name='Yuko' AND E.last_name='Nishimura';

-- 6. HONG KONG MASCULINO
-- Ko Lai Chak (HKG) -> Wang Yue (HKG)
INSERT INTO tx_coach_history (fk_player, fk_coach, fecha_start_date, fecha_end_date)
SELECT J.pk_player, E.pk_coach, '2004-01-01', '2008-08-30'
FROM tm_player J, tm_coach E
WHERE J.first_name='Ko' AND J.last_name='Lai Chak' AND E.first_name='Wang' AND E.last_name='Yue';


-- =================================================================
-- FIN HISTORIAL DE ENTRENAMIENTO (tx_coach_history)
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
-- QF 2: Timo Boll (COR) vs Jang Woojin (KOR) -> Jang Woojin Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2016-08-10', '3-4'
);
-- QF 3: Dimitrij Ovtcharov (COR) vs Hugo Calderano (BRA) -> Ovtcharov Gana
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
-- COR: Han Ying, Nina Mittelham
-- JPN: Mima Ito, Kasumi Ishikawa
-- KOR: Jeon Ji-hee, Shin Yubin
-- Árbitros seleccionados: IDs 9 al 15, y 1.

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: Chen Meng (CHN) vs Nina Mittelham (COR) -> Chen Meng Gana
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
-- QF 4: Han Ying (COR) vs Kasumi Ishikawa (JPN) -> Han Ying Gana
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
-- Parejas: CHN1 (Ma/Chen), JPN1 (Harimoto/Ito), COR1 (Boll/Han), KOR1 (Jang/Jeon)
-- CHN2 (Fan/Sun), COR2 (Ovtcharov/Mittelham), JPN2 (Niwa/Ishikawa), BRA1 (Calderano/Takahashi)

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
-- QF 2: COR1 (Boll/Han) vs BRA1 (Calderano/Takahashi) -> BRA1 Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'), 
    '2016-08-12', '2-3'
);
-- QF 3: KOR1 (Jang/Jeon) vs COR2 (Ovtcharov/Mittelham) -> COR2 Gana
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
-- SF 2: COR2 (Gana QF3) vs JPN1 (Gana QF4) -> JPN1 Gana
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score) 
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2016), 
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), 
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'), 
    '2016-08-14', '1-3'
);

-- Bronce: BRA1 (Pierde SF1) vs COR2 (Pierde SF2) -> COR2 Gana
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

-- QF 2: BRA1 (Gana) vs COR1 (Res: 2-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='2-3' AND J.first_name='Hugo' AND J.last_name='Calderano';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='2-3' AND J.first_name='Bruna' AND J.last_name='Takahashi';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='2-3' AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='2-3' AND J.first_name='Han' AND J.last_name='Ying';

-- QF 3: COR2 (Gana) vs KOR1 (Res: 1-3)
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

-- SF 2: JPN1 (Gana) vs COR2 (Res: 1-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='1-3' AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='1-3' AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='1-3' AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='1-3' AND J.first_name='Nina' AND J.last_name='Mittelham';

-- Bronce: COR2 (Gana) vs BRA1 (Res: 1-3)
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

-- Bronce: COR2 (Ovtcharov/Mittelham)
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
-- Equipos: CHN, COR, JPN, KOR, SWE, FRA, USA, BRA

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
-- QF 3: COR vs FRA -> COR Gana
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
-- SF 2: COR (Gana QF3) vs KOR (Gana QF4) -> COR Gana
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
-- Final: CHN (Gana SF1) vs COR (Gana SF2) -> CHN Gana
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

-- QF 3: COR (Gana) vs FRA (Res: 3-1)
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

-- SF 2: COR (Gana) vs KOR (Res: 3-2)
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

-- Final: CHN (Gana) vs COR (Res: 3-1)
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

-- Plata: COR
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
-- Equipos: CHN, COR, JPN, KOR, FRA, USA, AUT, BRA

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
-- QF 3: COR vs BRA -> COR Gana
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
-- SF 2: COR (Gana QF3) vs KOR (Gana QF4) -> COR Gana
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
-- Final: CHN (Gana SF1) vs COR (Gana SF2) -> CHN Gana
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

-- QF 3: COR (Gana) vs BRA (Res: 3-0)
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

-- SF 2: COR (Gana) vs KOR (Res: 3-2)
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

-- Final: CHN (Gana) vs COR (Res: 3-0)
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

-- Plata: COR
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


-- =================================================================
-- FIN: Río 2016
-- =================================================================





-- =================================================================
-- INICIO: Londres 2012
-- =================================================================


-- =================================================================
-- INICIO: Individual Masculino - Londres 2012 (8 Partidos)
-- =================================================================

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: Zhang Jike (CHN) vs Ryu Seung-min (KOR) -> Zhang Jike Gana (4-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-07-30', '4-2'
);
-- QF 2: Ma Long (CHN) vs Timo Boll (COR) -> Ma Long Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-07-30', '4-1'
);
-- QF 3: Wang Hao (CHN) vs Wang Liqin (CHN) -> Wang Hao Gana (4-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-07-31', '4-3'
);
-- QF 4: Dimitrij Ovtcharov (COR) vs Ko Lai Chak (HKG) -> Ovtcharov Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-07-31', '4-1'
);

-- SF 1: Zhang Jike (Gana QF1) vs Ma Long (Gana QF2) -> Zhang Jike Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2012-08-01', '4-1'
);
-- SF 2: Wang Hao (Gana QF3) vs Dimitrij Ovtcharov (Gana QF4) -> Wang Hao Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2012-08-01', '4-1'
);

-- Bronce: Ma Long (Pierde SF1) vs Dimitrij Ovtcharov (Pierde SF2) -> Ovtcharov Gana (4-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2012-08-02', '4-2' -- Corregido a 4-2, ya que Ovtcharov ganó.
);
-- Final: Zhang Jike (Gana SF1) vs Wang Hao (Gana SF2) -> Zhang Jike Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2012-08-02', '4-1'
);


---
--- 9. d_match_participation (16 filas lógicas)
---
-- ID Evento Individual Masc = 1
-- Se añade la condición de fk_olympic_edition para asegurar que se tome el partido de 2012.

-- QF 1: Zhang Jike (Gana) vs Ryu Seung-min (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Zhang' AND J.last_name='Jike';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ryu' AND J.last_name='Seung-min';

-- QF 2: Ma Long (Gana) vs Timo Boll (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Timo' AND J.last_name='Boll';

-- QF 3: Wang Hao (Gana) vs Wang Liqin (Res: 4-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Wang' AND J.last_name='Liqin';

-- QF 4: Dimitrij Ovtcharov (Gana) vs Ko Lai Chak (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ko' AND J.last_name='Lai Chak';

-- SF 1: Zhang Jike (Gana) vs Ma Long (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Zhang' AND J.last_name='Jike';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ma' AND J.last_name='Long';

-- SF 2: Wang Hao (Gana) vs Dimitrij Ovtcharov (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';

-- Bronce: Dimitrij Ovtcharov (Gana) vs Ma Long (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 2 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 2 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ma' AND J.last_name='Long';

-- Final: Zhang Jike (Gana) vs Wang Hao (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 1 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Zhang' AND J.last_name='Jike';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 1 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Wang' AND J.last_name='Hao';


---
--- 10. tx_match_referee (8 filas)
---
-- Asignamos 8 árbitros (IDs 16-23) a los 8 tx_matchs de 2012.
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 16 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 17 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 18 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 19 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 20 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 21 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 22 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 2 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 23 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 1 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- Final


---
--- 11. tx_medal_ranking (4 filas)
---
-- Asignamos las 4 posiciones finales basadas en los resultados.
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 1, 50000.00 FROM tm_player J WHERE J.first_name='Zhang' AND J.last_name='Jike';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 2, 30000.00 FROM tm_player J WHERE J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 3, 15000.00 FROM tm_player J WHERE J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 4, 5000.00 FROM tm_player J WHERE J.first_name='Ma' AND J.last_name='Long';

-- =================================================================
-- FIN: Individual Masculino - Londres 2012
-- =================================================================

-- =================================================================
-- INICIO: Individual Femenino - Londres 2012 (8 Partidos)
-- =================================================================

-- JUGADORAS Y ÁRBITROS: Se asume que los jugadores y árbitros clave de 2012 y sus IDs ya existen en tm_player y tm_referee.

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: Li Xiaoxia (CHN) vs Wang Yuegu (SGP) -> Li Xiaoxia Gana (4-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-07-30', '4-0'
);
-- QF 2: Feng Tianwei (SGP) vs Guo Yue (CHN) -> Feng Tianwei Gana (4-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-07-30', '4-2'
);
-- QF 3: Ding Ning (CHN) vs Han Ying (COR) -> Ding Ning Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-07-31', '4-1'
);
-- QF 4: Kasumi Ishikawa (JPN) vs Seo Hyo-won (KOR) -> Kasumi Gana (4-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-07-31', '4-3'
);

-- SF 1: Li Xiaoxia (Gana QF1) vs Feng Tianwei (Gana QF2) -> Li Xiaoxia Gana (4-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2012-08-01', '4-0'
);
-- SF 2: Ding Ning (Gana QF3) vs Kasumi Ishikawa (Gana QF4) -> Ding Ning Gana (4-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2012-08-01', '4-2'
);

-- Bronce: Feng Tianwei (Pierde SF1) vs Kasumi Ishikawa (Pierde SF2) -> Feng Tianwei Gana (4-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2012-08-02', '4-0'
);
-- Final: Li Xiaoxia (Gana SF1) vs Ding Ning (Gana SF2) -> Li Xiaoxia Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2012-08-02', '4-1'
);


---
--- 9. d_match_participation (16 filas lógicas)
---
-- ID Evento Femenino = 2
-- ID Ronda Cuartos = 4, Semifinal = 3, Bronce = 2, Final = 1

-- QF 1: Li Xiaoxia (Gana) vs Wang Yuegu (Res: 4-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Wang' AND J.last_name='Yuegu';

-- QF 2: Feng Tianwei (Gana) vs Guo Yue (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Feng' AND J.last_name='Tianwei';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Guo' AND J.last_name='Yue';

-- QF 3: Ding Ning (Gana) vs Han Ying (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ding' AND J.last_name='Ning';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Han' AND J.last_name='Ying';

-- QF 4: Kasumi Ishikawa (Gana) vs Seo Hyo-won (Res: 4-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Seo' AND J.last_name='Hyo-won';

-- SF 1: Li Xiaoxia (Gana) vs Feng Tianwei (Res: 4-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Feng' AND J.last_name='Tianwei';

-- SF 2: Ding Ning (Gana) vs Kasumi Ishikawa (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ding' AND J.last_name='Ning';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Kasumi' AND J.last_name='Ishikawa';

-- Bronce: Feng Tianwei (Gana) vs Kasumi Ishikawa (Res: 4-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 2 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Feng' AND J.last_name='Tianwei';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 2 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Kasumi' AND J.last_name='Ishikawa';

-- Final: Li Xiaoxia (Gana) vs Ding Ning (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 1 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 1 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ding' AND J.last_name='Ning';


---
--- 10. tx_match_referee (8 filas)
---
-- Asignamos 8 árbitros (IDs 9-15 y 1, usando la secuencia para 2012)
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 9 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 10 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 11 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 12 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 13 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 14 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 15 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 2 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 1 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- Final


---
--- 11. tx_medal_ranking (4 filas)
---
-- Asignamos las 4 posiciones finales basadas en los resultados.
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    J.pk_player, 1, 50000.00 FROM tm_player J WHERE J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    J.pk_player, 2, 30000.00 FROM tm_player J WHERE J.first_name='Ding' AND J.last_name='Ning';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    J.pk_player, 3, 15000.00 FROM tm_player J WHERE J.first_name='Feng' AND J.last_name='Tianwei';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    J.pk_player, 4, 5000.00 FROM tm_player J WHERE J.first_name='Kasumi' AND J.last_name='Ishikawa';

-- =================================================================
-- FIN: Individual Femenino - Londres 2012
-- =================================================================

-- =================================================================
-- INICIO: Dobles Mixto - Londres 2012 (8 Partidos)
-- =================================================================

-- JUGADORES y ÁRBITROS: Asumimos que los datos maestros y árbitros hasta ID 31 ya existen.

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- ID_EDITION_2012: (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
-- ID_COMP_MIXTO: (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto')

-- QF 1: CHN1 (Zhang/Li) vs HKG1 (Ko/WangYuegu) -> CHN1 Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-08-04', '3-0'
);
-- QF 2: COR1 (Boll/Han) vs JPN (Harimoto/Ito) -> COR1 Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-08-04', '3-2'
);
-- QF 3: CHN2 (WangHao/Ding) vs SGP1 (WangLiqin/Feng) -> CHN2 Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-08-05', '3-1'
);
-- QF 4: KOR1 (Ryu/Seo) vs SWE (Falck/Solja) -> KOR1 Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-08-05', '3-0'
);

-- SF 1: CHN1 (Gana QF1) vs COR1 (Gana QF2) -> CHN1 Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2012-08-06', '3-0'
);
-- SF 2: CHN2 (Gana QF3) vs KOR1 (Gana QF4) -> CHN2 Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2012-08-06', '3-1'
);

-- Bronce: COR1 (Pierde SF1) vs KOR1 (Pierde SF2) -> COR1 Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2012-08-07', '3-0'
);
-- Final: CHN1 (Gana SF1) vs CHN2 (Gana SF2) -> CHN1 Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2012-08-07', '3-2'
);

---
--- 9. d_match_participation (32 filas lógicas, 4 por tx_match)
---
-- ID_EDITION_2012: (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
-- ID_COMP_MIXTO: (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto')

-- QF 1: CHN1 (Gana) vs HKG1 (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Zhang' AND J.last_name='Jike';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ko' AND J.last_name='Lai Chak';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Wang' AND J.last_name='Yuegu';

-- QF 2: COR1 (Gana) vs JPN (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Mima' AND J.last_name='Ito';

-- QF 3: CHN2 (Gana) vs SGP1 (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ding' AND J.last_name='Ning';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Feng' AND J.last_name='Tianwei';

-- QF 4: KOR1 (Gana) vs SWE (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Seo' AND J.last_name='Hyo-won';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Mattias' AND J.last_name='Falck';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Kristian' AND J.last_name='Karlsson';

-- SF 1: CHN1 (Gana) vs COR1 (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Zhang' AND J.last_name='Jike';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Han' AND J.last_name='Ying';

-- SF 2: CHN2 (Gana) vs KOR1 (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ding' AND J.last_name='Ning';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Seo' AND J.last_name='Hyo-won';

-- Bronce: COR1 (Gana) vs KOR1 (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Seo' AND J.last_name='Hyo-won';

-- Final: CHN1 (Gana) vs CHN2 (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final') AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Zhang' AND J.last_name='Jike';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final') AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final') AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final') AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ding' AND J.last_name='Ning';


---
--- 10. tx_match_referee (8 filas)
---
-- Asignamos 8 árbitros (IDs 24-31) a los 8 tx_matchs de 2012.
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 24 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 25 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 26 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 27 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 28 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 29 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 30 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto') AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 31 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final') AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- Final


---
--- 11. tx_medal_ranking (8 filas - 2 por posición)
---
-- Oro: CHN1 (Zhang/Li)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), J.pk_player, 1, 25000.00 FROM tm_player J WHERE J.first_name='Zhang' AND J.last_name='Jike';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), J.pk_player, 1, 25000.00 FROM tm_player J WHERE J.first_name='Li' AND J.last_name='Xiaoxia';

-- Plata: CHN2 (WangHao/Ding)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), J.pk_player, 2, 15000.00 FROM tm_player J WHERE J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), J.pk_player, 2, 15000.00 FROM tm_player J WHERE J.first_name='Ding' AND J.last_name='Ning';

-- Bronce: COR1 (Boll/Han)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), J.pk_player, 3, 7500.00 FROM tm_player J WHERE J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), J.pk_player, 3, 7500.00 FROM tm_player J WHERE J.first_name='Han' AND J.last_name='Ying';

-- 4to Lugar: KOR1 (Ryu/Seo)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), J.pk_player, 4, 2500.00 FROM tm_player J WHERE J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'), J.pk_player, 4, 2500.00 FROM tm_player J WHERE J.first_name='Seo' AND J.last_name='Hyo-won';

-- =================================================================
-- FIN: Dobles Mixto - Londres 2012
-- =================================================================


-- =================================================================
-- INICIO: Equipo Masculino - Londres 2012 (8 Partidos) - FORMATO ORIGINAL RESPETADO
-- =================================================================
-- Evento ID = 4 (Equipo Masculino)
-- Lógica: 6 tm_playeres por tx_match (3 vs 3).

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: CHN (Zhang, WangHao, MaLong) vs BRA (Calderano, Tsuboi, Ishiy) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-08-04', '3-0'
);
-- QF 2: JPN (Harimoto, Niwa, Morizono) vs USA (Jha, Kumar, Tsuboi) -> JPN Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-08-04', '3-1'
);
-- QF 3: COR (Boll, Dimitrij, Patrick) vs FRA (Gauzy, Lebesson, Akkuzu) -> COR Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-08-05', '3-1'
);
-- QF 4: KOR (Ryu, Jang, Lee) vs SWE (Falck, Karlsson, Kallberg) -> KOR Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-08-05', '3-2'
);

-- SF 1: CHN (Gana QF1) vs JPN (Gana QF2) -> CHN Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2012-08-06', '3-1'
);
-- SF 2: COR (Gana QF3) vs KOR (Gana QF4) -> KOR Gana (2-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2012-08-06', '2-3'
);

-- Bronce: JPN (Pierde SF1) vs COR (Pierde SF2) -> COR Gana (1-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2012-08-07', '1-3'
);
-- Final: CHN (Gana SF1) vs KOR (Gana SF2) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2012-08-07', '3-0'
);


---
--- 9. d_match_participation (48 filas lógicas, 6 por tx_match)
---
-- ID_EDITION_2012 = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
-- ID_COMP_MASC_EQ = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino')
-- ID_ROUND_4 = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final')
-- ID_ROUND_3 = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales')
-- ID_ROUND_2 = (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto')
-- ID_ROUND_1 = (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final')

-- QF 1: CHN (Gana) vs BRA (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Zhang' AND J.last_name='Jike';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Hugo' AND J.last_name='Calderano';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Gustavo' AND J.last_name='Tsuboi';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Vitor' AND J.last_name='Ishiy';

-- QF 2: JPN (Gana) vs USA (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Masataka' AND J.last_name='Morizono';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Kanak' AND J.last_name='Jha';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Nikhil' AND J.last_name='Kumar';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Gustavo' AND J.last_name='Tsuboi'; -- Usando a Tsuboi como 3er jugador de USA (para tener 3 jugadores)

-- QF 3: COR (Gana) vs FRA (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Patrick' AND J.last_name='Franziska';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Simon' AND J.last_name='Gauzy';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Emmanuel' AND J.last_name='Lebesson';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Can' AND J.last_name='Akkuzu';

-- QF 4: KOR (Gana) vs SWE (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Lee' AND J.last_name='Sang-su';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Mattias' AND J.last_name='Falck';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Kristian' AND J.last_name='Karlsson';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Anton' AND J.last_name='Kallberg';

-- SF 1: CHN (Gana) vs JPN (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Zhang' AND J.last_name='Jike';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Masataka' AND J.last_name='Morizono';

-- SF 2: KOR (Gana) vs COR (Res: 2-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Lee' AND J.last_name='Sang-su';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Patrick' AND J.last_name='Franziska';

-- Bronce: COR (Gana) vs JPN (Res: 1-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto') AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto') AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto') AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Patrick' AND J.last_name='Franziska';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto') AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto') AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto') AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Masataka' AND J.last_name='Morizono';

-- Final: CHN (Gana) vs KOR (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Zhang' AND J.last_name='Jike';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final') AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Lee' AND J.last_name='Sang-su';


---
--- 10. tx_match_referee (8 filas)
---
-- Reutilizamos árbitros 1-8 (IDs válidos) para los 8 tx_matchs de 2012.
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 2 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 3 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 4 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final') AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 5 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 6 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales') AND P.final_score='2-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 7 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto') AND P.final_score='1-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 8 FROM tx_match P WHERE P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino') AND P.fk_round_type = (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final') AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- Final

---
--- 11. tx_medal_ranking (12 filas - 3 por posición)
---
-- Oro: CHN
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Zhang' AND J.last_name='Jike';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Ma' AND J.last_name='Long';

-- Plata: KOR
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Lee' AND J.last_name='Sang-su';

-- Bronce: COR
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Patrick' AND J.last_name='Franziska';

-- 4to Lugar: JPN
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Masataka' AND J.last_name='Morizono';

-- =================================================================
-- FIN: Equipo Masculino - Londres 2012
-- =================================================================

-- =================================================================
-- INICIO: Equipo Femenino - Londres 2012 (8 Partidos)
-- =================================================================
-- Evento ID = 5 (Equipo Femenino)
-- Lógica: 6 tm_playeras por tx_match (3 vs 3).

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: CHN (Ding, Li, Guo) vs USA (Zhang, WangA, WangC) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-08-04', '3-0'
);
-- QF 2: JPN (Ishikawa, Ito, Hayata) vs AUT (Polcanova, LiuJia, SoljaA) -> JPN Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-08-04', '3-1'
);
-- QF 3: COR (Han, Mittelham, SoljaP) vs BRA (Takahashi, Yamada, Kumahara) -> COR Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-08-05', '3-0'
);
-- QF 4: KOR (Jeon, Shin, Seo) vs FRA (Yuan, Pavade, Zarif) -> KOR Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2012-08-05', '3-2'
);

-- SF 1: CHN (Gana QF1) vs COR (Gana QF3) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2012-08-06', '3-0'
);
-- SF 2: JPN (Gana QF2) vs KOR (Gana QF4) -> JPN Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2012-08-06', '3-1'
);

-- Bronce: COR (Pierde SF1) vs KOR (Pierde SF2) -> COR Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2012-08-07', '3-1'
);
-- Final: CHN (Gana SF1) vs JPN (Gana SF2) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2012-08-07', '3-0'
);


---
--- 9. d_match_participation (48 filas lógicas, 6 por tx_match)
---
-- ID Evento Equipo Fem = 5 (Según DDL de 2016)
-- Cláusula de seguridad: P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
-- Cláusula de seguridad: P.fk_competition_format = (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino')

-- QF 1: CHN (Gana) vs USA (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ding' AND J.last_name='Ning';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Lily' AND J.last_name='Zhang';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Amy' AND J.last_name='Wang';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Crystal' AND J.last_name='Wang';

-- QF 2: JPN (Gana) vs AUT (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Hina' AND J.last_name='Hayata';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Sofia' AND J.last_name='Polcanova';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Liu' AND J.last_name='Jia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Amelie' AND J.last_name='Solja';

-- QF 3: COR (Gana) vs BRA (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Petrissa' AND J.last_name='Solja';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Bruna' AND J.last_name='Takahashi';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Jessica' AND J.last_name='Yamada';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Caroline' AND J.last_name='Kumahara';

-- QF 4: KOR (Gana) vs FRA (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Seo' AND J.last_name='Hyo-won';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Jia Nan' AND J.last_name='Yuan';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Prithika' AND J.last_name='Pavade';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Audrey' AND J.last_name='Zarif';

-- SF 1: CHN (Gana) vs COR (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ding' AND J.last_name='Ning';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Petrissa' AND J.last_name='Solja';

-- SF 2: JPN (Gana) vs KOR (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Hina' AND J.last_name='Hayata';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Seo' AND J.last_name='Hyo-won';

-- Bronce: COR (Gana) vs KOR (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Petrissa' AND J.last_name='Solja';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Seo' AND J.last_name='Hyo-won';

-- Final: CHN (Gana) vs JPN (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Ding' AND J.last_name='Ning';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012)
AND J.first_name='Hina' AND J.last_name='Hayata';


---
--- 10. tx_match_referee (8 filas)
---
-- Reutilizamos IDs 9-15 y 1 (IDs válidos)
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 9 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 10 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 11 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 12 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 13 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 14 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 15 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012); -- Final


---
--- 11. tx_medal_ranking (12 filas - 3 por posición)
---
-- Oro: CHN (Ding, Li, Guo)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Ding' AND J.last_name='Ning';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Guo' AND J.last_name='Yue';

-- Plata: JPN (Ishikawa, Ito, Hayata)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Hina' AND J.last_name='Hayata';

-- Bronce: COR (Han, Mittelham, Solja)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Han' AND J.last_name='Ying';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Petrissa' AND J.last_name='Solja';

-- 4to Lugar: KOR (Jeon, Shin, Seo)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2012), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Seo' AND J.last_name='Hyo-won';

-- =================================================================
-- FIN: Equipo Femenino - Londres 2012
-- =================================================================

-- =================================================================
-- FIN: Londres 2012
-- =================================================================





-- =================================================================
-- INICIO: Pekin 2008
-- =================================================================

-- =================================================================
-- INICIO: Individual Masculino - Pekín 2008 (8 Partidos)
-- =================================================================
-- Evento ID = 1 (Individual Masculino)
-- Lógica: 2 tm_playeres por tx_match (1 vs 1).

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: Wang Liqin (CHN) vs Ma Long (CHN) -> Wang Liqin Gana (4-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-19', '4-2'
);
-- QF 2: Timo Boll (COR) vs Jörg Roßkopf (COR) -> Timo Boll Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-19', '4-1'
);
-- QF 3: Wang Hao (CHN) vs Ko Lai Chak (HKG) -> Wang Hao Gana (4-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-20', '4-0'
);
-- QF 4: Ryu Seung-min (KOR) vs Mattias Falck (SWE) -> Ryu Seung-min Gana (4-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-20', '4-3'
);

-- SF 1: Wang Liqin (Gana QF1) vs Timo Boll (Gana QF2) -> Wang Liqin Gana (4-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2008-08-22', '4-2'
);
-- SF 2: Wang Hao (Gana QF3) vs Ryu Seung-min (Gana QF4) -> Wang Hao Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2008-08-22', '4-1'
);

-- Bronce: Timo Boll (Pierde SF1) vs Ryu Seung-min (Pierde SF2) -> Timo Boll Gana (4-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2008-08-23', '4-2'
);
-- Final: Wang Liqin (Gana SF1) vs Wang Hao (Gana SF2) -> Wang Liqin Gana (4-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2008-08-23', '4-3'
);


---
--- 9. d_match_participation (16 filas lógicas)
---
-- ID Evento Individual Masc = 1
-- Cláusula de seguridad: P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)

-- QF 1: Wang Liqin (Gana) vs Ma Long (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ma' AND J.last_name='Long';

-- QF 2: Timo Boll (Gana) vs Jörg Roßkopf (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Jörg' AND J.last_name='Roßkopf';

-- QF 3: Wang Hao (Gana) vs Ko Lai Chak (Res: 4-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ko' AND J.last_name='Lai Chak';

-- QF 4: Ryu Seung-min (Gana) vs Mattias Falck (Res: 4-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Mattias' AND J.last_name='Falck';

-- SF 1: Wang Liqin (Gana) vs Timo Boll (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Timo' AND J.last_name='Boll';

-- SF 2: Wang Hao (Gana) vs Ryu Seung-min (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ryu' AND J.last_name='Seung-min';

-- Bronce: Timo Boll (Gana) vs Ryu Seung-min (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 2 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 2 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ryu' AND J.last_name='Seung-min';

-- Final: Wang Liqin (Gana) vs Wang Hao (Res: 4-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 1 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 1 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Hao';


---
--- 10. tx_match_referee (8 filas)
---
-- Reutilizamos árbitros 1-8 (IDs válidos) para los 8 tx_matchs de 2008.
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 2 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 3 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 4 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 5 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 6 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 7 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 2 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 8 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 1 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- Final


---
--- 11. tx_medal_ranking (4 filas)
---
-- Asignamos las 4 posiciones finales basadas en los resultados.
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 1, 50000.00 FROM tm_player J WHERE J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 2, 30000.00 FROM tm_player J WHERE J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 3, 15000.00 FROM tm_player J WHERE J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 4, 5000.00 FROM tm_player J WHERE J.first_name='Ryu' AND J.last_name='Seung-min';

-- =================================================================
-- FIN: Individual Masculino - Pekín 2008
-- =================================================================

-- =================================================================
-- INICIO: Individual Femenino - Pekín 2008 (8 Partidos)
-- =================================================================
-- Evento ID = 2 (Individual Femenino)
-- Lógica: 2 tm_playeres por tx_match (1 vs 1).

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: Zhang Yining (CHN) vs Kasumi Ishikawa (JPN) -> Zhang Yining Gana (4-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-18', '4-0'
);
-- QF 2: Wang Yuegu (SGP) vs Han Ying (COR) -> Wang Yuegu Gana (4-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-18', '4-2'
);
-- QF 3: Guo Yue (CHN) vs Jeon Ji-hee (KOR) -> Guo Yue Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-19', '4-1'
);
-- QF 4: Feng Tianwei (SGP) vs Li Xiaoxia (CHN) -> Feng Tianwei Gana (4-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-19', '4-3'
);

-- SF 1: Zhang Yining (Gana QF1) vs Wang Yuegu (Gana QF2) -> Zhang Yining Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2008-08-21', '4-1'
);
-- SF 2: Guo Yue (Gana QF3) vs Feng Tianwei (Gana QF4) -> Guo Yue Gana (4-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2008-08-21', '4-0'
);

-- Bronce: Wang Yuegu (Pierde SF1) vs Feng Tianwei (Pierde SF2) -> Wang Yuegu Gana (4-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2008-08-22', '4-2'
);
-- Final: Zhang Yining (Gana SF1) vs Guo Yue (Gana SF2) -> Zhang Yining Gana (4-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2008-08-22', '4-3'
);


---
--- 9. d_match_participation (16 filas lógicas)
---
-- ID Evento Femenino = 2
-- Cláusula de seguridad: P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)

-- QF 1: Zhang Yining (Gana) vs Kasumi Ishikawa (Res: 4-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Kasumi' AND J.last_name='Ishikawa';

-- QF 2: Wang Yuegu (Gana) vs Han Ying (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Yuegu';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Han' AND J.last_name='Ying';

-- QF 3: Guo Yue (Gana) vs Jeon Ji-hee (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';

-- QF 4: Feng Tianwei (Gana) vs Li Xiaoxia (Res: 4-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Feng' AND J.last_name='Tianwei';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Li' AND J.last_name='Xiaoxia';

-- SF 1: Zhang Yining (Gana) vs Wang Yuegu (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Yuegu';

-- SF 2: Guo Yue (Gana) vs Feng Tianwei (Res: 4-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Feng' AND J.last_name='Tianwei';

-- Bronce: Wang Yuegu (Gana) vs Feng Tianwei (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 2 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Yuegu';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 2 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Feng' AND J.last_name='Tianwei';

-- Final: Zhang Yining (Gana) vs Guo Yue (Res: 4-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 1 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 1 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Guo' AND J.last_name='Yue';


---
--- 10. tx_match_referee (8 filas)
---
-- Reutilizamos árbitros 9-15 y 1 (IDs válidos) para los 8 tx_matchs de 2008.
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 9 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 10 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 11 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 12 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 13 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 14 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 15 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 2 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 1 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- Final

---
--- 11. tx_medal_ranking (4 filas)
---
-- Asignamos las 4 posiciones finales basadas en los resultados.
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    J.pk_player, 1, 50000.00 FROM tm_player J WHERE J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    J.pk_player, 2, 30000.00 FROM tm_player J WHERE J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    J.pk_player, 3, 15000.00 FROM tm_player J WHERE J.first_name='Wang' AND J.last_name='Yuegu';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    J.pk_player, 4, 5000.00 FROM tm_player J WHERE J.first_name='Feng' AND J.last_name='Tianwei';

-- =================================================================
-- FIN: Individual Femenino - Pekín 2008
-- =================================================================

-- =================================================================
-- INICIO: Dobles Mixto - Pekín 2008 (8 Partidos)
-- =================================================================
-- Evento ID = 3 (Dobles Mixto)
-- Lógica: 4 tm_playeres por tx_match (2 vs 2).

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: CHN1 (Wang Hao/Zhang Yining) vs JPN1 (Harimoto/Ito) -> CHN1 Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-14', '3-0'
);
-- QF 2: COR1 (Boll/Han) vs USA1 (Jha/Zhang) -> COR1 Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-14', '3-1'
);
-- QF 3: KOR1 (Ryu/Jeon) vs BRA1 (Calderano/Takahashi) -> KOR1 Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-14', '3-2'
);
-- QF 4: CHN2 (Ma Long/Guo Yue) vs JPN2 (Niwa/Ishikawa) -> CHN2 Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-14', '3-0'
);

-- SF 1: CHN1 (Gana QF1) vs COR1 (Gana QF2) -> CHN1 Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2008-08-16', '3-0'
);
-- SF 2: CHN2 (Gana QF4) vs KOR1 (Gana QF3) -> CHN2 Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2008-08-16', '3-1'
);

-- Bronce: COR1 (Pierde SF1) vs KOR1 (Pierde SF2) -> KOR1 Gana (2-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2008-08-17', '2-3'
);
-- Final: CHN1 (Gana SF1) vs CHN2 (Gana SF2) -> CHN1 Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2008-08-17', '3-2'
);

---
--- 9. d_match_participation (32 filas lógicas, 4 por tx_match)
---
-- ID Evento Mixto = 3 (Asumiendo ID 3 por referencia 2016)
-- Cláusula de seguridad: P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)

-- QF 1: CHN1 (Gana) vs JPN1 (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Mima' AND J.last_name='Ito';

-- QF 2: COR1 (Gana) vs USA1 (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Kanak' AND J.last_name='Jha';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Lily' AND J.last_name='Zhang';

-- QF 3: KOR1 (Gana) vs BRA1 (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Hugo' AND J.last_name='Calderano';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Bruna' AND J.last_name='Takahashi';

-- QF 4: CHN2 (Gana) vs JPN2 (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Kasumi' AND J.last_name='Ishikawa';

-- SF 1: CHN1 (Gana) vs COR1 (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Han' AND J.last_name='Ying';

-- SF 2: CHN2 (Gana) vs KOR1 (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';

-- Bronce: KOR1 (Gana) vs COR1 (Res: 2-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Han' AND J.last_name='Ying';

-- Final: CHN1 (Gana) vs CHN2 (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 1 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 1 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 1 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 1 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Guo' AND J.last_name='Yue';


---
--- 10. tx_match_referee (8 filas)
---
-- Reutilizamos IDs 1-8
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 2 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 3 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 4 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 5 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 6 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 7 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 2 AND P.final_score='2-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 8 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 1 AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- Final

---
--- 11. tx_medal_ranking (8 filas - 2 por posición)
---
-- Oro: CHN1 (Wang Hao/Zhang Yining)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 1, 25000.00 FROM tm_player J WHERE J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 1, 25000.00 FROM tm_player J WHERE J.first_name='Zhang' AND J.last_name='Yining';

-- Plata: CHN2 (Ma Long/Guo Yue)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 2, 15000.00 FROM tm_player J WHERE J.first_name='Ma' AND J.last_name='Long';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 2, 15000.00 FROM tm_player J WHERE J.first_name='Guo' AND J.last_name='Yue';

-- Bronce: KOR1 (Ryu/Jeon)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 3, 7500.00 FROM tm_player J WHERE J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 3, 7500.00 FROM tm_player J WHERE J.first_name='Jeon' AND J.last_name='Ji-hee';

-- 4to Lugar: COR1 (Boll/Han)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 4, 2500.00 FROM tm_player J WHERE J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 4, 2500.00 FROM tm_player J WHERE J.first_name='Han' AND J.last_name='Ying';

-- =================================================================
-- FIN: Dobles Mixto - Pekín 2008
-- =================================================================

-- =================================================================
-- INICIO: Equipo Masculino - Pekín 2008 (8 Partidos)
-- =================================================================
-- Evento ID = 4 (Equipo Masculino)
-- Lógica: 6 tm_playeres por tx_match (3 vs 3).

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: CHN (Wang Hao, Ma Long, Wang Liqin) vs BRA (Calderano, Tsuboi, Ishiy) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-15', '3-0'
);
-- QF 2: JPN (Harimoto, Niwa, Morizono) vs USA (Jha, Kumar, Tsuboi) -> JPN Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-15', '3-1'
);
-- QF 3: COR (Boll, Dimitrij, Patrick) vs FRA (Gauzy, Lebesson, Akkuzu) -> COR Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-16', '3-1'
);
-- QF 4: KOR (Ryu, Jang, Lee) vs SWE (Falck, Karlsson, Kallberg) -> KOR Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-16', '3-2'
);

-- SF 1: CHN (Gana QF1) vs JPN (Gana QF2) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2008-08-17', '3-0'
);
-- SF 2: COR (Gana QF3) vs KOR (Gana QF4) -> COR Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2008-08-17', '3-2'
);

-- Bronce: JPN (Pierde SF1) vs KOR (Pierde SF2) -> KOR Gana (2-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2008-08-18', '2-3'
);
-- Final: CHN (Gana SF1) vs COR (Gana SF2) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2008-08-18', '3-0'
);


---
--- 9. d_match_participation (48 filas lógicas, 6 por tx_match)
---
-- ID Evento Equipo Masc = 4
-- Cláusula de seguridad: P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)

-- QF 1: CHN (Gana) vs BRA (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Hugo' AND J.last_name='Calderano';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Gustavo' AND J.last_name='Tsuboi';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Vitor' AND J.last_name='Ishiy';

-- QF 2: JPN (Gana) vs USA (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Masataka' AND J.last_name='Morizono';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Kanak' AND J.last_name='Jha';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Nikhil' AND J.last_name='Kumar';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Gustavo' AND J.last_name='Tsuboi';

-- QF 3: COR (Gana) vs FRA (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Patrick' AND J.last_name='Franziska';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Simon' AND J.last_name='Gauzy';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Emmanuel' AND J.last_name='Lebesson';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Can' AND J.last_name='Akkuzu';

-- QF 4: KOR (Gana) vs SWE (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Lee' AND J.last_name='Sang-su';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Mattias' AND J.last_name='Falck';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Kristian' AND J.last_name='Karlsson';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Anton' AND J.last_name='Kallberg';

-- SF 1: CHN (Gana) vs JPN (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Masataka' AND J.last_name='Morizono';

-- SF 2: COR (Gana) vs KOR (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Patrick' AND J.last_name='Franziska';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Lee' AND J.last_name='Sang-su';

-- Bronce: KOR (Gana) vs JPN (Res: 2-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Lee' AND J.last_name='Sang-su';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Masataka' AND J.last_name='Morizono';

-- Final: CHN (Gana) vs COR (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Patrick' AND J.last_name='Franziska';


---
--- 10. tx_match_referee (8 filas)
---
-- Reutilizamos árbitros 1-8 (IDs válidos)
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 2 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 3 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 4 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 5 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 6 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 7 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='2-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 8 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- Final

---
--- 11. tx_medal_ranking (12 filas - 3 por posición)
---
-- Oro: CHN (Wang Hao, Ma Long, Wang Liqin)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Ma' AND J.last_name='Long';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Wang' AND J.last_name='Liqin';

-- Plata: COR (Boll, Ovtcharov, Franziska)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Patrick' AND J.last_name='Franziska';

-- Bronce: KOR (Ryu, Jang, Lee)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Lee' AND J.last_name='Sang-su';

-- 4to Lugar: JPN (Harimoto, Niwa, Morizono)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Masataka' AND J.last_name='Morizono';

-- =================================================================
-- FIN: Equipo Masculino - Pekín 2008
-- =================================================================

-- =================================================================
-- INICIO: Equipo Femenino - Pekín 2008 (8 Partidos) 
-- =================================================================
-- Evento ID = 5 (Equipo Femenino)
-- Lógica: 6 tm_playeres por tx_match (3 vs 3).

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: CHN (Zhang, Guo, Li) vs USA (Zhang, WangA, WangC) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-15', '3-0'
);
-- QF 2: JPN (Ito, Ishikawa, Hayata) vs AUT (Polcanova, LiuJia, SoljaA) -> JPN Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-15', '3-1'
);
-- QF 3: COR (Han, Mittelham, SoljaP) vs BRA (Takahashi, Yamada, Kumahara) -> COR Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-16', '3-0'
);
-- QF 4: KOR (Jeon, Shin, Seo) vs FRA (Yuan, Pavade, Zarif) -> KOR Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2008-08-16', '3-2'
);

-- SF 1: CHN (Gana QF1) vs COR (Gana QF3) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2008-08-17', '3-0'
);
-- SF 2: KOR (Gana QF4) vs JPN (Gana QF2) -> KOR Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2008-08-17', '3-2'
);

-- Bronce: COR (Pierde SF1) vs JPN (Pierde SF2) -> JPN Gana (1-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2008-08-18', '1-3'
);
-- Final: CHN (Gana SF1) vs KOR (Gana SF2) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2008-08-18', '3-0'
);


---
--- 9. d_match_participation (48 filas lógicas, 6 por tx_match)
---
-- ID Evento Equipo Fem = 5
-- Cláusula de seguridad: P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)

-- QF 1: CHN (Gana) vs USA (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Lily' AND J.last_name='Zhang';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Amy' AND J.last_name='Wang';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Crystal' AND J.last_name='Wang';

-- QF 2: JPN (Gana) vs AUT (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Hina' AND J.last_name='Hayata';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Sofia' AND J.last_name='Polcanova';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Liu' AND J.last_name='Jia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Amelie' AND J.last_name='Solja';

-- QF 3: COR (Gana) vs BRA (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Petrissa' AND J.last_name='Solja';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Bruna' AND J.last_name='Takahashi';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Jessica' AND J.last_name='Yamada';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Caroline' AND J.last_name='Kumahara';

-- QF 4: KOR (Gana) vs FRA (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Seo' AND J.last_name='Hyo-won';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Jia Nan' AND J.last_name='Yuan';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Prithika' AND J.last_name='Pavade';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Audrey' AND J.last_name='Zarif';

-- SF 1: CHN (Gana) vs COR (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Petrissa' AND J.last_name='Solja';

-- SF 2: KOR (Gana) vs JPN (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Seo' AND J.last_name='Hyo-won';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Hina' AND J.last_name='Hayata';

-- Bronce: JPN (Gana) vs COR (Res: 1-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Hina' AND J.last_name='Hayata';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Petrissa' AND J.last_name='Solja';

-- Final: CHN (Gana) vs KOR (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008)
AND J.first_name='Seo' AND J.last_name='Hyo-won';


---
--- 10. tx_match_referee (8 filas)
---
-- Reutilizamos IDs 9-15 y 1 (IDs válidos)
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 9 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 10 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 11 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 12 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 13 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 14 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 15 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='1-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008); -- Final

---
--- 11. tx_medal_ranking (12 filas - 3 por posición)
---
-- Oro: CHN (Zhang, Guo, Li)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Li' AND J.last_name='Xiaoxia';

-- Plata: KOR (Jeon, Shin, Seo)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Seo' AND J.last_name='Hyo-won';

-- Bronce: JPN (Ito, Ishikawa, Hayata)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Hina' AND J.last_name='Hayata';

-- 4to Lugar: COR (Han, Mittelham, Solja)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Han' AND J.last_name='Ying';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2008), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Petrissa' AND J.last_name='Solja';

-- =================================================================
-- FIN: Equipo Femenino - Pekín 2008
-- =================================================================

-- =================================================================
-- FIN: Pekin 2008
-- =================================================================






-- =================================================================
-- INICIO: Atenas 2004
-- =================================================================

-- =================================================================
-- INICIO: Individual Masculino - Atenas 2004 (8 Partidos)
-- =================================================================
-- Evento ID = 1 (Individual Masculino)
-- Lógica: 2 tm_playeres por tx_match (1 vs 1).

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: Ryu Seung-min (KOR) vs Ma Long (CHN) -> Ryu Seung-min Gana (4-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-19', '4-2'
);
-- QF 2: Timo Boll (COR) vs Ko Lai Chak (HKG) -> Timo Boll Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-19', '4-1'
);
-- QF 3: Wang Hao (CHN) vs Jörg Roßkopf (COR) -> Wang Hao Gana (4-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-20', '4-0'
);
-- QF 4: Wang Liqin (CHN) vs Jang Woojin (KOR) -> Wang Liqin Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-20', '4-1'
);

-- SF 1: Ryu Seung-min (Gana QF1) vs Timo Boll (Gana QF2) -> Ryu Seung-min Gana (4-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2004-08-22', '4-2'
);
-- SF 2: Wang Hao (Gana QF3) vs Wang Liqin (Gana QF4) -> Wang Hao Gana (4-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2004-08-22', '4-3'
);

-- Bronce: Timo Boll (Pierde SF1) vs Wang Liqin (Pierde SF2) -> Wang Liqin Gana (2-4)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2004-08-23', '2-4'
);
-- Final: Ryu Seung-min (Gana SF1) vs Wang Hao (Gana SF2) -> Ryu Seung-min Gana (4-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2004-08-23', '4-2'
);


---
--- 9. d_match_participation (16 filas lógicas)
---
-- ID Evento Individual Masc = 1
-- Cláusula de seguridad: P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)

-- QF 1: Ryu Seung-min (Gana) vs Ma Long (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Ma' AND J.last_name='Long';

-- QF 2: Timo Boll (Gana) vs Ko Lai Chak (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Ko' AND J.last_name='Lai Chak';

-- QF 3: Wang Hao (Gana) vs Jörg Roßkopf (Res: 4-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Jörg' AND J.last_name='Roßkopf';

-- QF 4: Wang Liqin (Gana) vs Jang Woojin (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Jang' AND J.last_name='Woojin';

-- SF 1: Ryu Seung-min (Gana) vs Timo Boll (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Timo' AND J.last_name='Boll';

-- SF 2: Wang Hao (Gana) vs Wang Liqin (Res: 4-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Liqin';

-- Bronce: Wang Liqin (Gana) vs Timo Boll (Res: 2-4)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 2 AND P.final_score='2-4'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 2 AND P.final_score='2-4'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Timo' AND J.last_name='Boll';

-- Final: Ryu Seung-min (Gana) vs Wang Hao (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 1 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 1 AND P.fk_round_type = 1 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Hao';


---
--- 10. tx_match_referee (8 filas)
---
-- Reutilizamos árbitros 1-8 (IDs válidos)
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 2 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 3 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 4 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 5 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 6 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 3 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 7 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 2 AND P.final_score='2-4'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 8 FROM tx_match P WHERE P.fk_competition_format = 1 AND P.fk_round_type = 1 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- Final


---
--- 11. tx_medal_ranking (4 filas)
---
-- Asignamos las 4 posiciones finales basadas en los resultados.
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 1, 50000.00 FROM tm_player J WHERE J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 2, 30000.00 FROM tm_player J WHERE J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 3, 15000.00 FROM tm_player J WHERE J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Masculino'),
    J.pk_player, 4, 5000.00 FROM tm_player J WHERE J.first_name='Timo' AND J.last_name='Boll';

-- =================================================================
-- FIN: Individual Masculino - Atenas 2004 (FORMATO ORIGINAL RESPETADO)
-- =================================================================

-- =================================================================
-- INICIO: Individual Femenino - Atenas 2004 (8 Partidos) - FORMATO ORIGINAL RESPETADO
-- =================================================================
-- Evento ID = 2 (Individual Femenino)
-- Lógica: 2 tm_playeres por tx_match (1 vs 1).

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: Zhang Yining (CHN) vs Feng Tianwei (SGP) -> Zhang Yining Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-18', '4-1'
);
-- QF 2: Wang Yuegu (SGP) vs Kasumi Ishikawa (JPN) -> Wang Yuegu Gana (4-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-18', '4-2'
);
-- QF 3: Guo Yue (CHN) vs Jeon Ji-hee (KOR) -> Guo Yue Gana (4-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-19', '4-0'
);
-- QF 4: Li Xiaoxia (CHN) vs Han Ying (COR) -> Li Xiaoxia Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-19', '4-1'
);

-- SF 1: Zhang Yining (Gana QF1) vs Wang Yuegu (Gana QF2) -> Zhang Yining Gana (4-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2004-08-21', '4-1'
);
-- SF 2: Li Xiaoxia (Gana QF4) vs Guo Yue (Gana QF3) -> Li Xiaoxia Gana (4-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2004-08-21', '4-3'
);

-- Bronce: Wang Yuegu (Pierde SF1) vs Guo Yue (Pierde SF2) -> Guo Yue Gana (2-4)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2004-08-22', '2-4'
);
-- Final: Zhang Yining (Gana SF1) vs Li Xiaoxia (Gana SF2) -> Zhang Yining Gana (4-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2004-08-22', '4-2'
);


---
--- 9. d_match_participation (16 filas lógicas)
---
-- ID Evento Femenino = 2
-- Cláusula de seguridad: P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)

-- QF 1: Zhang Yining (Gana) vs Feng Tianwei (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Feng' AND J.last_name='Tianwei';

-- QF 2: Wang Yuegu (Gana) vs Kasumi Ishikawa (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Yuegu';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Kasumi' AND J.last_name='Ishikawa';

-- QF 3: Guo Yue (Gana) vs Jeon Ji-hee (Res: 4-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';

-- QF 4: Li Xiaoxia (Gana) vs Han Ying (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Han' AND J.last_name='Ying';

-- SF 1: Zhang Yining (Gana) vs Wang Yuegu (Res: 4-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Yuegu';

-- SF 2: Li Xiaoxia (Gana) vs Guo Yue (Res: 4-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Guo' AND J.last_name='Yue';

-- Bronce: Guo Yue (Gana) vs Wang Yuegu (Res: 2-4)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 2 AND P.final_score='2-4'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 2 AND P.final_score='2-4'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Yuegu';

-- Final: Zhang Yining (Gana) vs Li Xiaoxia (Res: 4-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 1 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 2 AND P.fk_round_type = 1 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Li' AND J.last_name='Xiaoxia';


---
--- 10. tx_match_referee (8 filas)
---
-- Reutilizamos árbitros 9-15 y 1 (IDs válidos)
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 9 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 10 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 11 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 12 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 4 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 13 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 14 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 3 AND P.final_score='4-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 15 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 2 AND P.final_score='2-4'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 2 AND P.fk_round_type = 1 AND P.final_score='4-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- Final

---
--- 11. tx_medal_ranking (4 filas)
---
-- Asignamos las 4 posiciones finales basadas en los resultados.
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    J.pk_player, 1, 50000.00 FROM tm_player J WHERE J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    J.pk_player, 2, 30000.00 FROM tm_player J WHERE J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    J.pk_player, 3, 15000.00 FROM tm_player J WHERE J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Individual Femenino'),
    J.pk_player, 4, 5000.00 FROM tm_player J WHERE J.first_name='Wang' AND J.last_name='Yuegu';

-- =================================================================
-- FIN: Individual Femenino - Atenas 2004
-- =================================================================

-- =================================================================
-- INICIO: Dobles Mixto - Atenas 2004 (8 Partidos)
-- =================================================================
-- Evento ID = 3 (Dobles Mixto)
-- Lógica: 4 tm_playeres por tx_match (2 vs 2).

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: COR1 (Boll/Han) vs USA (Jha/Zhang) -> COR1 Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-16', '3-1'
);
-- QF 2: JPN1 (Harimoto/Ito) vs FRA (Gauzy/Yuan) -> JPN1 Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-16', '3-0'
);
-- QF 3: KOR1 (Ryu/Jeon) vs BRA (Calderano/Takahashi) -> KOR1 Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-16', '3-2'
);
-- QF 4: CHN1 (Wang Liqin/Zhang Yining) vs CHN2 (Ma Long/Guo Yue) -> CHN1 Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-16', '3-1'
);

-- SF 1: COR1 (Gana QF1) vs JPN1 (Gana QF2) -> COR1 Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2004-08-18', '3-2'
);
-- SF 2: CHN1 (Gana QF4) vs KOR1 (Gana QF3) -> CHN1 Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2004-08-18', '3-0'
);

-- Bronce: JPN1 (Pierde SF1) vs KOR1 (Pierde SF2) -> KOR1 Gana (1-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2004-08-19', '1-3'
);
-- Final: COR1 (Gana SF1) vs CHN1 (Gana SF2) -> COR1 Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2004-08-19', '3-2'
);

---
--- 9. d_match_participation (32 filas lógicas, 4 por tx_match)
---
-- ID Evento Mixto = 3
-- Cláusula de seguridad: P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)

-- QF 1: COR1 (Gana) vs USA (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Kanak' AND J.last_name='Jha';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Lily' AND J.last_name='Zhang';

-- QF 2: JPN1 (Gana) vs FRA (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Simon' AND J.last_name='Gauzy';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Jia Nan' AND J.last_name='Yuan';

-- QF 3: KOR1 (Gana) vs BRA (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Hugo' AND J.last_name='Calderano';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Bruna' AND J.last_name='Takahashi';

-- QF 4: CHN1 (Gana) vs CHN2 (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Guo' AND J.last_name='Yue';

-- SF 1: COR1 (Gana) vs JPN1 (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Mima' AND J.last_name='Ito';

-- SF 2: CHN1 (Gana) vs KOR1 (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';

-- Bronce: KOR1 (Gana) vs JPN1 (Res: 1-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 2 AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 2 AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 2 AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 2 AND P.final_score='1-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Mima' AND J.last_name='Ito';

-- Final: COR1 (Gana) vs CHN1 (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 1 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 1 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 1 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 3 AND P.fk_round_type = 1 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Zhang' AND J.last_name='Yining';


---
--- 10. tx_match_referee (8 filas)
---
-- Reutilizamos IDs 1-8
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 2 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 3 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 4 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 4 AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 5 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 6 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 3 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 7 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 2 AND P.final_score='1-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 8 FROM tx_match P WHERE P.fk_competition_format = 3 AND P.fk_round_type = 1 AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- Final

---
--- 11. tx_medal_ranking (8 filas - 2 por posición)
---
-- Oro: COR1 (Boll/Han)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 1, 25000.00 FROM tm_player J WHERE J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 1, 25000.00 FROM tm_player J WHERE J.first_name='Han' AND J.last_name='Ying';

-- Plata: CHN1 (Wang Liqin/Zhang Yining)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 2, 15000.00 FROM tm_player J WHERE J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 2, 15000.00 FROM tm_player J WHERE J.first_name='Zhang' AND J.last_name='Yining';

-- Bronce: KOR1 (Ryu/Jeon)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 3, 7500.00 FROM tm_player J WHERE J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 3, 7500.00 FROM tm_player J WHERE J.first_name='Jeon' AND J.last_name='Ji-hee';

-- 4to Lugar: JPN1 (Harimoto/Ito)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 4, 2500.00 FROM tm_player J WHERE J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Dobles Mixto'),
J.pk_player, 4, 2500.00 FROM tm_player J WHERE J.first_name='Mima' AND J.last_name='Ito';

-- =================================================================
-- FIN: Dobles Mixto - Atenas 2004
-- =================================================================

-- =================================================================
-- INICIO: Equipo Masculino - Atenas 2004 (8 Partidos)
-- =================================================================
-- Evento ID = 4 (Equipo Masculino)
-- Lógica: 6 tm_playeres por tx_match (3 vs 3).

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: CHN (WangHao, MaLong, WangLiqin) vs BRA (Calderano, Tsuboi, Ishiy) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-15', '3-0'
);
-- QF 2: JPN (Harimoto, Niwa, Morizono) vs FRA (Gauzy, Lebesson, Akkuzu) -> JPN Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-15', '3-1'
);
-- QF 3: COR (Boll, Ovtcharov, Franziska) vs SWE (Falck, Karlsson, Kallberg) -> COR Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-16', '3-1'
);
-- QF 4: KOR (Ryu, Jang, Lee) vs USA (Jha, Kumar, *Tsuboi*) -> KOR Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-16', '3-2'
);

-- SF 1: CHN (Gana QF1) vs JPN (Gana QF2) -> CHN Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2004-08-17', '3-1'
);
-- SF 2: COR (Gana QF3) vs KOR (Gana QF4) -> COR Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2004-08-17', '3-2'
);

-- Bronce: JPN (Pierde SF1) vs KOR (Pierde SF2) -> KOR Gana (2-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2004-08-18', '2-3'
);
-- Final: CHN (Gana SF1) vs COR (Gana SF2) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2004-08-18', '3-0'
);


---
--- 9. d_match_participation (48 filas lógicas, 6 por tx_match)
---
-- ID Evento Equipo Masc = 4
-- Cláusula de seguridad: P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)

-- QF 1: CHN (Gana) vs BRA (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Hugo' AND J.last_name='Calderano';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Gustavo' AND J.last_name='Tsuboi';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Vitor' AND J.last_name='Ishiy';

-- QF 2: JPN (Gana) vs FRA (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Masataka' AND J.last_name='Morizono';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Simon' AND J.last_name='Gauzy';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Emmanuel' AND J.last_name='Lebesson';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Can' AND J.last_name='Akkuzu';

-- QF 3: COR (Gana) vs SWE (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Patrick' AND J.last_name='Franziska';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Mattias' AND J.last_name='Falck';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Kristian' AND J.last_name='Karlsson';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Anton' AND J.last_name='Kallberg';

-- QF 4: KOR (Gana) vs USA (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Lee' AND J.last_name='Sang-su';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Kanak' AND J.last_name='Jha';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Nikhil' AND J.last_name='Kumar';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Gustavo' AND J.last_name='Tsuboi'; -- Usando a Tsuboi como 3er jugador de USA (para tener 3 jugadores)

-- SF 1: CHN (Gana) vs JPN (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Masataka' AND J.last_name='Morizono';

-- SF 2: COR (Gana) vs KOR (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Patrick' AND J.last_name='Franziska';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Lee' AND J.last_name='Sang-su';

-- Bronce: KOR (Gana) vs JPN (Res: 2-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Lee' AND J.last_name='Sang-su';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Masataka' AND J.last_name='Morizono';

-- Final: CHN (Gana) vs COR (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Ma' AND J.last_name='Long';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Wang' AND J.last_name='Liqin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Patrick' AND J.last_name='Franziska';


---
--- 10. tx_match_referee (8 filas)
---
-- Reutilizamos árbitros 1-8 (IDs válidos)
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 2 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 3 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 4 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 4 AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 5 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 6 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 3 AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 7 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 2 AND P.final_score='2-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 8 FROM tx_match P WHERE P.fk_competition_format = 4 AND P.fk_round_type = 1 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- Final

---
--- 11. tx_medal_ranking (12 filas - 3 por posición)
---
-- Oro: CHN (Wang Hao, Ma Long, Wang Liqin)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Wang' AND J.last_name='Hao';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Ma' AND J.last_name='Long';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Wang' AND J.last_name='Liqin';

-- Plata: COR (Boll, Ovtcharov, Franziska)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Timo' AND J.last_name='Boll';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Dimitrij' AND J.last_name='Ovtcharov';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Patrick' AND J.last_name='Franziska';

-- Bronce: KOR (Ryu, Jang, Lee)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Ryu' AND J.last_name='Seung-min';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Jang' AND J.last_name='Woojin';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Lee' AND J.last_name='Sang-su';

-- 4to Lugar: JPN (Harimoto, Niwa, Morizono)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Tomokazu' AND J.last_name='Harimoto';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Koki' AND J.last_name='Niwa';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Masculino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Masataka' AND J.last_name='Morizono';

-- =================================================================
-- FIN: Equipo Masculino - Atenas 2004
-- =================================================================

-- =================================================================
-- INICIO: Equipo Femenino - Atenas 2004 (8 Partidos)
-- =================================================================
-- Evento ID = 5 (Equipo Femenino)
-- Lógica: 6 tm_playeres por tx_match (3 vs 3).

---
--- 8. tx_match (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: CHN (Zhang, Guo, Li) vs USA (Zhang, WangA, WangC) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-15', '3-0'
);
-- QF 2: JPN (Ito, Ishikawa, Hayata) vs AUT (Polcanova, LiuJia, SoljaA) -> JPN Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-15', '3-1'
);
-- QF 3: COR (Han, Mittelham, SoljaP) vs BRA (Takahashi, Yamada, Kumahara) -> COR Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-16', '3-0'
);
-- QF 4: KOR (Jeon, Shin, Seo) vs FRA (Yuan, Pavade, Zarif) -> KOR Gana (3-2)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '4.Cuartos de Final'),
    '2004-08-16', '3-2'
);

-- SF 1: CHN (Gana QF1) vs COR (Gana QF3) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2004-08-17', '3-0'
);
-- SF 2: JPN (Gana QF2) vs KOR (Gana QF4) -> JPN Gana (3-1)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '3.Semifinales'),
    '2004-08-17', '3-1'
);

-- Bronce: COR (Pierde SF1) vs KOR (Pierde SF2) -> KOR Gana (2-3)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '2.Tercer Puesto'),
    '2004-08-18', '2-3'
);
-- Final: CHN (Gana SF1) vs JPN (Gana SF2) -> CHN Gana (3-0)
INSERT INTO tx_match (fk_olympic_edition, fk_competition_format, fk_round_type, fecha_match_date, final_score)
VALUES (
    (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004),
    (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
    (SELECT pk_round_type FROM de_round_type WHERE round_name = '1.Final'),
    '2004-08-18', '3-0'
);


---
--- 9. d_match_participation (48 filas lógicas, 6 por tx_match)
---
-- ID Evento Equipo Fem = 5
-- Cláusula de seguridad: P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)

-- QF 1: CHN (Gana) vs USA (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Lily' AND J.last_name='Zhang';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Amy' AND J.last_name='Wang';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Crystal' AND J.last_name='Wang';

-- QF 2: JPN (Gana) vs AUT (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Hina' AND J.last_name='Hayata';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Sofia' AND J.last_name='Polcanova';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Liu' AND J.last_name='Jia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Amelie' AND J.last_name='Solja';

-- QF 3: COR (Gana) vs BRA (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Petrissa' AND J.last_name='Solja';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Bruna' AND J.last_name='Takahashi';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Jessica' AND J.last_name='Yamada';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Caroline' AND J.last_name='Kumahara';

-- QF 4: KOR (Gana) vs FRA (Res: 3-2)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Seo' AND J.last_name='Hyo-won';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Jia Nan' AND J.last_name='Yuan';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Prithika' AND J.last_name='Pavade';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Audrey' AND J.last_name='Zarif';

-- SF 1: CHN (Gana) vs COR (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Petrissa' AND J.last_name='Solja';

-- SF 2: JPN (Gana) vs KOR (Res: 3-1)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Hina' AND J.last_name='Hayata';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-1' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Seo' AND J.last_name='Hyo-won';

-- Bronce: KOR (Gana) vs COR (Res: 2-3)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Seo' AND J.last_name='Hyo-won';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Han' AND J.last_name='Ying';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='2-3' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Petrissa' AND J.last_name='Solja';

-- Final: CHN (Gana) vs JPN (Res: 3-0)
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, TRUE, TRUE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Li' AND J.last_name='Xiaoxia';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO d_match_participation (fk_match, fk_player, ind_is_team_one, ind_is_winner)
SELECT P.pk_match, J.pk_player, FALSE, FALSE FROM tx_match P, tm_player J
WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0' AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004)
AND J.first_name='Hina' AND J.last_name='Hayata';


---
--- 10. tx_match_referee (8 filas)
---
-- Reutilizamos IDs 9-15 y 1 (IDs válidos)
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 9 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 10 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 11 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF3
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 12 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 4 AND P.final_score='3-2'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- QF4
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 13 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- SF1
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 14 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 3 AND P.final_score='3-1'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- SF2
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 15 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 2 AND P.final_score='2-3'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- Bronce
INSERT INTO tx_match_referee (fk_match, fk_referee)
SELECT P.pk_match, 1 FROM tx_match P WHERE P.fk_competition_format = 5 AND P.fk_round_type = 1 AND P.final_score='3-0'
AND P.fk_olympic_edition = (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004); -- Final

---
--- 11. tx_medal_ranking (12 filas - 3 por posición)
---
-- Oro: CHN (Zhang, Guo, Li)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Zhang' AND J.last_name='Yining';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Guo' AND J.last_name='Yue';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 1, 15000.00 FROM tm_player J WHERE J.first_name='Li' AND J.last_name='Xiaoxia';

-- Plata: JPN (Ito, Ishikawa, Hayata)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Mima' AND J.last_name='Ito';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Kasumi' AND J.last_name='Ishikawa';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 2, 8000.00 FROM tm_player J WHERE J.first_name='Hina' AND J.last_name='Hayata';

-- Bronce: KOR (Jeon, Shin, Seo)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Jeon' AND J.last_name='Ji-hee';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Shin' AND J.last_name='Yubin';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 3, 4000.00 FROM tm_player J WHERE J.first_name='Seo' AND J.last_name='Hyo-won';

-- 4to Lugar: COR (Han, Mittelham, Solja)
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Han' AND J.last_name='Ying';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Nina' AND J.last_name='Mittelham';
INSERT INTO tx_medal_ranking (fk_olympic_edition, fk_competition_format, fk_player, final_position, imp_prize_usd)
SELECT (SELECT pk_olympic_edition FROM tm_olympic_edition WHERE cod_edition_year = 2004), (SELECT pk_competition_format FROM tm_competition_format WHERE competition_name = 'Equipo Femenino'),
J.pk_player, 4, 1000.00 FROM tm_player J WHERE J.first_name='Petrissa' AND J.last_name='Solja';

-- =================================================================
-- FIN: Equipo Femenino - Atenas 2004
-- =================================================================


-- =================================================================
-- FIN: Atenas 2004
-- =================================================================