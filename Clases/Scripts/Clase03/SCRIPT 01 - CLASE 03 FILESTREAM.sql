CREATE DATABASE CursoAnalisis_Archivos
ON PRIMARY 
(
	NAME = 'CursoAnalisis_Archivos_P',
	FILENAME = 'C:\ArchivosDB\C\CursoAnalisis_Archivos_P.mdf',
	SIZE = 5MB,
	MAXSIZE = 500MB,
	FILEGROWTH = 5%
),
FILEGROUP CursoAnalisis_Archivos_FG1
(
	NAME = 'CursoAnalisis_Archivos_S1',
	FILENAME = 'C:\ArchivosDB\D\CursoAnalisis_Archivos_S1.ndf',
	SIZE = 5MB,
	MAXSIZE = 500MB,
	FILEGROWTH = 5%
),
FILEGROUP CursoAnalisis_Archivos_FG2 CONTAINS FILESTREAM DEFAULT
(
	NAME = 'CursoAnalisis_Archivos_FG2',
	FILENAME = 'C:\ArchivosDB\D\CursoAnalisis_Archivos_FG2',
	MAXSIZE = UNLIMITED 
)
LOG ON 
(
	NAME = 'CursoAnalisis_Archivos_log',
	FILENAME = 'C:\ArchivosDB\C\CursoAnalisis_Archivos_log.ldf',
	SIZE = 5MB,
	MAXSIZE = 500MB,
	FILEGROWTH = 5%
)
GO
