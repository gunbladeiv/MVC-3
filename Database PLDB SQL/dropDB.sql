USE [master]
GO

IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'ProLine')
DROP DATABASE [ProLine]
GO
