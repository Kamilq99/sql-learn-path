USE Library;

INSERT INTO Books(Name, Quantity, RENT) VALUES
('Wiedźmin: Ostatnie Życzenie ', 10, 0),
('Pan Tadeusz', 5, 1),
('Lalka', 8, 0),
('Zbrodnia i Kara', 12, 1),
('Władca Pierścieni', 6, 0);

INSERT INTO Authors(Name, Surname, BookID) VALUES
('Andrzej Sapkowski', 'Sapkowski', 1),
('Adam Mickiewicz', 'Mickiewicz', 2),
('Bolesław Prus', 'Prus', 3),
('Fiodor Dostojewski', 'Dostojewski', 4),
('JRR Tolkien', 'Tolkien', 5);

INSERT INTO Lenders(Name, Surname, BookID) VALUES
('Jan Kowalski', 'Kowalski', 1),
('Marek Nowak', 'Nowak', 2),
('Tomasz Kowalski', 'Kowalski', 3),
('Krzysztof Nowak', 'Nowak', 4),
('Piotr Kowalski', 'Kowalski', 5);