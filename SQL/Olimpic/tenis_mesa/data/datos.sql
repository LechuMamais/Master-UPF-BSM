--
-- DATOS MÍNIMOS Y CONSISTENTES (VERSIÓN NORMALIZADA)
--

---
--- 1. olimpiada (4 filas)
---
INSERT INTO olimpiada (anio, ciudad, pais_sede) VALUES
(2004, 'Atenas', 'Grecia'),
(2008, 'Pekín', 'China'),
(2012, 'Londres', 'Reino Unido'),
(2016, 'Río de Janeiro', 'Brasil');

---
--- 2. pais (3 filas)
---
INSERT INTO pais (nombre_pais, codigo_iso) VALUES
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
--- 3. entrenador (2 filas)
---
INSERT INTO entrenador (nombre, apellido) VALUES
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
INSERT INTO arbitro (nombre, apellido) VALUES
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
--- 5. evento (5 filas)
---
INSERT INTO evento (nombre_evento, tipo) VALUES
('Individual Masculino', 'Individual'),
('Individual Femenino', 'Individual'),
('Dobles Mixto', 'Dobles'),
('Equipo Masculino', 'Equipo'),
('Equipo Femenino', 'Equipo');

---
--- 5b. ronda_tipo (NUEVA INSERCIÓN)
---
-- Insertamos los tipos de ronda antes de que 'partido' los necesite.
INSERT INTO ronda_tipo (nombre_ronda) VALUES
('1.Final'),                 -- ID 1
('2.Tercer Puesto'),         -- ID 2
('3.Semifinales'),           -- ID 3
('4.Cuartos de Final');      -- ID 4

---
--- 6. jugador (4 jugadores clave)
---
-- --- China (CHN) ---
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Ma', 'Long', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'CHN';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Fan', 'Zhendong', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'CHN';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Chen', 'Meng', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'CHN';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Sun', 'Yingsha', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'CHN';

-- --- Alemania (GER) ---
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Timo', 'Boll', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'GER';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Dimitrij', 'Ovtcharov', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'GER';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Han', 'Ying', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'GER';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Nina', 'Mittelham', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'GER';

-- --- Japón (JPN) ---
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Tomokazu', 'Harimoto', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'JPN';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Koki', 'Niwa', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'JPN';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Mima', 'Ito', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'JPN';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Kasumi', 'Ishikawa', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'JPN';

-- --- Corea del Sur (KOR) ---
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Jang', 'Woojin', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'KOR';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Lee', 'Sang-su', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'KOR';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Jeon', 'Ji-hee', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'KOR';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Shin', 'Yubin', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'KOR';

-- --- Brasil (BRA) ---
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Hugo', 'Calderano', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'BRA';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Bruna', 'Takahashi', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'BRA';

-- --- Nigeria (NGR) ---
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Quadri', 'Aruna', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'NGR';

-- --- Suecia (SWE) ---
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Mattias', 'Falck', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'SWE';

-- =================================================================
-- INICIO: Expansión de Jugadores (13M, 15F)
-- =================================================================

-- --- 16 Jugadores Masculinos Adicionales ---

-- CHN (Agregamos 2M)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Xu', 'Xin', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'CHN';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Liang', 'Jingkun', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'CHN';
-- GER (Agregamos 2M)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Patrick', 'Franziska', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'GER';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Ruwen', 'Filus', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'GER';
-- JPN (Agregamos 1M)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Masataka', 'Morizono', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'JPN';
-- KOR (Agregamos 2M)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'An', 'Jae-hyun', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'KOR';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Lim', 'Jonghoon', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'KOR';
-- SWE (Agregamos 2M)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Kristian', 'Karlsson', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'SWE';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Anton', 'Kallberg', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'SWE';
-- FRA (Agregamos 3M)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Simon', 'Gauzy', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'FRA';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Emmanuel', 'Lebesson', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'FRA';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Can', 'Akkuzu', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'FRA';
-- USA (Agregamos 2M)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Kanak', 'Jha', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'USA';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Nikhil', 'Kumar', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'USA';
-- BRA (Agregamos 2M)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Gustavo', 'Tsuboi', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'BRA';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Vitor', 'Ishiy', 'Masculino', id_pais FROM pais WHERE codigo_iso = 'BRA';

-- --- 15 + 5 Jugadoras Femeninas Adicionales ---

-- CHN (Agregamos 2F)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Liu', 'Shiwen', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'CHN';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Wang', 'Manyu', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'CHN';
-- GER (Agregamos 2F)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Petrissa', 'Solja', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'GER';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Sabine', 'Winter', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'GER';
-- JPN (Agregamos 2F)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Hina', 'Hayata', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'JPN';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Miyuu', 'Kihara', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'JPN';
-- KOR (Agregamos 2F)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Seo', 'Hyo-won', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'KOR';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Yang', 'Ha-eun', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'KOR';
-- FRA (Agregamos 2F)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Jia Nan', 'Yuan', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'FRA';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Prithika', 'Pavade', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'FRA';
-- USA (Agregamos 2F)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Lily', 'Zhang', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'USA';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Amy', 'Wang', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'USA';
-- AUT (Agregamos 2F)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Sofia', 'Polcanova', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'AUT';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Liu', 'Jia', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'AUT';
-- NGR (Agregamos 1F)
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Dina', 'Meshref', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'NGR';

-- --- Francia (FRA) ---
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Audrey', 'Zarif', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'FRA';

-- --- Estados Unidos (USA) ---
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Crystal', 'Wang', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'USA';

-- --- Austria (AUT) ---
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Amelie', 'Solja', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'AUT';

-- --- Brasil (BRA) ---
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Jessica', 'Yamada', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'BRA';
INSERT INTO jugador (nombre, apellido, genero, id_pais) 
SELECT 'Caroline', 'Kumahara', 'Femenino', id_pais FROM pais WHERE codigo_iso = 'BRA';

-- =================================================================
-- FIN: Expansión de Jugadores
-- =================================================================



---
--- 7. historial_entrenamiento (Ampliamos a los jugadores clave del torneo)
---

-- Ma Long (CHN) -> Liu Guoliang (CHN)
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2010-01-01', NULL 
FROM jugador J, entrenador E 
WHERE J.nombre='Ma' AND J.apellido='Long' AND E.nombre='Liu' AND E.apellido='Guoliang';

-- Fan Zhendong (CHN) -> Wang Hao (CHN)
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2014-05-01', NULL 
FROM jugador J, entrenador E 
WHERE J.nombre='Fan' AND J.apellido='Zhendong' AND E.nombre='Wang' AND E.apellido='Hao';

-- Dimitrij Ovtcharov (GER) -> Jürgen Mayer (GER)
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2008-01-01', NULL 
FROM jugador J, entrenador E 
WHERE J.nombre='Dimitrij' AND J.apellido='Ovtcharov' AND E.nombre='Jürgen' AND E.apellido='Mayer';

