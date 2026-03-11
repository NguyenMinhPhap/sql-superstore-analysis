-- Total sales
SELECT SUM(Sales) AS total_sales
FROM Superstore;

-- Sales by region
SELECT Region, SUM(Sales) AS total_sales
FROM Superstore
GROUP BY Region
ORDER BY total_sales DESC;

-- Top 10 customers
SELECT TOP 10 Customer_Name,
SUM(Sales) AS total_sales
FROM Superstore
GROUP BY Customer_Name
ORDER BY total_sales DESC;

-- Profit by category
SELECT Category,
SUM(Profit) AS total_profit
FROM Superstore
GROUP BY Category
ORDER BY total_profit DESC;
