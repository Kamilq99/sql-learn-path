USE Library;

CREATE TABLE Books(
    BookID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
    Quantity INT,
    RENT BIT
);

CREATE TABLE Authors(
    AuthorID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
    Surname VARCHAR(50),
    BookID INT,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

CREATE TABLE Lenders(
    LenderID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
    Surname VARCHAR(50),
    BookID INT,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);