-- ===========================================
-- Customer Intelligence Engine
-- Business Questions
-- ===========================================

-- Q1 Top customers by revenue

-- Q2 Revenue by region

-- Q3 Profit by category

-- Q4 Best selling products

-- Q5 Lowest performing products

-- Q6 Average order value

-- Q7 Monthly sales trend

-- Q8 Inactive customers

-- Q9 Revenue contribution by category

-- Q10 Executive business summary


-- ==========================================================
-- Customer Intelligence Engine
-- Day 29
-- Business Analysis Queries
-- ==========================================================

------------------------------------------------------------
-- 1. Total Sales
------------------------------------------------------------
SELECT
    ROUND(SUM(sales),2) AS total_sales
FROM superstore;

------------------------------------------------------------
-- 2. Total Profit
------------------------------------------------------------
SELECT
    ROUND(SUM(profit),2) AS total_profit
FROM superstore;

------------------------------------------------------------
-- 3. Total Orders
------------------------------------------------------------
SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore;

------------------------------------------------------------
-- 4. Total Customers
------------------------------------------------------------
SELECT
    COUNT(DISTINCT customer_id) AS total_customers
FROM superstore;

------------------------------------------------------------
-- 5. Total Products
------------------------------------------------------------
SELECT
    COUNT(DISTINCT product_id) AS total_products
FROM superstore;

------------------------------------------------------------
-- 6. Sales by Category
------------------------------------------------------------
SELECT
    category,
    ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;

------------------------------------------------------------
-- 7. Profit by Category
------------------------------------------------------------
SELECT
    category,
    ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY category
ORDER BY total_profit DESC;

------------------------------------------------------------
-- 8. Top 10 Customers by Sales
------------------------------------------------------------
SELECT
    customer_name,
    ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

------------------------------------------------------------
-- 9. Top 10 Products by Sales
------------------------------------------------------------
SELECT
    product_name,
    ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

------------------------------------------------------------
-- 10. Sales by Region
------------------------------------------------------------
SELECT
    region,
    ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;

------------------------------------------------------------
-- 11. Profit by Region
------------------------------------------------------------
SELECT
    region,
    ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY region
ORDER BY total_profit DESC;

------------------------------------------------------------
-- 12. Average Discount
------------------------------------------------------------
SELECT
    ROUND(AVG(discount),2) AS average_discount
FROM superstore;

------------------------------------------------------------
-- 13. Average Order Value
------------------------------------------------------------
SELECT
    ROUND(AVG(sales),2) AS average_order_value
FROM superstore;

------------------------------------------------------------
-- 14. Most Profitable Sub Category
------------------------------------------------------------
SELECT
    sub_category,
    ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY sub_category
ORDER BY total_profit DESC;

------------------------------------------------------------
-- 15. Least Profitable Sub Category
------------------------------------------------------------
SELECT
    sub_category,
    ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY sub_category
ORDER BY total_profit ASC;

