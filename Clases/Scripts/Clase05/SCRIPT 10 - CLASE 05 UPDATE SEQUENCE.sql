CREATE TABLE Prueba1
(
	id INT IDENTITY,
	Descripcion VARCHAR(100)
)

INSERT INTO Prueba1 (Descripcion) VALUES ('Octavio')
SELECT @@IDENTITY,SCOPE_IDENTITY(), IDENT_CURRENT('Prueba1')

CREATE TABLE Prueba2
(
	id INT DEFAULT (NEXT VALUE FOR dbo.SEQUENCE_Profesor ) ,
	Descripcion VARCHAR(100)
)


INSERT INTO Prueba2 (id,Descripcion) VALUES (90, 'Jose')

SELECT * FROM Prueba2


GRANT UPDATE ON dbo.SEQUENCE_Profesor TO -- USUARIO