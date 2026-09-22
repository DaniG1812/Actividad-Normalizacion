-- Crear Base de Datos
CREATE DATABASE IF NOT EXISTS Gestion_Vivero;
USE Gestion_Vivero;

-- 1. Tabla Ubicaciones
CREATE TABLE Ubicaciones (
    Location_Code INT PRIMARY KEY,
    Location_Name VARCHAR(100) NOT NULL
);

-- 2. Tabla Suelos
CREATE TABLE Suelos (
    Soil_Category VARCHAR(10) PRIMARY KEY,
    Soil_Description VARCHAR(100) NOT NULL
);

-- 3. Tabla Plantas
CREATE TABLE Plantas (
    Plant_Code INT PRIMARY KEY,
    Plant_Name VARCHAR(100) NOT NULL
);

-- 4. Tabla Inventario_Vivero
CREATE TABLE Inventario_Vivero (
    Location_Code INT,
    Plant_Code INT,
    Soil_Category VARCHAR(10),
    PRIMARY KEY (Location_Code, Plant_Code),
    FOREIGN KEY (Location_Code) REFERENCES Ubicaciones(Location_Code),
    FOREIGN KEY (Plant_Code) REFERENCES Plantas(Plant_Code),
    FOREIGN KEY (Soil_Category) REFERENCES Suelos(Soil_Category)
);

-- Insertar Datos
INSERT INTO Ubicaciones VALUES 
(11, 'Kirstenbosch Gardens'),
(12, 'Karbonkelberg Mountains');

INSERT INTO Suelos VALUES 
('A', 'Sandstone'),
('B', 'Sandstone/limestone'),
('C', 'Limestone');

INSERT INTO Plantas VALUES 
(431, 'Leucadendron'),
(446, 'Protea'),
(482, 'Erica'),
(449, 'Restio');

INSERT INTO Inventario_Vivero VALUES 
(11, 431, 'A'),
(11, 446, 'B'),
(11, 482, 'C'),
(12, 431, 'A'),
(12, 449, 'B');
