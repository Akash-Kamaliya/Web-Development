USE Akash;

CREATE TABLE EMP(
    EID INT,
    EName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    JoiningDate DATETIME, 
    City VARCHAR(50),
    Gender VARCHAR(50)
); 
INSERT INTO EMP VALUES 
(101 ,'Rahul' ,'Admin', 56000 ,'1990-01-01' ,'Rajkot', 'Male'),
(102 ,'Hardik' ,'IT' ,18000 ,'1995-09-25', 'Ahmedabad', 'Male'),
(103 ,'Bhavin' ,'HR', 25000, '1991-05-14', 'Baroda', 'Male'),
(104 ,'Bhoomi' ,'Admin' ,39000 ,'1991-02-08', 'Rajkot' ,'Female'),
(105 ,'Rohit' ,'IT' ,17000 ,'1990-07-23', 'Jamnagar' ,'Male'),
(106 ,'Priya', 'IT' ,9000, '1990-10-18', 'Ahmedabad' ,'Female'),
(107 ,'Bhoomi' ,'HR' ,34000 ,'1991-12-25', 'Rajkot' ,'Female')

SELECT * FROM EMP;
--PART - A
-- 1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY)
AS [MAXIMUM]
FROM EMP;
------------
SELECT MIN(SALARY)
AS [MINIMUN]
FROM EMP;
----------------
-- 2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,
-- respectively.
SELECT SUM(SALARY)
AS [Total_Sal]
FROM EMP;
-------------------------
SELECT AVG(SALARY)
AS [Average_Sal]
FROM EMP;
-- 3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(EID)
AS [TOTLE]
FROM EMP;
-- 4. Find highest salary from Rajkot city.
SELECT MAX(SALARY)
AS [MAXIMUM]
FROM EMP
WHERE CITY = 'RAJKOT';
-- 5. Give maximum salary from IT department.
SELECT MAX(SALARY)
AS [MAXIMUM]
FROM EMP
WHERE department = 'IT';
-- 6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(EID)
AS [TOTLE]
FROM EMP
WHERE JoiningDate >='1991-02-08';
-- 7. Display average salary of Admin department.
SELECT AVG(SALARY)
AS [average]
FROM EMP
WHERE department = 'ADMIN';
-- 8. Display total salary of HR department.
SELECT SUM(SALARY)
AS [average]
FROM EMP
WHERE department = 'ADMIN';
-- 9. Count total number of cities of employee without duplication.
-- 10. Count unique departments.
-- 11. Give minimum salary of employee who belongs to Ahmedabad.
-- 12. Find city wise highest salary.
-- 13. Find department wise lowest salary.
-- 14. Display city with the total number of employees belonging to each city.
-- 15. Give total salary of each department of EMP table.
-- 16. Give average salary of each department of EMP table without displaying the respective department
-- name.
-- 17. Count the number of employees for each department in every city.
-- 18. Calculate the total salary distributed to male and female employees.
-- 19. Give city wise maximum and minimum salary of female employees.
-- 20. Calculate department, city, and gender wise average salary