CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_Name VARCHAR(50),
    DOB DATE,
    Age INT CHECK (Age >= 18 AND Age <= 65),
    Gender CHAR(2) ,
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);

INSERT INTO Managers (Manager_Id, First_name, Last_Name, DOB, Age, Gender, Department, Salary) VALUES
(1, 'Alice', 'Johnson', '1980-05-15', 44, 'F', 'Finance', 75000.00),
(2, 'Bob', 'Smith', '1975-08-22', 49, 'M', 'IT', 82000.00),
(3, 'Carol', 'White', '1988-01-30', 36, 'F', 'HR', 68000.00),
(4, 'David', 'Brown', '1990-10-12', 34, 'M', 'Sales', 72000.00),
(5, 'Eve', 'Green', '1985-07-19', 39, 'F', 'Marketing', 77000.00),
(6, 'Frank', 'Wilson', '1983-11-09', 41, 'M', 'Operations', 80000.00),
(7, 'Grace', 'Taylor', '1992-06-25', 32, 'F', 'Finance', 69000.00),
(8, 'Hank', 'Lee', '1978-03-11', 46, 'M', 'IT', 84000.00),
(9, 'Ivy', 'Clark', '1994-12-04', 29, 'F', 'HR', 66000.00),
(10, 'Jack', 'Lewis', '1987-02-28', 37, 'M', 'Sales', 78000.00);
Select * from Managers;

SELECT First_name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;
SELECT Manager_Id, First_name, Last_Name, Salary * 12 AS Annual_Income
FROM Managers;
INSERT INTO Managers values(11, 'Aaliya', 'john', '1987-05-29', 37, 'F', 'IT', 90000.00);
Select * from Managers;
SELECT *
FROM Managers
WHERE First_name <> 'Aaliya';

SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;
SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;
INSERT INTO Managers values(12, 'mery', 'christy', '1985-05-29', 37, 'F', 'IT', 25000.00);
Select * from Managers;
SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;
