-- Crear base de datos Agendame
CREATE DATABASE Agendame;
GO

-- Usar base de datos Agendame
USE Agendame;
GO

-- Tabla Categoria
CREATE TABLE Categoria (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Nombre VARCHAR(60) NOT NULL,
    Descripcion VARCHAR(200) NOT NULL
);
GO

-- Tabla EstadoPago
CREATE TABLE EstadoPago (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Nombre VARCHAR(60) NOT NULL
);
GO

-- Tabla Genero
CREATE TABLE Genero (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Nombre VARCHAR(60) NOT NULL
);
GO

-- Tabla MetodoPago
CREATE TABLE MetodoPago (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Nombre VARCHAR(60) NOT NULL,
    Descripcion VARCHAR(200) NOT NULL
);
GO

-- Tabla TipoUsuario
CREATE TABLE TipoUsuario (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Nombre VARCHAR(60) NOT NULL,
    Descripcion VARCHAR(200) NOT NULL
);
GO

-- Tabla Direccion
CREATE TABLE Direccion (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Calle VARCHAR(60) NOT NULL,
    Ciudad VARCHAR(60) NOT NULL,
    Departamento VARCHAR(60) NOT NULL,
    Latitud DECIMAL(18, 6) NOT NULL,
    Longitud DECIMAL(18, 6) NOT NULL
);
GO

-- Tabla Usuario
CREATE TABLE Usuario (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Nombre VARCHAR(60) NOT NULL,
    Apellido VARCHAR(60) NOT NULL,
    FechaNacimiento DATE NOT NULL,
    IdDireccion INT NOT NULL FOREIGN KEY REFERENCES Direccion(Id),
    IdTipoUsuario INT NOT NULL FOREIGN KEY REFERENCES TipoUsuario(Id),
    Telefono VARCHAR(20) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    IdGenero INT NOT NULL FOREIGN KEY REFERENCES Genero(Id),
    IdFotoPerfil INT NOT NULL
);
GO

-- Tabla Propietario
CREATE TABLE Propietario (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    IdUsuario INT NOT NULL FOREIGN KEY REFERENCES Usuario(Id)
);
GO

-- Tabla Local
CREATE TABLE [Local] (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Nombre VARCHAR(60) NOT NULL,
    IdCategoria INT NOT NULL FOREIGN KEY REFERENCES Categoria(Id),
    TelefonoLocal VARCHAR(20) NOT NULL,
    Horario VARCHAR(60) NOT NULL,
    TotalTrabajadores INT NOT NULL,
    IdDireccion INT NOT NULL FOREIGN KEY REFERENCES Direccion(Id),
    CodigoAutomatico VARCHAR(60) NOT NULL,
    CodigoExpiracion DATETIME NOT NULL,
    IdPropietario INT NOT NULL FOREIGN KEY REFERENCES Propietario(Id)
);
GO

-- Tabla Servicio
CREATE TABLE Servicio (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Nombre VARCHAR(60) NOT NULL,
    Descripcion VARCHAR(255) NULL,
    TiempoEstimado INT NOT NULL,
    Costo DECIMAL(18, 2) NOT NULL,
    IdCategoria INT NOT NULL FOREIGN KEY REFERENCES Categoria(Id)
);
GO

-- Tabla LocalFoto
CREATE TABLE LocalFoto (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    IdLocal INT NOT NULL FOREIGN KEY REFERENCES Local(Id),
    Foto VARCHAR(255) NOT NULL
);
GO

-- Tabla LocalServicio (Relacion muchos a muchos entre Local y Servicio)
CREATE TABLE LocalServicio (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    LocalId INT NOT NULL FOREIGN KEY REFERENCES Local(Id),
    ServicioId INT NOT NULL FOREIGN KEY REFERENCES Servicio(Id)
);
GO
