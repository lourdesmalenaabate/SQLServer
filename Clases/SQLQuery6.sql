CREATE TABLE Usuarios
(
	correo VARCHAR(100),
	clave varbinary(max)
)

SELECT ENCRYPTBYPASSPHRASE('1234','2')
SELECT ENCRYPTBYPASSPHRASE('1234','2')



DECLARE @clave AS VARBINARY(MAX)

SET @clave = (SELECT ENCRYPTBYPASSPHRASE('1234','mIcLAVEpERSONAL')) --  aes_encrypt
INSERT INTO Usuarios (correo,clave) Values ('octavio.robleto@gmail.com',@clave)


SELECT * FROM Usuarios

SELECT correo,clave,CONVERT(VARCHAR(MAX), DECRYPTBYPASSPHRASE('1234',clave)) from Usuarios


