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

-- Tabla EstadoCita
CREATE TABLE EstadoCita (
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
    IdFotoPerfil INT NOT NULL,
    Contraseña VARCHAR(255) NOT NULL
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

-- Tabla LocalServicio
CREATE TABLE LocalServicio (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    LocalId INT NOT NULL FOREIGN KEY REFERENCES Local(Id),
    ServicioId INT NOT NULL FOREIGN KEY REFERENCES Servicio(Id)
);
GO

-- Tabla Cita
CREATE TABLE Cita (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    UsuarioID INT NOT NULL FOREIGN KEY REFERENCES Usuario(Id), -- Consumidor
    ProveedorID INT NOT NULL FOREIGN KEY REFERENCES Usuario(Id), -- Proveedor de Servicios
    LocalID INT NOT NULL FOREIGN KEY REFERENCES Local(Id), -- Opcional, puede ser NULL si es a domicilio
    ServicioID INT NOT NULL FOREIGN KEY REFERENCES Servicio(Id),
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    EstadoID INT NOT NULL FOREIGN KEY REFERENCES EstadoCita(Id),
    Comentarios VARCHAR(255)
);
GO

-- Tabla Pago
CREATE TABLE Pago (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    CitaID INT NOT NULL FOREIGN KEY REFERENCES Cita(Id),
    Monto DECIMAL(18, 2) NOT NULL,
    Porcentaje INT NOT NULL CHECK (Porcentaje IN (15, 30, 50, 75, 100)),
    Fecha DATE NOT NULL,
    MetodoPagoID INT NOT NULL FOREIGN KEY REFERENCES MetodoPago(Id),
    EstadoPagoID INT NOT NULL FOREIGN KEY REFERENCES EstadoPago(Id)
);
GO

-- Tabla Trabajador (Relacion muchos a muchos entre Local y Usuario)
CREATE TABLE Trabajador (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    LocalId INT NOT NULL FOREIGN KEY REFERENCES Local(Id),
    UsuarioId INT NOT NULL FOREIGN KEY REFERENCES Usuario(Id)
);
GO

-- Tabla FotoPerfil
CREATE TABLE FotoPerfil (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    IdUsuario INT NOT NULL FOREIGN KEY REFERENCES Usuario(Id),
    Foto VARCHAR(255) NOT NULL
);
GO

-- Tabla Domicilio (Para servicios a domicilio)
CREATE TABLE Domicilio (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    IdUsuario INT NOT NULL FOREIGN KEY REFERENCES Usuario(Id),
    Calle VARCHAR(60) NOT NULL,
    Ciudad VARCHAR(60) NOT NULL,
    Departamento VARCHAR(60) NOT NULL,
    Latitud DECIMAL(18, 6) NOT NULL,
    Longitud DECIMAL(18, 6) NOT NULL
);
GO

-- Tabla Notificaciones
CREATE TABLE Notificaciones (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    IdUsuario INT NOT NULL FOREIGN KEY REFERENCES Usuario(Id),
    Titulo VARCHAR(60) NOT NULL,
    Mensaje VARCHAR(255) NOT NULL,
    Fecha DATETIME NOT NULL,
    Estado INT NOT NULL DEFAULT 0 -- 0: No leída, 1: Leída
);
GO

-- Tabla Reservas
CREATE TABLE Reservas (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    UsuarioId INT NOT NULL FOREIGN KEY REFERENCES Usuario(Id),
    ServicioId INT NOT NULL FOREIGN KEY REFERENCES Servicio(Id),
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    Confirmada BIT NOT NULL DEFAULT 0 -- 0: No confirmada, 1: Confirmada
);
GO
