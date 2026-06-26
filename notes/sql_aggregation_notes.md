# SQL: Aggregations, Filtering & Subqueries
**Date:** 2026-06-26  
**Database:** PostgreSQL (QueryLab) | `flipkart_db`  
**Table:** `products`

---

## Table Schema

| Column           | Type                     | Constraints                          |
|------------------|--------------------------|--------------------------------------|
| product_id       | serial                   | PRIMARY KEY                          |
| name             | varchar(100)             | NOT NULL                             |
| sku_code         | char(8)                  | UNIQUE, NOT NULL, length must be 8   |
| price            | numeric(10,2)            | DEFAULT 0, CHECK >= 0                |
| stock_quantity   | int                      | DEFAULT 0, CHECK >= 0                |
| is_available     | boolean                  | DEFAULT TRUE                         |
| category         | text                     | NOT NULL                             |
| added_on         | date                     | DEFAULT current_date                 |
| last_update      | timestamp                | DEFAULT now()                        |

---

## Concepts Practiced

### 1. Basic SELECT
- `SELECT *` fetches all columns
- `SELECT col1, col2` fetches specific columns

### 2. WHERE Clause Filtering
- `=`, `>`, `<`, `!=` — comparison operators
- `AND`, `OR`, `NOT` — logical operators
- `BETWEEN x AND y` — inclusive range filter
- `IN (val1, val2)` — shorthand for multiple OR conditions

### 3. LIKE Pattern Matching
| Pattern    | Meaning                        |
|------------|--------------------------------|
| `'W%'`     | Starts with W                  |
| `'%123%'`  | Contains 123 anywhere          |
| `'_B%'`    | Second character is B          |

### 4. ORDER BY & LIMIT
- `ORDER BY price DESC` — highest to lowest
- `ORDER BY name ASC` — alphabetical
- `LIMIT 5` — return only first 5 rows

### 5. Column Aliases
```sql
SELECT name AS Item_name, price AS Item_price FROM products;
```
- `AS` renames the output column (display only, doesn't change table)

### 6. GROUP BY & HAVING
```sql
SELECT category, count(*) FROM products
GROUP BY category
HAVING count(*) > 1;
```
- `GROUP BY` collapses rows with same value into one group
- `HAVING` filters groups (like WHERE but for aggregated results)

### 7. Aggregate Functions
| Function       | Purpose                        |
|----------------|--------------------------------|
| `COUNT(col)`   | Number of non-null rows        |
| `SUM(col)`     | Total of all values            |
| `AVG(col)`     | Mean value                     |
| `MIN(col)`     | Smallest value                 |
| `MAX(col)`     | Largest value                  |
| `ROUND(x, 2)`  | Round to 2 decimal places      |

### 8. Subqueries
A query nested inside another query.

**Scalar subquery** (returns one value):
```sql
SELECT name, price FROM products
WHERE price = (SELECT min(price) FROM products);
```

**Correlated subquery** (references outer query):
```sql
SELECT p.category, p.name, p.price
FROM products p
WHERE p.price = (SELECT max(price) FROM products WHERE category = p.category);
```
> Runs once per row of the outer query. Useful for per-group comparisons.

### 9. DISTINCT & String Functions
```sql
SELECT DISTINCT upper(category) FROM products ORDER BY upper(category);
```
- `DISTINCT` removes duplicate rows from results
- `upper()` converts text to uppercase

---

## Key Takeaways
- `WHERE` filters rows before grouping; `HAVING` filters after grouping
- Subqueries can be used inside `WHERE`, `FROM`, or `SELECT`
- Correlated subqueries are powerful but run once per row — can be slow on large tables
- Always use `ROUND()` when displaying `AVG()` to avoid long decimals

---

## Dataset (10 Products Inserted)
| # | Name              | Category       | Price   | Stock |
|---|-------------------|----------------|---------|-------|
| 1 | Wireless Mouse    | Electronics    | 699.99  | 50    |
| 2 | Bluetooth Speaker | Electronics    | 1499.00 | 30    |
| 3 | Laptop Stand      | Accessories    | 799.50  | 20    |
| 4 | USB-C Hub         | Accessories    | 1299.99 | 15    |
| 5 | Notebook          | Stationery     | 99.99   | 100   |
| 6 | Pen Set           | Stationery     | 199.00  | 200   |
| 7 | Coffee Mug        | Home & Kitchen | 299.00  | 75    |
| 8 | LED Desk Lamp     | Home & Kitchen | 899.00  | 40    |
| 9 | Yoga Mat          | Fitness        | 499.00  | 25    |
|10 | Water Bottle      | Fitness        | 349.00  | 60    |