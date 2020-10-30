--SELECT GETDATE()

--Abfrage auf beiden Servern

--Login f�r SQL Dienstkonto, da dies verwendet wird, wenn man kein dediziertes Konto angegeben hat...
CREATE LOGIN [schulung\svcSQL] FROM WINDOWS 

--Zugriffsrechte auf Spiegelungsendpunkt geben
GRANT CONNECT ON ENDPOINT::Spiegelung TO [schulung\svcSQL]



USE [master]
GO
CREATE LOGIN [Maxi] WITH PASSWORD=N'123',
 DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO


SELECT * FROM sys.dm_db_mirroring_connections

SELECT * FROM sys.databases
--auf Spiegel
ALTER DATABASE <database_name> SET PARTNER FORCE_SERVICE_ALLOW_DATA_LOSS

--Eventuell nicht synchronisiert
--

ALTER DATABASE SPIEGA SET PARTNER FORCE_SERVICE_ALLOW_DATA_LOSS

--um den Failover ausl�sen

ALTER DATABASE spiega SET PARTNER FAILOVER