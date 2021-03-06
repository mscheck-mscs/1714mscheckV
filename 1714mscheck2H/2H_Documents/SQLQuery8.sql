USE [master]
GO
/****** Object:  Database [TripSchedue]    Script Date: 11/23/2018 12:23:54 PM ******/
CREATE DATABASE [TripSchedue]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TripSchedule', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TripSchedule.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TripSchedule_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TripSchedule_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TripSchedue] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TripSchedue].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TripSchedue] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TripSchedue] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TripSchedue] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TripSchedue] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TripSchedue] SET ARITHABORT OFF 
GO
ALTER DATABASE [TripSchedue] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TripSchedue] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [TripSchedue] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TripSchedue] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TripSchedue] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TripSchedue] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TripSchedue] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TripSchedue] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TripSchedue] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TripSchedue] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TripSchedue] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TripSchedue] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TripSchedue] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TripSchedue] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TripSchedue] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TripSchedue] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TripSchedue] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TripSchedue] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TripSchedue] SET  MULTI_USER 
GO
ALTER DATABASE [TripSchedue] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TripSchedue] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TripSchedue] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TripSchedue] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TripSchedue] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TripSchedue', N'ON'
GO
ALTER DATABASE [TripSchedue] SET QUERY_STORE = OFF
GO
USE [TripSchedue]
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
USE [TripSchedue]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 11/23/2018 12:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[NumberOfMembers] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 11/23/2018 12:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 11/23/2018 12:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Returns]    Script Date: 11/23/2018 12:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Returns](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [nvarchar](max) NOT NULL,
	[Trip_Id] [int] NOT NULL,
 CONSTRAINT [PK_Returns] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trips]    Script Date: 11/23/2018 12:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trips](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateOfTakeOff] [nvarchar](max) NOT NULL,
	[TimeOfTakeOff] [nvarchar](max) NOT NULL,
	[Location_Id] [int] NOT NULL,
	[Manger_Id] [int] NOT NULL,
	[CrewMember1_Id] [int] NOT NULL,
	[CrewMember2_Id] [int] NULL,
	[Driver_Id] [int] NOT NULL,
	[Group_Id] [int] NOT NULL,
 CONSTRAINT [PK_Trips] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 
