USE master
GO

CREATE LOGIN UsuarioCursosAnalisis
WITH PASSWORD = '123456789',
DEFAULT_DATABASE = CursoAnalisis3,
CHECK_EXPIRATION = OFF,
CHECK_POLICY = OFF
GO
-- LOS QUE NECESITE
ALTER SERVER ROLE dbcreator ADD MEMBER UsuarioCursosAnalisis
GO

-- CREATE USUARIO
CREATE USER UsuarioCursosAnalisis
FOR LOGIN UsuarioCursosAnalisis

-- SEIMPRE DEBO SELECCIONAR LA BASE DE DATOS
USE CursoAnalisis3
GO

ALTER ROLE  db_datawriter ADD MEMBER UsuarioCursosAnalisis
GO

ALTER ROLE db_ddladmin ADD MEMBER UsuarioCursosAnalisis
GO

ALTER ROLE db_datawriter DROP MEMBER UsuarioCursosAnalisis





