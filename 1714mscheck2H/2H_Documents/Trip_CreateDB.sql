SELECT        Trips.DateOfTakeOff, [Returns].Date AS BackDate, Groups.Name AS [Group], Trips.Group_Id AS ID, People.FirstName AS Manger
FROM            Trips INNER JOIN
                         [Returns] ON Trips.Id = [Returns].Trip_Id INNER JOIN
                         People ON Trips.Manger_Id = People.Id INNER JOIN
                         Groups ON Trips.Group_Id = Groups.Id
SELECT        Groups.NumberOfMembers AS Size, Groups.Name, People.FirstName AS CrewMember1_Id
FROM            Groups INNER JOIN
                         Trips ON Groups.Id = Trips.Group_Id INNER JOIN
                         People ON Trips.CrewMember1_Id = People.Id
WHERE        (Groups.NumberOfMembers < N'20')
SELECT        Trips.DateOfTakeOff, People.LastName AS Driver, Locations.City, Locations.State
FROM            Trips INNER JOIN
                         People ON Trips.CrewMember2_Id = People.Id INNER JOIN
                         Locations ON Trips.Location_Id = Locations.Id