-- Jang Woojin (KOR) -> Kim Taek-Soo (KOR)
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2015-03-10', NULL 
FROM jugador J, entrenador E 
WHERE J.nombre='Jang' AND J.apellido='Woojin' AND E.nombre='Kim' AND E.apellido='Taek-Soo';

-- Koki Niwa (JPN) -> Akira Sato (JPN)
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2011-11-01', NULL 
FROM jugador J, entrenador E 
WHERE J.nombre='Koki' AND J.apellido='Niwa' AND E.nombre='Akira' AND E.apellido='Sato';

-- Timo Boll (GER) -> Ross Kopf (GER)
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2002-01-01', '2015-12-31' 
FROM jugador J, entrenador E 
WHERE J.nombre='Timo' AND J.apellido='Boll' AND E.nombre='Ross' AND E.apellido='Kopf';

-- Hugo Calderano (BRA) -> Mario Tome (BRA)
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2013-07-01', NULL 
FROM jugador J, entrenador E 
WHERE J.nombre='Hugo' AND J.apellido='Calderano' AND E.nombre='Mario' AND E.apellido='Tome';

-- Tomokazu Harimoto (JPN) -> Kazuki Tanaka (JPN)
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2017-01-01', NULL 
FROM jugador J, entrenador E 
WHERE J.nombre='Tomokazu' AND J.apellido='Harimoto' AND E.nombre='Kazuki' AND E.apellido='Tanaka';

-- =================================================================
-- INICIO: Historial de Entrenamiento (Jugadoras Femeninas)
-- =================================================================

-- CHN Femenino
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2015-01-01', NULL 
FROM jugador J, entrenador E 
WHERE J.nombre='Chen' AND J.apellido='Meng' AND E.nombre='Li' AND E.apellido='Sun';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2017-01-01', NULL 
FROM jugador J, entrenador E 
WHERE J.nombre='Sun' AND J.apellido='Yingsha' AND E.nombre='Li' AND E.apellido='Sun';

-- GER Femenino
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2010-01-01', NULL 
FROM jugador J, entrenador E 
WHERE J.nombre='Han' AND J.apellido='Ying' AND E.nombre='Jürgen' AND E.apellido='Mayer';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2016-01-01', NULL 
FROM jugador J, entrenador E 
WHERE J.nombre='Nina' AND J.apellido='Mittelham' AND E.nombre='Uli' AND E.apellido='Stumper';

-- JPN Femenino
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2016-01-01', NULL 
FROM jugador J, entrenador E 
WHERE J.nombre='Mima' AND J.apellido='Ito' AND E.nombre='Kazuki' AND E.apellido='Tanaka';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2010-01-01', NULL 
FROM jugador J, entrenador E 
WHERE J.nombre='Kasumi' AND J.apellido='Ishikawa' AND E.nombre='Akira' AND E.apellido='Sato';

-- KOR Femenino
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2014-01-01', NULL 
FROM jugador J, entrenador E 
WHERE J.nombre='Jeon' AND J.apellido='Ji-hee' AND E.nombre='Kim' AND E.apellido='Taek-Soo';

-- BRA Femenino
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2014-01-01', NULL 
FROM jugador J, entrenador E 
WHERE J.nombre='Bruna' AND J.apellido='Takahashi' AND E.nombre='Mario' AND E.apellido='Tome';

-- =================================================================
-- FIN: Historial de Entrenamiento (Jugadoras Femeninas)
-- =================================================================


-- =================================================================
-- INICIO: Historial de Entrenamiento (28 Jugadores Adicionales)
-- =================================================================

-- --- 13 + 3 Jugadores Masculinos ---
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2013-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Xu' AND J.apellido='Xin' AND E.nombre='Liu' AND E.apellido='Guoliang';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2016-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Liang' AND J.apellido='Jingkun' AND E.nombre='Wang' AND E.apellido='Hao';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2014-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Patrick' AND J.apellido='Franziska' AND E.nombre='Jürgen' AND E.apellido='Mayer';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2012-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Ruwen' AND J.apellido='Filus' AND E.nombre='Ross' AND E.apellido='Kopf';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2015-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Masataka' AND J.apellido='Morizono' AND E.nombre='Akira' AND E.apellido='Sato';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2017-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='An' AND J.apellido='Jae-hyun' AND E.nombre='Kim' AND E.apellido='Taek-Soo';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2016-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Lim' AND J.apellido='Jonghoon' AND E.nombre='Kim' AND E.apellido='Taek-Soo';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2013-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Kristian' AND J.apellido='Karlsson' AND E.nombre='Jorg' AND E.apellido='Persson';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2014-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Anton' AND J.apellido='Kallberg' AND E.nombre='Jorg' AND E.apellido='Persson';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2015-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Simon' AND J.apellido='Gauzy' AND E.nombre='Pascal' AND E.apellido='Dubois';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2010-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Emmanuel' AND J.apellido='Lebesson' AND E.nombre='Pascal' AND E.apellido='Dubois';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2016-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Kanak' AND J.apellido='Jha' AND E.nombre='Chen' AND E.apellido='Wei';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2017-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Nikhil' AND J.apellido='Kumar' AND E.nombre='Chen' AND E.apellido='Wei';

INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2015-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Can' AND J.apellido='Akkuzu' AND E.nombre='Pascal' AND E.apellido='Dubois';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2008-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Gustavo' AND J.apellido='Tsuboi' AND E.nombre='Mario' AND E.apellido='Tome';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2016-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Vitor' AND J.apellido='Ishiy' AND E.nombre='Mario' AND E.apellido='Tome';


-- --- 15 Jugadoras Femeninas ---
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2011-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Liu' AND J.apellido='Shiwen' AND E.nombre='Li' AND E.apellido='Sun';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2016-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Wang' AND J.apellido='Manyu' AND E.nombre='Li' AND E.apellido='Sun';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2012-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Petrissa' AND J.apellido='Solja' AND E.nombre='Uli' AND E.apellido='Stumper';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2013-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Sabine' AND J.apellido='Winter' AND E.nombre='Uli' AND E.apellido='Stumper';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2017-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Hina' AND J.apellido='Hayata' AND E.nombre='Kazuki' AND E.apellido='Tanaka';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2018-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Miyuu' AND J.apellido='Kihara' AND E.nombre='Akira' AND E.apellido='Sato';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2011-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Seo' AND J.apellido='Hyo-won' AND E.nombre='Kim' AND E.apellido='Taek-Soo';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2012-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Yang' AND J.apellido='Ha-eun' AND E.nombre='Kim' AND E.apellido='Taek-Soo';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2015-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Jia Nan' AND J.apellido='Yuan' AND E.nombre='Pascal' AND E.apellido='Dubois';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2019-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Prithika' AND J.apellido='Pavade' AND E.nombre='Pascal' AND E.apellido='Dubois';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2014-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Lily' AND J.apellido='Zhang' AND E.nombre='Chen' AND E.apellido='Wei';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2018-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Amy' AND J.apellido='Wang' AND E.nombre='Chen' AND E.apellido='Wei';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2012-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Sofia' AND J.apellido='Polcanova' AND E.nombre='Jürgen' AND E.apellido='Mayer';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2008-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Liu' AND J.apellido='Jia' AND E.nombre='Jürgen' AND E.apellido='Mayer';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2011-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Dina' AND J.apellido='Meshref' AND E.nombre='Babatunde' AND E.apellido='Obisanya';

INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2016-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Audrey' AND J.apellido='Zarif' AND E.nombre='Pascal' AND E.apellido='Dubois';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2017-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Crystal' AND J.apellido='Wang' AND E.nombre='Chen' AND E.apellido='Wei';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2014-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Amelie' AND J.apellido='Solja' AND E.nombre='Jürgen' AND E.apellido='Mayer';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2012-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Jessica' AND J.apellido='Yamada' AND E.nombre='Mario' AND E.apellido='Tome';
INSERT INTO historial_entrenamiento (id_jugador, id_entrenador, fecha_inicio, fecha_fin)
SELECT J.id_jugador, E.id_entrenador, '2011-01-01', NULL FROM jugador J, entrenador E WHERE J.nombre='Caroline' AND J.apellido='Kumahara' AND E.nombre='Mario' AND E.apellido='Tome';

-- =================================================================
-- FIN: Historial de Entrenamiento (28 Jugadores Adicionales)
-- =================================================================




-- =================================================================
-- INICIO: Individual Masculino - Río 2016 (8 Partidos)
-- =================================================================

---
--- 8. partido (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- Usamos subqueries para las FKs (Olimpiada 4, Evento 1)
-- QF = 4.Cuartos de Final (ID 4), SF = 3.Semifinales (ID 3), Bronce = 2.Tercer Puesto (ID 2), Final = Final (ID 1)

-- QF 1: Ma Long (CHN) vs Koki Niwa (JPN) -> Ma Long Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-10', '4-1'
);
-- QF 2: Timo Boll (GER) vs Jang Woojin (KOR) -> Jang Woojin Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-10', '3-4'
);
-- QF 3: Dimitrij Ovtcharov (GER) vs Hugo Calderano (BRA) -> Ovtcharov Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-11', '4-2'
);
-- QF 4: Fan Zhendong (CHN) vs Tomokazu Harimoto (JPN) -> Fan Zhendong Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-11', '4-0'
);

-- SF 1: Ma Long (Gana QF1) vs Jang Woojin (Gana QF2) -> Ma Long Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '3.Semifinales'), 
    '2016-08-13', '4-1'
);
-- SF 2: Dimitrij Ovtcharov (Gana QF3) vs Fan Zhendong (Gana QF4) -> Fan Zhendong Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '3.Semifinales'), 
    '2016-08-13', '2-4'
);

-- Bronce: Jang Woojin (Pierde SF1) vs Dimitrij Ovtcharov (Pierde SF2) -> Ovtcharov Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '2.Tercer Puesto'), 
    '2016-08-15', '2-4'
);
-- Final: Ma Long (Gana SF1) vs Fan Zhendong (Gana SF2) -> Ma Long Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '1.Final'), 
    '2016-08-15', '4-0'
);

---
--- 9. participacion_partido (16 filas lógicas)
---
-- Usamos WHERE con (ronda, resultado_final) para identificar unívocamente cada partido.

-- QF 1: Ma Long (Gana) vs Koki Niwa (Res: 4-1)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_ronda = 4 AND P.resultado_final='4-1' AND J.nombre='Ma' AND J.apellido='Long';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_ronda = 4 AND P.resultado_final='4-1' AND J.nombre='Koki' AND J.apellido='Niwa';

-- QF 2: Jang Woojin (Gana) vs Timo Boll (Res: 3-4)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_ronda = 4 AND P.resultado_final='3-4' AND J.nombre='Jang' AND J.apellido='Woojin';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_ronda = 4 AND P.resultado_final='3-4' AND J.nombre='Timo' AND J.apellido='Boll';

-- QF 3: Ovtcharov (Gana) vs Hugo Calderano (Res: 4-2)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_ronda = 4 AND P.resultado_final='4-2' AND J.nombre='Dimitrij' AND J.apellido='Ovtcharov';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_ronda = 4 AND P.resultado_final='4-2' AND J.nombre='Hugo' AND J.apellido='Calderano';

-- QF 4: Fan Zhendong (Gana) vs Harimoto (Res: 4-0)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_ronda = 4 AND P.resultado_final='4-0' AND J.nombre='Fan' AND J.apellido='Zhendong';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_ronda = 4 AND P.resultado_final='4-0' AND J.nombre='Tomokazu' AND J.apellido='Harimoto';

-- SF 1: Ma Long (Gana) vs Jang Woojin (Res: 4-1)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_ronda = 3 AND P.resultado_final='4-1' AND J.nombre='Ma' AND J.apellido='Long';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_ronda = 3 AND P.resultado_final='4-1' AND J.nombre='Jang' AND J.apellido='Woojin';

-- SF 2: Fan Zhendong (Gana) vs Ovtcharov (Res: 2-4)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_ronda = 3 AND P.resultado_final='2-4' AND J.nombre='Fan' AND J.apellido='Zhendong';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_ronda = 3 AND P.resultado_final='2-4' AND J.nombre='Dimitrij' AND J.apellido='Ovtcharov';

-- Bronce: Ovtcharov (Gana) vs Jang Woojin (Res: 2-4)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_ronda = 2 AND P.resultado_final='2-4' AND J.nombre='Dimitrij' AND J.apellido='Ovtcharov';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_ronda = 2 AND P.resultado_final='2-4' AND J.nombre='Jang' AND J.apellido='Woojin';

-- Final: Ma Long (Gana) vs Fan Zhendong (Res: 4-0)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_ronda = 1 AND P.resultado_final='4-0' AND J.nombre='Ma' AND J.apellido='Long';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_ronda = 1 AND P.resultado_final='4-0' AND J.nombre='Fan' AND J.apellido='Zhendong';

---
--- 10. arbitraje (8 filas)
---
-- Asignamos 8 árbitros (IDs 1-8) a los 8 partidos.
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 1 FROM partido P WHERE P.id_ronda = 4 AND P.resultado_final='4-1'; -- QF1
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 2 FROM partido P WHERE P.id_ronda = 4 AND P.resultado_final='3-4'; -- QF2
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 3 FROM partido P WHERE P.id_ronda = 4 AND P.resultado_final='4-2'; -- QF3
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 4 FROM partido P WHERE P.id_ronda = 4 AND P.resultado_final='4-0'; -- QF4
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 5 FROM partido P WHERE P.id_ronda = 3 AND P.resultado_final='4-1'; -- SF1
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 6 FROM partido P WHERE P.id_ronda = 3 AND P.resultado_final='2-4'; -- SF2
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 7 FROM partido P WHERE P.id_ronda = 2 AND P.resultado_final='2-4'; -- Bronce
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 8 FROM partido P WHERE P.id_ronda = 1 AND P.resultado_final='4-0'; -- Final

