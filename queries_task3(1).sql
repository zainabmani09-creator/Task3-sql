CREATE DATABASE task3_sql;
USE task3_sql;
SELECT COUNT(*) FROM `sample - superstore`;
SELECT * FROM `sample - superstore` LIMIT 5;
RENAME TABLE `sample - superstore` TO sample_superstore;
SELECT COUNT(*) FROM sample_superstore;
SELECT *
FROM sample_superstore
WHERE Category = 'Technology'
ORDER BY Sales DESC;
SELECT 
    Category,
    SUM(Sales) AS total_sales,
    AVG(Profit) AS avg_profit,
    COUNT(*) AS total_orders
FROM sample_superstore
GROUP BY Category;
SELECT 
    Category,
    SUM(Sales) AS total_sales
FROM sample_superstore
GROUP BY Category
HAVING SUM(Sales) > 100000;
SELECT *
FROM sample_superstore
WHERE `Order Date` BETWEEN '2019-01-01' AND '2019-12-31';
SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS month,
    SUM(Sales) AS monthly_sales
FROM sample_superstore
GROUP BY month
ORDER BY month;
ALTER TABLE sample_superstore
CHANGE `Customer Name` Customer_Name TEXT;
SELECT 
    Customer_Name,
    SUM(Sales) AS total_spent
FROM sample_superstore
GROUP BY Customer_Name
ORDER BY total_spent DESC
LIMIT 5;
SELECT 
    DATE_FORMAT(
        STR_TO_DATE(`Order Date`, '%m-%d-%Y'),
        '%Y-%m'
    ) AS month,
    SUM(Sales) AS monthly_sales
FROM sample_superstore
WHERE STR_TO_DATE(`Order Date`, '%m-%d-%Y') IS NOT NULL
GROUP BY month
ORDER BY month;