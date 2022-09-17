--sp_helpdb 'CursoAnalisis'

ALTER DATABASE CursoAnalisis ADD FILEGROUP ArchivoRelaciones
GO

-- archivos fisicos

ALTER DATABASE CursoAnalisis ADD FILE
(
	NAME = 'Archivo1',
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Archivo1.ndf',
	SIZE = 5MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 5MB
) 
TO FILEGROUP ArchivoRelaciones
GO









