CREATE DATABASE CURSO_SQL
GO

USE CURSO_SQL
GO

CREATE TABLE dbo.Vendedores

(
	TipoDocumento CHAR(3) NOT NULL DEFAULT 'DNI',
	Documento VARCHAR(15) NOT NULL,
	RazonSocial	NVARCHAR(100) NOT NULL,
	CONSTRAINT PK_Vendedores PRIMARY KEY 
	(
		TipoDocumento ASC,Documento ASC
	)
)

CREATE TABLE dbo.Ventas
(
	TipoDocumento CHAR(3) NOT NULL,
	Documento VARCHAR(15) NOT NULL,
	Fecha DATETIME NOT NULL DEFAULT GETDATE(),
	Monto MONEY NOT NULL,
	CONSTRAINT FK_VentasVendedores FOREIGN KEY 
	(TipoDocumento,Documento) REFERENCES dbo.Vendedores (TipoDocumento,Documento) 
)