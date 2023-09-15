--Datos tabla cliente

INSERT INTO cliente (nombre_cliente,nacionalidad)
VALUES
  ('Gregory Cortez','Argentina'),
  ('Fuller Flores','Argentina'),
  ('Giselle Boyer','Korea, North'),
  ('Gil Carlson','Japan'),
  ('Harding Frost','Spain'),
  ('Nigel Browning','Venezuela'),
  ('Fallon Bentley','Korea, South'),
  ('Chandler Clayton','Bolivia'),
  ('Marvin Gardner','Japan'),
  ('Susan Jarvis','China');
INSERT INTO cliente (nombre_cliente,nacionalidad)
VALUES
  ('Cara Colon','China'),
  ('Summer Fuller','Spain'),
  ('Rashad Barber','Venezuela'),
  ('Debra Schwartz','Argentina'),
  ('Madonna Bridges','Korea, North'),
  ('Armando Bell','Japan'),
  ('Vladimir Bird','United States'),
  ('Ingrid Marshall','Chile'),
  ('Gavin Barron','United States'),
  ('Leonard Campos','Venezuela');
INSERT INTO cliente (nombre_cliente,nacionalidad)
VALUES
  ('Vielka Farmer','Japan'),
  ('Alea Weber','Korea, South'),
  ('Mikayla Conrad','China'),
  ('Brianna Russell','Chile'),
  ('Teegan Erickson','United States'),
  ('Wayne Woods','Spain'),
  ('Dai Baxter','Spain'),
  ('Colin Torres','United States'),
  ('Chadwick Powers','Chile'),
  ('Alexis Baird','Bolivia');
INSERT INTO cliente (nombre_cliente,nacionalidad)
VALUES
  ('Lester Melendez','Argentina'),
  ('Elaine Hubbard','Korea, North'),
  ('Lisandra Moran','Korea, North'),
  ('Hollee Patel','China'),
  ('Brendan Price','United States'),
  ('Kieran Kerr','Peru'),
  ('Beck Dunn','Venezuela'),
  ('Lucas Duncan','Japan'),
  ('Wang Rodriquez','Bolivia'),
  ('Berk Rowe','Bolivia');
INSERT INTO cliente (nombre_cliente,nacionalidad)
VALUES
  ('Hedy Green','Bolivia'),
  ('Jenette Sherman','Argentina'),
  ('Xaviera Pratt','Colombia'),
  ('Matthew Nash','Argentina'),
  ('Norman Baldwin','Korea, South'),
  ('Kimberley Blake','China'),
  ('Jaquelyn Sparks','Peru'),
  ('Clarke Galloway','Chile'),
  ('Eugenia Rosa','Peru'),
  ('Neil Conrad','Chile');
INSERT INTO cliente (nombre_cliente,nacionalidad)
VALUES
  ('Hyatt Schultz','Argentina'),
  ('Peter Crosby','Spain'),
  ('Nadine Marks','Chile'),
  ('Constance Sharp','Chile'),
  ('Eleanor Hardin','Korea, North'),
  ('Savannah Mays','Spain'),
  ('Wang Boyer','Spain'),
  ('Chaim Wright','Peru'),
  ('Cody Pugh','Korea, South'),
  ('Berk Cline','Bolivia');
INSERT INTO cliente (nombre_cliente,nacionalidad)
VALUES
  ('Flavia Mcleod','United States'),
  ('Kadeem Marshall','Chile'),
  ('Imogene Vasquez','Japan'),
  ('Vincent Valentine','Korea, South'),
  ('Maryam Palmer','United States'),
  ('Marsden Langley','Argentina'),
  ('Noelani Jordan','Argentina'),
  ('Charde Briggs','Korea, North'),
  ('Salvador Farmer','United States'),
  ('Joshua Nguyen','United States');
INSERT INTO cliente (nombre_cliente,nacionalidad)
VALUES
  ('Camilla Bauer','Venezuela'),
  ('Robert Duffy','Colombia'),
  ('Zorita Carlson','Japan'),
  ('Nina Osborn','Chile'),
  ('Halla Duncan','Peru'),
  ('Kato Flores','Korea, North'),
  ('Jacqueline Pruitt','United States'),
  ('Avye Vance','Argentina'),
  ('Ralph Boone','United States'),
  ('Wesley Gonzales','Bolivia');
