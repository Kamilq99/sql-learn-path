CREATE TABLE Products(
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
    Price DECIMAL(10,2),
    STATEinMagazine INT
);

CREATE TABLE Clients(
    ClientID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
    ProductID INT,
    OrderDate DATETIME,
    Quantity INT,
);

CREATE TABLE Orders(
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    ClientID INT,
    OrderDate DATETIME,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY(ClientID) REFERENCES Clients(ClientID)
);