USE Akash;

CREATE TABLE SALES_DATA (
    Region VARCHAR(50),
    Product VARCHAR(50),
    Sales_Amount INT,
    Year INT
);

INSERT INTO SALES_DATA (Region, Product, Sales_Amount, Year) VALUES
('North America', 'Watch', 1500, 2023),
('Europe', 'Mobile', 1200, 2023),
('Asia', 'Watch', 1800, 2023),
('North America', 'TV', 900, 2024),
('Europe', 'Watch', 2000, 2024),
('Asia', 'Mobile', 1000, 2024),
('North America', 'Mobile', 1600, 2023),
('Europe', 'TV', 1500, 2023),
('Asia', 'TV', 1100, 2024),
('North America', 'Watch', 1700, 2024);
SELECT *
FROM SALES_DATA 
-- Part – A:
-- 1.
-- Display Total Sales Amount by Region.
SELECT Region, SUM(Sales_Amount) AS Total_Sales 
FROM SALES_DATA 
GROUP BY Region;
-- 2.
-- Display Average Sales Amount by Product
SELECT Product, AVG(Sales_Amount) AS Avg_Sales 
FROM SALES_DATA 
GROUP BY Product;
-- 3.
-- Display Maximum Sales Amount by Year
SELECT Year, MAX(Sales_Amount) AS Max_Sales 
FROM SALES_DATA 
GROUP BY Year;
-- 4.
-- Display Minimum Sales Amount by Region and Year
SELECT Region, Year, MIN(Sales_Amount) AS Min_Sales 
FROM SALES_DATA 
GROUP BY Region, Year;
-- 5.
-- Count of Products Sold by Region
SELECT Region, COUNT(*) AS Product_Count 
FROM SALES_DATA 
GROUP BY Region;
-- 6.
-- Display Sales Amount by Year and Product
SELECT Year, Product, SUM(Sales_Amount) AS Total_Sales 
FROM SALES_DATA 
GROUP BY Year, Product;
-- 7.
-- Display Regions with Total Sales Greater Than 5000
SELECT Region, SUM(Sales_Amount) AS Total_Sales 
FROM SALES_DATA 
GROUP BY Region 
HAVING SUM(Sales_Amount) > 5000;
-- 8.
-- Display Products with Average Sales Less Than 10000
SELECT Product, AVG(Sales_Amount) AS Avg_Sales 
FROM SALES_DATA 
GROUP BY Product 
HAVING AVG(Sales_Amount) < 10000;
-- 9.
-- Display Years with Maximum Sales Exceeding 500
SELECT Year 
FROM SALES_DATA 
GROUP BY Year 
HAVING MAX(Sales_Amount) > 500;
-- 10.
-- Display Regions with at Least 3 Distinct Products Sold.
SELECT Region 
FROM SALES_DATA 
GROUP BY Region 
HAVING COUNT(DISTINCT Product) >= 3;
-- 11.
-- Display Years with Minimum Sales Less Than 1000
SELECT Year 
FROM SALES_DATA 
GROUP BY Year 
HAVING MIN(Sales_Amount) < 1000;
-- 12.
-- Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
SELECT Region, SUM(Sales_Amount) AS Total_Sales 
FROM SALES_DATA 
WHERE Year = 2023 
GROUP BY Region 
ORDER BY Total_Sales DESC;
-- 13.
-- Find the Region Where 'Mobile' Had the Lowest Total Sales Across All Years.
SELECT Region 
FROM SALES_DATA 
WHERE Product = 'Mobile' 
GROUP BY Region 
ORDER BY SUM(Sales_Amount) 
-- 14.
-- Find the Product with the Highest Sales Across All Regions in 2023.
SELECT Product 
FROM SALES_DATA 
WHERE Year = 2023 
GROUP BY Product 
ORDER BY SUM(Sales_Amount) DESC 
-- 15.
-- Find Regions Where 'TV' Sales in 2023 Were Greater Than 1000.
SELECT Region 
FROM SALES_DATA 
WHERE Product = 'TV' AND Year = 2023 
GROUP BY Region 
HAVING SUM(Sales_Amount) > 1000;
-----------------------------------------------------------------------------------------------------
-- Part – B:
-- 1.
-- Display Count of Orders by Year and Region, Sorted by Year and Region
SELECT Year, Region, COUNT(*) AS Order_Count 
FROM SALES_DATA 
GROUP BY Year, Region 
ORDER BY Year, Region;
-- 2.
-- Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
SELECT DISTINCT Region 
FROM SALES_DATA 
GROUP BY Region, Year 
HAVING MAX(Sales_Amount) > 1000 
ORDER BY Region;
-- 3.
-- Display Years with Total Sales Amount Less Than 10000, Sorted by Year Descending
SELECT Region, SUM(Sales_Amount) AS Total_Sales 
FROM SALES_DATA 
WHERE Year = 2024 
GROUP BY Region 
ORDER BY Total_Sales DESC 
-- 4.
-- Display Top 3 Regions by Total Sales Amount in Year 2024
SELECT Region, SUM(Sales_Amount) AS Total_Sales
FROM SALES_DATA
WHERE Year = 2024
GROUP BY Region
ORDER BY Total_Sales DESC
-- 5.
-- Find the Year with the Lowest Total Sales Across All Regions.
SELECT Year 
FROM SALES_DATA 
GROUP BY Year 
ORDER BY SUM(Sales_Amount) ASC 
----------------------------------------------------------------------
-- Part – C:
-- 1.
-- Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name
SELECT Product, AVG(Sales_Amount) AS Avg_Sales 
FROM SALES_DATA 
GROUP BY Product 
HAVING AVG(Sales_Amount) BETWEEN 1000 AND 2000 
ORDER BY Product;
-- 2.
-- Display Years with More Than 1 Orders from Each Region
SELECT Year 
FROM SALES_DATA 
GROUP BY Year, Region 
HAVING COUNT(*) > 1;
-- 3.
-- Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending.
SELECT Region, AVG(Sales_Amount) AS Avg_Sales 
FROM SALES_DATA 
WHERE Year = 2023 
GROUP BY Region 
HAVING AVG(Sales_Amount) > 1500 
ORDER BY Avg_Sales DESC;
-- 4.
-- Find out region wise duplicate product.
SELECT Region, Product, COUNT(*) 
FROM SALES_DATA 
GROUP BY Region, Product 
HAVING COUNT(*) > 1;
-- 5.
-- Find out year wise duplicate product.
SELECT Year, Product, COUNT(*) 
FROM SALES_DATA 
GROUP BY Year, Product 
HAVING COUNT(*) > 1;
------------------------------------------------------------------------------------------------------------------------