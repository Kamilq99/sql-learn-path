CREATE DATABASE BaseTOBACKUP;
GO

USE BaseTOBACKUP;

CREATE TABLE CLIENTS(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    AGE INT
);

GO

INSERT INTO CLIENTS(FIRST_NAME, LAST_NAME, AGE) VALUES
('Ivan', 'Ivanov', 20),
('Petr', 'Petrov', 21),
('Sergey', 'Sergeev', 22),
('Vladimir', 'Vladimirov', 23),
('Mikhail', 'Mikhailov', 24);

GO