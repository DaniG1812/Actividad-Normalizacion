CREATE DATABASE Gestion_pedidos;
USE Gestion_pedidos;
-- 1.tabla Clientes
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nom_cliente VARCHAR(100) NOT NULL,
    estado VARCHAR(50)
);
-- 2.tabla Productos
CREATE TABLE Productos (
    num_item INT PRIMARY KEY,
    desc_item VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);
-- 3. Crear tabla Ordenes
CREATE TABLE Ordenes (
    id_orden INT PRIMARY KEY,
    fecha DATE NOT NULL,
    id_cliente INT,
    CONSTRAINT fk_orden_cliente FOREIGN KEY (id_cliente) 
        REFERENCES Clientes(id_cliente)
);
-- 4.tabla Detalle_Orden
CREATE TABLE Detalle_Orden (
    id_orden INT,
    num_item INT,
    cant INT NOT NULL,
    PRIMARY KEY (id_orden, num_item), -- Llave primaria compuesta
    CONSTRAINT fk_detalle_orden FOREIGN KEY (id_orden) 
        REFERENCES Ordenes(id_orden),
    CONSTRAINT fk_detalle_producto FOREIGN KEY (num_item) 
        REFERENCES Productos(num_item)
);
