USE Akash;

-- Part – A:
-- 1.
-- Display the result of 5 multiply by 30.
SELECT 5 * 30 AS Result;
-- 2.
-- Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25) AS Abs1, ABS(25) AS Abs2, ABS(-50) AS Abs3, ABS(50) AS Abs4;
-- 3.
-- Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEIL(25.2) AS Ceil1, CEIL(25.7) AS Ceil2, CEIL(-25.2) AS Ceil3;
-- 4.
-- Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2) AS Floor1, FLOOR(25.7) AS Floor2, FLOOR(-25.2) AS Floor3;
-- 5.
-- Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT MOD(5, 2) AS Rem1, MOD(5, 3) AS Rem2;
-- 6.
-- Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(3, 2) AS Pow1, POWER(4, 3) AS Pow2;
-- 7.
-- Find out the square root of 25, 30 and 50.
SELECT SQRT(25) AS Sqrt1, SQRT(30) AS Sqrt2, SQRT(50) AS Sqrt3;
-- 8.
-- Find out the square of 5, 15, and 25.
SELECT POWER(5, 2) AS Sq1, POWER(15, 2) AS Sq2, POWER(25, 2) AS Sq3;
-- 9.
-- Find out the value of PI.
SELECT PI() AS Pi_Value;
-- 10.
-- Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT 
ROUND(157.732, 2) AS Round2, 
ROUND(157.732, 0) AS Round0, 
ROUND(157.732, -2) AS RoundMinus2;
-- 11.
-- Find out exponential value of 2 and 3.
SELECT EXP(2) AS Exp2, EXP(3) AS Exp3;
-- 12.
-- Find out logarithm having base e of 10 and 2.
SELECT LN(10) AS Ln10, LN(2) AS Ln2;
-- 13.
-- Find out logarithm having base b having value 10 of 5 and 100.
SELECT LOG10(5) AS Log5, LOG10(100) AS Log100;
-- 14.
-- Find sine, cosine and tangent of 3.1415.
SELECT 
SIN(3.1415) AS SineVal, 
COS(3.1415) AS CosVal, 
TAN(3.1415) AS TanVal;
-- 15.
-- Find sign of -25, 0 and 25.
SELECT SIGN(-25) AS Sign1, SIGN(0) AS Sign2, SIGN(25) AS Sign3;
-- 16.
-- Generate random number using function.
SELECT RAND() AS RandomNumber;
------------------------------------------------------------------------------------------------------------------------------------
-- Part – B:
-- Create and insert the following records in the EMP_MASTER table.
CREATE TABLE EMP_MASTER (
    EmpNo INT PRIMARY KEY,
    EmpName VARCHAR(50),
    JoiningDate DATE,
    Salary DECIMAL(10,2),
    Commission DECIMAL(10,2),
    City VARCHAR(50),
    DeptCode VARCHAR(10)
);
INSERT INTO EMP_MASTER (EmpNo, EmpName, JoiningDate, Salary, Commission, City, DeptCode) VALUES
(101, 'Keyur', '2002-01-05', 12000.00, 4500, 'Rajkot', '3@g'),
(102, 'Hardik', '2004-02-15', 14000.00, 2500, 'Ahmedabad', '3@'),
(103, 'Kajal', '2006-03-14', 15000.00, 3000, 'Baroda', '3-GD'),
(104, 'Bhoomi', '2005-06-23', 12500.00, 1000, 'Ahmedabad', '1A3D'),
(105, 'Harmit', '2004-02-15', 14000.00, 2000, 'Rajkot', '312A');

