-- VISTA INDEXADAS

CREATE OR ALTER VIEW VW_VentasPorAnio_IDX01
WITH SCHEMABINDING
AS
(
	SELECT 
	TipoDocumento,
	Documento,
	Monto
	FROM dbo.Ventas	
)