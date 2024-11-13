select *from country;
select *from persons;
SELECT Persons.Fname, Persons.Lname, Persons.Rating, Country.Country_name
FROM Persons
INNER JOIN Country ON Persons.Country_Id = Country.Id;
SELECT Persons.Fname, Persons.Lname, Persons.Rating, Country.Country_name
FROM Persons
LEFT JOIN Country ON Persons.Country_Id = Country.Id;
SELECT Persons.Fname, Persons.Lname, Persons.Rating, Country.Country_name
FROM Persons
RIGHT JOIN Country ON Persons.Country_Id = Country.Id;

SELECT DISTINCT Country_name
FROM Country
UNION
SELECT DISTINCT Country_name
FROM Persons;

SELECT Country_name
FROM Country
UNION ALL
SELECT Country_name
FROM Persons;

SELECT Fname, Lname, ROUND(Rating) AS RoundedRating
FROM Persons;