-- 1.
-- Display the result of Salary plus Commission.
SELECT EmpNo, EmpName, Salary, Commission, (Salary + Commission) AS Total_Earnings 
FROM EMP_MASTER;
-- 2.
-- Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
SELECT CEIL(55.2) AS Ceil1, CEIL(35.7) AS Ceil2, CEIL(-55.2) AS Ceil3;
-- 3.
-- Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
SELECT FLOOR(55.2) AS Floor1, FLOOR(35.7) AS Floor2, FLOOR(-55.2) AS Floor3;
-- 4.
-- Find out remainder of 55 divided 2 and 55 divided by 3.
SELECT MOD(55, 2) AS Mod1, MOD(55, 3) AS Mod2;
-- 5.
-- Find out value of 23 raised to 2nd power and 14 raised 3rd power.
SELECT POWER(23, 2) AS Pow1, POWER(14, 3) AS Pow2;
------------------------------------------------------------------------------------------------------------
-- Part – C:
-- 1.
-- Retrieve the details of employees whose total earnings (Salary + Commission) are greater than 15000.
SELECT * 
FROM EMP_MASTER 
WHERE (Salary + Commission) > 15000;
-- 2.
-- Find the details of employees whose commission is more than 25% of their salary.
SELECT * 
FROM EMP_MASTER 
WHERE Commission > (0.25 * Salary);
-- 3.
-- List the employees who joined before 2005 and whose total earnings (Salary + Commission) are greater than 15000.
SELECT * 
FROM EMP_MASTER 
WHERE JoiningDate < '2005-01-01' 
AND (Salary + Commission) > 15000;
-- 4.
-- Find employees whose total earnings (Salary + Commission) are at least double their salary.
SELECT * 
FROM EMP_MASTER 
WHERE (Salary + Commission) >= (2 * Salary);
--------------------------------------------------------------------------------------------------------------------------------------------
-- String functions
-- Part – A:
-- 1.
-- Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT 
    LENGTH(NULL) AS Length_Null,
    LENGTH(' hello ') AS Length_Hello,
    LENGTH('') AS Length_Blank;
-- 2.
-- Display your name in lower & upper case.
SELECT 
    LOWER('Akash Kamaliya') AS Lower_Name,
    UPPER('Akash Kamaliya') AS Upper_Name;
