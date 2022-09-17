
-- FUNCION
CREATE PARTITION FUNCTION FuncionParticionFecha (DATE)
AS RANGE  LEFT   FOR VALUES ('1995-01-01','2000-01-01')

-- SCHEMA
CREATE PARTITION SCHEME EsquemaParticionFecha
AS PARTITION FuncionParticionFecha 
TO ([PRIMARY],CursoAnalisisClase05_FG01,CursoAnalisisClase05_FG02)



/*
SELECT
t.name AS TableName,
fg.name,
P.partition_number,
r.value AS BoundaryValue,
rows
From Sys. Tables AS t
Join Sys.Indexes AS i On t.object_id = i.object_id
Join sys.partitions AS p On i.object_id = p.object_id And i.index_id = p.index_id
INNER JOIN sys.allocation_units au ON au.container_id = p.hobt_id
INNER JOIN sys.filegroups fg ON fg.data_space_id = au.data_space_id
Join sys.partition_schemes AS s On i.data_space_id = s.data_space_id
Join sys.partition_functions AS f ON s.function_id = f.function_id
Left Join sys.partition_range_values AS r on f.function_id = r.function_id and
r.boundary_id = p.partition_number
Where i.type <= 1
Order By p.partition_number;

*/