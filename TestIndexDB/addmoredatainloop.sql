-- U¿ywamy naszej bazy
USE TestDB;
GO

-- Dodajemy 10 000 losowych rekordów
SET NOCOUNT ON;

DECLARE @i INT = 0;

WHILE @i < 10000
BEGIN
    INSERT INTO Pracownicy (Imie, Nazwisko, Wynagrodzenie)
    VALUES (
        LEFT(NEWID(), 8),            -- Losowe imiê
        LEFT(NEWID(), 8),            -- Losowe nazwisko
        CAST(RAND()*9000 + 1000 AS DECIMAL(10,2))  -- Wynagrodzenie miêdzy 1000 a 10000
    );
    SET @i = @i + 1;
END
GO
