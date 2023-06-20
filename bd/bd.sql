SELECT * FROM superhero;
SELECT * FROM gender;
SELECT * FROM colour;
SELECT * FROM race;
SELECT * FROM publisher;
SELECT * FROM alignment;

SELECT 
		sh.`id`, 
		sh.`superhero_name`, 
		sh.`full_name`, 
		ce.`colour` AS 'eye_colour', 
		ch.`colour` AS 'hair_colour', 
		cs.`colour` AS 'skin_colour'
	FROM superhero sh
	INNER JOIN colour	ce ON ce.`id` = sh.`eye_colour_id`
	INNER JOIN colour	ch ON ch.`id` = sh.`hair_colour_id`
	INNER JOIN colour	cs ON cs.`id` = sh.`skin_colour_id`
	ORDER BY sh.`id`;
	
	
DELIMITER $$
CREATE PROCEDURE spu_superhero_list_publisher(IN _publisher_id INT)
BEGIN
	SELECT 
		sh.`id`, 
		sh.`superhero_name`, 
		sh.`full_name`, 
		ce.`colour` AS 'eye_colour', 
		ch.`colour` AS 'hair_colour', 
		cs.`colour` AS 'skin_colour'
	FROM superhero sh
	INNER JOIN colour	ce ON ce.`id` = sh.`eye_colour_id`
	INNER JOIN colour	ch ON ch.`id` = sh.`hair_colour_id`
	INNER JOIN colour	cs ON cs.`id` = sh.`skin_colour_id`
	WHERE sh.publisher_id = _publisher_id
	ORDER BY sh.`id`;
END $$

DELIMITER $$
CREATE PROCEDURE spu_publisher_list()
BEGIN
	SELECT * FROM publisher ORDER BY publisher_name;
END $$


CALL spu_superhero_list_publisher(5);
CALL spu_publisher_list();

-- Tareas

DELIMITER $$
CREATE PROCEDURE spu_alignment_list()
BEGIN
	SELECT * FROM alignment ORDER BY id;
END $$

DELIMITER $$
CREATE PROCEDURE spu_byalignment_list
(
	IN _publisher_id 	INT,
	IN _alignment_id	INT
)
BEGIN
	SELECT sh.`id`, sh.`superhero_name`,sh.`full_name`,rc.`race`, ps.`publisher_name` 
		FROM superhero sh
			INNER JOIN race rc ON rc.`id` = sh.`race_id`
			INNER JOIN publisher ps ON ps.`id` = sh.`publisher_id`
		WHERE 	
			sh.alignment_id = _alignment_id AND
			sh.publisher_id = _publisher_id
		ORDER BY sh.`id`;
END $$

CALL spu_alignment_list();

DELIMITER $$
CREATE PROCEDURE spu_superhero_listbyrace(IN _race_id INT)
BEGIN
	SELECT 	SPH.`id`,
				SPH.`superhero_name`,
				SPH.`full_name`,
				RAC.`race`,
				PBS.`publisher_name`,
				ALG.`alignment`,
				SPH.`height_cm`
			FROM superhero SPH
			LEFT JOIN race RAC ON RAC.`id` = SPH.`race_id`
			LEFT JOIN publisher PBS ON PBS.`id` = SPH.`publisher_id`
			LEFT JOIN alignment ALG ON ALG.`id` = SPH.`alignment_id`
			WHERE SPH.`race_id` = _race_id
			ORDER BY PBS.`publisher_name`;
END $$	

DELIMITER $$
CREATE PROCEDURE spu_race_list()
BEGIN
	SELECT * FROM race ORDER BY 2;
END $$

DELIMITER $$ 
CREATE PROCEDURE spu_racebyids
( 
	IN _race_ids VARCHAR(255) 
) 
BEGIN 
	SELECT SPH.id, PBS.publisher_name, SPH.superhero_name, SPH.full_name,  RAC.race 
		FROM superhero SPH 
		LEFT JOIN race RAC ON SPH.race_id = RAC.id 
		LEFT JOIN publisher PBS ON PBS.`id` = SPH.`publisher_id`
		WHERE FIND_IN_SET(SPH.race_id, _race_ids) > 0 
	ORDER BY SPH.race_id ASC, SPH.superhero_name ASC ; 
END $$

SELECT * FROM superhero

CALL spu_racebyids('3,4,');

SELECT * FROM superhero; -- x750
SELECT * FROM alignment; -- x4
SELECT * FROM publisher; -- x25

-- Consultas de resumen (GROUP BY)
-- Subconsultas (SELECT > SELECT)

-- ¿Cuantos superheroes son buenos, malos, neutrales o N/A?
SELECT 
	CASE
		WHEN ALG.`alignment` IS NULL THEN 'Ninguno'
		WHEN ALG.`alignment` IS NOT NULL THEN ALG.`alignment`
	END 'bandos',
	COUNT(SPH.id) 'total'
	FROM superhero SPH
	LEFT JOIN alignment ALG ON ALG.`id` = SPH.`alignment_id`
	GROUP BY ALG.`alignment`;
	
-- ¿Cuantos superheroes tenemos en una coleccion de casas/publisher indicadas manualmente por el usuario

SELECT 
	CASE
		WHEN PBS.publisher_name = '' THEN 'No asignado'
		WHEN PBS.publisher_name !='' THEN PBS.publisher_name
	END 'casas',
	COUNT(SPH.id) 'total'
	FROM superhero SPH
	LEFT JOIN publisher PBS ON PBS.`id` = SPH.`publisher_id`
	WHERE SPH.`publisher_id` IN (1,4,9,15)
	GROUP BY PBS.publisher_name;
	
-- Hallar el promedio de pesos y estatura por los superheroes de las razas especificadas manualmente por el usuario
SELECT 
	RAC.race,
	AVG(SPH.weight_kg) 'pesoprom',
	AVG(SPH.height_cm) 'estaturaprom',
	MAX(SPH.weight_kg) 'pesomax',
	MIN(SPH.weight_kg) 'pesomin'
	FROM superhero SPH
	LEFT JOIN race RAC ON RAC.id = SPH.race_id
	WHERE SPH.race_id IN (5,8,9)
	GROUP BY RAC.race;
	
SELECT COUNT(sph.alignment_id) 'Total'
	FROM superhero sph
	
	LEFT JOIN publisher pbs ON sph.publisher_id = pbs.id
	WHERE sph.publisher_id IN (1,2)
	ORDER BY sph.alignment_id;
	


SELECT 
	CASE
		WHEN ALG.`alignment` IS NULL THEN 'Ninguno'
		WHEN ALG.`alignment` IS NOT NULL THEN ALG.`alignment`
	END 'bandos',
	COUNT(SPH.id) 'total'
	FROM alignment ALG
	LEFT JOIN superhero SPH ON ALG.`id` = SPH.`alignment_id` = SPH.publisher_id = 3
	WHERE ALG.id IN (1,2)
	GROUP BY ALG.`alignment`;	
		
	
DELIMITER $$
CREATE PROCEDURE spu_alignment_publisher(IN _publisher INT)
BEGIN
	SELECT 
		ALG.alignment 'bandos',
		COUNT(SPH.id) 'total'
		FROM alignment ALG
		LEFT JOIN superhero SPH ON ALG.`id` = SPH.`alignment_id` AND SPH.publisher_id = _publisher
		WHERE ALG.id IN (1,2)
		GROUP BY ALG.alignment;
END $$

CALL spu_alignment_publisher(3)