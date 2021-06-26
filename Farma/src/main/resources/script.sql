-- creacion de tablas
CREATE TABLE Cliente (
	dni CHAR(8),
	nombres VARCHAR(50),
	apellidos VARCHAR(50),
	telefono VARCHAR(20),
	PRIMARY KEY(dni)
);

CREATE TABLE Cabecera_pedido(
	id_pedido NUMERIC(4),
	fecha_pedido VARCHAR(10),
	fecha_entrega VARCHAR(10),
	direccion_entrega VARCHAR(100),
	dni CHAR(8),
	PRIMARY KEY(id_pedido),
	FOREIGN KEY(dni)
		REFERENCES Cliente(dni) 
);

CREATE TABLE Detalle_pedido(
	id_detalle NUMERIC(4),
	cantidad NUMERIC(4),
	estado CHAR(1),
	id_pedido NUMERIC(4),
	id_producto NUMERIC(4),
	PRIMARY KEY(id_detalle),
	FOREIGN KEY(id_pedido)
		REFERENCES Cabecera_pedido(id_pedido),
	FOREIGN KEY(id_producto)
		REFERENCES Producto(id_producto)
);

CREATE TABLE Producto(
	id_producto NUMERIC(4),
	nombre VARCHAR(50),
	descripcion VARCHAR(100),
	precio NUMERIC(7,2),
	stock NUMERIC(5),
	id_categoria NUMERIC(4),
	PRIMARY KEY(id_producto),
	FOREIGN KEY(id_categoria)
		REFERENCES Categoria(id_categoria)
);

CREATE TABLE Categoria(
	id_categoria NUMERIC(4),
	nombre VARCHAR(30),
	descripcion VARCHAR(100),
	PRIMARY KEY(id_categoria)
);

-- insertar registros en cliente
INSERT INTO cliente VALUES ('74639273', 'Raul','Romero Sebastian','938475832');
INSERT INTO cliente VALUES ('74823948', 'Juan Antonio','Domingo Perez','983779381');
INSERT INTO cliente VALUES ('74736492', 'Christian Joaquin','Ramirez Rios','925374632');

-- insertar registros en Cabecera_pedido
INSERT INTO Cabecera_pedido VALUES (0012,'21-06-2021','24-06-2021','Urb. Las Malvinas chalet 13 C','74639273');
INSERT INTO Cabecera_pedido VALUES (0023,'25-06-2021','27-06-2021','Jr. Antonio Bustamante Nro 123','74823948');
INSERT INTO Cabecera_pedido VALUES (0039,'28-06-2021','01-07-2021','Av. Mexico Nro 661','74736492');

-- insetar registro en detalle
INSERT INTO Detalle_pedido VALUES (0112, 2,'E',0012,0138);
INSERT INTO Detalle_pedido VALUES (0132, 1,'P',0023,0111);
INSERT INTO Detalle_pedido VALUES (0160, 3,'P',0039,0102);

-- insertar registro en producto
INSERT INTO Producto VALUES (0138,'Champuu','Marca: DOVE, Contenido: 100 g, para pelo con caspa',12.00, 123, 5);
INSERT INTO Producto VALUES (0111,'Desodorante','Marca: Rexona, Contenido: 50 g, Color de envase: Negro',10.00, 100, 5);
INSERT INTO Producto VALUES (0102,'Pastilla Hisaler','Marca: Hisaler, Contenido: 100 g, para la gripe y alergias',5.00, 205, 1);
INSERT INTO Producto VALUES (0154,'Pasta Dental','Marca: Colgate, Contenido: 100 g, para dientes mas fuertes',8.00,200,5);
INSERT INTO Producto VALUES (0200,'Perfume DENT','Marca: DENT, Contenido: 10 ml, con olor a menta',11.00,70,8);
INSERT INTO Producto VALUES (0543,'Jarabe Dolofort','Marca: Dolofort, Contenido: 500 ml, para dolores estomacales',10.00,111,1);

-- insertar registro en Categoria
INSERT INTO categoria VALUES (1,'Medicamentos','En esta categoria se encuentran articulos para mejorar la salud de las personas');
INSERT INTO categoria VALUES (5,'Aseo personal','En esta categoria se encuentran articulos para uso propio y limpieza personal');
INSERT INTO categoria VALUES (8,'Perfumeria','En esta categoria se encuentran articulos que ayudan a las personas a mejorar su olor');


-- mostrando
SELECT * FROM cliente;
SELECT * FROM Cabecera_pedido;
SELECT * FROM Detalle_pedido;
SELECT * FROM Producto;
SELECT * FROM categoria;
