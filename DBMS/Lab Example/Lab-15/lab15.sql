-- Part A: Create STU_MASTER table with constraints
CREATE TABLE STU_MASTER (
    Rno INT PRIMARY KEY,
    Name VARCHAR(50),
    Branch VARCHAR(20) DEFAULT 'General',
    SPI DECIMAL(4,2) CHECK (SPI <= 10),
    Bklog INT CHECK (Bklog >= 0)
);

-- Insert records
INSERT INTO STU_MASTER VALUES (101, 'Raju', 'CE', 8.80, 0);
INSERT INTO STU_MASTER VALUES (102, 'Amit', 'CE', 2.20, 3);
INSERT INTO STU_MASTER VALUES (103, 'Sanjay', 'ME', 1.50, 6);
INSERT INTO STU_MASTER VALUES (104, 'Neha', 'EC', 7.65, 0);
INSERT INTO STU_MASTER VALUES (105, 'Meera', 'EE', 5.52, 2);
INSERT INTO STU_MASTER (Rno, Name, SPI, Bklog) VALUES (106, 'Mahesh', 4.50, 3);

-- Try to update SPI of Raju from 8.80 to 12 (should fail)
UPDATE STU_MASTER SET SPI = 12 WHERE Name = 'Raju';

-- Try to update Bklog of Neha from 0 to -1 (should fail)
UPDATE STU_MASTER SET Bklog = -1 WHERE Name = 'Neha';

-- Part B: Create Emp_details, Dept_details, City_details with validation
CREATE TABLE Dept_details (
    Did INT PRIMARY KEY,
    Dname VARCHAR(50) NOT NULL
);

CREATE TABLE City_details (
    Cid INT PRIMARY KEY,
    Cname VARCHAR(50) NOT NULL
);

CREATE TABLE Emp_details (
    Eid INT PRIMARY KEY,
    Ename VARCHAR(50) NOT NULL,
    Did INT,
    Cid INT,
    Salary DECIMAL(10,2) CHECK (Salary > 0),
    Experience INT CHECK (Experience >= 0),
    FOREIGN KEY (Did) REFERENCES Dept_details(Did),
    FOREIGN KEY (Cid) REFERENCES City_details(Cid)
);

-- Try to insert invalid data (negative salary)
INSERT INTO Emp_details VALUES (1, 'Test', 1, 1, -5000, 2);

-- Part C: Create tables with validation and relationships
CREATE TABLE Country (
    Cid INT PRIMARY KEY,
    Cname VARCHAR(50) NOT NULL
);

CREATE TABLE State (
    Sid INT PRIMARY KEY,
    Sname VARCHAR(50) NOT NULL,
    Cid INT,
    FOREIGN KEY (Cid) REFERENCES Country(Cid)
);

CREATE TABLE District (
    Did INT PRIMARY KEY,
    Dname VARCHAR(50) NOT NULL,
    Sid INT,
    FOREIGN KEY (Sid) REFERENCES State(Sid)
);

CREATE TABLE Dept_info (
    Did INT PRIMARY KEY,
    Dname VARCHAR(50) NOT NULL
);

CREATE TABLE City_info (
    Cid INT PRIMARY KEY,
    Cname VARCHAR(50) NOT NULL,
    Did INT,
    FOREIGN KEY (Did) REFERENCES District(Did)
);

CREATE TABLE Emp_info (
    Eid INT PRIMARY KEY,
    Ename VARCHAR(50) NOT NULL,
    Did INT,
    Cid INT,
    Salary DECIMAL(10,2) CHECK (Salary > 0),
    Experience INT CHECK (Experience >= 0),
    FOREIGN KEY (Did) REFERENCES Dept_info(Did),
    FOREIGN KEY (Cid) REFERENCES City_info(Cid)
);

-- Insert 5 records in each table
INSERT INTO Country VALUES (1, 'India'), (2, 'USA'), (3, 'UK'), (4, 'Canada'), (5, 'Australia');
INSERT INTO State VALUES (1, 'Gujarat', 1), (2, 'Maharashtra', 1), (3, 'California', 2), (4, 'Ontario', 4), (5, 'Queensland', 5);
INSERT INTO District VALUES (1, 'Ahmedabad', 1), (2, 'Pune', 2), (3, 'Los Angeles', 3), (4, 'Toronto', 4), (5, 'Brisbane', 5);
INSERT INTO Dept_info VALUES (1, 'HR'), (2, 'IT'), (3, 'Finance'), (4, 'Marketing'), (5, 'Admin');
INSERT INTO City_info VALUES (1, 'Ahmedabad City', 1), (2, 'Pune City', 2), (3, 'LA City', 3), (4, 'Toronto City', 4), (5, 'Brisbane City', 5);
INSERT INTO Emp_info VALUES 
    (1, 'Alice', 1, 1, 50000, 5),
    (2, 'Bob', 2, 2, 60000, 4),
    (3, 'Charlie', 3, 3, 70000, 6),
    (4, 'David', 4, 4, 55000, 3),
    (5, 'Eva', 5, 5, 65000, 7);

-- Display employeename, departmentname, Salary, Experience, City, District, State and country of all employees
SELECT 
    E.Ename AS EmployeeName,
    D.Dname AS DepartmentName,
    E.Salary,
    E.Experience,
    C.Cname AS City,
    Dist.Dname AS District,
    S.Sname AS State,
    Ctry.Cname AS Country
FROM Emp_info E
JOIN Dept_info D ON E.Did = D.Did
JOIN City_info C ON E.Cid = C.Cid
JOIN District Dist ON C.Did = Dist.Did
JOIN State S ON Dist.Sid = S.Sid
JOIN Country Ctry ON S.Cid = Ctry.Cid;