SET NOCOUNT ON;

DECLARE @i INT = 0;

WHILE @i < 20000
BEGIN
    INSERT INTO Pracownicy (Imie, Nazwisko, Wynagrodzenie, DzialId, StanowiskoId)
    VALUES (
        LEFT(NEWID(), 8),
        LEFT(NEWID(), 8),
        CAST(RAND(CHECKSUM(NEWID())) * 9000 + 1000 AS DECIMAL(10,2)),
        (SELECT TOP 1 DzialId FROM Dzialy ORDER BY NEWID()),
        (SELECT TOP 1 StanowiskoId FROM Stanowiska ORDER BY NEWID())
    );
    SET @i += 1;
END
GO

DECLARE @p INT = 1;

WHILE @p <= (SELECT MAX(Id) FROM Pracownicy)
BEGIN
    INSERT INTO Wynagrodzenia (PracownikId, Kwota, DataWyplaty)
    SELECT 
        @p,
        CAST(RAND(CHECKSUM(NEWID())) * 9000 + 1000 AS DECIMAL(10,2)),
        DATEADD(DAY, -ABS(CHECKSUM(NEWID()) % 365), GETDATE())
    UNION ALL
    SELECT 
        @p,
        CAST(RAND(CHECKSUM(NEWID())) * 9000 + 1000 AS DECIMAL(10,2)),
        DATEADD(DAY, -ABS(CHECKSUM(NEWID()) % 365), GETDATE());

    SET @p += 1;
END
GO
