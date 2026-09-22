    -- Crear Base de Datos
CREATE DATABASE IF NOT EXISTS Gestion_Biblioteca;
USE Gestion_Biblioteca;

-- 1. Tabla Clientes
CREATE TABLE Clientes (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Customer_Email VARCHAR(100) NOT NULL,
    Customer_Address VARCHAR(255) NOT NULL
);

-- 2. Tabla Libros
CREATE TABLE Libros (
    ID_Libro VARCHAR(10) PRIMARY KEY,
    Book_Title VARCHAR(150) NOT NULL,
    Book_Author VARCHAR(100) NOT NULL,
    Book_Price DECIMAL(10,2) NOT NULL
);

-- 3. Tabla Ordenes
CREATE TABLE Ordenes (
    Order_ID INT PRIMARY KEY,
    ID_Cliente INT,
    Order_Date DATE NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);

-- 4. Tabla Detalle_Orden
CREATE TABLE Detalle_Orden (
    Order_ID INT,
    ID_Libro VARCHAR(10),
    Quantity INT NOT NULL,
    PRIMARY KEY (Order_ID, ID_Libro),
    FOREIGN KEY (Order_ID) REFERENCES Ordenes(Order_ID),
    FOREIGN KEY (ID_Libro) REFERENCES Libros(ID_Libro)
);

-- Insertar Datos
INSERT INTO Clientes (Customer_Name, Customer_Email, Customer_Address) VALUES 
('John Smith', 'john@email.com', '123 Main St, Boston, MA 02101'),
('Jane Doe', 'jane@email.com', '456 Oak Avenue, Portland, OR 97201'),
('Sarah Johnson', 'sarah.j@company.com', '789 Pine Street, Seattle, WA 98101');

INSERT INTO Libros VALUES 
('L01', 'Database Design Principles', 'C.J. Date', 45.99),
('L02', 'SQL Cookbook', 'Anthony Molinaro', 39.99),
('L03', 'Advanced SQL Techniques', 'Joe Celko', 52.99);

INSERT INTO Ordenes VALUES 
(1, 1, '2024-01-15'),
(2, 1, '2024-01-20'),
(3, 2, '2024-01-18'),
(4, 1, '2024-02-01'),
(5, 3, '2024-02-03');

INSERT INTO Detalle_Orden VALUES 
(1, 'L01', 2),
(1, 'L02', 1),
(2, 'L01', 1),
(3, 'L02', 1),
(4, 'L03', 1),
(5, 'L01', 3);
