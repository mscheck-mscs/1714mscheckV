--Miranda Scheck
--EX: 2E quries
--PropertyManager db
--1)   
SELECT        BuildingName, Address, City + N', ' + State + N' ' + Zip AS [City State Zip]
FROM            Building
WHERE        (City = N'Winona')
--2)
SELECT        Building.BuildingName, Apartment.ApartmentNum, Apartment.SquareFeet * 0.9 + 100 * Apartment.Bathrooms AS EstimatedRent
FROM            Apartment INNER JOIN
                         Building ON Apartment.BuildingId = Building.BuildingId
WHERE        (Building.City = N'Red Wing')
--3)
SELECT        Building.BuildingName, Apartment.ApartmentNum, Apartment.Rent, Apartment.SquareFeet * 0.9 + 100 * Apartment.Bathrooms AS [Estimate Rent], Apartment.Rent - (Apartment.SquareFeet * 0.9 + 100 * Apartment.Bathrooms) 
                         AS difference
FROM            Apartment INNER JOIN
                         Building ON Apartment.BuildingId = Building.BuildingId
WHERE        (Building.City = N'Red Wing')
--4)
SELECT        Building.BuildingId, Apartment.ApartmentNum, Person.FirstName + ' ' + Person.LastName AS Name, Invoice.InvoiceDate, SUM(LineItem.Amount) AS Total
FROM            Invoice INNER JOIN
                         Apartment ON Invoice.ApartmentId = Apartment.ApartmentId INNER JOIN
                         Building ON Apartment.BuildingId = Building.BuildingId INNER JOIN
                         Person ON Apartment.TenantId = Person.PersonId AND Apartment.TenantId = Person.FirstName + ' ' + Person.LastName INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId
GROUP BY Building.BuildingId, Apartment.ApartmentNum, Person.FirstName + ' ' + Person.LastName, Invoice.InvoiceDate
--5)
SELECT        Building.BuildingId, Apartment.ApartmentNum, Person.FirstName + N' ' + Person.LastName AS Name, Invoice.InvoiceDate, SUM(LineItem.Amount) AS Total, Receipt.Amount AS ReceiptAmount
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId INNER JOIN
                         Person ON Apartment.TenantId = Person.PersonId AND Apartment.AdminId = Person.PersonId INNER JOIN
                         Invoice ON Apartment.ApartmentId = Invoice.ApartmentId INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId INNER JOIN
                         Receipt ON Invoice.InvoiceId = Receipt.InvoiceId
GROUP BY Building.BuildingId, Apartment.ApartmentNum, Person.FirstName + N' ' + Person.LastName, Invoice.InvoiceDate, Receipt.Amount
--6)