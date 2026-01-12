USE TestDB;
GO

-- Tabela Dzialy
CREATE TABLE Dzialy (
    DzialId INT IDENTITY PRIMARY KEY,
    Nazwa NVARCHAR(100)
);
GO

-- Tabela Stanowiska
CREATE TABLE Stanowiska (
    StanowiskoId INT IDENTITY PRIMARY KEY,
    Nazwa NVARCHAR(100),
    Poziom INT
);
GO

-- Modyfikujemy Pracownicy (FK)
ALTER TABLE Pracownicy
ADD DzialId INT,
    StanowiskoId INT;
GO

ALTER TABLE Pracownicy
ADD CONSTRAINT FK_Pracownicy_Dzialy
FOREIGN KEY (DzialId) REFERENCES Dzialy(DzialId);

ALTER TABLE Pracownicy
ADD CONSTRAINT FK_Pracownicy_Stanowiska
FOREIGN KEY (StanowiskoId) REFERENCES Stanowiska(StanowiskoId);
GO

-- Tabela Wynagrodzenia (historia)
CREATE TABLE Wynagrodzenia (
    WynagrodzenieId INT IDENTITY PRIMARY KEY,
    PracownikId INT NOT NULL,
    Kwota DECIMAL(10,2),
    DataWyplaty DATE
);
GO

ALTER TABLE Wynagrodzenia
ADD CONSTRAINT FK_Wynagrodzenia_Pracownicy
FOREIGN KEY (PracownikId) REFERENCES Pracownicy(Id);
GO
