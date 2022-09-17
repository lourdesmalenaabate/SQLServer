CREATE DATABASE CursoAnalisisClase05
ON PRIMARY
(
	NAME = 'CursoAnalisisClase05_P',
	FILENAME ='C:\ArchivosDB\C\CursoAnalisisClase05_P.mdf',
	SIZE = 5MB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 5%
),
FILEGROUP CursoAnalisisClase05_FG01
(
	NAME = 'CursoAnalisisClase05_FG01',
	FILENAME ='D:\ArchivosDB\C\CursoAnalisisClase05_FG01.ndf',
	SIZE = 5MB,
	MAXSIZE = 500MB,
	FILEGROWTH = 5%
),
FILEGROUP CursoAnalisisClase05_FG02
(
	NAME = 'CursoAnalisisClase05_FG02',
	FILENAME ='D:\ArchivosDB\C\CursoAnalisisClase05_FG02.ndf',
	SIZE = 5MB,
	MAXSIZE = 500MB,
	FILEGROWTH = 5%
)
LOG ON
(
	NAME = 'CursoAnalisisClase05_LOG',
	FILENAME ='C:\ArchivosDB\C\CursoAnalisisClase05_LOG.ldf',
	SIZE = 5MB,
	MAXSIZE = 500MB,
	FILEGROWTH = 5%
)
GO
