SELECT * FROM CarpetaCursoAnalisis
GO

-- INSERTAR ARCHIVO
INSERT INTO CarpetaCursoAnalisis (name,is_directory,is_archive,file_stream)
SELECT
'HolaMundoSQL.txt',
0,
1,
*
FROM OPENROWSET (BULK 'C:\ArchivosPracticaSQL\HolaMundoSQL.txt' , SINGLE_BLOB) AS Archivo
GO

-- CREAR DIRECTORIO

INSERT INTO CarpetaCursoAnalisis (name,is_directory,is_archive) VALUES ('Fotos',1,0)
GO

-- BORRAR
DELETE FROM CarpetaCursoAnalisis WHERE stream_id = '361683BE-93D3-EC11-9AB1-B4B5B6E6EDEE'



