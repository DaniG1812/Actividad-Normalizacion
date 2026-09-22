CREATE DATABASE GESTION_TIENDA_ROPA;
USE GESTION_TIENDA_ROPA;
-- 1.tabla Clientes
CREATE TABLE Clientes (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL
);
-- 2.tabla Productos
CREATE TABLE Productos (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL
);
-- 3.tabla Compras
CREATE TABLE Compras (
    id_compra INT PRIMARY KEY,
    customer_id INT,
    product_id VARCHAR(10),
    CONSTRAINT fk_compras_cliente FOREIGN KEY (customer_id) 
        REFERENCES Clientes(customer_id),
    CONSTRAINT fk_compras_producto FOREIGN KEY (product_id) 
        REFERENCES Productos(product_id)
);