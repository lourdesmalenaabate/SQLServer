USE CursoAnalisis3
GO


CREATE TABLE Profesores(
	id BIGINT IDENTITY(1,1),
	nombre VARCHAR(100) NOT NULL,
	apellido VARCHAR(100) NOT NULL,
	fechaNacimiento DATE DEFAULT GETDATE(),
	PRIMARY KEY (id)
)

SELECT * FROM Profesores where FechaNacimiento = '2025-05-05'

-- CREAR INDICE NO AGRUPADO CON CONDICIONAL
CREATE NONCLUSTERED /* CLUSTERED */INDEX  IDX_ProfesoresFechaNacimiento ON  Profesores  
(
	fechaNacimiento DESC
	-- , CAMPOS CON EL ORDEN
) 
WHERE fechaNacimiento IS NOT NULL
GO

-- CREAR INDICE UNICO
CREATE UNIQUE NONCLUSTERED INDEX  IDX_ProfesoresApellido ON Profesores
(
	apellido
)
GO



INSERT INTO Profesores (nombre,apellido) VALUES ('Octavio','Robleto')

SELECT fechaNacimiento,nombre FROM Profesores WHERE fechaNacimiento = '20220505'

-- CREAR INDICE NO AGRUPADO CON CAMPOS INCLUIDOS EN EL ARCHIVO
CREATE NONCLUSTERED INDEX IDX_ProfesoresFechaNacimiento2 ON Profesores
(
	fechaNacimiento DESC
) INCLUDE (nombre) --(campo1,campon)
GO

-- CREAR INDICE AGRUPADO
CREATE CLUSTERED INDEX IDX_IndexProfesores ON Profesores
(
	id
)
GO


CREATE NONCLUSTERED INDEX IDX_ProfesoresNombre ON Profesores
(
	nombre DESC
)
WITH (ALLOW_ROW_LOCKS=OFF , ALLOW_PAGE_LOCKS=OFF)


-- SELECT * FROM Alumnos WITH(NOLOCK INDEX(IDX_Alumnos1)) where id > 1
