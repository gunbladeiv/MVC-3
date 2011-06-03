USE [master]
CREATE DATABASE [ProLine] ON  PRIMARY 
( NAME = N'ProLine_Data', FILENAME = N'C:\SQLData\ProLine_Data.MDF' , SIZE = 51200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 51200KB )
 LOG ON 
( NAME = N'ProLine_Log', FILENAME = N'C:\SQLData\ProLine_Log.LDF' , SIZE = 51200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 51200KB)
 COLLATE SQL_Latin1_General_CP1_CI_AS
EXEC dbo.sp_dbcmptlevel @dbname=N'ProLine', @new_cmptlevel=90
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProLine].[dbo].[sp_fulltext_database] @action = 'disable'
end
ALTER DATABASE [ProLine] SET ANSI_NULL_DEFAULT OFF 
ALTER DATABASE [ProLine] SET ANSI_NULLS OFF 
ALTER DATABASE [ProLine] SET ANSI_PADDING OFF 
ALTER DATABASE [ProLine] SET ANSI_WARNINGS OFF 
ALTER DATABASE [ProLine] SET ARITHABORT OFF 
ALTER DATABASE [ProLine] SET AUTO_CLOSE OFF 
ALTER DATABASE [ProLine] SET AUTO_CREATE_STATISTICS ON 
ALTER DATABASE [ProLine] SET AUTO_SHRINK OFF 
ALTER DATABASE [ProLine] SET AUTO_UPDATE_STATISTICS ON 
ALTER DATABASE [ProLine] SET CURSOR_CLOSE_ON_COMMIT OFF 
ALTER DATABASE [ProLine] SET CURSOR_DEFAULT  GLOBAL 
ALTER DATABASE [ProLine] SET CONCAT_NULL_YIELDS_NULL OFF 
ALTER DATABASE [ProLine] SET NUMERIC_ROUNDABORT OFF 
ALTER DATABASE [ProLine] SET QUOTED_IDENTIFIER OFF 
ALTER DATABASE [ProLine] SET RECURSIVE_TRIGGERS OFF 
ALTER DATABASE [ProLine] SET ENABLE_BROKER 
ALTER DATABASE [ProLine] SET AUTO_UPDATE_STATISTICS_ASYNC ON 
ALTER DATABASE [ProLine] SET DATE_CORRELATION_OPTIMIZATION OFF 
ALTER DATABASE [ProLine] SET TRUSTWORTHY OFF 
ALTER DATABASE [ProLine] SET ALLOW_SNAPSHOT_ISOLATION OFF 
ALTER DATABASE [ProLine] SET PARAMETERIZATION SIMPLE 
ALTER DATABASE [ProLine] SET READ_WRITE 
ALTER DATABASE [ProLine] SET RECOVERY FULL
ALTER DATABASE [ProLine] SET MULTI_USER 
ALTER DATABASE [ProLine] SET PAGE_VERIFY TORN_PAGE_DETECTION  
ALTER DATABASE [ProLine] SET DB_CHAINING OFF 