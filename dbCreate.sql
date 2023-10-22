-- Modificada la tabla de "institución" para permitir que una institución tenga muchos usuarios
CREATE TABLE "institucion" (
  "id_institucion" serial PRIMARY KEY,
  "nombre" varchar(255),
  "fecha" DATE,
  "direccion" varchar(255),
  "telefono" varchar(20)
);

-- Modificada la tabla de "usuario" para permitir que un usuario esté asociado a una institución
CREATE TABLE "usuario" (
  "id_usuario" serial PRIMARY KEY,
  "email" varchar(45),
  "password" varchar(45),
  "rol" varchar(45),
  "id_institucion" integer
);

-- Se establece una relación de clave externa entre "usuario" e "institucion"
ALTER TABLE "usuario" ADD FOREIGN KEY ("id_institucion") REFERENCES "institucion" ("id_institucion");

-- Resto de tus tablas originales sin modificaciones
CREATE TABLE "habilidad" (
  "id_habilidad" serial PRIMARY KEY,
  "habilidad" varchar(255)
);

CREATE TABLE "voluntario" (
  "id_voluntario" serial PRIMARY KEY,
  "nombre" varchar(255),
  "apellido" varchar(255),
  "telefono" varchar(20),
  "direccion" varchar(255),
  "id_usuario" integer unique
);

CREATE TABLE "emergencia" (
  "id_emergencia" serial PRIMARY KEY,
  "asunto" varchar(255),
  "descripcion" TEXT,
  "direccion" varchar(255),
  "fecha" DATE,
  "active" BOOLEAN,
  "id_institucion" integer unique
);

CREATE TABLE "tarea" (
  "id_tarea" serial PRIMARY KEY,
  "asunto_tarea" varchar(255),
  "estado_tarea" BOOLEAN,
  "id_emergencia" integer unique
);

CREATE TABLE "eme_habilidad" (
  "id_eme_habilidad" serial PRIMARY KEY,
  "id_habilidad" integer,
  "id_emergencia" integer unique
);

CREATE TABLE "ranking" (
  "id_ranking" serial PRIMARY KEY,
  "id_tarea" integer,
  "id_voluntario" integer,
  "puntaje" integer
);

CREATE TABLE "tarea_habilidad" (
  "id_tarea_habilidad" serial PRIMARY KEY,
  "id_tarea" integer unique,
  "id_habilidad" integer unique
);

CREATE TABLE "vol_habilidad" (
  "id_vol_habilidad" serial,
  "id_voluntario" integer,
  "id_habilidad" integer unique
);