---
--- 11. clasificacion_premio (4 filas)
---
-- Asignamos las 4 posiciones finales basadas en los resultados.
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT 
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Masculino'), 
    J.id_jugador, 1, 50000.00 FROM jugador J WHERE J.nombre='Ma' AND J.apellido='Long';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT 
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Masculino'), 
    J.id_jugador, 2, 30000.00 FROM jugador J WHERE J.nombre='Fan' AND J.apellido='Zhendong';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT 
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Masculino'), 
    J.id_jugador, 3, 15000.00 FROM jugador J WHERE J.nombre='Dimitrij' AND J.apellido='Ovtcharov';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT 
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Masculino'), 
    J.id_jugador, 4, 5000.00 FROM jugador J WHERE J.nombre='Jang' AND J.apellido='Woojin';

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
--- 8. partido (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: Chen Meng (CHN) vs Nina Mittelham (GER) -> Chen Meng Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-10', '4-0'
);
-- QF 2: Mima Ito (JPN) vs Jeon Ji-hee (KOR) -> Mima Ito Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-10', '4-2'
);
-- QF 3: Sun Yingsha (CHN) vs Shin Yubin (KOR) -> Sun Yingsha Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-11', '4-1'
);
-- QF 4: Han Ying (GER) vs Kasumi Ishikawa (JPN) -> Han Ying Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-11', '4-3'
);

-- SF 1: Chen Meng (Gana QF1) vs Mima Ito (Gana QF2) -> Chen Meng Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '3.Semifinales'), 
    '2016-08-13', '4-2'
);
-- SF 2: Sun Yingsha (Gana QF3) vs Han Ying (Gana QF4) -> Sun Yingsha Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '3.Semifinales'), 
    '2016-08-13', '4-1'
);

-- Bronce: Mima Ito (Pierde SF1) vs Han Ying (Pierde SF2) -> Mima Ito Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '2.Tercer Puesto'), 
    '2016-08-15', '4-1'
);
-- Final: Chen Meng (Gana SF1) vs Sun Yingsha (Gana SF2) -> Chen Meng Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '1.Final'), 
    '2016-08-15', '4-3'
);


---
--- 9. participacion_partido (16 filas lógicas)
---
-- ID Evento Femenino = 2
-- ID Ronda Cuartos = 4, Semifinal = 3, Bronce = 2, Final = 1

-- QF 1: Chen Meng (Gana) vs Nina Mittelham (Res: 4-0)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 4 AND P.resultado_final='4-0' AND J.nombre='Chen' AND J.apellido='Meng';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 4 AND P.resultado_final='4-0' AND J.nombre='Nina' AND J.apellido='Mittelham';

-- QF 2: Mima Ito (Gana) vs Jeon Ji-hee (Res: 4-2)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 4 AND P.resultado_final='4-2' AND J.nombre='Mima' AND J.apellido='Ito';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 4 AND P.resultado_final='4-2' AND J.nombre='Jeon' AND J.apellido='Ji-hee';

-- QF 3: Sun Yingsha (Gana) vs Shin Yubin (Res: 4-1)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 4 AND P.resultado_final='4-1' AND J.nombre='Sun' AND J.apellido='Yingsha';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 4 AND P.resultado_final='4-1' AND J.nombre='Shin' AND J.apellido='Yubin';

-- QF 4: Han Ying (Gana) vs Kasumi Ishikawa (Res: 4-3)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 4 AND P.resultado_final='4-3' AND J.nombre='Han' AND J.apellido='Ying';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 4 AND P.resultado_final='4-3' AND J.nombre='Kasumi' AND J.apellido='Ishikawa';

-- SF 1: Chen Meng (Gana) vs Mima Ito (Res: 4-2)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 3 AND P.resultado_final='4-2' AND J.nombre='Chen' AND J.apellido='Meng';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 3 AND P.resultado_final='4-2' AND J.nombre='Mima' AND J.apellido='Ito';

-- SF 2: Sun Yingsha (Gana) vs Han Ying (Res: 4-1)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 3 AND P.resultado_final='4-1' AND J.nombre='Sun' AND J.apellido='Yingsha';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 3 AND P.resultado_final='4-1' AND J.nombre='Han' AND J.apellido='Ying';

-- Bronce: Mima Ito (Gana) vs Han Ying (Res: 4-1)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 2 AND P.resultado_final='4-1' AND J.nombre='Mima' AND J.apellido='Ito';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 2 AND P.resultado_final='4-1' AND J.nombre='Han' AND J.apellido='Ying';

-- Final: Chen Meng (Gana) vs Sun Yingsha (Res: 4-3)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 1 AND P.resultado_final='4-3' AND J.nombre='Chen' AND J.apellido='Meng';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J 
WHERE P.id_evento = 2 AND P.id_ronda = 1 AND P.resultado_final='4-3' AND J.nombre='Sun' AND J.apellido='Yingsha';


---
--- 10. arbitraje (8 filas)
---
-- Asignamos 8 árbitros (IDs 9-15 y 1) a los 8 partidos.
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 9 FROM partido P WHERE P.id_evento = 2 AND P.id_ronda = 4 AND P.resultado_final='4-0'; -- QF1
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 10 FROM partido P WHERE P.id_evento = 2 AND P.id_ronda = 4 AND P.resultado_final='4-2'; -- QF2
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 11 FROM partido P WHERE P.id_evento = 2 AND P.id_ronda = 4 AND P.resultado_final='4-1'; -- QF3
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 12 FROM partido P WHERE P.id_evento = 2 AND P.id_ronda = 4 AND P.resultado_final='4-3'; -- QF4
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 13 FROM partido P WHERE P.id_evento = 2 AND P.id_ronda = 3 AND P.resultado_final='4-2'; -- SF1
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 14 FROM partido P WHERE P.id_evento = 2 AND P.id_ronda = 3 AND P.resultado_final='4-1'; -- SF2
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 15 FROM partido P WHERE P.id_evento = 2 AND P.id_ronda = 2 AND P.resultado_final='4-1'; -- Bronce
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 1 FROM partido P WHERE P.id_evento = 2 AND P.id_ronda = 1 AND P.resultado_final='4-3'; -- Final

---
--- 11. clasificacion_premio (4 filas)
---
-- Asignamos las 4 posiciones finales basadas en los resultados.
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT 
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Femenino'), 
    J.id_jugador, 1, 50000.00 FROM jugador J WHERE J.nombre='Chen' AND J.apellido='Meng';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT 
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Femenino'), 
    J.id_jugador, 2, 30000.00 FROM jugador J WHERE J.nombre='Sun' AND J.apellido='Yingsha';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT 
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Femenino'), 
    J.id_jugador, 3, 15000.00 FROM jugador J WHERE J.nombre='Mima' AND J.apellido='Ito';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT 
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Individual Femenino'), 
    J.id_jugador, 4, 5000.00 FROM jugador J WHERE J.nombre='Han' AND J.apellido='Ying';

