USE master
GO

EXECUTE sys.sp_configure 'filestream access level','2'
GO

RECONFIGURE WITH OVERRIDE
GO

ALTER DATABASE CursoAnalisis2
SET FILESTREAM (NON_TRANSACTED_ACCESS = FULL)
WITH NO_WAIT
GO


