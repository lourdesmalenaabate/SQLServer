
SELECT 
T.name,
FG.name
FROM SYS.tables AS T
INNER JOIN SYS.indexes AS I ON T.object_id = I.object_id
INNER JOIN SYS.filegroups AS FG ON FG.data_space_id = I.data_space_id
GO