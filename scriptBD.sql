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


INSERT INTO usuario (nombre_completo, nombre_usuario) VALUES
('Juan Pérez', 'jperez'),
('María Gómez', 'mgomez'),
('Luis Rodríguez', 'lrodriguez'),
('Ana Morales', 'amorales'),
('Carlos Fernández', 'cfernandez'),
('Lucía Méndez', 'lmendez'),
('Pedro Ruiz', 'pruiz'),
('Marta López', 'mlopez'),
('Jorge Ortiz', 'jortiz'),
('Elena Ramírez', 'eramirez'),
('David Soto', 'dsoto'),
('Sofía Vargas', 'svargas'),
('Andrés Torres', 'atorres');

INSERT INTO rol (nombre) VALUES
('Admin'),
('Trabajador');


INSERT INTO usuarios_roles (id_usuario, id_rol) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 1),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 1),
(12, 2),
(13, 2);

INSERT INTO tienda (nombre) VALUES
('Tienda Centro'),
('Tienda Norte'),
('Tienda Sur'),
('Tienda Este');

INSERT INTO producto (nombre, descripcion, id_tienda) VALUES
('Pantalón Modelo A', 'Pantalón denim clásico', 1),
('Pantalón Modelo B', 'Pantalón cargo ajustado', 2),
('Sudadera Modelo C', 'Sudadera con capucha', 3),
('Sudadera Modelo D', 'Sudadera sin capucha', 4),
('Chamarra Modelo E', 'Chamarra ligera impermeable', 1),
('Chamarra Modelo F', 'Chamarra de cuero', 2),
('Playera Modelo G', 'Playera básica algodón', 3),
('Playera Modelo H', 'Playera estampada', 4),
('Pants Modelo I', 'Pants deportivos', 1),
('Gorra Modelo J', 'Gorra de beisbol', 2),
('Gorro Modelo K', 'Gorro tejido', 3),
('Pants Modelo L', 'Pants casuales', 4),
('Chamarra Modelo M', 'Chamarra acolchonada', 1);

INSERT INTO categoria (nombre) VALUES
('Pantalones'),
('Sudaderas'),
('Chamarras'),
('Playeras'),
('Pants'),
('Accesorios');

INSERT INTO productos_categorias (id_producto, id_categoria) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 5),
(10, 6),
(11, 6),
(12, 5),
(13, 3);

INSERT INTO productos_precios (descuento, fecha, id_producto) VALUES
(10.5, '2023-10-01 10:00:00', 1),
(15.0, '2023-09-15 15:30:00', 2),
(5.0, '2023-08-20 12:00:00', 3),
(8.0, '2023-07-22 09:00:00', 4),
(12.0, '2023-11-05 16:45:00', 5),
(10.0, '2023-10-13 13:30:00', 6),
(18.0, '2023-09-10 11:00:00', 7),
(20.0, '2023-10-25 14:30:00', 8),
(22.0, '2023-08-28 10:15:00', 9),
(17.0, '2023-09-30 16:00:00', 10),
(5.5, '2023-07-05 09:30:00', 11),
(7.5, '2023-08-17 17:45:00', 12),
(25.0, '2023-06-22 12:30:00', 13);

INSERT INTO productos_descuentos (id_producto, id_categoria) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 5),
(10, 6),
(11, 6),
(12, 5),
(13, 3);