INSERT INTO cliente (nombre_cliente,nacionalidad)
VALUES
  ('Lana Wilcox','Spain'),
  ('Marsden Peck','Peru'),
  ('Linus Sykes','Spain'),
  ('Wanda Dyer','Korea, North'),
  ('Hoyt Farrell','Korea, North'),
  ('Macon Hodges','Chile'),
  ('Adena Todd','Japan'),
  ('Ursula Frost','China'),
  ('Chantale Cash','Venezuela'),
  ('Carissa Rodriguez','Japan');
INSERT INTO cliente (nombre_cliente,nacionalidad)
VALUES
  ('Alexa Jefferson','Bolivia'),
  ('Ginger Lindsay','Chile'),
  ('Colby Harrison','Chile'),
  ('Judah Stevenson','Venezuela'),
  ('Ariana Mayo','Peru'),
  ('Garrett Hogan','Chile'),
  ('Nathan Buchanan','Peru'),
  ('Blythe Rowe','Colombia'),
  ('Xandra Singleton','Korea, South'),
  ('Isaiah Sosa','Japan');
  
--Datos tabla seccion

INSERT INTO seccion (tipo_seccion)
VALUES
  ('Economy'),
  ('Premium economy'),
  ('Business'),
  ('First class');
  
--Datos tabla costo

INSERT INTO costo (valor_costo)
VALUES
  (600000),
  (800000),
  (1500000),
  (5000000);
  
--Datos tabla modelo

INSERT INTO modelo (nombre_modelo)
VALUES
  ('AeroJet X-2000'),
  ('SkyHawk 5000i'),
  ('SilverWing 700'),
  ('AeroStar 900LX'),
  ('ThunderStrike 3000'),
  ('PhoenixJet E1'),
  ('StarCruiser 750'),
  ('NovaWing ZR-12'),
  ('QuantumAir 600'),
  ('SolarFlare 200');
  
--Datos tabla compañia

INSERT INTO compania (nombre_compania)
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
  
--Datos tabla avion

INSERT INTO avion (nombre_avion,capacidad_pas,fecha_adquisicion,id_compania,id_modelo)
VALUES
  ('SkyRider',157,'2010-01-05',6,3),
  ('AeroGlide',106,'2016-11-06',7,8),
  ('StarWing',177,'2017-01-23',8,6),
  ('NovaJet',119,'2015-06-19',9,9),
  ('ThunderStrike',194,'2014-07-05',4,4),
  ('SolarHawk',112,'2014-02-04',4,2),
  ('QuantumSky',176,'2015-06-03',9,10),
  ('AuroraGlide',127,'2016-05-16',7,2),
  ('HorizonXpress',114,'2019-11-27',4,4),
  ('SilverFalcon',146,'2010-01-02',9,9);
INSERT INTO avion (nombre_avion,capacidad_pas,fecha_adquisicion,id_compania,id_modelo)
VALUES
  ('TurboStar',141,'2023-05-08',5,8),
  ('AirVoyager',99,'2014-07-27',8,4),
  ('NeoSkyliner',107,'2014-06-21',4,1),
  ('EclipseJet',129,'2023-05-30',5,2),
  ('PhoenixRise',155,'2010-04-11',6,4),
  ('StellarWing',134,'2021-01-08',5,3),
  ('CosmicFlyer',174,'2016-01-16',7,2),
  ('AeroBlitz',65,'2018-09-07',3,2),
  ('VelocityExpress',155,'2017-12-30',8,8),
  ('Firebird',65,'2013-05-03',1,6);

--Datos tabla vuelo

INSERT INTO vuelo (fecha_vuelo,origen,destino,id_avion)
VALUES
  ('2012-06-18','Bolivia','United States',11),
  ('2022-07-07','Uruguay','Costa Rica',19),
  ('2011-06-15','Uruguay','Brazil',16),
  ('2013-08-25','Panama','Peru',19),
  ('2018-03-06','Bolivia','Argentina',13),
  ('2015-01-30','Argentina','Brazil',13),
  ('2020-09-23','Peru','Argentina',8),
  ('2010-03-25','Brazil','Peru',18),
  ('2021-04-29','Panama','Peru',10),
  ('2023-05-27','Peru','Bolivia',11);
