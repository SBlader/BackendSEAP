-- Crear la base de datos EmergenciasHidricas
DROP DATABASE EmergenciasHidricas;
CREATE DATABASE EmergenciasHidricas;
USE EmergenciasHidricas;

-- Crear la tabla Responsable
CREATE TABLE Responsable (
    Rut VARCHAR(20) PRIMARY KEY,
    correo VARCHAR(50),
    nombre VARCHAR(50),
    contrato INT,
    telefono VARCHAR(15)
);

-- Crear la tabla Area
CREATE TABLE Area (
    ID INT PRIMARY KEY,
    nombre VARCHAR(50)
);

-- Crear la tabla Vecinos
CREATE TABLE Vecinos (
    Rut VARCHAR(20) PRIMARY KEY,
    grupo_familiar INT,
    referencia VARCHAR(100),
    nombre VARCHAR(50),
    telefono VARCHAR(15),
    fsh INT,
    activo BOOLEAN,
    litro DECIMAL(10, 2),
    propiedad_estanque VARCHAR(50),
    coordenadas VARCHAR(50),
    UltimaFecha DATE,
    IDArea INT,
    FOREIGN KEY (IDArea) REFERENCES Area(ID)
);

-- Crear la tabla Visitas
CREATE TABLE Visitas (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    RutResponsable VARCHAR(20),
    RutVecino VARCHAR(20),
    litros DECIMAL(10,2), 
    comentario VARCHAR(255),
    folio VARCHAR(20),
    fecha DATE,
    estado VARCHAR(20),
    clorado DECIMAL(10,2),
    FOREIGN KEY (RutResponsable) REFERENCES Responsable(Rut),
    FOREIGN KEY (RutVecino) REFERENCES Vecinos(Rut)
);

CREATE TABLE Usuarios (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    rut VARCHAR(20),
	name VARCHAR(20),
	password VARCHAR(20)
);


-- Insertar datos en la tabla Responsable
INSERT INTO Responsable (Rut, correo, nombre, contrato, telefono) 
VALUES 
('11111111-1', 'responsable1@example.com', 'Juan Perez', 1, '123456789'),
('22222222-2', 'responsable2@example.com', 'Maria Rodriguez', 2, '987654321'),
('11.962.433-9','responsable3@exaple.com','Luis',3,'111111111');


-- Insertar datos en la tabla Area
INSERT INTO Area (ID, nombre)
VALUES 
(1, 'Área A'),
(2, 'Área B');

-- Insertar datos en la tabla Vecinos
INSERT INTO Vecinos (Rut, grupo_familiar, referencia, nombre, telefono, fsh, activo, litro, propiedad_estanque, coordenadas, UltimaFecha,IDArea)
VALUES 
('33333333-3', 3, 'Referencia 1', 'Adolfo Contreras', '111222333', 60, 1, 100.5, 'Propiedad 1', '10.1234, -20.5678',"2023-01-11", 1),
('44444444-4', 4, 'Referencia 2', 'Camila Lara', '444555666', 50, 0, 75.2, 'Propiedad 2', '15.4321, -25.6789',"2023-11-15", 2),
('55555555-5', 4, 'Referencia 3', 'Sergio Olivares', '844585666', 60, 0, 75.2, 'Propiedad 2', '15.4321, -25.6789',"2023-12-23", 2),
('66666666-6', 4, 'Referencia 4', 'Sebastian Reyes', '402355666', 60, 0, 75.2, 'Propiedad 2', '15.4321, -25.6789',"2023-12-28", 2),
('77777777-7', 4, 'Referencia 5', 'Sandra Carmona', '544905666', 50, 0, 75.2, 'Propiedad 2', '15.4321, -25.6789',"2023-03-12", 2);

-- Insertar datos en la tabla Visitas
INSERT INTO Visitas (RutResponsable, RutVecino, litros, comentario, folio, fecha, estado, clorado)
VALUES 
('11111111-1', '33333333-3', 50.0, 'Visita de prueba 1', 'FOLIO001', '2023-03-01', 'Completada', 1),
('22222222-2', '44444444-4', 30.5, 'Visita de prueba 2', 'FOLIO002', '2023-03-02', 'Pendiente', 0);

INSERT INTO Usuarios (rut,name, password) VALUES ('11.962.433-9','Luis','password');
