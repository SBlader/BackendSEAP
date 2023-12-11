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
('11.962.433-9','responsable3@exaple.com','Luis',3,'111111111'),
('21.142.295-5', 'responsable4@example.com', 'Benjamin', 4, '+569 11223344');


-- Insertar datos en la tabla Area
INSERT INTO Area (ID, nombre)
VALUES 
(1, 'Área A'),
(2, 'Área B');

-- Insertar datos en la tabla Vecinos
INSERT INTO Vecinos (Rut, grupo_familiar, referencia, nombre, telefono, fsh, activo, litro, propiedad_estanque, coordenadas, UltimaFecha, IDArea)
VALUES
('12.345.678-9', 1, 'Calle A #123', 'Juan Pérez', '+56987654321', 70, 1, 80.40, 'Casa', '25.6789, -30.1234', NULL, 1),
('23.456.789-0', 2, 'Avenida B #456', 'María González', '+56123456789', 80, 0, 60.80, 'Apartamento', '30.4321, -35.8765', NULL, 2),
('34.567.890-1', 3, 'Calle C #789', 'Luis Rodríguez', '+56987654321', 90, 1, 95.20, 'Casa', '35.9876, -40.4321', NULL, 1),
('45.678.901-2', 4, 'Avenida D #1011', 'Carolina Martínez', '+56123456789', 100, 0, 70.60, 'Departamento', '40.1234, -45.9876', NULL, 2),
('56.789.012-3', 5, 'Calle E #1213', 'Pedro Sánchez', '+56987654321', 110, 1, 85.90, 'Casa', '45.6789, -50.5432', NULL, 1),
('67.890.123-4', 6, 'Avenida F #1415', 'Laura Pérez', '+56123456789', 120, 0, 65.30, 'Apartamento', '50.2345, -55.0987', NULL, 2),
('78.901.234-5', 7, 'Calle G #1617', 'Carlos González', '+56987654321', 130, 1, 100.10, 'Casa', '55.7890, -60.6543', NULL, 1),
('89.012.345-6', 8, 'Avenida H #1819', 'Ana Rodríguez', '+56123456789', 140, 0, 75.70, 'Departamento', '60.3456, -65.2098', NULL, 2),
('90.123.456-7', 9, 'Calle I #2021', 'Diego Martínez', '+56987654321', 150, 1, 90.30, 'Casa', '65.9012, -70.7654', NULL, 1),
('01.234.567-8', 10, 'Avenida J #2223', 'Elena Sánchez', '+56123456789', 160, 0, 80.80, 'Departamento', '70.4567, -75.3209', NULL, 2);


-- Insertar datos en la tabla Visitas
INSERT INTO Visitas (RutResponsable, RutVecino, litros, comentario, folio, fecha, estado, clorado)
VALUES 
('11111111-1', '12.345.678-9', 50.0, 'Visita de prueba 1', 'FOLIO001', '2023-03-01', 'Completada', 1),
('22222222-2', '23.456.789-0', 30.5, 'Visita de prueba 2', 'FOLIO002', '2023-03-02', 'Pendiente', 0);

INSERT INTO Usuarios (rut,name, password) VALUES ('11.962.433-9','Luis','password'), ('21.142.295-5', 'Benjamin', 'password');
