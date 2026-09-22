CREATE DATABASE GESTION_PELICULAS;
USE GESTION_PELICULAS;
-- 1.tabla Clientes
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    full_names VARCHAR(100) NOT NULL,
    physical_address VARCHAR(150) NOT NULL,
    salutation VARCHAR(10) NOT NULL
);
-- 2.tabla Peliculas
CREATE TABLE Peliculas (
    id_pelicula VARCHAR(10) PRIMARY KEY,
    movies_rented VARCHAR(100) NOT NULL
);
-- 3.tabla Alquileres
CREATE TABLE Alquileres (
    id_cliente INT,
    id_pelicula VARCHAR(10),
    PRIMARY KEY (id_cliente, id_pelicula), -- Llave primaria compuesta
    CONSTRAINT fk_alquiler_cliente FOREIGN KEY (id_cliente) 
        REFERENCES Clientes(id_cliente),
    CONSTRAINT fk_alquiler_pelicula FOREIGN KEY (id_pelicula) 
        REFERENCES Peliculas(id_pelicula)
);