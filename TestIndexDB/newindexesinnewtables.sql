-- Indeksy Dzialy
CREATE INDEX IDX_Dzialy_Nazwa ON Dzialy(Nazwa);

-- Indeksy Stanowiska
CREATE INDEX IDX_Stanowiska_Nazwa ON Stanowiska(Nazwa);
CREATE INDEX IDX_Stanowiska_Poziom ON Stanowiska(Poziom);

-- Indeksy Pracownicy
CREATE INDEX IDX_Pracownicy_DzialId ON Pracownicy(DzialId);
CREATE INDEX IDX_Pracownicy_StanowiskoId ON Pracownicy(StanowiskoId);

-- Indeksy Wynagrodzenia
CREATE INDEX IDX_Wynagrodzenia_PracownikId ON Wynagrodzenia(PracownikId);
CREATE INDEX IDX_Wynagrodzenia_Data ON Wynagrodzenia(DataWyplaty);
GO
