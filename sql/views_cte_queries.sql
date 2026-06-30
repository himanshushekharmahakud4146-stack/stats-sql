-- ======================================
-- SQL Views & CTE Practice
-- ======================================

-- View 1

CREATE VIEW fitness_item AS
SELECT
    product_id,
    name,
    stock_quantity,
    price
FROM products
WHERE category = 'Fitness';

SELECT *
FROM fitness_item;

-- View 2

CREATE VIEW low_stocks AS
SELECT
    category,
    stock_quantity
FROM products
WHERE stock_quantity > 20;

SELECT *
FROM low_stocks;

-- Basic CTE

WITH expensive_products AS
(
    SELECT
        product_id,
        name,
        price
    FROM products
    WHERE price > 1000
)

SELECT *
FROM expensive_products;

-- CTE with Aggregation

WITH category_sales AS
(
    SELECT
        category,
        AVG(price) AS average_price
    FROM products
    GROUP BY category
)

SELECT *
FROM category_sales;