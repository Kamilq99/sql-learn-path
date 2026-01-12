USE TestDB;
GO

DECLARE @sql NVARCHAR(MAX) = N'';

SELECT @sql += 
    'ALTER INDEX ALL ON ' 
    + QUOTENAME(s.name) + '.' + QUOTENAME(t.name) 
    + ' REBUILD;'
    + CHAR(13)
FROM sys.tables t
JOIN sys.schemas s ON t.schema_id = s.schema_id;

EXEC sp_executesql @sql;
GO
