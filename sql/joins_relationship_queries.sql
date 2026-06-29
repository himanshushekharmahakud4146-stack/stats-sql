-- =====================================
-- SQL Relationships & JOIN Practice
-- =====================================

-- Products
SELECT *
FROM products;

-- Orders
SELECT *
FROM orders;

-- INNER JOIN

SELECT
o.order_id,
o.customer_name,
p.product_name,
p.price
FROM products p
JOIN orders o
ON p.product_id=o.product_id;

-- LEFT JOIN

SELECT
o.order_id,
o.customer_name,
p.product_name,
p.price
FROM products p
LEFT JOIN orders o
ON p.product_id=o.product_id;

-- Revenue

SELECT
p.product_name,
SUM(o.quantity*p.price) AS revenue
FROM products p
JOIN orders o
ON p.product_id=o.product_id
GROUP BY p.product_name;

-- Revenue Filter

SELECT
p.product_name,
SUM(o.quantity*p.price) AS revenue
FROM products p
JOIN orders o
ON p.product_id=o.product_id
GROUP BY p.product_name
HAVING SUM(o.quantity*p.price)>2000;

-- CASE WHEN

SELECT
name,
price,
CASE
WHEN price>1000 THEN 'Expensive'
WHEN price BETWEEN 500 AND 1000 THEN 'Moderate'
ELSE 'Cheap'
END AS price_tag
FROM products;

-- Student JOIN

SELECT
s.student_id,
s.name,
sp.address,
sp.age,
sp.phone
FROM students s
JOIN student_profile sp
ON s.student_id=sp.student_id; 