
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/23/2018 11:24:54
-- Generated from EDMX file: C:\Users\Miranda\Documents\2018 College Folder\COMC1714-25 Visual\solution\1714mscheck\1714mscheck2H\TripModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [TripSchedule];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_LocationTrip]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Trips] DROP CONSTRAINT [FK_LocationTrip];
GO
IF OBJECT_ID(N'[dbo].[FK_TripReturn]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Returns] DROP CONSTRAINT [FK_TripReturn];
GO
IF OBJECT_ID(N'[dbo].[FK_PersonTrip]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Trips] DROP CONSTRAINT [FK_PersonTrip];
GO
IF OBJECT_ID(N'[dbo].[FK_PersonTrip1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Trips] DROP CONSTRAINT [FK_PersonTrip1];
GO
IF OBJECT_ID(N'[dbo].[FK_PersonTrip2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Trips] DROP CONSTRAINT [FK_PersonTrip2];
GO
IF OBJECT_ID(N'[dbo].[FK_PersonTrip3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Trips] DROP CONSTRAINT [FK_PersonTrip3];
GO
IF OBJECT_ID(N'[dbo].[FK_GroupTrip]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Trips] DROP CONSTRAINT [FK_GroupTrip];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[People]', 'U') IS NOT NULL
    DROP TABLE [dbo].[People];
GO
IF OBJECT_ID(N'[dbo].[Locations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Locations];
GO
IF OBJECT_ID(N'[dbo].[Trips]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Trips];
GO
IF OBJECT_ID(N'[dbo].[Returns]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Returns];
GO
IF OBJECT_ID(N'[dbo].[Groups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Groups];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'People'
CREATE TABLE [dbo].[People] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Locations'
CREATE TABLE [dbo].[Locations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [State] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Trips'
CREATE TABLE [dbo].[Trips] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DateOfTakeOff] datetime  NOT NULL,
    [TimeOfTakeOff] time  NOT NULL,
    [Location_Id] int  NOT NULL,
    [Manger_Id] int  NOT NULL,
    [CrewMember1_Id] int  NOT NULL,
    [CrewMember2_Id] int  NULL,
    [Driver_Id] int  NOT NULL,
    [Group_Id] int  NOT NULL
);
GO

-- Creating table 'Returns'
CREATE TABLE [dbo].[Returns] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date] datetime  NOT NULL,
    [Trip_Id] int  NOT NULL
);
GO

-- Creating table 'Groups'
CREATE TABLE [dbo].[Groups] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [NumberOfMembers] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [PK_People]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [PK_Locations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Trips'
ALTER TABLE [dbo].[Trips]
ADD CONSTRAINT [PK_Trips]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Returns'
ALTER TABLE [dbo].[Returns]
ADD CONSTRAINT [PK_Returns]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Groups'
ALTER TABLE [dbo].[Groups]
ADD CONSTRAINT [PK_Groups]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Location_Id] in table 'Trips'
ALTER TABLE [dbo].[Trips]
ADD CONSTRAINT [FK_LocationTrip]
    FOREIGN KEY ([Location_Id])
    REFERENCES [dbo].[Locations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LocationTrip'
CREATE INDEX [IX_FK_LocationTrip]
ON [dbo].[Trips]
    ([Location_Id]);
GO

-- Creating foreign key on [Trip_Id] in table 'Returns'
ALTER TABLE [dbo].[Returns]
ADD CONSTRAINT [FK_TripReturn]
    FOREIGN KEY ([Trip_Id])
    REFERENCES [dbo].[Trips]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TripReturn'
CREATE INDEX [IX_FK_TripReturn]
ON [dbo].[Returns]
    ([Trip_Id]);
GO

-- Creating foreign key on [Manger_Id] in table 'Trips'
ALTER TABLE [dbo].[Trips]
ADD CONSTRAINT [FK_PersonTrip]
    FOREIGN KEY ([Manger_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonTrip'
CREATE INDEX [IX_FK_PersonTrip]
ON [dbo].[Trips]
    ([Manger_Id]);
GO

-- Creating foreign key on [CrewMember1_Id] in table 'Trips'
ALTER TABLE [dbo].[Trips]
ADD CONSTRAINT [FK_PersonTrip1]
    FOREIGN KEY ([CrewMember1_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonTrip1'
CREATE INDEX [IX_FK_PersonTrip1]
ON [dbo].[Trips]
    ([CrewMember1_Id]);
GO

-- Creating foreign key on [CrewMember2_Id] in table 'Trips'
ALTER TABLE [dbo].[Trips]
ADD CONSTRAINT [FK_PersonTrip2]
    FOREIGN KEY ([CrewMember2_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonTrip2'
CREATE INDEX [IX_FK_PersonTrip2]
ON [dbo].[Trips]
    ([CrewMember2_Id]);
GO

-- Creating foreign key on [Driver_Id] in table 'Trips'
ALTER TABLE [dbo].[Trips]
ADD CONSTRAINT [FK_PersonTrip3]
    FOREIGN KEY ([Driver_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonTrip3'
CREATE INDEX [IX_FK_PersonTrip3]
ON [dbo].[Trips]
    ([Driver_Id]);
GO

-- Creating foreign key on [Group_Id] in table 'Trips'
ALTER TABLE [dbo].[Trips]
ADD CONSTRAINT [FK_GroupTrip]
    FOREIGN KEY ([Group_Id])
    REFERENCES [dbo].[Groups]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupTrip'
CREATE INDEX [IX_FK_GroupTrip]
ON [dbo].[Trips]
    ([Group_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------