-- =================================================================
-- FIN: Individual Femenino - Río 2016
-- =================================================================


-- =================================================================
-- INICIO: Dobles Mixto - Río 2016 (8 Partidos)
-- =================================================================
-- Evento ID = 3 (Dobles Mixto)
-- Lógica: 4 jugadores por partido (2 vs 2).
-- Parejas: CHN1 (Ma/Chen), JPN1 (Harimoto/Ito), GER1 (Boll/Han), KOR1 (Jang/Jeon)
-- CHN2 (Fan/Sun), GER2 (Ovtcharov/Mittelham), JPN2 (Niwa/Ishikawa), BRA1 (Calderano/Takahashi)

---
--- 8. partido (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: CHN1 (Ma/Chen) vs JPN2 (Niwa/Ishikawa) -> CHN1 Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-12', '3-1'
);
-- QF 2: GER1 (Boll/Han) vs BRA1 (Calderano/Takahashi) -> BRA1 Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-12', '2-3'
);
-- QF 3: KOR1 (Jang/Jeon) vs GER2 (Ovtcharov/Mittelham) -> GER2 Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-12', '1-3'
);
-- QF 4: JPN1 (Harimoto/Ito) vs CHN2 (Fan/Sun) -> JPN1 Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-12', '3-0'
);

-- SF 1: CHN1 (Gana QF1) vs BRA1 (Gana QF2) -> CHN1 Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '3.Semifinales'), 
    '2016-08-14', '3-0'
);
-- SF 2: GER2 (Gana QF3) vs JPN1 (Gana QF4) -> JPN1 Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '3.Semifinales'), 
    '2016-08-14', '1-3'
);

-- Bronce: BRA1 (Pierde SF1) vs GER2 (Pierde SF2) -> GER2 Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '2.Tercer Puesto'), 
    '2016-08-16', '1-3'
);
-- Final: CHN1 (Gana SF1) vs JPN1 (Gana SF2) -> JPN1 Gana (Oro)
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '1.Final'), 
    '2016-08-16', '2-3'
);

---
--- 9. participacion_partido (32 filas lógicas, 4 por partido)
---
-- ID Evento Mixto = 3
-- ID Ronda Cuartos = 4, Semifinal = 3, Bronce = 2, Final = 1

-- QF 1: CHN1 (Gana) vs JPN2 (Res: 3-1)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Ma' AND J.apellido='Long';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Chen' AND J.apellido='Meng';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Koki' AND J.apellido='Niwa';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Kasumi' AND J.apellido='Ishikawa';

-- QF 2: BRA1 (Gana) vs GER1 (Res: 2-3)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='2-3' AND J.nombre='Hugo' AND J.apellido='Calderano';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='2-3' AND J.nombre='Bruna' AND J.apellido='Takahashi';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='2-3' AND J.nombre='Timo' AND J.apellido='Boll';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='2-3' AND J.nombre='Han' AND J.apellido='Ying';

-- QF 3: GER2 (Gana) vs KOR1 (Res: 1-3)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='1-3' AND J.nombre='Dimitrij' AND J.apellido='Ovtcharov';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='1-3' AND J.nombre='Nina' AND J.apellido='Mittelham';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='1-3' AND J.nombre='Jang' AND J.apellido='Woojin';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='1-3' AND J.nombre='Jeon' AND J.apellido='Ji-hee';

-- QF 4: JPN1 (Gana) vs CHN2 (Res: 3-0)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Tomokazu' AND J.apellido='Harimoto';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Mima' AND J.apellido='Ito';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Fan' AND J.apellido='Zhendong';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Sun' AND J.apellido='Yingsha';

-- SF 1: CHN1 (Gana) vs BRA1 (Res: 3-0)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 3 AND P.resultado_final='3-0' AND J.nombre='Ma' AND J.apellido='Long';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 3 AND P.resultado_final='3-0' AND J.nombre='Chen' AND J.apellido='Meng';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 3 AND P.resultado_final='3-0' AND J.nombre='Hugo' AND J.apellido='Calderano';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 3 AND P.resultado_final='3-0' AND J.nombre='Bruna' AND J.apellido='Takahashi';

-- SF 2: JPN1 (Gana) vs GER2 (Res: 1-3)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 3 AND P.resultado_final='1-3' AND J.nombre='Tomokazu' AND J.apellido='Harimoto';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 3 AND P.resultado_final='1-3' AND J.nombre='Mima' AND J.apellido='Ito';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 3 AND P.resultado_final='1-3' AND J.nombre='Dimitrij' AND J.apellido='Ovtcharov';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 3 AND P.resultado_final='1-3' AND J.nombre='Nina' AND J.apellido='Mittelham';

-- Bronce: GER2 (Gana) vs BRA1 (Res: 1-3)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 2 AND P.resultado_final='1-3' AND J.nombre='Dimitrij' AND J.apellido='Ovtcharov';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 2 AND P.resultado_final='1-3' AND J.nombre='Nina' AND J.apellido='Mittelham';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 2 AND P.resultado_final='1-3' AND J.nombre='Hugo' AND J.apellido='Calderano';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 2 AND P.resultado_final='1-3' AND J.nombre='Bruna' AND J.apellido='Takahashi';

-- Final: JPN1 (Gana) vs CHN1 (Res: 2-3)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 1 AND P.resultado_final='2-3' AND J.nombre='Tomokazu' AND J.apellido='Harimoto';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 1 AND P.resultado_final='2-3' AND J.nombre='Mima' AND J.apellido='Ito';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 1 AND P.resultado_final='2-3' AND J.nombre='Ma' AND J.apellido='Long';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 3 AND P.id_ronda = 1 AND P.resultado_final='2-3' AND J.nombre='Chen' AND J.apellido='Meng';


---
--- 10. arbitraje (8 filas)
---
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 1 FROM partido P WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='3-1'; -- QF1
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 2 FROM partido P WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='2-3'; -- QF2
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 3 FROM partido P WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='1-3'; -- QF3
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 4 FROM partido P WHERE P.id_evento = 3 AND P.id_ronda = 4 AND P.resultado_final='3-0'; -- QF4
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 5 FROM partido P WHERE P.id_evento = 3 AND P.id_ronda = 3 AND P.resultado_final='3-0'; -- SF1
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 6 FROM partido P WHERE P.id_evento = 3 AND P.id_ronda = 3 AND P.resultado_final='1-3'; -- SF2
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 7 FROM partido P WHERE P.id_evento = 3 AND P.id_ronda = 2 AND P.resultado_final='1-3'; -- Bronce
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 8 FROM partido P WHERE P.id_evento = 3 AND P.id_ronda = 1 AND P.resultado_final='2-3'; -- Final

