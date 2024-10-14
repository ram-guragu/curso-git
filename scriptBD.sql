drop database if exists analisis_de_competencia;
create database analisis_de_competencia;
use analisis_de_competencia;

create table usuario(
	id int auto_increment primary key,
    nombre_completo varchar(45),
    nombre_usuario varchar(45)
);

create table rol(
	id int auto_increment primary key,
    nombre varchar(15)
);

create table usuarios_roles(
	id int auto_increment primary key,
    id_usuario int,
    id_rol int,
    foreign key (id_usuario) references usuario(id),
    foreign key (id_rol) references rol(id)
);

create table tienda(
	id int auto_increment primary key,
    nombre varchar(45)
);

create table producto(
	id int auto_increment primary key,
    nombre varchar(45),
    descripcion varchar(45),
    id_tienda int,
    foreign key (id_tienda) references tienda(id)
);

create table categoria(
	id int auto_increment primary key,
    nombre varchar(45)
);

create table productos_categorias(
	id int auto_increment primary key,
    id_producto int,
    id_categoria int,
    foreign key (id_producto) references producto(id),
    foreign key (id_categoria) references categoria(id)
);

create table productos_precios(
	id int auto_increment primary key,
    descuento double,
    fecha datetime,
    id_producto int,
    foreign key (id_producto) references producto(id)
);

create table productos_descuentos(
	id int auto_increment primary key,
    id_producto int,
    id_categoria int,
    foreign key (id_producto) references producto(id),
    foreign key (id_categoria) references categoria(id)
);
