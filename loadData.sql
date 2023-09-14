-- Compañias

INSERT INTO compañia (nombre_compañia)
VALUES
  ('Ut LLC'),
  ('Aliquam Tincidunt Nunc Limited'),
  ('Feugiat Metus Institute'),
  ('Non Massa Industries'),
  ('Ad Litora PC'),
  ('Orci Ltd'),
  ('Luctus Industries'),
  ('Dictum Phasellus Corporation'),
  ('At Nisi Cum Associates'),
  ('Eget Lacus Mauris Limited');

--  Cargos

INSERT INTO cargo (nombre_cargo)
VALUES
	('Piloto'),
	('Azafata/o'),
	('Personal de seguridad'),
	('Personal de limpieza'),
	('Gerente de aeropuerto');
	
-- Empleado 

INSERT INTO empleado (nombre_empleado,id_compañia,id_cargo)
VALUES
  ('Whitney Humphrey',1,2),
  ('Rajah Paul',7,1),
  ('Kimberly Christian',3,2),
  ('Seth Bradford',5,2),
  ('Dolan Snyder',3,4),
  ('Charissa Marshall',10,1),
  ('Haley Puckett',2,3),
  ('Ciara O''connor',1,3),
  ('Griffith Kelley',5,4),
  ('Adena Sherman',6,2);
INSERT INTO empleado (nombre_empleado,id_compañia,id_cargo)
VALUES
  ('Ina Calhoun',5,3),
  ('Angela Bowman',2,3),
  ('Kibo Mcneil',2,1),
  ('Simon Hill',5,2),
  ('Kaye Shaffer',2,3),
  ('Malachi Allen',8,3),
  ('Griffith Wilson',7,2),
  ('Christine Stafford',3,1),
  ('Nicholas Cooper',7,3),
  ('Moana Delaney',7,4);
INSERT INTO empleado (nombre_empleado,id_compañia,id_cargo)
VALUES
  ('Kellie Haley',10,4),
  ('Fredericka Byrd',2,3),
  ('Isadora Burks',2,1),
  ('Lars Tanner',3,5),
  ('Lucas Franklin',8,4),
  ('Charity Steele',4,2),
  ('Phillip Richard',8,1),
  ('Carly Bowman',5,3),
  ('Kenneth Carrillo',9,3),
  ('Gay Leach',1,1);
INSERT INTO empleado (nombre_empleado,id_compañia,id_cargo)
VALUES
  ('Laura Brown',8,2),
  ('Scott Davenport',9,3),
  ('Neville Trujillo',5,2),
  ('Zahir Davis',3,3),
  ('Blake Mullen',1,3),
  ('Armand Chase',2,4),
  ('Aristotle Delacruz',4,2),
  ('Helen Pruitt',1,2),
  ('Tanek Wade',10,2),
  ('Michelle Holcomb',3,2);
INSERT INTO empleado (nombre_empleado,id_compañia,id_cargo)
VALUES
  ('Brielle Holloway',7,3),
  ('Madaline Chang',9,4),
  ('Xenos Pollard',3,4),
  ('Graham Merrill',5,1),
  ('Coby Collier',10,4),
  ('Kelsey Hampton',4,2),
  ('Bert Powell',5,2),
  ('Roth Mclaughlin',6,1),
  ('Georgia Jefferson',2,2),
  ('Calvin Murphy',7,4);
INSERT INTO empleado (nombre_empleado,id_compañia,id_cargo)
VALUES
  ('Adele Carey',5,2),
  ('Yvette Charles',5,2),
  ('Hammett David',1,2),
  ('Lani Cortez',8,5),
  ('Edward England',4,3),
  ('Delilah Whitney',7,4),
  ('Zephr Vincent',6,4),
  ('Geoffrey Lester',3,4),
  ('Graham Pruitt',2,3),
  ('Skyler Cooke',7,1);
INSERT INTO empleado (nombre_empleado,id_compañia,id_cargo)
VALUES
  ('Kelly Wheeler',9,4),
  ('Brennan O''Neill',4,4),
  ('Eliana Solomon',5,1),
  ('Blythe Nieves',8,3),
  ('Cassidy Melendez',3,4),
  ('Kyla Clements',7,2),
  ('Hamilton Emerson',7,1),
  ('Robert Collins',3,3),
  ('Illiana Mays',10,1),
  ('Carolyn Marsh',6,1);
INSERT INTO empleado (nombre_empleado,id_compañia,id_cargo)
VALUES
  ('Lionel Clark',7,2),
  ('Chandler Britt',4,5),
  ('Octavius Levine',4,4),
  ('Shaeleigh Todd',5,2),
  ('Barbara Kramer',7,2),
  ('Keely Mcclain',9,2),
  ('Chandler Lloyd',1,3),
  ('Owen Hensley',6,1),
  ('Xantha Bolton',2,1),
  ('Teegan Kirkland',4,3);
INSERT INTO empleado (nombre_empleado,id_compañia,id_cargo)
VALUES
  ('Jonas Love',7,2),
  ('Drake Shields',9,1),
  ('Oprah Church',4,2),
  ('Illiana Ruiz',5,3),
  ('Chandler Woodard',3,4),
  ('Brendan Moses',2,1),
  ('Timothy Hernandez',5,4),
  ('Travis Tanner',6,4),
  ('Owen Farley',10,3),
  ('Georgia Woodard',10,4);
INSERT INTO empleado (nombre_empleado,id_compañia,id_cargo)
VALUES
  ('Rahim Wheeler',7,3),
  ('Duncan Sosa',4,2),
  ('Darryl Campos',1,4),
  ('Desirae Bryant',6,3),
  ('Amy Hurst',3,1),
  ('Ariel Dale',4,3),
  ('Dai Vincent',2,5),
  ('Steven Farrell',9,2),
  ('Xander Maddox',5,3),
  ('Linus Park',2,2);
  
-- Generador de sueldos por 10 años , anuelamente.

DO $$ 
DECLARE
    empleado_id INTEGER;
BEGIN
    FOR empleado_id IN 1..100 LOOP
        DECLARE
            fecha DATE := '2023-01-01'; -- Reinicia la fecha al valor inicial para cada empleado
        BEGIN
            FOR year IN 1..10 LOOP
                INSERT INTO sueldo (valor_sueldo, fecha_sueldo, id_empleado)
                VALUES 
                (
                    FLOOR(RANDOM() * 100001) + 100000, -- Valor aleatorio entre 100000 y 200000
                    fecha,
                    empleado_id
                );
                fecha := fecha + INTERVAL '1 year'; -- Avanza al siguiente año
            END LOOP;
        END;
    END LOOP;
END $$;





select * from sueldo
delete from sueldo