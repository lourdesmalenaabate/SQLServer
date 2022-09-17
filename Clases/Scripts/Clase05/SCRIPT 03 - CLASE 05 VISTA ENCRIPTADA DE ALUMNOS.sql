-- =============================================
-- Author:		Octavio Robleto
-- Create date: 2022-05-28
-- Description:	Vista de Alumnos con la Edad
-- =============================================

CREATE OR ALTER VIEW VW_VistaAlumnos_E01
WITH ENCRYPTION
AS
(
	SELECT 
	TipoDoc AS TipoDocumento,
	Documento AS NumeroDocumento,
	RazonSocial,
	FechaNacimiento,
	DATEDIFF(DAY,FechaNacimiento,GETDATE())/365 AS Edad
	FROM dbo.Alumnos
)
GO
-- SP_HELPTEXT VW_VistaAlumnos_E01


SELECT * FROM  VW_VistaAlumnos_E01;
SELECT * FROM  VW_VistaAlumnos;
