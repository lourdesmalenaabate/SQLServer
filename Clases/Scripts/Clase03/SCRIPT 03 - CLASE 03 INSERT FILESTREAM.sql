-- INSERTAR PDF
INSERT INTO Archivos (Id,Descripcion,Archivo)
SELECT 
NEWID(),
'Clase_02.pdf',
*
FROM OPENROWSET (BULK 'C:\ArchivosPracticaSQL\Clase_02.pdf', SINGLE_BLOB) AS Archivo
GO


SELECT * FROM Archivos
GO
-- INSERTAR PPT
INSERT INTO Archivos (Id,Descripcion,Archivo)
SELECT 
NEWID(),
'Clase 01.pptx',
*
FROM OPENROWSET (BULK 'C:\ArchivosPracticaSQL\Clase 01.pptx', SINGLE_BLOB) AS Archivo
GO

-- INSERTAR MP4

INSERT INTO Archivos (Id,Descripcion,Archivo)
SELECT 
NEWID(),
'Inicio de Clases EDU IT.mp4',
*
FROM OPENROWSET (BULK 'C:\ArchivosPracticaSQL\Inicio de Clases EDU IT.mp4', SINGLE_BLOB) AS Archivo
GO

