USE Akash;

CREATE TABLE STU_INFO(
    RNO INT PRIMARY KEY,
    NAME1 VARCHAR(50),
    BRANCH VARCHAR(50)
);

INSERT INTO STU_INFO(RNO , NAME1 , BRANCH) VALUES
(101, 'Raju', 'CE'),
(102, 'Amit' ,'CE'),
(103, 'Sanjay' ,'ME'),
(104, 'Neha', 'EC'),
(105, 'Meera' ,'EE'),
(106, 'Mahesh', 'EC');

SELECT * FROM STU_INFO;

CREATE TABLE RESULT(
    RNO INT FOREIGN KEY REFERENCES STU_INFO(RNO),
    SPI DECIMAL(3,1)
);

INSERT INTO RESULT(RNO, SPI) VALUES
(101, 8.80),
(102,  2.20),
(103, 1.50),
(104, 7.65),
(105, 5.52),
(106, 4.50);

SELECT * FROM RESULT;


CREATE TABLE EMPLOYEE_MASTER(
    EMPLOYEENO VARCHAR(50),
    NAME1 VARCHAR(50),
    MANAGERNO VARCHAR(50)
);

INSERT INTO EMPLOYEE_MASTER(EMPLOYEENO, NAME1 , MANAGERNO) VALUES
('E01', 'Tarun', NULL),
('E02', 'Rohan', 'E02'),
('E03', 'Priya', 'E01'),
('E04', 'Milan', 'E03'),
('E05', 'Jay', 'E01'),
('E06' ,'Anjana', 'E04');


SELECT * FROM EMPLOYEE_MASTER;

-- Part – A:
-- 1. Combine information from student and result table using cross join or Cartesian product.
SELECT * 
FROM STU_INFO , RESULT;
-- 2. Perform inner join on Student and Result tables.
SELECT STU_INFO.RNO , STU_INFO.NAME1 , STU_INFO.BRANCH , RESULT.SPI
FROM STU_INFO  INNER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;
-- 3. Perform the left outer join on Student and Result tables.
SELECT STU_INFO.RNO , STU_INFO.NAME1 , STU_INFO.BRANCH , RESULT.SPI
FROM STU_INFO  LEFT OUTER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;
-- 4. Perform the right outer join on Student and Result tables.
SELECT STU_INFO.RNO , STU_INFO.NAME1 , STU_INFO.BRANCH , RESULT.SPI
FROM STU_INFO  RIGHT OUTER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;
-- 5. Perform the full outer join on Student and Result tables.
SELECT STU_INFO.RNO , STU_INFO.NAME1 , STU_INFO.BRANCH , RESULT.SPI
FROM STU_INFO  FULL OUTER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;
-- 6. Display Rno, Name, Branch and SPI of all students.
SELECT STU_INFO.RNO , STU_INFO.NAME1 , STU_INFO.BRANCH , RESULT.SPI
FROM STU_INFO JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;
-- 7. Display Rno, Name, Branch and SPI of CE branch’s student only.
SELECT STU_INFO.RNO , STU_INFO.NAME1 , STU_INFO.BRANCH , RESULT.SPI
FROM STU_INFO JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
WHERE STU_INFO.BRANCH = 'CE';
-- 8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
SELECT STU_INFO.RNO , STU_INFO.NAME1 , STU_INFO.BRANCH , RESULT.SPI
FROM STU_INFO JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
WHERE STU_INFO.BRANCH = 'EC';
-- 9. Display average result of each branch.
SELECT  AVG(RESULT.SPI) AS average_SPI
FROM STU_INFO JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY STU_INFO.BRANCH;
-- 10. Display average result of CE and ME branch.
SELECT AVG(RESULT.SPI) AS average_SPI
FROM STU_INFO JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
WHERE STU_INFO.BRANCH='CE' OR STU_INFO.BRANCH='ME'
GROUP BY STU_INFO.BRANCH;
-- 11. Display Maximum and Minimum SPI of each branch.
SELECT  MAX(RESULT.SPI) AS MAX_SPI , MIN(RESULT.SPI) AS MIN_SPI
FROM STU_INFO JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY STU_INFO.BRANCH;
-- 12. Display branch wise student’s count in descending order.
SELECT  COUNT(STU_INFO.RNO) AS COUNT_NO
FROM STU_INFO JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY STU_INFO.BRANCH
ORDER BY COUNT(STU_INFO.RNO) DESC;
--------------------------------------------------------------------------------------
-- Part – B:
-- 1. Display average result of each branch and sort them in ascending order by SPI.
SELECT  AVG(RESULT.SPI) AS average_SPI
FROM STU_INFO JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY STU_INFO.BRANCH
ORDER BY AVG(RESULT.SPI);
-- 2. Display highest SPI from each branch and sort them in descending order.
SELECT  MAX(RESULT.SPI) AS MAX_SPI
FROM STU_INFO JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY STU_INFO.BRANCH
ORDER BY MAX(RESULT.SPI) DESC;
---------------------------------------------------------------------------------------
-- Part – C:
-- 1. Retrieve the names of employee along with their manager’s name from the Employee table
SELECT E.NAME1 AS EMP , M.NAME1 AS MAN
FROM EMPLOYEE_MASTER E
JOIN EMPLOYEE_MASTER M
ON E.MANAGERNO = M.EMPLOYEENO;
----------------------------------------------------------------------------------------