---
--- 11. clasificacion_premio (8 filas - 2 por posición)
---
-- Oro: JPN1 (Harimoto/Ito)
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
J.id_jugador, 1, 25000.00 FROM jugador J WHERE J.nombre='Tomokazu' AND J.apellido='Harimoto';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
J.id_jugador, 1, 25000.00 FROM jugador J WHERE J.nombre='Mima' AND J.apellido='Ito';

-- Plata: CHN1 (Ma Long/Chen Meng)
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
J.id_jugador, 2, 15000.00 FROM jugador J WHERE J.nombre='Ma' AND J.apellido='Long';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
J.id_jugador, 2, 15000.00 FROM jugador J WHERE J.nombre='Chen' AND J.apellido='Meng';

-- Bronce: GER2 (Ovtcharov/Mittelham)
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
J.id_jugador, 3, 7500.00 FROM jugador J WHERE J.nombre='Dimitrij' AND J.apellido='Ovtcharov';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
J.id_jugador, 3, 7500.00 FROM jugador J WHERE J.nombre='Nina' AND J.apellido='Mittelham';

-- 4to Lugar: BRA1 (Calderano/Takahashi)
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
J.id_jugador, 4, 2500.00 FROM jugador J WHERE J.nombre='Hugo' AND J.apellido='Calderano';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Dobles Mixto'), 
J.id_jugador, 4, 2500.00 FROM jugador J WHERE J.nombre='Bruna' AND J.apellido='Takahashi';

-- =================================================================
-- FIN: Dobles Mixto - Río 2016
-- =================================================================

-- =================================================================
-- INICIO: Equipo Masculino - Río 2016 (8 Partidos)
-- =================================================================
-- Evento ID = 4 (Equipo Masculino)
-- Lógica: 6 jugadores por partido (3 vs 3).
-- Equipos: CHN, GER, JPN, KOR, SWE, FRA, USA, BRA

---
--- 8. partido (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: CHN vs BRA -> CHN Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-13', '3-0'
);
-- QF 2: JPN vs USA -> JPN Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-13', '3-1'
);
-- QF 3: GER vs FRA -> GER Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-14', '3-1'
);
-- QF 4: KOR vs SWE -> KOR Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-14', '3-2'
);

-- SF 1: CHN (Gana QF1) vs JPN (Gana QF2) -> CHN Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '3.Semifinales'), 
    '2016-08-16', '3-1'
);
-- SF 2: GER (Gana QF3) vs KOR (Gana QF4) -> GER Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '3.Semifinales'), 
    '2016-08-16', '3-2'
);

-- Bronce: JPN (Pierde SF1) vs KOR (Pierde SF2) -> JPN Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '2.Tercer Puesto'), 
    '2016-08-18', '3-1'
);
-- Final: CHN (Gana SF1) vs GER (Gana SF2) -> CHN Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '1.Final'), 
    '2016-08-18', '3-1'
);


---
--- 9. participacion_partido (48 filas lógicas, 6 por partido)
---
-- ID Evento Equipo Masc = 4
-- ID Ronda Cuartos = 4, Semifinal = 3, Bronce = 2, Final = 1

-- QF 1: CHN (Gana) vs BRA (Res: 3-0)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Ma' AND J.apellido='Long';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Fan' AND J.apellido='Zhendong';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Xu' AND J.apellido='Xin';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Hugo' AND J.apellido='Calderano';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Gustavo' AND J.apellido='Tsuboi';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Vitor' AND J.apellido='Ishiy';

-- QF 2: JPN (Gana) vs USA (Res: 3-1)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Tomokazu' AND J.apellido='Harimoto';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Koki' AND J.apellido='Niwa';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Masataka' AND J.apellido='Morizono';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Kanak' AND J.apellido='Jha';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Nikhil' AND J.apellido='Kumar';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Kai' AND J.apellido='Zhang';

-- QF 3: GER (Gana) vs FRA (Res: 3-1)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Timo' AND J.apellido='Boll';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Dimitrij' AND J.apellido='Ovtcharov';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Patrick' AND J.apellido='Franziska';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Simon' AND J.apellido='Gauzy';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Emmanuel' AND J.apellido='Lebesson';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Can' AND J.apellido='Akkuzu';

-- QF 4: KOR (Gana) vs SWE (Res: 3-2)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-2' AND J.nombre='Jang' AND J.apellido='Woojin';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-2' AND J.nombre='Lee' AND J.apellido='Sang-su';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-2' AND J.nombre='An' AND J.apellido='Jae-hyun';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-2' AND J.nombre='Mattias' AND J.apellido='Falck';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-2' AND J.nombre='Kristian' AND J.apellido='Karlsson';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-2' AND J.nombre='Anton' AND J.apellido='Kallberg';

-- SF 1: CHN (Gana) vs JPN (Res: 3-1)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 3 AND P.resultado_final='3-1' AND J.nombre='Ma' AND J.apellido='Long';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 3 AND P.resultado_final='3-1' AND J.nombre='Fan' AND J.apellido='Zhendong';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 3 AND P.resultado_final='3-1' AND J.nombre='Xu' AND J.apellido='Xin';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 3 AND P.resultado_final='3-1' AND J.nombre='Tomokazu' AND J.apellido='Harimoto';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 3 AND P.resultado_final='3-1' AND J.nombre='Koki' AND J.apellido='Niwa';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 3 AND P.resultado_final='3-1' AND J.nombre='Masataka' AND J.apellido='Morizono';

-- SF 2: GER (Gana) vs KOR (Res: 3-2)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 3 AND P.resultado_final='3-2' AND J.nombre='Timo' AND J.apellido='Boll';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 3 AND P.resultado_final='3-2' AND J.nombre='Dimitrij' AND J.apellido='Ovtcharov';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 3 AND P.resultado_final='3-2' AND J.nombre='Patrick' AND J.apellido='Franziska';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 3 AND P.resultado_final='3-2' AND J.nombre='Jang' AND J.apellido='Woojin';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 3 AND P.resultado_final='3-2' AND J.nombre='Lee' AND J.apellido='Sang-su';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 3 AND P.resultado_final='3-2' AND J.nombre='An' AND J.apellido='Jae-hyun';

-- Bronce: JPN (Gana) vs KOR (Res: 3-1)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 2 AND P.resultado_final='3-1' AND J.nombre='Tomokazu' AND J.apellido='Harimoto';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 2 AND P.resultado_final='3-1' AND J.nombre='Koki' AND J.apellido='Niwa';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 2 AND P.resultado_final='3-1' AND J.nombre='Masataka' AND J.apellido='Morizono';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 2 AND P.resultado_final='3-1' AND J.nombre='Jang' AND J.apellido='Woojin';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 2 AND P.resultado_final='3-1' AND J.nombre='Lee' AND J.apellido='Sang-su';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 2 AND P.resultado_final='3-1' AND J.nombre='An' AND J.apellido='Jae-hyun';

