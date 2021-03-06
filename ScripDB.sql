USE [master]
GO
/****** Object:  Database [cargaarchivostest]    Script Date: 17/2/2021 08:35:58 ******/
CREATE DATABASE [cargaarchivostest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cargaarchivostest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\cargaarchivostest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'cargaarchivostest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\cargaarchivostest_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [cargaarchivostest] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cargaarchivostest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cargaarchivostest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cargaarchivostest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cargaarchivostest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cargaarchivostest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cargaarchivostest] SET ARITHABORT OFF 
GO
ALTER DATABASE [cargaarchivostest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cargaarchivostest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cargaarchivostest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cargaarchivostest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cargaarchivostest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cargaarchivostest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cargaarchivostest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cargaarchivostest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cargaarchivostest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cargaarchivostest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cargaarchivostest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cargaarchivostest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cargaarchivostest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cargaarchivostest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cargaarchivostest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cargaarchivostest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cargaarchivostest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cargaarchivostest] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cargaarchivostest] SET  MULTI_USER 
GO
ALTER DATABASE [cargaarchivostest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cargaarchivostest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cargaarchivostest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cargaarchivostest] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [cargaarchivostest] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [cargaarchivostest] SET QUERY_STORE = OFF
GO
USE [cargaarchivostest]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 17/2/2021 08:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Historia] [varchar](50) NULL,
	[Poder] [varchar](50) NULL,
	[Debilidad] [varchar](50) NULL,
	[Universo] [varchar](50) NULL,
	[Imagen] [varchar](50) NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [cargaarchivostest] SET  READ_WRITE 
GO
