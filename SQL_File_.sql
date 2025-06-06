SHOW TABLES;

-- Total Sales, Profit, and Quantity

SELECT 
    SUM(`Sales Amount`) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM ecommerce_orders_sample;

-- Top 5 Products by Sales
SELECT 
    Product,
    SUM(`Sales Amount`) AS Total_Sales
FROM ecommerce_orders_sample
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 5;

-- Subquery
SELECT *
FROM ecommerce_orders_sample
WHERE `Sales Amount` > (
    SELECT AVG(`Sales Amount`) FROM ecommerce_orders_sample
);

--  Aggregate Functions (SUM, AVG)
SELECT 
    AVG(`Sales Amount`) AS Avg_Sale,
    SUM(Profit) AS Total_Profit
FROM ecommerce_orders_sample;

-- Create View for Analysis
CREATE VIEW category_summary AS
SELECT 
    Category,
    SUM(`Sales Amount`) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM ecommerce_orders_sample
GROUP BY Category;


SELECT o.`Order ID`, c.`Customer Name`, o.`Sales Amount`
FROM ecommerce_orders_sample o
INNER JOIN customers c ON o.`Customer Name` = c.`Customer Name`;








