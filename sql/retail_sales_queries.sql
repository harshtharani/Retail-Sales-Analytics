-- =====================================================
-- Retail Sales Analytics SQL Queries
-- Author: Harsh Tharani
-- Database: retail_sales_analytics
-- =====================================================

-- Create Database
CREATE DATABASE IF NOT EXISTS retail_sales_analytics;

-- Use Database
USE retail_sales_analytics;

-- NOTE:
-- Import Sample Superstore dataset into a table named:
-- retail_sales
-- using MySQL Workbench Import Wizard.


-- =====================================================
-- 1. Total Sales
-- =====================================================

SELECT
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM retail_sales;


-- =====================================================
-- 2. Total Profit
-- =====================================================

SELECT
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM retail_sales;


-- =====================================================
-- 3. Total Orders
-- =====================================================

SELECT
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM retail_sales;


-- =====================================================
-- 4. Total Customers
-- =====================================================

SELECT
    COUNT(DISTINCT `Customer ID`) AS Total_Customers
FROM retail_sales;


-- =====================================================
-- 5. Sales & Profit by Category
-- =====================================================

SELECT
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM retail_sales
GROUP BY Category
ORDER BY Total_Sales DESC;


-- =====================================================
-- 6. Sales by Segment
-- =====================================================

SELECT
    Segment,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM retail_sales
GROUP BY Segment
ORDER BY Total_Sales DESC;


-- =====================================================
-- 7. Profit by Region
-- =====================================================

SELECT
    Region,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM retail_sales
GROUP BY Region
ORDER BY Total_Profit DESC;


-- =====================================================
-- 8. Sales by Region
-- =====================================================

SELECT
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM retail_sales
GROUP BY Region
ORDER BY Total_Sales DESC;


-- =====================================================
-- 9. Top 10 Products by Sales
-- =====================================================

SELECT
    `Product Name`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM retail_sales
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;


-- =====================================================
-- 10. Top 10 Most Profitable Products
-- =====================================================

SELECT
    `Product Name`,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM retail_sales
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;


-- =====================================================
-- 11. Top 10 Customers by Sales
-- =====================================================

SELECT
    `Customer Name`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM retail_sales
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;


-- =====================================================
-- 12. Average Discount by Category
-- =====================================================

SELECT
    Category,
    ROUND(AVG(Discount),2) AS Average_Discount
FROM retail_sales
GROUP BY Category
ORDER BY Average_Discount DESC;


-- =====================================================
-- 13. Sales & Profit by Sub-Category
-- =====================================================

SELECT
    `Sub-Category`,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM retail_sales
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;


-- =====================================================
-- 14. Monthly Sales Trend
-- =====================================================

SELECT
    MONTHNAME(`Order Date`) AS Month,
    ROUND(SUM(Sales),2) AS Monthly_Sales
FROM retail_sales
GROUP BY
    MONTH(`Order Date`),
    MONTHNAME(`Order Date`)
ORDER BY MONTH(`Order Date`);


-- =====================================================
-- 15. Monthly Profit Trend
-- =====================================================

SELECT
    MONTHNAME(`Order Date`) AS Month,
    ROUND(SUM(Profit),2) AS Monthly_Profit
FROM retail_sales
GROUP BY
    MONTH(`Order Date`),
    MONTHNAME(`Order Date`)
ORDER BY MONTH(`Order Date`);


-- =====================================================
-- 16. Average Sales per Order
-- =====================================================

SELECT
    ROUND(AVG(Sales),2) AS Average_Order_Value
FROM retail_sales;


-- =====================================================
-- 17. Highest Selling State
-- =====================================================

SELECT
    State,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM retail_sales
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;


-- =====================================================
-- 18. Lowest Profit Categories
-- =====================================================

SELECT
    Category,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM retail_sales
GROUP BY Category
ORDER BY Total_Profit ASC;


-- =====================================================
-- 19. Ship Mode Performance
-- =====================================================

SELECT
    `Ship Mode`,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM retail_sales
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC;


-- =====================================================
-- 20. Customer Count by Segment
-- =====================================================

SELECT
    Segment,
    COUNT(DISTINCT `Customer ID`) AS Total_Customers
FROM retail_sales
GROUP BY Segment
ORDER BY Total_Customers DESC;