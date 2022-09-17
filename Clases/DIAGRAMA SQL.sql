CREATE DATABASE CursoAnalisisDiagrama
GO

USE CursoAnalisisDiagrama
GO

CREATE TABLE Cursos(
	Id INT IDENTITY,
	Descripcion VARCHAR(100) NOT NULL,
	CONSTRAINT PK_CursosID PRIMARY KEY(Id)
)
GO

CREATE TABLE Alumnos(
	TipoDocumento CHAR(3), -- DNI CI PAS
	NumeroDocumento VARCHAR(15),
	RazonSocial	VARCHAR(100),
	CONSTRAINT PK_Alumnos PRIMARY KEY(NumeroDocumento,TipoDocumento)
)

CREATE TABLE CursosAlumnos
(
	Id_Curso INT,
	TipoDocumento CHAR(3), -- DNI CI PAS
	NumeroDocumento VARCHAR(15),
	CONSTRAINT FK_CURSOS FOREIGN KEY (Id_Curso) REFERENCES Cursos (Id) ,
	CONSTRAINT FK_ALUMNOS FOREIGN KEY (NumeroDocumento,TipoDocumento) REFERENCES Alumnos (NumeroDocumento,TipoDocumento) 
)


-- where campos que menos registros devuelven primero