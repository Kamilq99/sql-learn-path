INSERT INTO Products (Name, Price, STATEinMagazine) VALUES
('Laptop Dell XPS 13', 5299.99, 10),
('Smartwatch Garmin Venu 2', 1499.50, 25),
('Headphones Sony WH-1000XM5', 1349.00, 15);

-- Wypełnianie tabeli Clients
INSERT INTO Clients (Name, ProductID, OrderDate, Quantity) VALUES
('Michał Zalewski', 1, '2025-05-10 10:30:00', 1),
('Katarzyna Maj', 2, '2025-05-11 14:00:00', 2),
('Tomasz Nowicki', 3, '2025-05-12 09:45:00', 1);

-- Wypełnianie tabeli Orders (licząc TotalAmount z Products.Price * Quantity)
INSERT INTO Orders (ClientID, OrderDate, TotalAmount) VALUES
(1, '2025-05-10 10:30:00', 5299.99),
(2, '2025-05-11 14:00:00', 1499.50 * 2),
(3, '2025-05-12 09:45:00', 1349.00);