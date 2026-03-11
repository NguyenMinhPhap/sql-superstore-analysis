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
-- Top product by sales in each category
SELECT *FROM(SELECT Category,
        Product_Name,
        SUM(sales) as total_sales
         RANK() over(PARTITION  by Category ORDER by total_sales DESC ) as rank_in_category 
  FROM superstore
  GROUP BY Category, Product_Name) as ranked_products
WHERE rank_in_category =1

  
-- Top 5 customers in each region
SELECT* FROM ( SELECT region, customer_name,sum(sales) 
RANK() OVER(PARTITION BY region ORDER BY sum(salels) DESC) AS rank_num
  FROM superstore
  GROUP BY region, customer_name) as ranked
WHERE rank_num <= 5;
  
