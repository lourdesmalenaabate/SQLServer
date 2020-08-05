SELECT 
PIVOTE.TipoDocumento,
PIVOTE.Documento,
RazonSocial,
ISNULL([2016],0) AS [2016],ISNULL([2017],0) AS [2017],ISNULL([2018],0) AS [2018],ISNULL([2019],0) AS [2019],
ISNULL([2020],0) AS [2020]
FROM 
(
	SELECT
	TipoDocumento,
	Documento,
	Monto,
	YEAR(Fecha) AS Fecha
	FROM dbo.Ventas
) AS Ventas
PIVOT
(
	AVG(Monto)
	FOR Fecha IN ([2016],[2017],[2018],[2019],[2020])
) AS PIVOTE
INNER JOIN dbo.Vendedores ON PIVOTE.TipoDocumento = Vendedores.TipoDocumento AND PIVOTE.Documento = Vendedores.Documento