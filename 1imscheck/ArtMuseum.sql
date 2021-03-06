USE [master]
GO
/****** Object:  Database [ArtMuseum]    Script Date: 10/1/2018 8:34:03 PM ******/
CREATE DATABASE [ArtMuseum]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ArtMuseum', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ArtMuseum.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ArtMuseum_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ArtMuseum_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ArtMuseum] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ArtMuseum].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ArtMuseum] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ArtMuseum] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ArtMuseum] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ArtMuseum] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ArtMuseum] SET ARITHABORT OFF 
GO
ALTER DATABASE [ArtMuseum] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ArtMuseum] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ArtMuseum] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ArtMuseum] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ArtMuseum] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ArtMuseum] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ArtMuseum] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ArtMuseum] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ArtMuseum] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ArtMuseum] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ArtMuseum] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ArtMuseum] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ArtMuseum] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ArtMuseum] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ArtMuseum] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ArtMuseum] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ArtMuseum] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ArtMuseum] SET RECOVERY FULL 
GO
ALTER DATABASE [ArtMuseum] SET  MULTI_USER 
GO
ALTER DATABASE [ArtMuseum] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ArtMuseum] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ArtMuseum] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ArtMuseum] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ArtMuseum] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ArtMuseum', N'ON'
GO
ALTER DATABASE [ArtMuseum] SET QUERY_STORE = OFF
GO
USE [ArtMuseum]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ArtMuseum]
GO
/****** Object:  Table [dbo].[Artwork]    Script Date: 10/1/2018 8:34:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artwork](
	[ArtworkId] [nchar](10) NOT NULL,
	[DonatorId] [nchar](10) NOT NULL,
	[Artist] [nchar](20) NULL,
	[DateDonate] [nchar](10) NULL,
	[LocationId] [nchar](10) NULL,
 CONSTRAINT [PK_Artwork] PRIMARY KEY CLUSTERED 
(
	[ArtworkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donator]    Script Date: 10/1/2018 8:34:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donator](
	[DonatorId] [nchar](10) NOT NULL,
	[FirstName] [nchar](40) NULL,
	[LastName] [nchar](40) NULL,
	[Phone] [nchar](10) NULL,
	[Organization] [nchar](50) NULL,
 CONSTRAINT [PK_Donator] PRIMARY KEY CLUSTERED 
(
	[DonatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 10/1/2018 8:34:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationId] [nvarchar](1) NOT NULL,
	[Floor] [nchar](10) NULL,
	[Wing(Right,Left,Main)] [nchar](10) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Artwork] ([ArtworkId], [DonatorId], [Artist], [DateDonate], [LocationId]) VALUES (N'101       ', N'1         ', N'H,K                 ', N'4/5/2018  ', N'1         ')
INSERT [dbo].[Artwork] ([ArtworkId], [DonatorId], [Artist], [DateDonate], [LocationId]) VALUES (N'102       ', N'1         ', N'KS,Will             ', N'6/2/2016  ', N'2         ')
INSERT [dbo].[Artwork] ([ArtworkId], [DonatorId], [Artist], [DateDonate], [LocationId]) VALUES (N'104       ', N'2         ', N'James Katho         ', N'7/1/2001  ', N'3         ')
INSERT [dbo].[Artwork] ([ArtworkId], [DonatorId], [Artist], [DateDonate], [LocationId]) VALUES (N'106       ', N'2         ', N'unknown             ', N'8/4/1995  ', N'6         ')
INSERT [dbo].[Artwork] ([ArtworkId], [DonatorId], [Artist], [DateDonate], [LocationId]) VALUES (N'108       ', N'3         ', N'Bob Hangman         ', N'3/3/1994  ', N'7         ')
INSERT [dbo].[Artwork] ([ArtworkId], [DonatorId], [Artist], [DateDonate], [LocationId]) VALUES (N'110       ', N'3         ', N'Saiki Yuir          ', N'5/4/2015  ', N'9         ')
INSERT [dbo].[Artwork] ([ArtworkId], [DonatorId], [Artist], [DateDonate], [LocationId]) VALUES (N'120       ', N'1         ', N'unknown             ', N'6/4/1991  ', N'1         ')
INSERT [dbo].[Donator] ([DonatorId], [FirstName], [LastName], [Phone], [Organization]) VALUES (N'1         ', N'Bob                                     ', N'Ross                                    ', N'none      ', N'none                                              ')
INSERT [dbo].[Donator] ([DonatorId], [FirstName], [LastName], [Phone], [Organization]) VALUES (N'2         ', N'James                                   ', N'Beckwood                                ', N'5014571545', N'ChildrenLearning                                  ')
INSERT [dbo].[Donator] ([DonatorId], [FirstName], [LastName], [Phone], [Organization]) VALUES (N'3         ', N'Will                                    ', N'Cook                                    ', N'5084652514', N'Art for Everyone                                  ')
INSERT [dbo].[Donator] ([DonatorId], [FirstName], [LastName], [Phone], [Organization]) VALUES (N'4         ', N'none                                    ', N'none                                    ', N'5422544554', N'MiracleCure                                       ')
INSERT [dbo].[Location] ([LocationId], [Floor], [Wing(Right,Left,Main)]) VALUES (N'1', N'1         ', N'Right     ')
INSERT [dbo].[Location] ([LocationId], [Floor], [Wing(Right,Left,Main)]) VALUES (N'2', N'1         ', N'Left      ')
INSERT [dbo].[Location] ([LocationId], [Floor], [Wing(Right,Left,Main)]) VALUES (N'3', N'1         ', N'Main      ')
INSERT [dbo].[Location] ([LocationId], [Floor], [Wing(Right,Left,Main)]) VALUES (N'4', N'2         ', N'Right     ')
INSERT [dbo].[Location] ([LocationId], [Floor], [Wing(Right,Left,Main)]) VALUES (N'5', N'2         ', N'Left      ')
INSERT [dbo].[Location] ([LocationId], [Floor], [Wing(Right,Left,Main)]) VALUES (N'6', N'2         ', N'Main      ')
INSERT [dbo].[Location] ([LocationId], [Floor], [Wing(Right,Left,Main)]) VALUES (N'7', N'3         ', N'Right     ')
INSERT [dbo].[Location] ([LocationId], [Floor], [Wing(Right,Left,Main)]) VALUES (N'8', N'3         ', N'Left      ')
INSERT [dbo].[Location] ([LocationId], [Floor], [Wing(Right,Left,Main)]) VALUES (N'9', N'3         ', N'Main      ')
USE [master]
GO
ALTER DATABASE [ArtMuseum] SET  READ_WRITE 
GO
