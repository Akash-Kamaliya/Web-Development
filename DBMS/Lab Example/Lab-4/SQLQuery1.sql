USE Akash;

--Select into Operation---------------------------------------------------------

-- Part – A:
CREATE TABLE CRICKET (
	PNAME VARCHAR(50),
	CITY VARCHAR(50),
	AGE INT
);

SELECT * FROM CRICKET;

INSERT INTO CRICKET VALUES 
('Sachin Tendulkar' , 'Mumbai', 30),
('Rahul Dravid' , 'Bombay' , 35),
('M. S. Dhoni' , 'Jharkhand' , 31),
('Suresh Raina' , 'Gujarat' , 30)

-- 1.
-- Create table Worldcup from cricket with all the columns and data.
SELECT *
INTO Worldcup
FROM CRICKET
WHERE 1 = 1;
-----
SELECT * FROM Worldcup;
-- 2.
-- Create table T20 from cricket with first two columns with no data.
SELECT PNAME , CITY
INTO T20
FROM CRICKET
WHERE 1 = 1;
-------
SELECT * FROM T20;
-- 3.
-- Create table IPL From Cricket with No Data.
SELECT *
INTO IPL
FROM CRICKET
WHERE 1 = 0;
----------
SELECT * FROM IPL;
-- 4.
-- Select players who are either older than 30 and from 'Mumbai' or exactly 31 years old and not from 'Bombay', and insert them into a new table PLAYER.
SELECT *
INTO PLAYER
FROM CRICKET
WHERE (AGE > 30 OR CITY = 'Mumbai')OR(AGE = 31 AND CITY = 'Bombay');
-----------
SELECT * FROM PLAYER;
-- 5.
-- Select players whose age is a prime number or their city belongs to India Country, and insert them into a new table PLAYER_INFO. (Consider Cricketer age between 18 to 55)
-- 6.
-- Select players whose age is a multiple of 5 and insert them into a new table PLAYER_DATA.
SELECT *
INTO PLAYER_DATA
FROM CRICKET
WHERE AGE%5=0;
-----------
SELECT * FROM PLAYER_DATA;
-- 7.
-- Insert the cricketer into IPL table whose city is ‘Jharkhand’
SELECT *
INTO IPL01
FROM CRICKET
WHERE CITY='Jharkhand';
-------------
SELECT * FROM IPL01;
-------------------------------------------------------------------------------------------
--Part – B:
CREATE TABLE EMPLOYEE (
	PNAME VARCHAR(50),
	CITY VARCHAR(50),
	AGE INT
);

INSERT INTO EMPLOYEE VALUES 
('Jay Patel' , 'Rajkot' , 30),
('Rahul Dave' , 'Baroda' , 35),
('Jeet Patel' , 'Surat' , 31),
('Vijay Raval' , 'Rajkot' , 30)

-- 1.
-- Create table Employee_detail from Employee with all the columns and data.
SELECT *
INTO Employee_detail
FROM Employee
WHERE 1 = 1;
-------------
SELECT * FROM Employee_detail;
-- 2.
-- Create table Employee_data from Employee with first two columns with no data.
SELECT PNAME , CITY
INTO Employee_data
FROM Employee
WHERE 1 = 0;
-------------
SELECT * FROM Employee_data;
-- 3.
-- Create table Employee_info from Employee with no Data
SELECT *
INTO Employee_info
FROM Employee
WHERE 1 = 0;
-------------
SELECT * FROM Employee_info;
------------------------------------------------------------------------------------------

--Part – C:
-- 1.
-- Insert the Data into Employee_info from Employee whose CITY is Rajkot
INSERT INTO Employee_info (PNAME , CITY , AGE)
SELECT *
FROM Employee
WHERE CITY = 'Rajkot';
-------------
SELECT * FROM Employee_info;
-- 2.
-- Insert the Data into Employee_info from Employee whose age is more than 32.
INSERT INTO Employee_info (PNAME , CITY , AGE)
SELECT *
FROM Employee
WHERE AGE>32;
-------------
SELECT * FROM Employee_info;

--Update Operation-------------------------------------------------
--PART - A
SELECT * FROM DEPOSITE_DEMO123;
SELECT * FROM BRANCH;
SELECT * FROM CUSTOMERS;
SELECT * FROM BORROW;
-- 1.
-- Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
UPDATE DEPOSITE_DEMO123
SET AMOUNT = 5000
WHERE AMOUNT = 3000;
-- 2.
-- Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
UPDATE BORROW
SET BNAME = 'C. G. ROAD'
WHERE CNAME = 'ANIL';
-- 3.
-- Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
UPDATE DEPOSITE_DEMO123
SET ACTNO = 111 , AMOUNT = 5000
WHERE CNAME = 'SANDIP';
-- 4.
-- Update amount of KRANTI to 7000. (Use Deposit Table)
-- 5.
-- Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
-- 6.
-- Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
-- 7.
-- Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit Table)
-- 8.
-- Update ADATE of ANIL to 1-4-95. (Use Deposit Table)
-- 9.
-- Update the amount of MINU to 10000. (Use Deposit Table)
-- 10.
-- Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)