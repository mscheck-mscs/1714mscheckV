--Miranda Scheck


--1) Building, Apartment (BuildingId, BuildingName, ApartmentNum, Rent)
SELECT        Building.BuildingId, Building.BuildingName, Apartment.ApartmentNum, Apartment.Rent
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
ORDER BY Building.BuildingId, Apartment.ApartmentNum
--2) Building, Apartment (BuildingId, City, BuildingName, ApartmentNum, Rent)
SELECT        Building.City, Building.BuildingName, Apartment.BuildingId AS Expr1, Apartment.ApartmentNum, Apartment.Rent
FROM            Apartment INNER JOIN
                         Building ON Apartment.BuildingId = Building.BuildingId
WHERE        (Building.City = N'Winona')
ORDER BY Expr1, Apartment.Rent DESC
--3) Apartment, Invoice (ApartmentId, ApartmentNum, InvoiceId, InvoiceDate, DueDate)
SELECT        Apartment.ApartmentId, Apartment.ApartmentNum, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.DueDate
FROM            Apartment INNER JOIN
                         Invoice ON Apartment.ApartmentId = Invoice.ApartmentId
WHERE        (Apartment.BuildingId = 1)
ORDER BY Apartment.ApartmentNum, Invoice.InvoiceDate DESC
--4) Apartment, Invoice (BuildingId, ApartmentNum, InvoiceId, InvoiceDate, DueDate)
SELECT        Apartment.BuildingId, Apartment.ApartmentNum, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.DueDate
FROM            Apartment INNER JOIN
                         Invoice ON Apartment.ApartmentId = Invoice.ApartmentId
ORDER BY Apartment.BuildingId, Apartment.ApartmentNum, Invoice.InvoiceDate
--5) Apartment, Person (BuildingId, ApartmentNum, Rent, LastName (alias: 'Admin'))
SELECT        Apartment.BuildingId, Apartment.ApartmentNum, Apartment.Rent, Person.LastName
FROM            Apartment INNER JOIN
                         Person ON Apartment.AdminId = Person.PersonId
--6) Apartment,Person(BuildingId,ApartmentNum,LastName (alias: TenantLastName),FirstName (alias: TenantFirstName))
SELECT        Apartment.BuildingId, Apartment.ApartmentNum, Person.LastName, Person.FirstName
FROM            Apartment INNER JOIN
                         Person ON Apartment.TenantId = Person.PersonId
ORDER BY Apartment.BuildingId, Person.LastName, Person.FirstName
--7) Invoice, LineItem (ApartmentId, InvoiceId, InvoiceDate, Description, Amount)
SELECT        Invoice.ApartmentId, LineItem.InvoiceId, Invoice.InvoiceDate, LineItem.Description, LineItem.Amount
FROM            Invoice INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId
ORDER BY Invoice.ApartmentId, Invoice.InvoiceDate DESC
--8) Invoice, LineItem (ApartmentId, InvoiceId, InvoiceDate, Description, Amount)
SELECT        Invoice.ApartmentId, LineItem.InvoiceId, Invoice.InvoiceDate, LineItem.Description, LineItem.Amount
FROM            Invoice INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId
WHERE        (LineItem.Description = N'Garage') OR
                         (LineItem.Description = N'Rent')
ORDER BY Invoice.ApartmentId, Invoice.InvoiceDate DESC
--9) Invoice, Receipt (ApartmentId, InvoiceId, DueDate, ReceiptDate, Amount)
SELECT        Invoice.ApartmentId, Invoice.InvoiceId, Invoice.DueDate, Receipt.ReceiptDate, Receipt.Amount
FROM            Invoice INNER JOIN
                         Receipt ON Invoice.InvoiceId = Receipt.InvoiceId
ORDER BY Invoice.ApartmentId, Invoice.InvoiceId

