SELECT DISTINCT category
FROM products;

SELECT DISTINCT UPPER(category)
FROM products;

SELECT DISTINCT LOWER(category)
FROM products;

SELECT name,
UPPER(name)
FROM products;

SELECT name,
LOWER(name)
FROM products;

SELECT name,
LENGTH(name)
FROM products;

SELECT *
FROM products
WHERE name LIKE 'W%';

SELECT *
FROM products
WHERE name LIKE '%r';

SELECT *
FROM products
WHERE name LIKE '%oo%';

SELECT *
FROM products
WHERE name LIKE '_a%';

SELECT DISTINCT
UPPER(category) AS category_upper
FROM products
ORDER BY category_upper DESC;

