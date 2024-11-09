CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population INT,
    Area INT
);
CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 1),
    Country_Id INT,
    Country_name VARCHAR(50),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);
INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9833517),
(2, 'Canada', 37742154, 9984670),
(3, 'UK', 67886011, 243610),
(4, 'India', 1380004385, 3287263),
(5, 'Australia', 25499884, 7692024),
(6, 'France', 65273511, 551695),
(7, 'Germany', 83783942, 357022),
(8, 'Italy', 60461826, 301340),
(9, 'Spain', 46754778, 505992),
(10, 'Brazil', 212559417, 8515767);
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331000000, 4.2, 1, 'USA'),
(2, 'Alice', 'Smith', 37742154, 3.9, 2, 'Canada'),
(3, 'Bob', 'Johnson', 67886011, 4.6, 3, 'UK'),
(4, 'Carol', 'Brown', 1380004385, 4.1, 4, 'India'),
(5, 'David', 'Davis', 25499884, 4.8, 5, 'Australia'),
(6, 'Emma', 'Wilson', 65273511, 3.5, 6, 'France'),
(7, 'Frank', 'Garcia', 83783942, 4.7, 7, 'Germany'),
(8, 'Grace', 'Martinez', 60461826, 4.3, 8, 'Italy'),
(9, 'Henry', 'Lee', 46754778, 4.0, 9, 'Spain'),
(10, 'Isabella', 'Taylor', NULL, 4.9, NULL, NULL);
SELECT *FROM Country;
SELECT *FROM Persons;
SELECT LEFT(Country_name, 3) AS FirstThreeChars
FROM Country;
SELECT CONCAT(Fname, ' ', Lname) AS FullName
FROM Persons;
SELECT COUNT(DISTINCT Country_name) AS UniqueCountries
FROM Persons;
SELECT MAX(Population) AS MaxPopulation
FROM Country;
SELECT MIN(Population) AS MinPopulation
FROM Persons;
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(11, 'Liam', NULL, 46754778, 3.8, 9, 'Spain'),
(12, 'Olivia', NULL, 60461826, 4.4, 8, 'Italy');

SELECT COUNT(Lname) AS CountLname
FROM Persons;
SELECT COUNT(*) AS RowCount
FROM Persons;
SELECT Population
FROM Country
LIMIT 3;
SELECT *
FROM Country
ORDER BY RAND()
LIMIT 3;
SELECT *
FROM Persons
ORDER BY Rating DESC;

SELECT Country_name, SUM(Population) AS TotalPopulation
FROM Persons
GROUP BY Country_name;
SELECT Country_name, SUM(Population) AS TotalPopulation
FROM Persons
GROUP BY Country_name
HAVING SUM(Population) > 50000;
SELECT Country_name, COUNT(*) AS TotalPersons, AVG(Rating) AS AverageRating
FROM Persons
GROUP BY Country_name
HAVING COUNT(*) > 2
ORDER BY AverageRating ASC;
