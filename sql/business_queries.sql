-- Create Database
CREATE DATABASE retail_sales_analytics;

-- Use Database
USE retail_sales_analytics;

-- NOTE:
-- Data was imported using MySQL Workbench Table Data Import Wizard.
-- Table Name: retail_sales

-- Total Sales and Profit by Category
SELECT Category,
       ROUND(SUM(Sales), 2) AS Total_Sales,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM retail_sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Top 10 Most Profitable Products
SELECT `Product Name`,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM retail_sales
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;

-- Profit by Region
SELECT Region,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM retail_sales
GROUP BY Region
ORDER BY Total_Profit DESC;

-- Average Discount by Category
SELECT Category,
       ROUND(AVG(Discount), 2) AS Avg_Discount
FROM retail_sales
GROUP BY Category;

