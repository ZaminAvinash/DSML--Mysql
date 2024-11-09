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
Select *from Country;
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
Select *from Persons;
SELECT DISTINCT Country_name
FROM Persons;
SELECT Fname AS First_Name, Lname AS Last_Name
FROM Persons;
SELECT *
FROM Persons
WHERE Rating > 4.0;
SELECT *
FROM Country
WHERE Population > 1000000;
SELECT *
FROM Persons
WHERE Country_name = 'USA' OR Rating > 4.5;
SELECT *
FROM Persons
WHERE Country_name IS NULL;
SELECT *
FROM Persons
WHERE Country_name IN ('USA', 'Canada', 'UK');
SELECT *
FROM Persons
WHERE Country_name NOT IN ('India', 'Australia');
SELECT *
FROM Country
WHERE Population BETWEEN 500000 AND 2000000;
SELECT *
FROM Country
WHERE Country_name NOT LIKE 'C%';
