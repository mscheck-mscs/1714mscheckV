--USE [PropertyManager]
--GO
SET IDENTITY_INSERT [dbo].[Buildings] ON 
GO
INSERT [dbo].[Buildings] ([Id],  [BuildingName], [Address], [City], [State], [Zip]) VALUES (1, N'Southeast Apartments', N'308 Pioneer Rd', N'Red Wing', N'MN', N'55066     ')
GO
INSERT [dbo].[Buildings] ([Id],  [BuildingName], [Address], [City], [State], [Zip]) VALUES (2, N'Southewest Apartments', N'1250 Homer Rd', N'Winona', N'MN', N'55987     ')
GO
INSERT [dbo].[Buildings] ([Id],  [BuildingName], [Address], [City], [State], [Zip]) VALUES (3, N'South Apartments', N'67 West St', N'Winona', N'MN', N'55987     ')
GO
INSERT [dbo].[Buildings] ([Id],  [BuildingName], [Address], [City], [State], [Zip]) VALUES (4, N'East Apartments', N'1416 East Franklen Rd', N'Red Wing', N'MN', N'55066     ')
GO
INSERT [dbo].[Buildings] ([Id],  [BuildingName], [Address], [City], [State], [Zip]) VALUES (5, N'Southeast Apartments', N'891 Second St', N'Winona', N'MN', N'55987     ')
GO
SET IDENTITY_INSERT [dbo].[Buildings] OFF
GO
SET IDENTITY_INSERT [dbo].[People] ON 
GO
INSERT [dbo].[People] ([Id] , [FirstName], [LastName], [Phone], [Email]) VALUES (1, N'Bob', N'Will', N'7425445632', N'bob.will@email')
GO
INSERT [dbo].[People] ([Id] , [FirstName], [LastName], [Phone], [Email]) VALUES (2, N'Sam', N'James', N'8542674258', N'sam.jam@email')
GO
INSERT [dbo].[People] ([Id] , [FirstName], [LastName], [Phone], [Email]) VALUES (3, N'Kim', N'Quick', N'1548642484', N'kim.qui@email')
GO
INSERT [dbo].[People] ([Id] , [FirstName], [LastName], [Phone], [Email]) VALUES (4, N'Pam', N'Rio', N'1453516623', N'pam.rio@email')
GO
INSERT [dbo].[People] ([Id] , [FirstName], [LastName], [Phone], [Email]) VALUES (5, N'Miranda', N'Scheck', N'5461676613', N'scheck@email')
GO
SET IDENTITY_INSERT [dbo].[People] OFF 
GO
SET IDENTITY_INSERT [dbo].[Apartments] ON 
GO
INSERT [dbo].[Apartments] ([Id] , [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (1, 1, N'101', 400, 1, 550.0000, 1, 1)
GO
INSERT [dbo].[Apartments] ([Id] , [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (2, 1, N'102', 534, 2, 600.0000, 2, 1)
GO
INSERT [dbo].[Apartments] ([Id] , [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (3, 2, N'201', 600, 2, 650.0000, 3, 2)
GO
INSERT [dbo].[Apartments] ([Id] , [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (4, 1, N'103', 534, 2, 600.0000, 4, 1)
GO
INSERT [dbo].[Apartments] ([Id] , [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (5, 1, N'104', 534, 2, 600.0000, 5, 1)
GO
INSERT [dbo].[Apartments] ([Id] , [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (6, 1, N'105', 534, 2, 600.0000, 1, 1)
GO
INSERT [dbo].[Apartments] ([Id] , [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (7, 2, N'202', 413, 1, 460.0000, 2, 2)
GO
INSERT [dbo].[Apartments] ([Id] , [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (8, 2, N'203', 600, 2, 650.0000, 3, 2)
GO
INSERT [dbo].[Apartments] ([Id] , [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (9, 2, N'204', 500, 1, 400.0000, 4, 2)
GO
INSERT [dbo].[Apartments] ([Id] , [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (10, 2, N'205', 600, 2, 650.0000, NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[Apartments] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON 
GO
INSERT [dbo].[Invoices] ([Id] , [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10001, 1, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id] , [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10002, 2, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id] , [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10003, 3, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id] , [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10004, 4, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), CAST(N'2018-11-10T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id] , [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10005, 5, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), CAST(N'2018-11-10T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id] , [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10006, 6, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), CAST(N'2018-11-10T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id] , [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10007, 7, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), CAST(N'2018-11-10T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id] , [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10008, 8, CAST(N'2018-10-31T00:00:00' AS SmallDateTime), CAST(N'2018-11-05T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id] , [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10009, 9, CAST(N'2018-10-31T00:00:00' AS SmallDateTime), CAST(N'2018-11-05T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id] , [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10010, 10, CAST(N'2018-10-31T00:00:00' AS SmallDateTime), CAST(N'2018-11-05T00:00:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Invoices] OFF 
GO
SET IDENTITY_INSERT [dbo].[LineItems] ON 
GO
INSERT [dbo].[LineItems] ([Id] , [Invoice_Id], [Description], [Amount]) VALUES (10001, 10001, N'Rent, a', 550.0000)
GO
INSERT [dbo].[LineItems] ([Id] , [Invoice_Id], [Description], [Amount]) VALUES (10002, 10001, N'Electricity', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id] , [Invoice_Id], [Description], [Amount]) VALUES (10003, 10001, N'Gas', 40.0000)
GO
INSERT [dbo].[LineItems] ([Id] , [Invoice_Id], [Description], [Amount]) VALUES (10004, 10001, N'Garage', 60.0000)
GO
INSERT [dbo].[LineItems] ([Id] , [Invoice_Id], [Description], [Amount]) VALUES (10005, 10001, N'Cable TV/Internet', 70.0000)
GO
INSERT [dbo].[LineItems] ([Id] , [Invoice_Id], [Description], [Amount]) VALUES (10006, 10002, N'Rent', 600.0000)
GO
INSERT [dbo].[LineItems] ([Id] , [Invoice_Id], [Description], [Amount]) VALUES (10007, 10002, N'Electricity', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id] , [Invoice_Id], [Description], [Amount]) VALUES (10008, 10002, N'Gas', 40.0000)
GO
INSERT [dbo].[LineItems] ([Id] , [Invoice_Id], [Description], [Amount]) VALUES (10009, 10002, N'Garage', 60.0000)
GO
INSERT [dbo].[LineItems] ([Id] , [Invoice_Id], [Description], [Amount]) VALUES (10010, 10002, N'Cable TVInternet', 70.0000)
GO
INSERT [dbo].[LineItems] ([Id] , [Invoice_Id], [Description], [Amount]) VALUES (10011, 10003, N'Rent', 650.0000)
GO
INSERT [dbo].[LineItems] ([Id] , [Invoice_Id], [Description], [Amount]) VALUES (10012, 10003, N'Garage', 80.0000)
GO
SET IDENTITY_INSERT [dbo].[LineItems] OFF 
GO
SET IDENTITY_INSERT [dbo].[Receipts] ON 
GO
INSERT [dbo].[Receipts] ([Id] , [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10001, 10001, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 790.0000)
GO
INSERT [dbo].[Receipts] ([Id] , [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10002, 10002, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 840.0000)
GO
INSERT [dbo].[Receipts] ([Id] , [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10003, 10003, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 890.0000)
GO
INSERT [dbo].[Receipts] ([Id] , [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10004, 10004, CAST(N'2018-11-10T00:00:00' AS SmallDateTime), 840.0000)
GO
INSERT [dbo].[Receipts] ([Id] , [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10005, 10005, CAST(N'2018-11-10T00:00:00' AS SmallDateTime), 840.0000)
GO
INSERT [dbo].[Receipts] ([Id] , [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10006, 10006, CAST(N'2018-11-10T00:00:00' AS SmallDateTime), 840.0000)
GO
INSERT [dbo].[Receipts] ([Id] , [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10007, 10007, CAST(N'2018-11-10T00:00:00' AS SmallDateTime), 840.0000)
GO
INSERT [dbo].[Receipts] ([Id] , [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10008, 10008, CAST(N'2018-11-05T00:00:00' AS SmallDateTime), 840.0000)
GO
INSERT [dbo].[Receipts] ([Id] , [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10009, 10009, CAST(N'2018-09-05T00:00:00' AS SmallDateTime), 800.0000)
GO
INSERT [dbo].[Receipts] ([Id] , [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10010, 10010, CAST(N'2018-09-27T00:00:00' AS SmallDateTime), 756.0000)
GO
SET IDENTITY_INSERT [dbo].[Receipts] OFF 
GO
