RESTORE DATABASE [AdventureWorksDW2017] FROM  
DISK = N'/var/opt/mssql/backup/AdventureWorksDW2017.bak' WITH  
FILE = 1,  MOVE N'AdventureWorksDW2017' TO N'/var/opt/mssql/data/AdventureWorksDW2017.mdf',  
MOVE N'AdventureWorksDW2017_log' TO N'/var/opt/mssql/data/AdventureWorksDW2017_log.ldf',  
NOUNLOAD,  STATS = 5;

RESTORE DATABASE [WideWorldImportersDW] 
FROM  DISK = N'/var/opt/mssql/backup/WideWorldImportersDW-Full.bak' WITH  
	FILE = 1,  MOVE N'WWI_Primary' TO N'/var/opt/mssql/data/WideWorldImportersDW.mdf',  
	MOVE N'WWI_UserData' TO N'/var/opt/mssql/data/WideWorldImportersDW_UserData.ndf',  
	MOVE N'WWI_Log' TO N'/var/opt/mssql/data/WideWorldImportersDW.ldf',  
	MOVE N'WWIDW_InMemory_Data_1' TO N'/var/opt/mssql/data/WideWorldImportersDW_InMemory_Data_1',  
	NOUNLOAD,  STATS = 5;

