USE TEST;

INSERT INTO Products(ProductName, Price) VALUES
('Laptop', 3200.00),
('Smartphone', 2200.00),
('Headphones', 300.00),
('Keyboard', 150.00),
('Mouse', 100.00);

INSERT INTO ORDERS VALUES
(1, GETDATE(), 3200.00),
(2, GETDATE(), 2200.00),
(3, GETDATE(), 300.00),
(4, GETDATE(), 150.00),
(5, GETDATE(), 100.00);

INSERT INTO OrderItems VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);