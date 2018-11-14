--USE [PropertyManager]
--GO
SET IDENTITY_INSERT [dbo].[Buildings] ON 
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (1, N'Southeast Apartments', N'308 Pioneer Rd', N'Red Wing', N'MN', N'55066     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (2, N'Southwest Apartments', N'1250 Homer Rd', N'Winona', N'MN', N'55987     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (3, N'University Apartments', N'1000 University Ave', N'Des Moines', N'IA', N'50316     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (4, N'Modern Apartments', N'300 Martin Luther King Pwky', N'Des Moines', N'IA', N'50309     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (5, N'Fairway Woods', N'1555 Homer Rd', N'Winona', N'MN', N'55987     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (7, N'Edgewater Apartments', N'653 W Sarnia St #8', N'Winona', N'MN', N'55987     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (8, N'Hillview Apartments', N'4986 Service Dr', N'Winona', N'MN', N'55987     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (9, N'Pleasant Ridge Apartments', N'2488 Malmquist Ave', N'Red Wing', N'MN', N'55066     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (10, N'Maple Hills', N'521 Maple St', N'Red Wing', N'MN', N'55066     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (11, N'Belle Square', N'232 3rd St N', N'La Crosse', N'WI', N'54601     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (12, N'Sunset Terrace Apartments', N'3008 Gillette St', N'La Crosse', N'WI', N'54601     ')
GO
SET IDENTITY_INSERT [dbo].[Buildings] OFF
GO
SET IDENTITY_INSERT [dbo].[People] ON 
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (1, N'Sheela', N'Word', N'1111111111', N'ela.word@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (2, N'Mikael', N'Sandberg', N'1111111112', N'm.sandberg@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (3, N'Arvind', N'Rao', N'1111111113', N'ad.rao@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (4, N'Linda', N'Meisner', N'1111111114', N'la.mr@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (5, N'Mark', N'Swanson', N'1111111115', N'mswon@somn.edu')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (7, N'Fukiko', N'Ogisu', N'1111111116', N'fuko.ojisu@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (8, N'Gordon', N'Hee', N'1111111117', N'gor.hee@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (9, N'Frank', N'Pellow', N'1111111118', N'frank.p@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (10, N'Eric', N'Kurjan', N'1111111119', N'eric.k@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (11, N'Reinout', N'Hillman', N'1111111120', N'rout.h@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (12, N'Ron', N'Swanson', N'1111111121', N'ronon@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (13, N'Suinae', N'Swill', N'1111111122', N'sue.swill@email.com')
GO
SET IDENTITY_INSERT [dbo].[People] OFF
GO
SET IDENTITY_INSERT [dbo].[Apartments] ON 
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (1, 1, N'101', 400, 1, 550.0000, 1, 5)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (2, 1, N'102', 550, 1, 700.0000, 2, 5)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (3, 2, N'101', 600, 1, 750.0000, 3, 7)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (4, 2, N'102', 800, 2, 1000.0000, 4, 7)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (5, 2, N'105', 500, 1, 400.0000, 5, 7)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (6, 1, N'103', 600, 1, 700.0000, 10, 5)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (7, 2, N'106', 1000, 2, 1100.0000, 7, 7)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (8, 1, N'104', 800, 1, 900.0000, 10, 5)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (9, 1, N'105', 1200, 2, 1200.0000, 8, 5)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (10, 2, N'106', 600, 1, 500.0000, 10, 7)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (13, 1, N'106', 600, 1, 600.0000, 10, 5)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (14, 5, N'101', 500, 1, 500.0000, 10, 5)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (15, 5, N'102', 600, 1, 600.0000, 9, 5)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (16, 5, N'103', 700, 1, 700.0000, 10, 5)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (17, 5, N'104', 800, 1, 800.0000, 10, 5)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (18, 5, N'105', 900, 2, 900.0000, 10, 5)
GO
SET IDENTITY_INSERT [dbo].[Apartments] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON 
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10001, 1, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10002, 2, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10003, 3, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10004, 4, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10005, 5, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10006, 1, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10007, 2, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10008, 3, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10009, 4, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10010, 5, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Invoices] OFF
GO
SET IDENTITY_INSERT [dbo].[LineItems] ON 
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10001, 10001, N'Rent, October 2018', 550.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10002, 10001, N'Electricity', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10003, 10001, N'Gas', 40.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10004, 10001, N'Garage', 60.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10005, 10001, N'Cable TV/Internet', 70.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10006, 10002, N'Rent, October 2018', 700.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10007, 10002, N'Electricity', 60.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10008, 10002, N'Gas', 45.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10009, 10002, N'Garage', 90.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10010, 10003, N'Rent, October 2018', 750.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10011, 10003, N'Electricity', 55.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10012, 10003, N'Gas', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10013, 10003, N'Cable TV/Internet', 70.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10014, 10006, N'Rent, Nov 2018', 550.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10015, 10006, N'Electricity', 45.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10016, 10006, N'Gas', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10017, 10006, N'Garage', 60.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10018, 10006, N'Cable TV/Internet', 75.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10019, 10007, N'Rent, November 2018', 700.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10020, 10007, N'Electricity', 65.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10021, 10007, N'Gas', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10022, 10007, N'Garage', 90.0000)
GO
SET IDENTITY_INSERT [dbo].[LineItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Receipts] ON 
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10001, 10001, CAST(N'2018-09-27T00:00:00' AS SmallDateTime), 770.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10002, 10002, CAST(N'2018-09-28T00:00:00' AS SmallDateTime), 895.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10003, 10003, CAST(N'2018-10-02T00:00:00' AS SmallDateTime), 925.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10004, 10006, CAST(N'2018-10-29T00:00:00' AS SmallDateTime), 780.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10005, 10007, CAST(N'2018-10-30T00:00:00' AS SmallDateTime), 800.0000)
GO
SET IDENTITY_INSERT [dbo].[Receipts] OFF
GO