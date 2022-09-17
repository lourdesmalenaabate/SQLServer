-- =============================================
-- Author:		Octavio Robleto
-- Create date: 2022-05-28
-- Description:	Vista de Alumnos con la Edad
-- =============================================

CREATE OR ALTER VIEW VW_VistaAlumnos AS
(
	SELECT 
	TipoDoc AS TipoDocumento,
	Documento AS NumeroDocumento,
	RazonSocial,
	FechaNacimiento,
	DATEDIFF(DAY,FechaNacimiento,GETDATE())/365 AS Edad
	FROM dbo.Alumnos
)
