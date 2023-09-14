--Tabla compañia

create table compañia(
	id_compañia serial primary key,
	nombre_compañia varchar(40) not null unique
);

--Tabla cliente
create table cliente(
	id_cliente serial primary key,
	nombre_cliente varchar(50) not null,
	nacionalidad varchar(100) not null
);

--Tabla modelo

create table modelo(
	id_modelo serial primary key,
	nombre_modelo varchar(40) not null unique
);

--Tabla avion

create table avion(
	id_avion serial primary key,
	nombre_avion varchar(40) not null unique,
	capacidad_pas integer not null,
	fecha_adquisicion date not null,
	id_compañia integer not null,
	id_modelo integer not null,
	FOREIGN KEY (id_compañia) REFERENCES compañia(id_compañia),
	FOREIGN KEY (id_modelo) REFERENCES modelo(id_modelo)
);

--Tabla vuelo

create table vuelo(
	id_vuelo serial primary key,
	fecha_vuelo date not null,
	origen varchar(40) not null,
	destino varchar(40) not null,
	id_avion integer not null,
	FOREIGN KEY (id_avion) REFERENCES avion(id_avion)
);

--Tabla cargo

create table cargo(
	id_cargo serial primary key,
	nombre_cargo varchar(40) not null unique
);

--Tabla empleado

create table empleado(
	id_empleado serial primary key,
	nombre_empleado varchar(50) not null,
	id_compañia integer not null,
	id_cargo integer not null,
	FOREIGN KEY (id_compañia) REFERENCES compañia(id_compañia),
	FOREIGN KEY (id_cargo) REFERENCES cargo(id_cargo)
);

--Tabla sueldo

create table sueldo(
	id_sueldo serial primary key,
	valor_sueldo integer not null,
	fecha_sueldo date not null,
	id_empleado integer not null,
	FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);

--Tabla emp_vuelo

create table emp_vuelo(
	id_vuelo integer not null,
	id_empleado integer not null,
	FOREIGN KEY (id_vuelo) REFERENCES vuelo(id_vuelo),
	FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);

--Tabla costo

create table costo(
	id_costo serial primary key,
	valor_costo integer not null unique
);

--Tabla seccion

create table seccion(
	id_seccion serial primary key,
	tipo_seccion varchar(40) not null unique
);

--Tabla pasaje

create table pasaje(
	id_pasaje serial primary key,
	fecha_pasaje date not null,
	id_vuelo integer not null,
	id_costo integer not null,
	id_seccion integer not null,
	id_cliente integer not null,
	FOREIGN KEY (id_vuelo) REFERENCES vuelo(id_vuelo),
	FOREIGN KEY (id_costo) REFERENCES costo(id_costo),
	FOREIGN KEY (id_seccion) REFERENCES seccion(id_seccion),
	FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);