USE [master]
GO
/****** Object:  Database [PFDB]    Script Date: 2/03/2020 00:28:26 ******/
CREATE DATABASE [PFDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PFDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PFDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PFDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PFDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PFDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PFDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PFDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PFDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PFDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PFDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PFDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PFDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PFDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PFDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PFDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PFDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PFDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PFDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PFDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PFDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PFDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PFDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PFDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PFDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PFDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PFDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PFDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PFDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PFDB] SET RECOVERY FULL 
GO
ALTER DATABASE [PFDB] SET  MULTI_USER 
GO
ALTER DATABASE [PFDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PFDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PFDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PFDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PFDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PFDB', N'ON'
GO
ALTER DATABASE [PFDB] SET QUERY_STORE = OFF
GO
USE [PFDB]
GO
/****** Object:  User [sreynoso]    Script Date: 2/03/2020 00:28:26 ******/
CREATE USER [sreynoso] FOR LOGIN [sreynoso] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Zapatos]    Script Date: 2/03/2020 00:28:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zapatos](
	[Codigo] [varchar](100) NOT NULL,
	[Modelo] [varchar](100) NOT NULL,
	[Material] [varchar](100) NOT NULL,
	[Planta] [varchar](100) NOT NULL,
	[Color] [varchar](100) NOT NULL,
	[Serie] [varchar](100) NOT NULL,
	[Imagen] [varchar](max) NULL,
 CONSTRAINT [PK_Zapatos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Zapatos] ([Codigo], [Modelo], [Material], [Planta], [Color], [Serie], [Imagen]) VALUES (N'MOC0001', N'Mocasin', N'Sintetico', N'Alta', N'Negro', N'3-6', N'https://i.imgur.com/Es2iVuX.jpg')
INSERT [dbo].[Zapatos] ([Codigo], [Modelo], [Material], [Planta], [Color], [Serie], [Imagen]) VALUES (N'MOC0002', N'Mocasin', N'Gamuza', N'Alta', N'Rojo', N'5-9', N'https://i.imgur.com/Es2iVuX.jpg')
INSERT [dbo].[Zapatos] ([Codigo], [Modelo], [Material], [Planta], [Color], [Serie], [Imagen]) VALUES (N'MOC0003', N'Mocasin', N'Gamuza', N'Alta', N'Negro', N'5-9', N'https://i.imgur.com/Es2iVuX.jpg')
INSERT [dbo].[Zapatos] ([Codigo], [Modelo], [Material], [Planta], [Color], [Serie], [Imagen]) VALUES (N'MOC0004', N'Mocasin', N'Gamuza', N'Alta', N'Blanco', N'5-9', N'https://i.imgur.com/Es2iVuX.jpg')
INSERT [dbo].[Zapatos] ([Codigo], [Modelo], [Material], [Planta], [Color], [Serie], [Imagen]) VALUES (N'MOC0005', N'Mocasin', N'Gamuza', N'Alta', N'Azul Marino', N'5-9', N'https://i.imgur.com/Es2iVuX.jpg')
USE [master]
GO
ALTER DATABASE [PFDB] SET  READ_WRITE 
GO
