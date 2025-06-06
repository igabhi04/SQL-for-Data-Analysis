# 📊 Task 3 – SQL for Data Analysis

This project is part of my Data Analyst Internship. I used SQL (MySQL) to extract and analyze data from an ecommerce sales dataset.

---

## ✅ Objectives Covered

- Used `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`
- Performed `JOINS` (INNER, LEFT, RIGHT)
- Wrote subqueries
- Used aggregate functions like `SUM()` and `AVG()`
- Created SQL `VIEW` for analysis
- Added `INDEX` to optimize queries

---

## 🧰 Tools Used

- MySQL Workbench
- CSV Dataset: `ecommerce_orders_sample.csv`

---

## 📁 ALl SQl Queries


- `SHOW TABLES;

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
INNER JOIN customers c ON o.`Customer Name` = c.`Customer Name`;` – All SQL queries

---

## 🖼️ Sample Screenshots
![Aggregate Functions (SUM, AVG)](https://github.com/user-attachments/assets/9e15487b-9370-4b96-a7ba-25509af60447)

![Create View for Analysis](https://github.com/user-attachments/assets/a5e16730-ca2a-46cc-b2d6-be5b55998676)

![JOINS](https://github.com/user-attachments/assets/deebbf78-6e0d-4c22-b799-3d04e619c90e)

![Subquery](https://github.com/user-attachments/assets/4010f406-2fce-4345-88a1-8ee621c931b9)

![Top 5 Products by Sales](https://github.com/user-attachments/assets/b980ebc7-31ad-43d4-841e-13a7f0bcba8e)

![Total Sales, Profit, and Quantity](https://github.com/user-attachments/assets/5112bd11-e2e9-4ffc-af6f-94b3d41a0cf3)

---

## 👨‍💻 Author

**Abhishek Adhude**  
Final Year B.Tech – CSE | Aspiring Data Analyst  
[LinkedIn](#) *(Add your link)*
