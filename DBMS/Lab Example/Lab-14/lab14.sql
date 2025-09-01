-- STUDENT_DATA

-- Create STUDENT_DATA table
CREATE TABLE STUDENT_DATA (
    Rno INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    DID INT
);

-- Insert data into STUDENT_DATA
INSERT INTO STUDENT_DATA VALUES
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);

-- Create DEPARTMENT table
CREATE TABLE DEPARTMENT (
    DID INT PRIMARY KEY,
    DName VARCHAR(50)
);

-- Insert data into DEPARTMENT
INSERT INTO DEPARTMENT VALUES
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');

-- Create ACADEMIC table
CREATE TABLE ACADEMIC (
    RNO INT PRIMARY KEY,
    SPI DECIMAL(3,1),
    BKLOG INT
);

-- Insert data into ACADEMIC
INSERT INTO ACADEMIC VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);

-- Part-A
-- 1. Display details of students who are from computer department.
SELECT * FROM STUDENT_DATA
WHERE DID = (SELECT DID FROM DEPARTMENT WHERE DName = 'Computer');

-- 2. Displays name of students whose SPI is more than 8.
SELECT Name FROM STUDENT_DATA
WHERE Rno IN (SELECT RNO FROM ACADEMIC WHERE SPI > 8);

-- 3. Display details of students of computer department who belongs to Rajkot city.
SELECT * FROM STUDENT_DATA
WHERE City = 'Rajkot'
AND DID = (SELECT DID FROM DEPARTMENT WHERE DName = 'Computer');

-- 4. Find total number of students of electrical department.
SELECT COUNT(*) AS Total_Electrical_Students FROM STUDENT_DATA
WHERE DID = (SELECT DID FROM DEPARTMENT WHERE DName = 'Electrical');

-- 5. Display name of student who is having maximum SPI.
SELECT Name FROM STUDENT_DATA
WHERE Rno = (SELECT RNO FROM ACADEMIC WHERE SPI = (SELECT MAX(SPI) FROM ACADEMIC));

-- 6. Display details of students having more than 1 backlog.
SELECT * FROM STUDENT_DATA
WHERE Rno IN (SELECT RNO FROM ACADEMIC WHERE BKLOG > 1);

-- Part – B:
-- 1. Display name of students who are either from computer department or from mechanical department.
SELECT Name FROM STUDENT_DATA
WHERE DID IN (
    SELECT DID FROM DEPARTMENT WHERE DName IN ('Computer', 'Mechanical')
);

-- 2. Display name of students who are in same department as 102 studying in.
SELECT Name FROM STUDENT_DATA
WHERE DID = (SELECT DID FROM STUDENT_DATA WHERE Rno = 102);

-- Part – C:
-- 1. Display name of students whose SPI is more than 9 and who is from electrical department.
SELECT Name FROM STUDENT_DATA
WHERE DID = (SELECT DID FROM DEPARTMENT WHERE DName = 'Electrical')
AND Rno IN (SELECT RNO FROM ACADEMIC WHERE SPI > 9);

-- 2. Display name of student who is having second highest SPI.
SELECT Name FROM STUDENT_DATA
WHERE Rno = (
    SELECT RNO FROM ACADEMIC
    WHERE SPI = (
        SELECT MAX(SPI) FROM ACADEMIC
        WHERE SPI < (SELECT MAX(SPI) FROM ACADEMIC)
    )
);

-- 3. Display city names whose students SPI is 9.2
SELECT DISTINCT City FROM STUDENT_DATA
WHERE Rno IN (SELECT RNO FROM ACADEMIC WHERE SPI = 9.2);

-- 4. Find the names of students who have more than the average number of backlogs across all students.
SELECT Name FROM STUDENT_DATA
WHERE Rno IN (
    SELECT RNO FROM ACADEMIC
    WHERE BKLOG > (SELECT AVG(BKLOG) FROM ACADEMIC)
);

-- 5. Display the names of students who are in the same department as the student with the highest SPI
SELECT Name FROM STUDENT_DATA
WHERE DID = (
    SELECT DID FROM STUDENT_DATA
    WHERE Rno = (SELECT RNO FROM ACADEMIC WHERE SPI = (SELECT MAX(SPI) FROM ACADEMIC))
);