--Tabla compañia

create table compañia(
	id_compañia serial primary key
	
);

--Tabla cliente
create table cliente(
	id_cliente serial primary key,
	id_compañia integer not null,
	FOREIGN KEY (id_compañia) REFERENCES compañia(id_compañia)
);

--Tabla vuelo

create table vuelo(
	id_vuelo serial primary key,
	id_compañia integer not null,
	FOREIGN KEY (id_compañia) REFERENCES compañia(id_compañia)
);

--Tabla cliente_vuelo

create table cliente_vuelo(
	id_cliente integer not null,
	id_vuelo integer not null,
	FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
	FOREIGN KEY (id_vuelo) REFERENCES vuelo(id_vuelo)
);

--Tabla modelo

create table modelo(
	id_modelo serial primary key
);

--Tabla avion

create table avion(
	id_avion serial primary key,
	id_compañia integer not null,
	id_modelo integer not null,
	FOREIGN KEY (id_compañia) REFERENCES compañia(id_compañia),
	FOREIGN KEY (id_modelo) REFERENCES modelo(id_modelo)
);

--Tabla sueldo

create table sueldo(
	id_sueldo serial primary key
);

--Tabla empleado

create table empleado(
	id_empleado serial primary key,
	id_compañia integer not null,
	id_sueldo integer not null,
	FOREIGN KEY (id_compañia) REFERENCES compañia(id_compañia),
	FOREIGN KEY (id_sueldo) REFERENCES sueldo(id_sueldo)
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
	id_costo serial primary key
);

--Tabla pasaje

create table pasaje(
	id_pasaje serial primary key,
	id_vuelo integer not null,
	id_costo integer not null,
	FOREIGN KEY (id_vuelo) REFERENCES vuelo(id_vuelo),
	FOREIGN KEY (id_costo) REFERENCES costo(id_costo)
);

--Tabla seccion

create table seccion(
	id_seccion serial primary key,
	id_pasaje integer not null,
	FOREIGN KEY (id_pasaje) REFERENCES pasaje(id_pasaje)
);