-- Final: CHN (Gana) vs GER (Res: 3-1)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 1 AND P.resultado_final='3-1' AND J.nombre='Ma' AND J.apellido='Long';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 1 AND P.resultado_final='3-1' AND J.nombre='Fan' AND J.apellido='Zhendong';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 1 AND P.resultado_final='3-1' AND J.nombre='Xu' AND J.apellido='Xin';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 1 AND P.resultado_final='3-1' AND J.nombre='Timo' AND J.apellido='Boll';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 1 AND P.resultado_final='3-1' AND J.nombre='Dimitrij' AND J.apellido='Ovtcharov';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 4 AND P.id_ronda = 1 AND P.resultado_final='3-1' AND J.nombre='Patrick' AND J.apellido='Franziska';


---
--- 10. arbitraje (8 filas)
---
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 1 FROM partido P WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-0'; -- QF1
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 2 FROM partido P WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-1'; -- QF2
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 3 FROM partido P WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-1'; -- QF3 (Mismo resultado que QF2, pero distinto ID_partido)
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 4 FROM partido P WHERE P.id_evento = 4 AND P.id_ronda = 4 AND P.resultado_final='3-2'; -- QF4
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 5 FROM partido P WHERE P.id_evento = 4 AND P.id_ronda = 3 AND P.resultado_final='3-1'; -- SF1
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 6 FROM partido P WHERE P.id_evento = 4 AND P.id_ronda = 3 AND P.resultado_final='3-2'; -- SF2
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 7 FROM partido P WHERE P.id_evento = 4 AND P.id_ronda = 2 AND P.resultado_final='3-1'; -- Bronce
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 8 FROM partido P WHERE P.id_evento = 4 AND P.id_ronda = 1 AND P.resultado_final='3-1'; -- Final

---
--- 11. clasificacion_premio (12 filas - 3 por posición)
---
-- Oro: CHN
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
J.id_jugador, 1, 15000.00 FROM jugador J WHERE J.nombre='Ma' AND J.apellido='Long';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
J.id_jugador, 1, 15000.00 FROM jugador J WHERE J.nombre='Fan' AND J.apellido='Zhendong';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
J.id_jugador, 1, 15000.00 FROM jugador J WHERE J.nombre='Xu' AND J.apellido='Xin';

-- Plata: GER
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
J.id_jugador, 2, 8000.00 FROM jugador J WHERE J.nombre='Timo' AND J.apellido='Boll';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
J.id_jugador, 2, 8000.00 FROM jugador J WHERE J.nombre='Dimitrij' AND J.apellido='Ovtcharov';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
J.id_jugador, 2, 8000.00 FROM jugador J WHERE J.nombre='Patrick' AND J.apellido='Franziska';

-- Bronce: JPN
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
J.id_jugador, 3, 4000.00 FROM jugador J WHERE J.nombre='Tomokazu' AND J.apellido='Harimoto';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
J.id_jugador, 3, 4000.00 FROM jugador J WHERE J.nombre='Koki' AND J.apellido='Niwa';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
J.id_jugador, 3, 4000.00 FROM jugador J WHERE J.nombre='Masataka' AND J.apellido='Morizono';

-- 4to Lugar: KOR
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
J.id_jugador, 4, 1000.00 FROM jugador J WHERE J.nombre='Jang' AND J.apellido='Woojin';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
J.id_jugador, 4, 1000.00 FROM jugador J WHERE J.nombre='Lee' AND J.apellido='Sang-su';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Masculino'), 
J.id_jugador, 4, 1000.00 FROM jugador J WHERE J.nombre='An' AND J.apellido='Jae-hyun';

-- =================================================================
-- FIN: Equipo Masculino - Río 2016
-- =================================================================


-- =================================================================
-- INICIO: Equipo Femenino - Río 2016 (8 Partidos)
-- =================================================================
-- Evento ID = 5 (Equipo Femenino)
-- Lógica: 6 jugadoras por partido (3 vs 3).
-- Equipos: CHN, GER, JPN, KOR, FRA, USA, AUT, BRA

---
--- 8. partido (8 Partidos: 4 QF, 2 SF, 1 Bronce, 1 Final)
---
-- QF 1: CHN vs USA -> CHN Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-13', '3-0'
);
-- QF 2: JPN vs AUT -> JPN Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-13', '3-1'
);
-- QF 3: GER vs BRA -> GER Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-14', '3-0'
);
-- QF 4: KOR vs FRA -> KOR Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '4.Cuartos de Final'), 
    '2016-08-14', '3-2'
);

-- SF 1: CHN (Gana QF1) vs JPN (Gana QF2) -> CHN Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '3.Semifinales'), 
    '2016-08-16', '3-0'
);
-- SF 2: GER (Gana QF3) vs KOR (Gana QF4) -> GER Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '3.Semifinales'), 
    '2016-08-16', '3-2'
);

