--Miranda Scheck
--EX: 2C Summary quries
--PropertyManager db
--1)      
SELECT State, City, COUNT(*) AS [Count of Buildings]
FROM            Building
GROUP BY State, City
--2)
SELECT        City, COUNT(City) AS Count
FROM            Building
GROUP BY State, City
HAVING        (State = N'MN')
--3)
SELECT        Building.BuildingId, Building.BuildingName, AVG(Apartment.Rent) AS [Avg. Rent]
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.BuildingId, Building.BuildingName
--4)
SELECT        Building.City, Building.BuildingName, SUM(Apartment.Rent) AS [Total Rent]
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.City, Building.BuildingName, Building.State
HAVING        (Building.State = N'MN')
--5)
SELECT        Building.City, MIN(Apartment.Rent) AS Cheapest
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.City
--6)
SELECT        Building.BuildingName, MIN(Apartment.SquareFeet) AS Smallest, AVG(Apartment.SquareFeet) AS Avg, MAX(Apartment.SquareFeet) AS Largest
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.BuildingName, Building.City, Apartment.TenantId
HAVING        (Building.City = N'Winona') AND (Apartment.TenantId IS NULL)
--7) 
SELECT        MIN(LineItem.Amount) AS [Min Garage in Sep]
FROM            Invoice INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId
GROUP BY Invoice.InvoiceId, Invoice.DueDate, LineItem.Description
HAVING        (LineItem.Description = N'Garage') AND (Invoice.DueDate BETWEEN CONVERT(DATETIME, '2018-08-30 00:00:00', 102) AND CONVERT(DATETIME, '2018-10-01 00:00:00', 102))
--8)
SELECT        Invoice.InvoiceId, SUM(LineItem.Amount) AS [Total Billed]
FROM            Invoice INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId
GROUP BY Invoice.InvoiceId, Invoice.InvoiceDate
HAVING        (Invoice.InvoiceDate BETWEEN CONVERT(DATETIME, '2018-08-30 00:00:00', 102) AND CONVERT(DATETIME, '2018-10-01 00:00:00', 102))