

CREATE TABLE dbo.ProfesoresBKP
(
	Id BIGINT IDENTITY(1,1),
	TipoDoc CHAR(3) NOT NULL,
	Documento VARCHAR(15) NOT NULL,
	RazonSocial VARCHAR(100) NOT NULL,
	Correo VARCHAR(255) NULL,
	FechaNacimiento DATE, -- campo base con tipo de dato como la fuincion de particion
	Telefono VARCHAR(13) NULL,
	Direccion VARCHAR(255) NULL,
	CP CHAR(10) NULL,
	Activo TINYINT NULL,
	FechaRegistro DATETIME NOT NULL DEFAULT GETDATE()	
) ON EsquemaParticionFecha(FechaNacimiento) -- Nombre de particion y Campo base 
GO


INSERT INTO dbo.ProfesoresBKP ([TipoDoc] ,[Documento] ,[RazonSocial] ,[Correo] ,[FechaNacimiento] ,[Telefono] ,[Direccion] ,[CP] ,[Activo] ,[FechaRegistro])

SELECT 
[TipoDoc] ,[Documento] ,[RazonSocial] ,[Correo] ,[FechaNacimiento] ,[Telefono] ,[Direccion] ,[CP] ,[Activo] ,[FechaRegistro] 
FROM dbo.ProfesoresBKP

-- UN INDICE 
CREATE NONCLUSTERED INDEX IDX_ProfesoresBKP_01 ON dbo.ProfesoresBKP
(
	Id DESC
) ON EsquemaParticionFecha(FechaNacimiento)-- Nombre de particion y Campo base 
GO