INSERT INTO vuelo (fecha_vuelo,origen,destino,id_avion)
VALUES
  ('2015-07-29','Brazil','Chile',12),
  ('2010-12-17','Panama','United States',2),
  ('2010-06-11','United States','Bolivia',18),
  ('2011-03-26','Chile','United States',16),
  ('2021-11-25','Uruguay','Chile',3),
  ('2018-04-08','Mexico','Uruguay',9),
  ('2017-02-05','United States','Argentina',9),
  ('2021-06-18','Panama','Brazil',2),
  ('2015-12-23','Bolivia','Bolivia',6),
  ('2015-04-02','United States','Uruguay',17);
INSERT INTO vuelo (fecha_vuelo,origen,destino,id_avion)
VALUES
  ('2021-05-05','United States','Chile',13),
  ('2019-04-08','Bolivia','Peru',10),
  ('2010-03-11','Panama','Peru',6),
  ('2016-02-09','Mexico','United States',20),
  ('2010-08-21','Chile','Chile',13),
  ('2013-06-04','Mexico','Uruguay',8),
  ('2018-11-21','Brazil','Uruguay',20),
  ('2020-03-10','Mexico','Chile',19),
  ('2010-04-12','Chile','Uruguay',14),
  ('2012-03-31','Uruguay','Costa Rica',12);
INSERT INTO vuelo (fecha_vuelo,origen,destino,id_avion)
VALUES
  ('2015-11-08','United States','Brazil',17),
  ('2019-02-03','Chile','Uruguay',11),
  ('2016-02-18','Bolivia','Bolivia',7),
  ('2022-03-23','United States','Brazil',18),
  ('2023-02-12','Peru','Chile',9),
  ('2022-09-10','Brazil','Peru',13),
  ('2021-08-03','Peru','Brazil',4),
  ('2010-09-23','Peru','Brazil',2),
  ('2010-11-18','Peru','Peru',3),
  ('2023-05-18','Mexico','United States',14);
INSERT INTO vuelo (fecha_vuelo,origen,destino,id_avion)
VALUES
  ('2011-04-18','Mexico','Costa Rica',15),
  ('2013-10-07','Panama','Bolivia',13),
  ('2018-10-26','United States','Chile',17),
  ('2010-01-11','Brazil','Uruguay',8),
  ('2014-11-23','United States','Chile',1),
  ('2010-11-30','Panama','Bolivia',11),
  ('2010-05-29','United States','Costa Rica',7),
  ('2015-10-16','Panama','Costa Rica',13),
  ('2020-02-09','Panama','United States',19),
  ('2016-10-01','Argentina','Brazil',7);
  
--Datos tabla pasaje

INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (42,1,3,42),
  (38,2,2,26),
  (18,3,4,38),
  (21,2,2,29),
  (13,1,1,75),
  (40,4,2,74),
  (22,3,1,6),
  (11,3,4,40),
  (34,2,2,64),
  (38,1,2,75);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (17,1,2,67),
  (22,3,2,72),
  (40,3,2,25),
  (24,2,4,64),
  (5,1,3,58),
  (6,3,2,60),
  (13,3,4,24),
  (34,2,3,10),
  (33,3,3,72),
  (45,2,3,85);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (46,2,2,33),
  (5,1,2,16),
  (33,3,4,91),
  (20,1,4,37),
  (32,2,2,26),
  (26,2,2,33),
  (47,3,3,25),
  (33,4,3,43),
  (42,1,3,95),
  (20,2,2,16);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (2,4,2,34),
  (15,2,2,78),
  (31,3,4,71),
  (3,1,4,39),
  (48,3,2,16),
  (29,2,3,67),
  (48,3,2,24),
  (13,2,3,7),
  (29,1,2,31),
  (40,3,4,10);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (31,4,2,91),
  (4,3,3,58),
  (21,1,2,13),
  (27,3,3,67),
  (23,1,3,57),
  (11,1,4,36),
  (33,1,1,96),
  (6,4,2,25),
  (4,2,3,98),
  (19,3,2,9);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (20,4,2,17),
  (31,4,4,41),
  (28,2,4,49),
  (20,2,3,63),
  (36,4,2,97),
  (18,3,3,14),
  (11,2,2,78),
  (22,2,3,12),
  (42,3,3,45),
  (1,3,3,38);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (12,3,3,91),
  (7,1,2,100),
  (6,3,4,96),
  (4,4,3,37),
  (39,1,1,2),
  (34,2,3,50),
  (48,3,3,39),
  (27,2,2,45),
  (26,4,3,74),
  (29,1,1,40);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (3,2,1,59),
  (31,3,4,69),
  (21,3,3,68),
  (35,4,4,66),
  (46,1,3,42),
  (43,3,3,42),
  (43,2,1,84),
  (20,3,3,79),
  (32,2,3,42),
  (24,1,3,16);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (4,1,2,76),
  (27,2,2,63),
  (32,2,2,37),
  (8,3,3,57),
  (7,2,1,23),
  (15,3,2,92),
  (46,2,4,6),
  (6,2,2,24),
  (24,1,3,80),
  (46,2,4,99);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (35,3,2,77),
  (1,4,4,48),
  (40,4,1,98),
  (31,1,1,35),
  (14,2,1,91),
  (45,2,3,82),
  (28,1,2,7),
  (19,1,4,79),
  (8,1,1,12),
  (10,3,1,91);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (21,4,1,4),
  (17,3,3,24),
  (2,3,4,31),
  (10,3,2,26),
  (23,2,2,10),
  (36,3,2,69),
  (42,3,1,10),
  (7,1,3,46),
  (10,3,4,4),
  (35,2,2,44);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (8,1,2,87),
  (38,1,3,88),
  (41,1,2,11),
  (20,2,3,5),
  (47,2,3,10),
  (24,2,3,100),
  (44,3,4,39),
  (11,1,4,92),
  (44,3,2,13),
  (8,3,3,47);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (50,3,1,71),
  (8,2,4,98),
  (49,4,3,15),
  (6,4,3,31),
  (37,4,4,39),
  (27,3,4,39),
  (31,3,2,28),
  (32,2,4,26),
  (5,3,2,94),
  (16,2,3,42);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (47,1,4,31),
  (9,3,3,5),
  (17,3,2,49),
  (45,4,2,36),
  (6,4,4,39),
  (22,3,2,76),
  (26,4,3,28),
  (47,2,2,17),
  (21,1,2,50),
  (10,2,2,45);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (27,3,2,87),
  (27,4,3,50),
  (29,4,3,54),
  (36,3,1,57),
  (28,3,4,39),
  (13,2,2,95),
  (36,2,4,64),
  (18,3,3,46),
  (32,3,2,62),
  (47,3,2,17);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (5,4,1,27),
  (20,4,4,39),
  (38,3,3,40),
  (17,2,3,44),
  (17,3,2,99),
  (42,3,2,8),
  (44,2,3,43),
  (16,3,3,14),
  (38,3,3,40),
  (2,1,2,20);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (8,4,3,70),
  (13,3,3,67),
  (37,2,2,25),
  (30,4,1,67),
  (26,2,3,20),
  (33,2,4,39),
  (45,4,4,48),
  (18,4,4,65),
  (5,3,4,39),
  (49,4,4,76);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (20,3,2,76),
  (37,4,2,29),
  (23,4,2,76),
  (45,2,2,99),
  (15,1,2,5),
  (48,2,3,89),
  (4,1,3,34),
  (2,3,3,63),
  (18,4,2,94),
  (17,2,3,63);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (22,4,3,21),
  (13,4,2,5),
  (31,3,3,38),
  (21,3,3,4),
  (5,1,3,65),
  (1,2,2,63),
  (43,2,3,50),
  (10,2,4,43),
  (46,4,1,20),
  (28,1,1,51);
INSERT INTO pasaje (id_vuelo,id_costo,id_seccion,id_cliente)
VALUES
  (29,3,3,51),
  (50,2,3,6),
  (12,3,1,86),
  (45,2,4,99),
  (37,2,2,13),
  (5,2,4,10),
  (21,2,4,58),
  (7,2,3,73),
  (5,1,2,61),
  (47,3,3,34);
  
--  Cargos

INSERT INTO cargo (nombre_cargo)
VALUES
	('Piloto'),
	('Azafata/o'),
	('Personal de seguridad'),
	('Personal de limpieza'),
	('Gerente de aeropuerto');
	
-- Empleado 

INSERT INTO empleado (nombre_empleado,id_compania,id_cargo)
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
INSERT INTO empleado (nombre_empleado,id_compania,id_cargo)
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
INSERT INTO empleado (nombre_empleado,id_compania,id_cargo)
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
INSERT INTO empleado (nombre_empleado,id_compania,id_cargo)
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
INSERT INTO empleado (nombre_empleado,id_compania,id_cargo)
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
INSERT INTO empleado (nombre_empleado,id_compania,id_cargo)
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
INSERT INTO empleado (nombre_empleado,id_compania,id_cargo)
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
INSERT INTO empleado (nombre_empleado,id_compania,id_cargo)
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
INSERT INTO empleado (nombre_empleado,id_compania,id_cargo)
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
INSERT INTO empleado (nombre_empleado,id_compania,id_cargo)
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

