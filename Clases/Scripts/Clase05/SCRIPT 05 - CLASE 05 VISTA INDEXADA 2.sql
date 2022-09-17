CREATE OR ALTER VIEW VW_VendedoresSupervisores WITH SCHEMABINDING
AS
(
	SELECT 
	VEND.TipoDocumento AS TipoDocumentoVendedor,
	VEND.Documento AS NumeroDocumentoVendedor,
	VEND.RazonSocial AS RazonSocialVendedor
	FROM dbo.Vendedores AS VEND
	INNER JOIN dbo.Vendedores AS SUP 
	ON VEND.TipoDocumento_Sup = SUP.TipoDocumento AND 
	VEND.Documento_Sup = SUP.Documento
)

CREATE UNIQUE CLUSTERED INDEX IDX_VW_VendedoresSupervisores ON dbo.VW_VendedoresSupervisores
(
	NumeroDocumentoVendedor,
	TipoDocumentoVendedor
)

ALTER INDEX IDX_VW_VendedoresSupervisores ON dbo.VW_VendedoresSupervisores REBUILD
GO
ALTER INDEX IDX_VW_VendedoresSupervisores ON dbo.VW_VendedoresSupervisores REORGANIZE
GO