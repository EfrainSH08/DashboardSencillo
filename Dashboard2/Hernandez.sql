CREATE DATABASE Hernanchez;
GO

USE Hernanchez;
GO


CREATE TABLE Customer (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100),
    Phone NVARCHAR(20)
);


CREATE TABLE Supplier (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100),
    Phone NVARCHAR(20)
);


CREATE TABLE Product (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(100) NOT NULL,
    Stock INT NOT NULL,
    IsDiscontinued BIT NOT NULL
);

CREATE TABLE [Order] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    CustomerId INT,
    OrderDate DATETIME NOT NULL,
    TotalAmount DECIMAL(18, 2) NOT NULL,
    FOREIGN KEY (CustomerId) REFERENCES Customer(Id)
);



CREATE TABLE OrderItem (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    OrderId INT,
    ProductId INT,
    Quantity INT NOT NULL,
    FOREIGN KEY (OrderId) REFERENCES [Order](Id),
    FOREIGN KEY (ProductId) REFERENCES Product(Id)
);


INSERT INTO Customer (Name, Email, Phone)
VALUES 
('John Doe', 'john.doe@example.com', '555-1234'),
('Jane Smith', 'jane.smith@example.com', '555-5678');

INSERT INTO Supplier (Name, Email, Phone)
VALUES 
('ABC Supplies', 'contact@abc.com', '555-8765'),
('XYZ Traders', 'info@xyz.com', '555-4321');

INSERT INTO Product (ProductName, Stock, IsDiscontinued)
VALUES 
('Product A', 50, 0),
('Product B', 20, 0),
('Product C', 5, 0),
('Product D', 100, 1),
('Product E', 2, 0);

INSERT INTO [Order] (CustomerId, OrderDate, TotalAmount)
VALUES 
(1, GETDATE() - 7, 100.00),
(2, GETDATE() - 6, 200.00),
(1, GETDATE() - 5, 150.00),
(2, GETDATE() - 4, 300.00);


INSERT INTO OrderItem (OrderId, ProductId, Quantity)
VALUES 
(1, 1, 2),
(1, 2, 1),
(2, 2, 3),
(2, 3, 5),
(3, 1, 1),
(3, 3, 2),
(4, 2, 4),
(4, 3, 2);


SELECT * FROM Customer;
SELECT * FROM Supplier;
SELECT * FROM Product;
SELECT * FROM [Order];
SELECT * FROM OrderItem;


CREATE TABLE Customer (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100),
    Phone NVARCHAR(20)
);

CREATE TABLE Supplier (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100),
    Phone NVARCHAR(20)
);

CREATE TABLE Product (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(100) NOT NULL,
    Stock INT NOT NULL,
    IsDiscontinued BIT NOT NULL
);

CREATE TABLE [Order] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    CustomerId INT,
    OrderDate DATETIME NOT NULL,
    TotalAmount DECIMAL(18, 2) NOT NULL,
    FOREIGN KEY (CustomerId) REFERENCES Customer(Id)
);

CREATE TABLE OrderItem (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    OrderId INT,
    ProductId INT,
    Quantity INT NOT NULL,
    FOREIGN KEY (OrderId) REFERENCES [Order](Id),
    FOREIGN KEY (ProductId) REFERENCES Product(Id)
);
--dasdasdasdadadasdasdasdasd

INSERT INTO Customer (Name, Email, Phone)
VALUES 
('John Doe', 'john.doe@example.com', '555-1234'),
('Jane Smith', 'jane.smith@example.com', '555-5678');

INSERT INTO Supplier (Name, Email, Phone)
VALUES 
('ABC Supplies', 'contact@abc.com', '555-8765'),
('XYZ Traders', 'info@xyz.com', '555-4321');

INSERT INTO Product (ProductName, Stock, IsDiscontinued)
VALUES 
('Product A', 50, 0),
('Product B', 20, 0),
('Product C', 5, 0),
('Product D', 100, 1),
('Product E', 2, 0);

INSERT INTO [Order] (CustomerId, OrderDate, TotalAmount)
VALUES 
(1, DATEADD(DAY, -7, GETDATE()), 100.00),
(2, DATEADD(DAY, -6, GETDATE()), 200.00),
(1, DATEADD(DAY, -5, GETDATE()), 150.00),
(2, DATEADD(DAY, -4, GETDATE()), 300.00);

INSERT INTO OrderItem (OrderId, ProductId, Quantity)
VALUES 
(1, 1, 2),
(1, 2, 1),
(2, 2, 3),
(2, 3, 5),
(3, 1, 1),
(3, 3, 2),
(4, 2, 4),
(4, 3, 2);


---dasdasdasdasdasdasdasd
-- Customers
INSERT INTO Customer (Name) VALUES ('Alice');
INSERT INTO Customer (Name) VALUES ('Bob');
INSERT INTO Customer (Name) VALUES ('Charlie');
INSERT INTO Customer (Name) VALUES ('David');
INSERT INTO Customer (Name) VALUES ('Eve');

-- Suppliers
INSERT INTO Supplier (Name) VALUES ('Supplier A');
INSERT INTO Supplier (Name) VALUES ('Supplier B');
INSERT INTO Supplier (Name) VALUES ('Supplier C');
INSERT INTO Supplier (Name) VALUES ('Supplier D');

