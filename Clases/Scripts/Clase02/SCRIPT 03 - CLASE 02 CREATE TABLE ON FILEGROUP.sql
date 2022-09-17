USE [CursoAnalisis2]
GO 


CREATE TABLE Provincias(
	Id INT IDENTITY PRIMARY KEY,
	Descripcion VARCHAR(100),
	-- CONSTRAINT PK_ID_1 PRIMARY KEY(Id)
) ON [CursoAnalisis2FG]
GO

CREATE TABLE Urbanizaciones(
	Id INT IDENTITY PRIMARY KEY,
	Descripcion VARCHAR(100),
	Id_provincia INT,
	FOREIGN KEY (Id_provincia) REFERENCES Provincias (Id)
	--CONSTRAINT FK_URB_PROV_1 FOREIGN KEY (Id_provincia) REFERENCES Provincias (Id)
)ON [PRIMARY]
GO


