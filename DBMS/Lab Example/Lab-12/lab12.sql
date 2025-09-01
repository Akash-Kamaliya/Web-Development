-- Create DEPT table
CREATE TABLE DEPT (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE,
    DepartmentCode VARCHAR(50) NOT NULL UNIQUE,
    Location VARCHAR(50) NOT NULL
);

-- Create PERSON table
CREATE TABLE PERSON (
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR(100) NOT NULL,
    DepartmentID INT NULL,
    Salary DECIMAL(8,2) NOT NULL,
    JoiningDate DATETIME NOT NULL,
    City VARCHAR(100) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES DEPT(DepartmentID)
);

-- Insert data into DEPT
INSERT INTO DEPT VALUES
(1, 'Admin', 'Adm', 'A-Block'),
(2, 'Computer', 'CE', 'C-Block'),
(3, 'Civil', 'CI', 'G-Block'),
(4, 'Electrical', 'EE', 'E-Block'),
(5, 'Mechanical', 'ME', 'B-Block');

-- Insert data into PERSON
INSERT INTO PERSON VALUES
(101, 'Rahul Tripathi', 2, 56000, '2000-01-01', 'Rajkot'),
(102, 'Hardik Pandya', 3, 18000, '2001-09-25', 'Ahmedabad'),
(103, 'Bhavin Kanani', 4, 25000, '2000-05-14', 'Baroda'),
(104, 'Bhoomi Vaishnav', 1, 39000, '2005-02-08', 'Rajkot'),
(105, 'Rohit Topiya', 2, 17000, '2001-07-23', 'Jamnagar'),
(106, 'Priya Menpara', NULL, 9000, '2000-10-18', 'Ahmedabad'),
(107, 'Neha Sharma', 2, 34000, '2002-12-25', 'Rajkot'),
(108, 'Nayan Goswami', 3, 25000, '2001-07-01', 'Rajkot'),
(109, 'Mehul Bhundiya', 4, 13500, '2005-01-09', 'Baroda'),
(110, 'Mohit Maru', 5, 14000, '2000-05-25', 'Jamnagar');

-- 1. Cross join (Cartesian product)
SELECT * FROM PERSON CROSS JOIN DEPT;

-- 2. All persons with their department name
SELECT P.*, D.DepartmentName
FROM PERSON P
LEFT JOIN DEPT D ON P.DepartmentID = D.DepartmentID;

-- 3. All persons with their department name & code
SELECT P.*, D.DepartmentName, D.DepartmentCode
FROM PERSON P
LEFT JOIN DEPT D ON P.DepartmentID = D.DepartmentID;

-- 4. All persons with their department code and location
SELECT P.PersonName, D.DepartmentCode, D.Location
FROM PERSON P
LEFT JOIN DEPT D ON P.DepartmentID = D.DepartmentID;

-- 5. Detail of the person who belongs to Mechanical department
SELECT P.*
FROM PERSON P
JOIN DEPT D ON P.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'Mechanical';

-- 6. Person’s name, department code and salary who lives in Ahmedabad city
SELECT P.PersonName, D.DepartmentCode, P.Salary
FROM PERSON P
LEFT JOIN DEPT D ON P.DepartmentID = D.DepartmentID
WHERE P.City = 'Ahmedabad';

-- 7. Person's name whose department is in C-Block
SELECT P.PersonName
FROM PERSON P
JOIN DEPT D ON P.DepartmentID = D.DepartmentID
WHERE D.Location = 'C-Block';

-- 8. Person name, salary & department name who belongs to Jamnagar city
SELECT P.PersonName, P.Salary, D.DepartmentName
FROM PERSON P
LEFT JOIN DEPT D ON P.DepartmentID = D.DepartmentID
WHERE P.City = 'Jamnagar';

-- 9. Person’s detail who joined the Civil department after 1-Aug-2001
SELECT P.*
FROM PERSON P
JOIN DEPT D ON P.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'Civil' AND P.JoiningDate > '2001-08-01';

-- 10. All person's name with the department whose joining date difference with the current date is more than 365 days
SELECT P.PersonName, D.DepartmentName
FROM PERSON P
LEFT JOIN DEPT D ON P.DepartmentID = D.DepartmentID
WHERE DATEDIFF(DAY, P.JoiningDate, GETDATE()) > 365;

-- 11. Department wise person counts
SELECT D.DepartmentName, COUNT(P.PersonID) AS PersonCount
FROM DEPT D
LEFT JOIN PERSON P ON D.DepartmentID = P.DepartmentID
GROUP BY D.DepartmentName;

-- 12. Department wise maximum & minimum salary with department name
SELECT D.DepartmentName, MAX(P.Salary) AS MaxSalary, MIN(P.Salary) AS MinSalary
FROM DEPT D
LEFT JOIN PERSON P ON D.DepartmentID = P.DepartmentID
GROUP BY D.DepartmentName;

-- 13. City wise total, average, maximum and minimum salary
SELECT City, SUM(Salary) AS TotalSalary, AVG(Salary) AS AvgSalary, MAX(Salary) AS MaxSalary, MIN(Salary) AS MinSalary
FROM PERSON
GROUP BY City;

-- 14. Average salary of a person who belongs to Ahmedabad city
SELECT AVG(Salary) AS AvgSalary
FROM PERSON
WHERE City = 'Ahmedabad';

-- 15. Output: <PersonName> lives in <City> and works in <DepartmentName> Department.
SELECT CONCAT(P.PersonName, ' lives in ', P.City, ' and works in ', D.DepartmentName, ' Department.') AS Info
FROM PERSON P
LEFT JOIN DEPT D ON P.DepartmentID = D.DepartmentID;

-- Part B
-- 1. Output: <PersonName> earns <Salary> from <DepartmentName> department monthly.
SELECT CONCAT(P.PersonName, ' earns ', P.Salary, ' from ', D.DepartmentName, ' department monthly.') AS Info
FROM PERSON P
LEFT JOIN DEPT D ON P.DepartmentID = D.DepartmentID;

-- 2. City & department wise total, average & maximum salaries
SELECT P.City, D.DepartmentName, SUM(P.Salary) AS TotalSalary, AVG(P.Salary) AS AvgSalary, MAX(P.Salary) AS MaxSalary
FROM PERSON P
LEFT JOIN DEPT D ON P.DepartmentID = D.DepartmentID
GROUP BY P.City, D.DepartmentName;

-- 3. All persons who do not belong to any department
SELECT *
FROM PERSON
WHERE DepartmentID IS NULL;

-- 4. All departments whose total salary is exceeding 100000
SELECT D.DepartmentName, SUM(P.Salary) AS TotalSalary
FROM DEPT D
JOIN PERSON P ON D.DepartmentID = P.DepartmentID
GROUP BY D.DepartmentName
HAVING SUM(P.Salary) > 100000;

-- Part C
-- 1. List all departments who have no person
SELECT D.DepartmentName
FROM DEPT D
LEFT JOIN PERSON P ON D.DepartmentID = P.DepartmentID
WHERE P.PersonID IS NULL;

-- 2. Department names in which more than two persons are working
SELECT D.DepartmentName
FROM DEPT D
JOIN PERSON P ON D.DepartmentID = P.DepartmentID
GROUP BY D.DepartmentName
HAVING COUNT(P.PersonID) > 2;

-- 3. Give a 10% increment in the computer department employee’s salary
UPDATE PERSON
SET Salary = Salary * 1.10
WHERE DepartmentID = (SELECT DepartmentID FROM DEPT WHERE DepartmentName = 'Computer');