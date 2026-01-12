-- Tworzymy now¹ bazê danych
CREATE DATABASE TestDB;
GO

-- U¿ywamy nowej bazy
USE TestDB;
GO

-- Tworzymy tabelê przyk³adow¹
CREATE TABLE Pracownicy (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Imie NVARCHAR(50),
    Nazwisko NVARCHAR(50),
    Wynagrodzenie DECIMAL(10,2)
);
GO

-- Dodajemy kilka indeksów dodatkowych
CREATE INDEX IDX_Pracownicy_Nazwisko
ON Pracownicy(Nazwisko);
GO
