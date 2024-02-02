CREATE DATABASE WPmangaland;
USE WPmangaland;

CREATE TABLE Usuario (
    ID_Usuario INT IDENTITY(1,1) PRIMARY KEY,
    Nombre_Completo VARCHAR(100),
    Email VARCHAR(50),
    fecha_nac DATE,
    fecha_fac DATETIME DEFAULT GETDATE()
);

CREATE TABLE Producto (
    ID_Producto INT IDENTITY(1,1) PRIMARY KEY,
    ID_proveedor INT,
    Nombre VARCHAR(30),
    Precio INT,
    Cantidad INT,
    Categoria VARCHAR(15),
    Descripcion VARCHAR(100),
    FOREIGN KEY (ID_proveedor) REFERENCES Proveedores(ID_proveedores)
);

CREATE TABLE Proveedores (
    ID_proveedores INT IDENTITY(1,1) PRIMARY KEY,
    Empresa VARCHAR(30),
    Telefono VARCHAR(22)
);

CREATE TABLE Moneda (
    ID_Pais INT PRIMARY KEY,
    Pais VARCHAR(25)
);

CREATE TABLE Metodopago (
    idpago INT IDENTITY(1,1) PRIMARY KEY,
    user_ID INT,
    metodo VARCHAR(255),
    detallepago VARCHAR(255),
    tiempoPago DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (user_ID) REFERENCES Usuario(ID_Usuario)
);
