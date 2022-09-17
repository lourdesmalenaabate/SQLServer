CREATE DATABASE CursoAnalisis;

USE CursoAnalisis;

CREATE TABLE Provincias(
	Id INT IDENTITY PRIMARY KEY,
	Descripcion VARCHAR(100)
) ON PRIMARY

CREATE TABLE Urbanizaciones(
	Id INT IDENTITY PRIMARY KEY,
	Descripcion VARCHAR(100),
	Id_provincia INT,
	FOREIGN KEY (Id_provincia) REFERENCES Provincias (Id)
)

CREATE TABLE Alumnos(
	TipoDocumento CHAR(3) DEFAULT 'DNI',
	NumeroDocumento VARCHAR(15),
	Nombre VARCHAR(100) NOT NULL,
	Apellido VARCHAR(100) NOT NULL,
	Id_provincia INT NOT NULL,
	Id_urbanizacion INT NOT NULL,
	Correo VARCHAR(100) NULL,
	FechaNacimiento DATE,
	PRIMARY KEY (TipoDocumento,NumeroDocumento),-- 0001  DNI -- campos unicos , chequeo de campo
	FOREIGN KEY (Id_provincia) REFERENCES Provincias (Id),
	FOREIGN KEY (Id_urbanizacion) REFERENCES Urbanizaciones (Id)
 )

 CREATE TABLE Carreras(
	Id INT IDENTITY PRIMARY KEY,
	Descripcion VARCHAR(100)
 )


 CREATE TABLE Cursos(
	Id INT IDENTITY PRIMARY KEY,
	Descripcion VARCHAR(100)
 )


 CREATE TABLE Alumno_Carrera(
	Id_carrera INT,
	TipoDocumento_alumno CHAR(3),
	NumeroDocumento_alumno VARCHAR(15),
	FOREIGN KEY (Id_carrera) REFERENCES Carreras(Id),
	FOREIGN KEY (TipoDocumento_alumno,NumeroDocumento_alumno) REFERENCES Alumnos (TipoDocumento,NumeroDocumento)
 )

  CREATE TABLE Alumno_Curso(
	Id_curso INT,
	TipoDocumento_alumno CHAR(3),
	NumeroDocumento_alumno VARCHAR(15),
	FOREIGN KEY (Id_curso) REFERENCES Cursos(Id),
	FOREIGN KEY (TipoDocumento_alumno,NumeroDocumento_alumno) REFERENCES Alumnos (TipoDocumento,NumeroDocumento)
 )





 /*
 
 */
 -- Tipo Documento	Numero de Documento	Nombre	Apellido	Provincia	Barrio - Urbanizacion	Correo	Fecha de Nacimiento	Columna1