-- 3.
-- Display first three characters of your name.
SELECT SUBSTRING('Akash Kamaliya', 1, 3) AS First_Three;
-- 4.
-- Display 3rd to 10th character of your name.
SELECT SUBSTRING('Akash Kamaliya', 3, 8) AS Char_3_to_10;
-- 5.
-- Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT 
REPLACE('abc123efg', '123', 'XYZ') AS Replaced_1,
REPLACE('abcabcabc', 'c', '5') AS Replaced_2;
-- 6.
-- Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
SELECT 
ASCII('a') AS A1,
ASCII('A') AS A2,
ASCII('z') AS Z1,
ASCII('Z') AS Z2,
ASCII('0') AS Zero,
ASCII('9') AS Nine;
-- 7.
-- Write a query to display character based on number 97, 65,122,90,48,57.
SELECT 
CHAR(97) AS Char_97,
CHAR(65) AS Char_65,
CHAR(122) AS Char_122,
CHAR(90) AS Char_90,
CHAR(48) AS Char_48,
CHAR(57) AS Char_57;
-- 8.
-- Write a query to remove spaces from left of a given string ‘ hello world ‘.
SELECT LTRIM('     hello world ') AS Left_Trimmed;
-- 9.
-- Write a query to remove spaces from right of a given string ‘ hello world ‘.
SELECT RTRIM(' hello world     ') AS Right_Trimmed;
-- 10.
-- Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
SELECT 
LEFT('SQL Server', 4) AS First4,
RIGHT('SQL Server', 5) AS Last5;
-- 11.
-- Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
-- MySQL
SELECT CAST('1234.56' AS DECIMAL(10,2)) AS Cast_Number,
CONVERT('1234.56', DECIMAL(10,2)) AS Convert_Number;
-- 12.
-- Write a query to convert a float 10.58 to integer (Use cast and convert function).
SELECT CAST(10.58 AS UNSIGNED) AS Cast_Int,
CONVERT(10.58, UNSIGNED) AS Convert_Int;
-- 13.
-- Put 10 space before your name using function.
SELECT CONCAT(REPEAT(' ', 10), 'Akash Kamaliya') AS Spaced_Name;
-- 14.
-- Combine two strings using + sign as well as CONCAT ().
-- MySQL syntax
SELECT 
CONCAT('Akash', ' Kamaliya') AS Using_Concat;
--------------------------------------
SELECT 'Akash' + ' Kamaliya' AS Using_Plus;
-- 15.
-- Find reverse of “Darshan”.
SELECT REVERSE('Darshan') AS Reversed_Name;
-- 16.
-- Repeat your name 3 times.
SELECT REPEAT('Akash ', 3) AS Repeated_Name;
-------------------------------------------------------------------------------------------------------------------------------
-- Part – B: Perform following queries on EMP_MASTER table.
-- 1.
-- Find the length of EMP Name and City columns.
SELECT 
EmpName, 
LENGTH(EmpName) AS EmpName_Length, 
City, 
LENGTH(City) AS City_Length 
FROM EMP_MASTER;
-- 2.
-- Display EMP Name and City columns in lower & upper case.
SELECT 
EmpName,
LOWER(EmpName) AS EmpName_Lower, 
UPPER(EmpName) AS EmpName_Upper,
City,
LOWER(City) AS City_Lower, 
UPPER(City) AS City_Upper
FROM EMP_MASTER;
-- 3.
-- Display first three characters of EMP Name column.
SELECT 
EmpName,
SUBSTRING(EmpName, 1, 3) AS First_Three_Chars
FROM EMP_MASTER;
-- 4.
-- Display 3rd to 10th character of city column.
SELECT 
City,
SUBSTRING(City, 3, 8) AS Chars_3_to_10
FROM EMP_MASTER;
-- 5.
-- Write a query to display first 4 & Last 5 characters of EMP Name column.
SELECT 
EmpName,
LEFT(EmpName, 4) AS First_4,
RIGHT(EmpName, 5) AS Last_5
FROM EMP_MASTER;
-------------------------------------------------------------------------------------------
-- Part – C: Perform following queries on EMP_MASTER table.
-- 1.
-- Put 10 space before EMP Name using function.
SELECT 
CONCAT(REPEAT(' ', 10), EmpName) AS Spaced_Name 
FROM EMP_MASTER;
-- 2.
-- Combine EMP Name and city columns using + sign as well as CONCAT ().
SELECT 
CONCAT(EmpName, ' - ', City) AS Combined_Concat 
FROM EMP_MASTER;
---------------------X
SELECT 
EmpName + ' - ' + City AS Combined_Plus 
FROM EMP_MASTER;
-- 3.
-- Combine all columns using + sign as well as CONCAT ().
SELECT 
CONCAT(EmpNo, ' ', EmpName, ' ', DATE_FORMAT(JoiningDate, '%Y-%m-%d'), ' ', Salary, ' ', Commission, ' ', City, ' ', DeptCode) AS Combined_All 
FROM EMP_MASTER;
-- 4.
-- Combine the result as < EMP Name > Lives in <City>.
SELECT 
CONCAT(EmpName, ' lives in ', City) AS Sentence 
FROM EMP_MASTER;
-- 5.
-- Combine the result as ‘EMP no of < EMP Name> is <EmpNo> .
SELECT 
CONCAT('EMP no of ', EmpName, ' is ', EmpNo) AS Info 
FROM EMP_MASTER;
-- 6.
-- Retrieve the names of all employee where the third character of the Name is a vowel.
SELECT * 
FROM EMP_MASTER 
WHERE SUBSTRING(EmpName, 3, 1) IN ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u');
-- 7.
-- Concatenate the name and city of students who have a name that ends with the letter 'r' and a city that starts with 'R'.
SELECT 
CONCAT(EmpName, ' - ', City) AS Name_City 
FROM EMP_MASTER 
WHERE EmpName LIKE '%r' AND City LIKE 'R%';
---------------------------------------------------------------------------------------------------------
-- Date Functions
-- Part – A:
-- 1.
-- Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS Today_Date;
-- 2.
-- Write a query to find new date after 365 day with reference to today.
SELECT DATEADD(DAY, 365, GETDATE()) AS Date_After_365_Days;
-- 3.
-- Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT CONVERT(VARCHAR, GETDATE(), 100) AS Formatted_Date;
-- 4.
-- Display the current date in a format that appears as 03 Jan 1995.
SELECT CONVERT(VARCHAR, GETDATE(), 106) AS Formatted_Date;
-- 5.
-- Display the current date in a format that appears as Jan 04, 96.
SELECT CONVERT(VARCHAR, GETDATE(), 0) AS Formatted_Date;
-- 6.
-- Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(MONTH, '2008-12-31', '2009-03-31') AS Months_Diff;
-- 7.
-- Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(HOUR, '2012-01-25 07:00', '2012-01-26 10:30') AS Hours_Diff;
-- 8.
-- Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT 
DAY('2016-05-12') AS DayPart,
MONTH('2016-05-12') AS MonthPart,
YEAR('2016-05-12') AS YearPart;
-- 9.
-- Write a query that adds 5 years to current date.
SELECT DATEADD(YEAR, 5, GETDATE()) AS Date_After_5_Years;
-- 10.
-- Write a query to subtract 2 months from current date.
SELECT DATEADD(MONTH, -2, GETDATE()) AS Date_Minus_2_Months;
-- 11.
-- Extract month from current date using datename () and datepart () function.
SELECT 
DATENAME(MONTH, GETDATE()) AS Month_Name,
DATEPART(MONTH, GETDATE()) AS Month_Number;
-- 12.
-- Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE()) AS Last_Date_Current_Month;
-- 13.
-- Calculate your age in years and months.
--==============================
--------------------------------------------------------------------------------------------------------
-- Part – B: Perform following queries on EMP_MASTER table.
-- 1.
-- Write a query to find new date after 365 days with reference to JoiningDate.
SELECT 
EmpNo, EmpName, JoiningDate,
DATEADD(DAY, 365, JoiningDate) AS New_Date
FROM EMP_MASTER;
-- 2.
-- Write a query to find out total number of months between JoiningDate and 31-Mar-09.
SELECT 
EmpNo, EmpName, JoiningDate,
DATEDIFF(MONTH, JoiningDate, '2009-03-31') AS Total_Months
FROM EMP_MASTER;
-- 3.
-- Write a query to find out total number of years between JoiningDate and 14-Sep-10.
SELECT 
EmpNo, EmpName, JoiningDate,
DATEDIFF(YEAR, JoiningDate, '2010-09-14') AS Total_Years
FROM EMP_MASTER;
----------------------------------------------------------------------------------------------------
-- Part – C: Perform following queries on EMP_MASTER table.
-- 1.
-- Write a query to extract Day, Month, Year from JoiningDate.
SELECT 
EmpNo, EmpName, JoiningDate,
DAY(JoiningDate) AS Join_Day,
MONTH(JoiningDate) AS Join_Month,
YEAR(JoiningDate) AS Join_Year
FROM EMP_MASTER;
-- 2.
-- Write a query that adds 5 years to JoiningDate.
SELECT 
EmpNo, EmpName, JoiningDate,
DATEADD(YEAR, 5, JoiningDate) AS Date_After_5_Years
FROM EMP_MASTER;
-- 3.
-- Write a query to subtract 2 months from JoiningDate.
SELECT 
EmpNo, EmpName, JoiningDate,
DATEADD(MONTH, -2, JoiningDate) AS Date_Before_2_Months
FROM EMP_MASTER;
-- 4.
-- Extract month from JoiningDate using datename () and datepart () function.
SELECT 
EmpNo, EmpName, JoiningDate,
DATENAME(MONTH, JoiningDate) AS Month_Name,
DATEPART(MONTH, JoiningDate) AS Month_Number
FROM EMP_MASTER;
-- 5.
-- Select employee who joined between the 1st and 15th of any month in any year.
SELECT * 
FROM EMP_MASTER
WHERE DAY(JoiningDate) BETWEEN 1 AND 15;
-- 6.
-- Find employee whose JoiningDate is the last day of any month.
SELECT *
FROM EMP_MASTER
WHERE DAY(JoiningDate) = DAY(EOMONTH(JoiningDate));
-- 7.
-- List employee whose JoiningDate is during a leap year.
SELECT *
FROM EMP_MASTER
WHERE 
((YEAR(JoiningDate) % 4 = 0 AND YEAR(JoiningDate) % 100 != 0) OR (YEAR(JoiningDate) % 400 = 0));
-------------------------------------------------------------------------------------------------------------