GO
INSERT [dbo].[Groups] ([Id], [Name], [NumberOfMembers]) VALUES (4, N'Wolfpack', N'23')
GO
INSERT [dbo].[Groups] ([Id], [Name], [NumberOfMembers]) VALUES (5, N'Birds of a Feather', N'10')
GO
INSERT [dbo].[Groups] ([Id], [Name], [NumberOfMembers]) VALUES (6, N'The Herd', N'20')
GO
INSERT [dbo].[Groups] ([Id], [Name], [NumberOfMembers]) VALUES (7, N'The Three Amigos', N'3')
GO
INSERT [dbo].[Groups] ([Id], [Name], [NumberOfMembers]) VALUES (8, N'Brotherly Harmony', N'16')
GO
INSERT [dbo].[Groups] ([Id], [Name], [NumberOfMembers]) VALUES (9, N'James Family', N'24')
GO
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[Locations] ON 
GO
INSERT [dbo].[Locations] ([Id], [Address], [City], [State]) VALUES (1, N'8626 Southampton Lane', N'Waxhaw', N'NC')
GO
INSERT [dbo].[Locations] ([Id], [Address], [City], [State]) VALUES (2, N'885 Airport Court', N'Taylors', N'SC')
GO
INSERT [dbo].[Locations] ([Id], [Address], [City], [State]) VALUES (3, N'13 Homestead Dr. ', N'Elizabeth City', N'NC')
GO
INSERT [dbo].[Locations] ([Id], [Address], [City], [State]) VALUES (4, N'7025 Arlington Dr.', N'Southington', N'CT ')
GO
INSERT [dbo].[Locations] ([Id], [Address], [City], [State]) VALUES (5, N'7394 South Marshall Street', N'Littleton', N'CO')
GO
INSERT [dbo].[Locations] ([Id], [Address], [City], [State]) VALUES (6, N'9797 Addison St.', N'Belleville', N'NJ')
GO
SET IDENTITY_INSERT [dbo].[Locations] OFF
GO
SET IDENTITY_INSERT [dbo].[People] ON 
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName]) VALUES (1, N'Bob', N'Simmons')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName]) VALUES (2, N'Fahima ', N'Hurst')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName]) VALUES (3, N'Ophrah', N'Vörös')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName]) VALUES (4, N'Freyde', N' McQueen')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName]) VALUES (5, N'Kyrilu', N'Rompuy')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName]) VALUES (6, N'Chandra', N'Marvin')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName]) VALUES (7, N'Catalina', N'Scarlett')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName]) VALUES (8, N'Indira', N'Lucas')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName]) VALUES (9, N'Garnet', N'O''Brien')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName]) VALUES (10, N'Deyan', N'Baumer')
GO
SET IDENTITY_INSERT [dbo].[People] OFF
GO
SET IDENTITY_INSERT [dbo].[Returns] ON 
GO
INSERT [dbo].[Returns] ([Id], [Date], [Trip_Id]) VALUES (1, N'12-20-18', 5)
GO
INSERT [dbo].[Returns] ([Id], [Date], [Trip_Id]) VALUES (2, N'01-05-19', 6)
GO
INSERT [dbo].[Returns] ([Id], [Date], [Trip_Id]) VALUES (3, N'01-09-19', 7)
GO
INSERT [dbo].[Returns] ([Id], [Date], [Trip_Id]) VALUES (4, N'01-16-19', 8)
GO
INSERT [dbo].[Returns] ([Id], [Date], [Trip_Id]) VALUES (5, N'01-18-19', 9)
GO
INSERT [dbo].[Returns] ([Id], [Date], [Trip_Id]) VALUES (6, N'01-25-19', 10)
GO
INSERT [dbo].[Returns] ([Id], [Date], [Trip_Id]) VALUES (7, N'02-10-19', 11)
GO
SET IDENTITY_INSERT [dbo].[Returns] OFF
GO
SET IDENTITY_INSERT [dbo].[Trips] ON 
GO
INSERT [dbo].[Trips] ([Id], [DateOfTakeOff], [TimeOfTakeOff], [Location_Id], [Manger_Id], [CrewMember1_Id], [CrewMember2_Id], [Driver_Id], [Group_Id]) VALUES (5, N'12-15-18', N'1:00', 1, 1, 2, NULL, 3, 7)
GO
INSERT [dbo].[Trips] ([Id], [DateOfTakeOff], [TimeOfTakeOff], [Location_Id], [Manger_Id], [CrewMember1_Id], [CrewMember2_Id], [Driver_Id], [Group_Id]) VALUES (6, N'01-02-19', N'1:00', 2, 3, 2, 4, 3, 4)
GO
INSERT [dbo].[Trips] ([Id], [DateOfTakeOff], [TimeOfTakeOff], [Location_Id], [Manger_Id], [CrewMember1_Id], [CrewMember2_Id], [Driver_Id], [Group_Id]) VALUES (7, N'01-08-19', N'2:00', 3, 1, 4, 2, 5, 5)
GO
INSERT [dbo].[Trips] ([Id], [DateOfTakeOff], [TimeOfTakeOff], [Location_Id], [Manger_Id], [CrewMember1_Id], [CrewMember2_Id], [Driver_Id], [Group_Id]) VALUES (8, N'01-15-19', N'3:00', 4, 3, 4, NULL, 5, 6)
GO
INSERT [dbo].[Trips] ([Id], [DateOfTakeOff], [TimeOfTakeOff], [Location_Id], [Manger_Id], [CrewMember1_Id], [CrewMember2_Id], [Driver_Id], [Group_Id]) VALUES (9, N'01-16-19', N'1:00', 5, 6, 7, 8, 9, 8)
GO
INSERT [dbo].[Trips] ([Id], [DateOfTakeOff], [TimeOfTakeOff], [Location_Id], [Manger_Id], [CrewMember1_Id], [CrewMember2_Id], [Driver_Id], [Group_Id]) VALUES (10, N'01-20-19', N'5:00', 6, 6, 7, NULL, 9, 9)
GO
INSERT [dbo].[Trips] ([Id], [DateOfTakeOff], [TimeOfTakeOff], [Location_Id], [Manger_Id], [CrewMember1_Id], [CrewMember2_Id], [Driver_Id], [Group_Id]) VALUES (11, N'02-08-19', N'1:00', 3, 1, 8, 2, 10, 4)
GO
SET IDENTITY_INSERT [dbo].[Trips] OFF
GO
/****** Object:  Index [IX_FK_TripReturn]    Script Date: 11/23/2018 12:23:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_TripReturn] ON [dbo].[Returns]
(
	[Trip_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_GroupTrip]    Script Date: 11/23/2018 12:23:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_GroupTrip] ON [dbo].[Trips]
(
	[Group_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_LocationTrip]    Script Date: 11/23/2018 12:23:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_LocationTrip] ON [dbo].[Trips]
(
	[Location_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_PersonTrip]    Script Date: 11/23/2018 12:23:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_PersonTrip] ON [dbo].[Trips]
(
	[Manger_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_PersonTrip1]    Script Date: 11/23/2018 12:23:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_PersonTrip1] ON [dbo].[Trips]
(
	[CrewMember1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_PersonTrip2]    Script Date: 11/23/2018 12:23:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_PersonTrip2] ON [dbo].[Trips]
(
	[CrewMember2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_PersonTrip3]    Script Date: 11/23/2018 12:23:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_PersonTrip3] ON [dbo].[Trips]
(
	[Driver_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Returns]  WITH CHECK ADD  CONSTRAINT [FK_TripReturn] FOREIGN KEY([Trip_Id])
REFERENCES [dbo].[Trips] ([Id])
GO
ALTER TABLE [dbo].[Returns] CHECK CONSTRAINT [FK_TripReturn]
GO
ALTER TABLE [dbo].[Trips]  WITH CHECK ADD  CONSTRAINT [FK_GroupTrip] FOREIGN KEY([Group_Id])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[Trips] CHECK CONSTRAINT [FK_GroupTrip]
GO
ALTER TABLE [dbo].[Trips]  WITH CHECK ADD  CONSTRAINT [FK_LocationTrip] FOREIGN KEY([Location_Id])
REFERENCES [dbo].[Locations] ([Id])
GO
ALTER TABLE [dbo].[Trips] CHECK CONSTRAINT [FK_LocationTrip]
GO
ALTER TABLE [dbo].[Trips]  WITH CHECK ADD  CONSTRAINT [FK_PersonTrip] FOREIGN KEY([Manger_Id])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[Trips] CHECK CONSTRAINT [FK_PersonTrip]
GO
ALTER TABLE [dbo].[Trips]  WITH CHECK ADD  CONSTRAINT [FK_PersonTrip1] FOREIGN KEY([CrewMember1_Id])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[Trips] CHECK CONSTRAINT [FK_PersonTrip1]
GO
ALTER TABLE [dbo].[Trips]  WITH CHECK ADD  CONSTRAINT [FK_PersonTrip2] FOREIGN KEY([CrewMember2_Id])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[Trips] CHECK CONSTRAINT [FK_PersonTrip2]
GO
ALTER TABLE [dbo].[Trips]  WITH CHECK ADD  CONSTRAINT [FK_PersonTrip3] FOREIGN KEY([Driver_Id])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[Trips] CHECK CONSTRAINT [FK_PersonTrip3]
GO
USE [master]
GO
ALTER DATABASE [TripSchedue] SET  READ_WRITE 
GO
