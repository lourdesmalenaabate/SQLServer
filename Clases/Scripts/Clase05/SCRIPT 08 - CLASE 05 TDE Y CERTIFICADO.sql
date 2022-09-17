USE MASTER
GO

-- CREACION DE CLAVE MAESTRA
CREATE MASTER KEY ENCRYPTION 
BY PASSWORD = 'Curso1234'
GO


-- CREACION DEL CERTIFICADO
CREATE CERTIFICATE CertificadoSeguridad
WITH
SUBJECT = 'TRIGGERDB DATABASE ENCRYPTION'
GO
/*
USE CursoAnalisisCertificado
GO

DROP CERTIFICATE CertificadoSeguridad
GO


*/
-- BACKUP CERTIFICADO 
BACKUP CERTIFICATE CertificadoSeguridad
TO FILE = 'C:\ArchivosDB\CertificadoSeguridad'
WITH PRIVATE KEY 
(
	FILE = 'C:\ArchivosDB\CertificadoSeguridad.PVK', 
	ENCRYPTION BY PASSWORD ='Curso1234' 
)
GO

-- CREAR BASE DE DATOS PARA ENCRIPTAR
CREATE DATABASE CursoAnalisisCertificado
GO

-- ENCRIPTAR CIFRAR TRANSPARENTE
USE CursoAnalisisCertificado
GO

CREATE DATABASE ENCRYPTION KEY 
WITH ALGORITHM = AES_256 
ENCRYPTION BY SERVER CERTIFICATE CertificadoSeguridad
GO

-- 

SELECT name,is_encrypted FROM sys.databases

-- CIFRAMOS
ALTER DATABASE CursoAnalisisCertificado
SET ENCRYPTION ON
GO