-- Bronce: JPN (Pierde SF1) vs KOR (Pierde SF2) -> JPN Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '2.Tercer Puesto'), 
    '2016-08-18', '3-1'
);
-- Final: CHN (Gana SF1) vs GER (Gana SF2) -> CHN Gana
INSERT INTO partido (id_olimpiada, id_evento, id_ronda, fecha_partido, resultado_final) 
VALUES (
    (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), 
    (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
    (SELECT id_ronda FROM ronda_tipo WHERE nombre_ronda = '1.Final'), 
    '2016-08-18', '3-0'
);


---
--- 9. participacion_partido (48 filas lógicas, 6 por partido)
---
-- ID Evento Equipo Fem = 5
-- ID Ronda Cuartos = 4, Semifinal = 3, Bronce = 2, Final = 1

-- QF 1: CHN (Gana) vs USA (Res: 3-0)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Chen' AND J.apellido='Meng';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Sun' AND J.apellido='Yingsha';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Liu' AND J.apellido='Shiwen';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Lily' AND J.apellido='Zhang';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Amy' AND J.apellido='Wang';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Crystal' AND J.apellido='Wang';

-- QF 2: JPN (Gana) vs AUT (Res: 3-1)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Mima' AND J.apellido='Ito';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Kasumi' AND J.apellido='Ishikawa';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Hina' AND J.apellido='Hayata';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Sofia' AND J.apellido='Polcanova';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Liu' AND J.apellido='Jia';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-1' AND J.nombre='Amelie' AND J.apellido='Solja';

-- QF 3: GER (Gana) vs BRA (Res: 3-0)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Han' AND J.apellido='Ying';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Nina' AND J.apellido='Mittelham';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Petrissa' AND J.apellido='Solja';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Bruna' AND J.apellido='Takahashi';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Jessica' AND J.apellido='Yamada';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-0' AND J.nombre='Caroline' AND J.apellido='Kumahara';

-- QF 4: KOR (Gana) vs FRA (Res: 3-2)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-2' AND J.nombre='Jeon' AND J.apellido='Ji-hee';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-2' AND J.nombre='Shin' AND J.apellido='Yubin';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-2' AND J.nombre='Seo' AND J.apellido='Hyo-won';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-2' AND J.nombre='Jia Nan' AND J.apellido='Yuan';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-2' AND J.nombre='Prithika' AND J.apellido='Pavade';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-2' AND J.nombre='Audrey' AND J.apellido='Zarif';

-- SF 1: CHN (Gana) vs JPN (Res: 3-0)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 3 AND P.resultado_final='3-0' AND J.nombre='Chen' AND J.apellido='Meng';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 3 AND P.resultado_final='3-0' AND J.nombre='Sun' AND J.apellido='Yingsha';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 3 AND P.resultado_final='3-0' AND J.nombre='Wang' AND J.apellido='Manyu';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 3 AND P.resultado_final='3-0' AND J.nombre='Mima' AND J.apellido='Ito';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 3 AND P.resultado_final='3-0' AND J.nombre='Kasumi' AND J.apellido='Ishikawa';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 3 AND P.resultado_final='3-0' AND J.nombre='Hina' AND J.apellido='Hayata';

-- SF 2: GER (Gana) vs KOR (Res: 3-2)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 3 AND P.resultado_final='3-2' AND J.nombre='Han' AND J.apellido='Ying';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 3 AND P.resultado_final='3-2' AND J.nombre='Nina' AND J.apellido='Mittelham';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 3 AND P.resultado_final='3-2' AND J.nombre='Sabine' AND J.apellido='Winter';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 3 AND P.resultado_final='3-2' AND J.nombre='Jeon' AND J.apellido='Ji-hee';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 3 AND P.resultado_final='3-2' AND J.nombre='Shin' AND J.apellido='Yubin';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 3 AND P.resultado_final='3-2' AND J.nombre='Yang' AND J.apellido='Ha-eun';

-- Bronce: JPN (Gana) vs KOR (Res: 3-1)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 2 AND P.resultado_final='3-1' AND J.nombre='Mima' AND J.apellido='Ito';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 2 AND P.resultado_final='3-1' AND J.nombre='Kasumi' AND J.apellido='Ishikawa';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 2 AND P.resultado_final='3-1' AND J.nombre='Miyuu' AND J.apellido='Kihara';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 2 AND P.resultado_final='3-1' AND J.nombre='Jeon' AND J.apellido='Ji-hee';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 2 AND P.resultado_final='3-1' AND J.nombre='Shin' AND J.apellido='Yubin';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 2 AND P.resultado_final='3-1' AND J.nombre='Seo' AND J.apellido='Hyo-won';

-- Final: CHN (Gana) vs GER (Res: 3-0)
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 1 AND P.resultado_final='3-0' AND J.nombre='Chen' AND J.apellido='Meng';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 1 AND P.resultado_final='3-0' AND J.nombre='Sun' AND J.apellido='Yingsha';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, TRUE, TRUE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 1 AND P.resultado_final='3-0' AND J.nombre='Liu' AND J.apellido='Shiwen';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 1 AND P.resultado_final='3-0' AND J.nombre='Han' AND J.apellido='Ying';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 1 AND P.resultado_final='3-0' AND J.nombre='Nina' AND J.apellido='Mittelham';
INSERT INTO participacion_partido (id_partido, id_jugador, es_jugador1, es_ganador)
SELECT P.id_partido, J.id_jugador, FALSE, FALSE FROM partido P, jugador J WHERE P.id_evento = 5 AND P.id_ronda = 1 AND P.resultado_final='3-0' AND J.nombre='Petrissa' AND J.apellido='Solja';


---
--- 10. arbitraje (8 filas)
---
-- (IDs 1-8 ya usados, usamos 9-15 y 1)
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 9 FROM partido P WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-0'; -- QF1
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 10 FROM partido P WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-1'; -- QF2
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 11 FROM partido P WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-0'; -- QF3
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 12 FROM partido P WHERE P.id_evento = 5 AND P.id_ronda = 4 AND P.resultado_final='3-2'; -- QF4
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 13 FROM partido P WHERE P.id_evento = 5 AND P.id_ronda = 3 AND P.resultado_final='3-0'; -- SF1
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 14 FROM partido P WHERE P.id_evento = 5 AND P.id_ronda = 3 AND P.resultado_final='3-2'; -- SF2
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 15 FROM partido P WHERE P.id_evento = 5 AND P.id_ronda = 2 AND P.resultado_final='3-1'; -- Bronce
INSERT INTO arbitraje (id_partido, id_arbitro) 
SELECT P.id_partido, 1 FROM partido P WHERE P.id_evento = 5 AND P.id_ronda = 1 AND P.resultado_final='3-0'; -- Final

---
--- 11. clasificacion_premio (12 filas - 3 por posición)
---
-- Oro: CHN
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
J.id_jugador, 1, 15000.00 FROM jugador J WHERE J.nombre='Chen' AND J.apellido='Meng';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
J.id_jugador, 1, 15000.00 FROM jugador J WHERE J.nombre='Sun' AND J.apellido='Yingsha';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
J.id_jugador, 1, 15000.00 FROM jugador J WHERE J.nombre='Liu' AND J.apellido='Shiwen';

-- Plata: GER
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
J.id_jugador, 2, 8000.00 FROM jugador J WHERE J.nombre='Han' AND J.apellido='Ying';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
J.id_jugador, 2, 8000.00 FROM jugador J WHERE J.nombre='Nina' AND J.apellido='Mittelham';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
J.id_jugador, 2, 8000.00 FROM jugador J WHERE J.nombre='Petrissa' AND J.apellido='Solja';

-- Bronce: JPN
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
J.id_jugador, 3, 4000.00 FROM jugador J WHERE J.nombre='Mima' AND J.apellido='Ito';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
J.id_jugador, 3, 4000.00 FROM jugador J WHERE J.nombre='Kasumi' AND J.apellido='Ishikawa';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
J.id_jugador, 3, 4000.00 FROM jugador J WHERE J.nombre='Hina' AND J.apellido='Hayata';

-- 4to Lugar: KOR
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
J.id_jugador, 4, 1000.00 FROM jugador J WHERE J.nombre='Jeon' AND J.apellido='Ji-hee';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
J.id_jugador, 4, 1000.00 FROM jugador J WHERE J.nombre='Shin' AND J.apellido='Yubin';
INSERT INTO clasificacion_premio (id_olimpiada, id_evento, id_jugador, posicion_final, premio_usd)
SELECT (SELECT id_olimpiada FROM olimpiada WHERE anio = 2016), (SELECT id_evento FROM evento WHERE nombre_evento = 'Equipo Femenino'), 
J.id_jugador, 4, 1000.00 FROM jugador J WHERE J.nombre='Seo' AND J.apellido='Hyo-won';

-- =================================================================
-- FIN: Equipo Femenino - Río 2016
-- =================================================================