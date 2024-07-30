--CREATE DATABASE Agendame
GO USE Agendame GO
-- 1 categorias 
CREATE TABLE
	Categoria (
		Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
		Nombre VARCHAR(60) NOT NULL,
		Descripcion VARCHAR(200) NOT NULL
	);

GO
-- 2 estados de pagos
CREATE TABLE
	EstadoPago (
		Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
		Nombre VARCHAR(60) NOT NULL,
	) GO
	--3 generos osea sexos
CREATE TABLE
	Genero (
		Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
		Nombre VARCHAR(60) NOT NULL,
	) GO
	-- 4 Metodo de pagos 
CREATE TABLE
	MetodoPago (
		Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
		Nombre VARCHAR(60) NOT NULL,
	) GO
	--5 tipos de usuarios (Propietario, proveedor de servicios y consumidor)
CREATE TABLE
	TipoUsuario (
		Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
		Nombre VARCHAR(60) NOT NULL,
		Descripcion VARCHAR(200) NOT NULL
	) GO
	--6 Metodos de pagos, tarjea de debito, efectivo, paypal
CREATE TABLE
	MetodoPago (
		Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
		Nombre VARCHAR(60) NOT NULL,
		Descripcion VARCHAR(200) NOT NULL
	) GO
	--7 Usuarios