-- ============================================================
-- Day 16 | SQL Aggregations, Filtering & Subqueries
-- Database: flipkart_db | Table: products
-- Author: Himanshu
-- Date: 2026-06-26
-- ============================================================

-- TABLE CREATION
CREATE TABLE products (
    product_id serial primary key,
    name varchar(100) not null,
    sku_code char(8) unique not null check (char_length(sku_code) = 8),
    price numeric(10,2) default 0 check(price >= 0),
    stock_quantity int default 0 check(stock_quantity >= 0),
    is_available boolean default TRUE,
    category text not null,
    added_on date default current_date,
    last_update Timestamp default now()
);

-- DATA INSERTION
INSERT INTO products (name, sku_code, price, stock_quantity, is_available, category)
VALUES
    ('Wireless Mouse',    'WM123456', 699.99,  50,  TRUE,  'Electronics'),
    ('Bluetooth Speaker', 'BS234567', 1499.00, 30,  TRUE,  'Electronics'),
    ('Laptop Stand',      'LS345678', 799.50,  20,  TRUE,  'Accessories'),
    ('USB-C Hub',         'UC456789', 1299.99, 15,  TRUE,  'Accessories'),
    ('Notebook',          'NB567890', 99.99,   100, TRUE,  'Stationery'),
    ('Pen Set',           'PS678901', 199.00,  200, FALSE, 'Stationery'),
    ('Coffee Mug',        'CM789012', 299.00,  75,  TRUE,  'Home & Kitchen'),
    ('LED Desk Lamp',     'DL890123', 899.00,  40,  TRUE,  'Home & Kitchen'),
    ('Yoga Mat',          'YM901234', 499.00,  25,  TRUE,  'Fitness'),
    ('Water Bottle',      'WB012345', 349.00,  60,  TRUE,  'Fitness');

-- ============================================================
-- SECTION 1: BASIC SELECT QUERIES
-- ============================================================

SELECT * FROM products;
SELECT name, price FROM products;

-- ============================================================
-- SECTION 2: FILTERING WITH WHERE
-- ============================================================

SELECT * FROM products WHERE category = 'Electronics';
SELECT * FROM products WHERE price > 500;
SELECT * FROM products WHERE price > 1000 AND category = 'Electronics';
SELECT * FROM products WHERE price BETWEEN 400 AND 1000;
SELECT * FROM products WHERE category = 'Electronics'
    OR category = 'Fitness' OR category = 'Home & Kitchen';
SELECT * FROM products WHERE category IN ('Electronics', 'Home & Kitchen', 'Fitness');
SELECT * FROM products WHERE NOT category = 'Electronics';

-- ============================================================
-- SECTION 3: PATTERN MATCHING WITH LIKE
-- ============================================================

SELECT * FROM products WHERE sku_code LIKE '%123%';
SELECT * FROM products WHERE name LIKE 'W%';
SELECT * FROM products WHERE sku_code LIKE '_B%';

-- ============================================================
-- SECTION 4: SORTING & LIMITING
-- ============================================================

SELECT name, price FROM products ORDER BY price DESC;
SELECT name, price FROM products ORDER BY name ASC;
SELECT * FROM products LIMIT 5;

-- ============================================================
-- SECTION 5: COLUMN ALIASING
-- ============================================================

SELECT name AS Item_name, price AS Item_price FROM products;

-- ============================================================
-- SECTION 6: GROUPING & HAVING
-- ============================================================

SELECT category FROM products;
SELECT category FROM products GROUP BY category;
SELECT category, count(*) FROM products GROUP BY category HAVING count(*) > 1;

-- ============================================================
-- SECTION 7: AGGREGATE FUNCTIONS
-- ============================================================

SELECT count(product_id) FROM products;
SELECT sum(price) FROM products;
SELECT sum(price) FROM products WHERE category = 'Electronics';
SELECT sum(price) FROM products
    WHERE category IN ('Electronics', 'Accessories', 'Stationery');
SELECT round(avg(price), 2) FROM products;
SELECT min(price) FROM products;
SELECT max(price) FROM products;

-- ============================================================
-- SECTION 8: CONDITIONAL FILTERING ON AGGREGATES
-- ============================================================

SELECT round(avg(price), 2) FROM products
    WHERE category IN ('Home & Kitchen', 'Fitness');

SELECT name, stock_quantity FROM products
    WHERE is_available = 'Yes'
    AND stock_quantity > 50
    AND price != 299;

-- ============================================================
-- SECTION 9: SUBQUERIES
-- ============================================================

-- Cheapest product
SELECT name, price FROM products
    WHERE price = (SELECT min(price) FROM products);

-- Most expensive product per category (correlated subquery)
SELECT p.category, p.name, p.price
FROM products p
WHERE p.price = (SELECT max(price) FROM products WHERE category = p.category);

-- ============================================================
-- SECTION 10: DISTINCT & STRING FUNCTIONS
-- ============================================================

SELECT DISTINCT upper(category) FROM products ORDER BY upper(category);
