SELECT * FROM Alumnos WITH(NOLOCK INDEX(IDX_Alumnos1)) where id > 1

UPDATE Alumnos set nombre = 'Alumno - 5.' +'Hola' where id = 5