--Datos tabla emp_vuelo

INSERT INTO emp_vuelo (id_vuelo,id_empleado)
VALUES
  (20,47),
  (35,58),
  (41,68),
  (15,65),
  (45,91),
  (21,48),
  (17,24),
  (5,6),
  (25,46),
  (16,24);
INSERT INTO emp_vuelo (id_vuelo,id_empleado)
VALUES
  (46,43),
  (10,40),
  (11,10),
  (46,30),
  (16,14),
  (48,11),
  (40,32),
  (22,58),
  (39,74),
  (9,74);
INSERT INTO emp_vuelo (id_vuelo,id_empleado)
VALUES
  (30,4),
  (42,26),
  (31,94),
  (13,18),
  (18,60),
  (45,47),
  (22,45),
  (4,78),
  (24,40),
  (44,2);
INSERT INTO emp_vuelo (id_vuelo,id_empleado)
VALUES
  (14,97),
  (3,48),
  (40,46),
  (5,26),
  (48,4),
  (44,3),
  (36,92),
  (32,6),
  (29,72),
  (25,55);
INSERT INTO emp_vuelo (id_vuelo,id_empleado)
VALUES
  (32,81),
  (42,57),
  (22,47),
  (18,67),
  (16,22),
  (21,50),
  (7,76),
  (11,26),
  (27,8),
  (11,15);
INSERT INTO emp_vuelo (id_vuelo,id_empleado)
VALUES
  (15,72),
  (20,40),
  (27,91),
  (26,70),
  (22,11),
  (19,4),
  (6,28),
  (17,41),
  (34,23),
  (9,77);
INSERT INTO emp_vuelo (id_vuelo,id_empleado)
VALUES
  (26,35),
  (37,15),
  (50,86),
  (41,15),
  (27,70),
  (13,72),
  (27,67),
  (49,53),
  (46,54),
  (33,36);
INSERT INTO emp_vuelo (id_vuelo,id_empleado)
VALUES
  (50,14),
  (41,66),
  (11,13),
  (43,53),
  (33,92),
  (34,69),
  (30,21),
  (17,92),
  (48,65),
  (21,93);
INSERT INTO emp_vuelo (id_vuelo,id_empleado)
VALUES
  (47,7),
  (25,67),
  (8,52),
  (21,1),
  (49,33),
  (37,10),
  (24,96),
  (38,66),
  (39,76),
  (33,80);
INSERT INTO emp_vuelo (id_vuelo,id_empleado)
VALUES
  (47,87),
  (41,86),
  (14,69),
  (21,53),
  (3,94),
  (27,15),
  (8,49),
  (47,32),
  (23,70),
  (15,88);
INSERT INTO emp_vuelo (id_vuelo,id_empleado)
VALUES
  (47,48),
  (18,57),
  (25,12),
  (43,62),
  (27,71),
  (35,78),
  (2,48),
  (43,70),
  (15,29),
  (15,61);
INSERT INTO emp_vuelo (id_vuelo,id_empleado)
VALUES
  (42,74),
  (47,5),
  (4,69),
  (45,25),
  (2,4),
  (38,23),
  (3,94),
  (26,19),
  (14,1),
  (39,71);
INSERT INTO emp_vuelo (id_vuelo,id_empleado)
VALUES
  (27,31),
  (21,17),
  (47,47),
  (47,5),
  (28,26),
  (34,1),
  (42,71),
  (3,8),
  (33,76),
  (3,83);
INSERT INTO emp_vuelo (id_vuelo,id_empleado)
VALUES
  (17,19),
  (25,87),
  (10,42),
  (8,95),
  (22,85),
  (7,21),
  (26,50),
  (29,65),
  (33,49),
  (10,53);
INSERT INTO emp_vuelo (id_vuelo,id_empleado)
VALUES
  (41,70),
  (48,52),
  (34,57),
  (9,22),
  (41,48),
  (50,93),
  (6,57),
  (48,82),
  (28,64),
  (13,27);
  
