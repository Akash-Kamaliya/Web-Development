USE Akash;

-------------------------------------------    Alter, Rename Operation   ------------------------------------------------------
SELECT * FROM DEPOSITE_DEMO123;

-- Part – A:
-- Use Deposit table of lab-1.
-- From the above given tables perform the following queries (ALTER, RENAME Operation):
-- 1.
-- Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE DEPOSITE_DEMO123
ADD City VARCHAR (20) , Pincode INT;
-- 2.
-- Add column state VARCHAR(20).
ALTER TABLE DEPOSITE_DEMO123
ADD state VARCHAR(20);
-- 3.
-- Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSITE_DEMO123
ALTER COLUMN CNAME VARCHAR (35);
-- 4.
-- Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSITE_DEMO123
ALTER COLUMN AMOUNT INT;
-- 5.
-- Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSITE_DEMO123
DROP COLUMN City;
-- 6.
-- Rename Column ActNo to ANO.
SP_RENAME 'DEPOSITE_DEMO123.ActNo' , 'ANO';
-- 7.
-- Change name of table DEPOSIT to DEPOSIT_DETAIL.
SP_RENAME 'DEPOSITE_DEMO123' , 'DEPOSIT_DETAIL';----------------------------------------
SP_RENAME 'DEPOSIT_DETAIL' , 'DEPOSITE_DEMO123';---------------------------------------------
-------------------------------------------------------------------------------------------------
-- Part – B:
SELECT * FROM DEPOSITE_DEMO123;
-- 1.
-- Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
SP_RENAME 'DEPOSITE_DEMO123.ADATE' , 'AOPENDATE' ;
-- 2.
-- Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSITE_DEMO123
DROP COLUMN AOPENDATE;
-- 3.
-- Rename Column CNAME to CustomerName.
SP_RENAME 'DEPOSITE_DEMO123.CNAME' , 'CustomerName' ;
-- 4.
-- Add Column country.
ALTER TABLE DEPOSITE_DEMO123
ADD country VARCHAR(20);
-- ----------------------------------------------------------------------------------------
-- Part – C:
-- Create following table using query according to the definition.
CREATE TABLE STUDENT_DETAIL (
	Enrollment_No VARCHAR(20),
    SNAME VARCHAR(25),
    CPI DECIMAL(5,2),
    Birthdate DATETIME
);
SELECT * FROM STUDENT_DETAIL;
-- From the above given tables perform the following queries (ALTER, RENAME Operation):
-- 1.
-- Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAIL
ADD City VARCHAR (20) , Backlog INT;
-- 2.
-- Add column department VARCHAR (20) Not Null.
ALTER TABLE STUDENT_DETAIL
ADD department VARCHAR (20);
-- 3.
-- Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
ALTER TABLE STUDENT_DETAIL
ALTER COLUMN SNAME VARCHAR (35);
-- 4.
-- Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE STUDENT_DETAIL
ALTER COLUMN CPI INT;
-- 5.
-- Delete Column City from the student_detail table.
ALTER TABLE STUDENT_DETAIL
DROP COLUMN City;
-- 6.
-- Rename Column Enrollment_No to ENO.
SP_RENAME 'STUDENT_DETAIL.Enrollment_No' , 'ENO' ;
-- 7.
-- Change name of table student_detail to STUDENT_MASTER.
SP_RENAME 'STUDENT_DETAIL' , 'STUDENT_MASTER' ;----------------------------------------------------
SP_RENAME 'STUDENT_MASTER' , 'STUDENT_DETAIL' ;----------------------------------------------------
-----------------------------------------------------------------------------------------------

--------------------------------------------------   DELETE, Truncate, Drop Operation    -----------------------------------------
-- Part – A:
-- Use Deposit_Detail table (Altered table of DEPOSIT)
SELECT * FROM DEPOSITE_DEMO123;
-- 1.
-- Delete all the records of DEPOSIT_DETAIL table having amount less than and equals to 4000.
DELETE 
FROM DEPOSITE_DEMO123
WHERE AMOUNT<4000;
-- 2.
-- Delete all the accounts CHANDI BRANCH.
DELETE 
FROM DEPOSITE_DEMO123
WHERE BNAME = 'CHANDI';
-- 3.
-- Delete all the accounts having account number (ANO) is greater than 102 and less than 105.
DELETE 
FROM DEPOSITE_DEMO123
WHERE ANO>102 AND ANO<105;
-- 4.
-- Delete all the accounts whose branch is ‘AJNI’ or ‘POWAI’
DELETE 
FROM DEPOSITE_DEMO123
WHERE BNAME = 'AJNI' OR BNAME = 'POWAI';
-- 5.
-- Delete all the accounts whose account number is NULL.
DELETE 
FROM DEPOSITE_DEMO123
WHERE ANO IS NULL;
-- 6.
-- Delete all the remaining records using Delete command.
DELETE 
FROM DEPOSITE_DEMO123
WHERE 1=1;
-- 7.
-- Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSITE_DEMO123;
-- 8.
-- Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSITE_DEMO123;
---------------------------------------------------------------------------------------------------------------
-- Part – B:
-- Create following table using query according to the definition.
CREATE TABLE EMPLOYEE_MASTER (
	EmpNo INT,
    EmpName VARCHAR(25),
    JoiningDate DATETIME,
    Salary DECIMAL (8,2),
    City VARCHAR(20)
);
SELECT * FROM EMPLOYEE_MASTER;

INSERT INTO EMPLOYEE_MASTER VALUES 
(101 , 'Keyur'  , 2002-01-05, 12000.00 , 'Rajkot'),
(102 , 'Hardik'  , 2004-02-15 , 14000.00 , 'Ahmedabad'),
(103 , 'Kajal'  , 2006-03-14 , 15000.00 , 'Baroda'),
(104 , 'Bhoomi'  , 2005-06-23 , 12500.00 , 'Ahmedabad' ),
(105 , 'Harmit'  , 2004-02-15 , 14000.00 , 'Rajkot' ),
(106 , 'Mitesh'  , 2001-09-25 , 5000.00 , 'Jamnagar'),
(107 , 'Meera'  , Null , 7000.00 , 'Morbi' ),
(108 , 'Kishan' , 2003-02-06 , 10000.00 , NULL)

-- From the above given tables perform the following queries (DELETE Operation):
SELECT * FROM EMPLOYEE_MASTER;
-- 1.
-- Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
DELETE 
FROM Employee_MASTER
WHERE SALARY>=14000;
-- 2.
-- Delete all the Employees who belongs to ‘RAJKOT’ city.
DELETE 
FROM Employee_MASTER
WHERE CITY='RAJKOT';
-- 3.
-- Delete all the Employees who joined after 1-1-2007.
DELETE 
FROM Employee_MASTER
WHERE JoiningDate>='2007-01-01';
-- 4.
-- Delete the records of Employees whose joining date is null and Name is not null.
DELETE 
FROM Employee_MASTER
WHERE JoiningDate IS NULL AND EMPNAME IS NOT NULL;
-- 5.
-- Delete the records of Employees whose salary is 50% of 20000.
DELETE 
FROM Employee_MASTER
WHERE SALARY=10000;
-- 6.
-- Delete the records of Employees whose City Name is not empty.
DELETE 
FROM Employee_MASTER
WHERE City IS NOT NULL ;
-- 7.
-- Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE Employee_MASTER;
-- 8.
-- Remove Employee_MASTER table. (Use Drop)
DROP TABLE Employee_MASTER;--------------------------------------------------------------
-----------------------------------------------------------------------------------------