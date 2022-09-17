USE [CursoAnalisisClase05]
GO

SELECT 
ROW_NUMBER() OVER (ORDER BY Fecha DESC),
[TipoDocumento]
      ,[Documento]
      ,[Fecha]
      ,[Monto]
  FROM [dbo].[ventas]
  GO

  select * from

  (
  SELECT 
  ROW_NUMBER() OVER ( PARTITION BY [Documento]  ORDER BY YEAR(Fecha)) AS AI_ID,
  [TipoDocumento] ,[Documento], YEAR(Fecha) as anio,MONTH(Fecha) as mes ,SUM(Monto) as total,
  RANK() OVER ( PARTITION BY [Documento]  ORDER BY YEAR(Fecha)) as r1, -- RANKING DEL REGISTRO
  DENSE_RANK() OVER ( PARTITION BY [Documento]  ORDER BY YEAR(Fecha)) as r2-- RANKING DEL REGISTRO 
  FROM Ventas 
  GROUP BY [TipoDocumento] ,[Documento], YEAR(Fecha),MONTH(Fecha)

  )as vtatotales
  where AI_ID = 1



