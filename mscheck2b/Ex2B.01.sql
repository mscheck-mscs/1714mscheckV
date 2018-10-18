--Miranda Scheck
--EX: 2B Summary quries
--PropertyManager db

--1)Count all buildings
SELECT        COUNT(*) AS [Count All Buildings]
FROM            Building
--2) Buildings in Winona
SELECT        COUNT(*) AS Count
FROM            Building
GROUP BY City
HAVING        (City = N'Winona')

--3)Average rent
SELECT        AVG(Rent) AS Rent
FROM            Apartment
--4)Total Rent
SELECT        SUM(Rent) AS Expr1, BuildingId
FROM            Apartment
GROUP BY BuildingId
HAVING        (BuildingId = 1)
--5)Cheapest Rent
SELECT        MIN(Rent) AS [Cheapest Rent]
FROM            Apartment
GROUP BY BuildingId
HAVING        (BuildingId = 2)
--6)Smallest size, avg size, largest size
SELECT        MIN(SquareFeet) AS Min, AVG(SquareFeet) AS Avg, MAX(SquareFeet) AS Max
FROM            Apartment
GROUP BY BuildingId
HAVING        (BuildingId = 1)
--7) Cheapest price with Garage
SELECT        MIN(Amount) AS Min
FROM            LineItem
GROUP BY Description
HAVING        (Description = N'Garage')
--8) Total amount billed
SELECT        SUM(Amount) AS [Total Gas]
FROM            LineItem
GROUP BY Description
HAVING        (Description = N'Gas')
--9) Total Rent in October
SELECT        SUM(Amount) AS [October Sum]
FROM            LineItem
GROUP BY Description
HAVING        (Description = N'% Rent, Oct%')