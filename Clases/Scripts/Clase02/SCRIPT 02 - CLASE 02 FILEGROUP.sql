-- CREAR DESDE CERO
xp_create_subdir 'C:\ArchivosDB\C'
GO
xp_create_subdir 'C:\ArchivosDB\D'
GO

CREATE DATABASE CursoAnalisis2 
ON PRIMARY -- FILEGROUP
(
	NAME = 'CursoAnalisis2_1',
	FILENAME = 'C:\ArchivosDB\C\CursoAnalisis2_1.mdf',
	SIZE = 5MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 5MB
),
FILEGROUP CursoAnalisis2FG
(
	NAME = 'CursoAnalisis2_2',
	FILENAME = 'C:\ArchivosDB\D\CursoAnalisis2_2.ndf',
	SIZE = 5MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 5MB
)
LOG ON
(
	NAME = 'CursoAnalisis2_log',
	FILENAME = 'C:\ArchivosDB\C\CursoAnalisis2_log.ldf',
	SIZE = 5MB ,
	MAXSIZE = 100MB,
	FILEGROWTH = 5MB
)
GO


