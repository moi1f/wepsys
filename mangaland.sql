create database WPmangaland 
use WPmangaland

CREATE TABLE Usuario (
ID_Usuario INT IDENTITY(1,1) PRIMARY KEY,
Nombre_Completo VARCHAR(100),
Email VARCHAR(50),
fecha_nac DATE,
fecha_fac DATETIME DEFAULT GETDATE()
);


create table producto(
ID_Producto INT IDENTITY(1,1) PRIMARY KEY,
ID_proveedor int,
Nombre varchar(30),
Precio int,
Cantidad int,
Categoria varchar (15),
Descripción varchar(100)
);

create table Proveedores(
ID_proveedores INT IDENTITY(1,1) PRIMARY KEY,
Empresa varchar(30),
ID_producto int,
Telefono varchar (22),
);

create table moneda(
ID_Pais int primary key, 
Pais Varchar (25),
);

CREATE TABLE Metodopago (
  idpago INT IDENTITY(1,1) PRIMARY KEY,
  user_ID INT,
  metodo VARCHAR(255),
  detallepago VARCHAR(255),
  tiempoPago DATETIME DEFAULT GETDATE(),

);
FOREIGN KEY (user_ID) REFERENCES Users(user_ID)

select * from Metodopago