-- Products
INSERT INTO Product (ProductName, Stock, IsDiscontinued) VALUES ('Product 1', 100, 0);
INSERT INTO Product (ProductName, Stock, IsDiscontinued) VALUES ('Product 2', 150, 0);
INSERT INTO Product (ProductName, Stock, IsDiscontinued) VALUES ('Product 3', 200, 0);
INSERT INTO Product (ProductName, Stock, IsDiscontinued) VALUES ('Product 4', 250, 0);
INSERT INTO Product (ProductName, Stock, IsDiscontinued) VALUES ('Product 5', 300, 0);

-- Orders
INSERT INTO [Order] (OrderDate, CustomerId, TotalAmount) VALUES ('2024-05-01', 1, 500.00);
INSERT INTO [Order] (OrderDate, CustomerId, TotalAmount) VALUES ('2024-05-02', 2, 700.00);
INSERT INTO [Order] (OrderDate, CustomerId, TotalAmount) VALUES ('2024-05-03', 3, 300.00);
INSERT INTO [Order] (OrderDate, CustomerId, TotalAmount) VALUES ('2024-05-04', 4, 900.00);
INSERT INTO [Order] (OrderDate, CustomerId, TotalAmount) VALUES ('2024-05-05', 5, 1200.00);

-- OrderItems
INSERT INTO OrderItem (OrderId, ProductId, Quantity) VALUES (1, 1, 10);
INSERT INTO OrderItem (OrderId, ProductId, Quantity) VALUES (1, 2, 5);
INSERT INTO OrderItem (OrderId, ProductId, Quantity) VALUES (2, 2, 15);
INSERT INTO OrderItem (OrderId, ProductId, Quantity) VALUES (2, 3, 10);
INSERT INTO OrderItem (OrderId, ProductId, Quantity) VALUES (3, 1, 20);
INSERT INTO OrderItem (OrderId, ProductId, Quantity) VALUES (3, 3, 10);
INSERT INTO OrderItem (OrderId, ProductId, Quantity) VALUES (4, 4, 25);
INSERT INTO OrderItem (OrderId, ProductId, Quantity) VALUES (4, 5, 30);
INSERT INTO OrderItem (OrderId, ProductId, Quantity) VALUES (5, 1, 35);
INSERT INTO OrderItem (OrderId, ProductId, Quantity) VALUES (5, 2, 20);


--ddasdasdasdasdasdas

-- Clientes
INSERT INTO Customer (Name, Email, Phone)
VALUES 
('Juan Pérez', 'juan.perez@example.com', '555-1234'),
('María López', 'maria.lopez@example.com', '555-5678'),
('Carlos Hernández', 'carlos.hernandez@example.com', '555-2345'),
('Ana García', 'ana.garcia@example.com', '555-6789'),
('Luis Martínez', 'luis.martinez@example.com', '555-3456');

-- Proveedores
INSERT INTO Supplier (Name, Email, Phone)
VALUES 
('Proveedores del Norte', 'contacto@proveedoresnorte.com', '555-8765'),
('Comercial XYZ', 'info@comercialxyz.com', '555-4321'),
('Distribuidora Central', 'ventas@distcentral.com', '555-5432'),
('Almacenes del Sur', 'servicio@almacenessur.com', '555-6543');

-- Productos
INSERT INTO Product (ProductName, Stock, IsDiscontinued)
VALUES 
('Producto A', 50, 0),
('Producto B', 20, 0),
('Producto C', 5, 0),
('Producto D', 100, 1),
('Producto E', 2, 0),
('Producto F', 75, 0),
('Producto G', 10, 0),
('Producto H', 30, 0);

-- Órdenes
INSERT INTO [Order] (CustomerId, OrderDate, TotalAmount)
VALUES 
(1, '2024-04-01', 150.00),
(2, '2024-04-02', 300.00),
(3, '2024-04-03', 200.00),
(4, '2024-04-04', 250.00),
(5, '2024-04-05', 350.00),
(1, '2024-04-06', 400.00),
(2, '2024-04-07', 500.00),
(3, '2024-04-08', 450.00),
(4, '2024-04-09', 550.00),
(5, '2024-04-10', 600.00),
(1, '2024-04-11', 650.00),
(2, '2024-04-12', 700.00),
(3, '2024-04-13', 750.00),
(4, '2024-04-14', 800.00),
(5, '2024-04-15', 850.00);

-- Detalles de las Órdenes
INSERT INTO OrderItem (OrderId, ProductId, Quantity)
VALUES 
(1, 1, 2),
(1, 2, 1),
(2, 2, 3),
(2, 3, 5),
(3, 1, 1),
(3, 3, 2),
(4, 2, 4),
(4, 3, 2),
(5, 1, 3),
(5, 2, 2),
(6, 3, 1),
(6, 4, 2),
(7, 5, 3),
(7, 6, 1),
(8, 7, 2),
(8, 8, 3),
(9, 1, 1),
(9, 2, 4),
(10, 3, 2),
(10, 4, 1),
(11, 5, 3),
(11, 6, 2),
(12, 7, 1),
(12, 8, 4),
(13, 1, 2),
(13, 2, 3),
(14, 3, 1),
(14, 4, 2),
(15, 5, 3),
(15, 6, 1);
