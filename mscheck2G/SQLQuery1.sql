--1) Bulding, apartment, admins
SELECT        Buildings.Id, Buildings.BuildingName, Buildings.City, Apartments.ApartmentNum, People.FirstName + N' ' + People.LastName AS Admin
FROM            Buildings INNER JOIN
                         Apartments ON Buildings.Id = Apartments.Id INNER JOIN
                         People ON Buildings.Id = People.Id
GROUP BY Buildings.Id, Buildings.BuildingName, Buildings.City, Apartments.ApartmentNum, People.FirstName + N' ' + People.LastName, Apartments.Admin_Id
--2) Apartments, invoices, lineitems
SELECT        Apartments.Building_Id, Apartments.ApartmentNum, People.LastName + N', ' + People.FirstName AS Tenant, LineItems.Invoice_Id, LineItems.Description, LineItems.Amount
FROM            Apartments INNER JOIN
                         People ON Apartments.Id = People.Id CROSS JOIN
                         Invoices CROSS JOIN
                         LineItems
--3) Tenants, Invoices, receipts
SELECT        People.Id, People.LastName + N', ' + People.FirstName AS Tenant, Receipts.Invoice_Id, Invoices.DueDate, Receipts.ReceiptDate, Receipts.Amount AS [Amount Received]
FROM            People INNER JOIN
                         Invoices ON People.Id = Invoices.Id INNER JOIN
                         Receipts ON People.Id = Receipts.Id INNER JOIN
                         Apartments ON People.Id = Apartments.Id