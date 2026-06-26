# SQL String Functions & Pattern Matching

## Objective

Learn how to manipulate text data, remove duplicates, and search for patterns using SQL string functions in PostgreSQL.

---

# Topics Covered

* DISTINCT
* UPPER()
* LOWER()
* LENGTH()
* LIKE
* Wildcards (% and _)
* Aliases (AS)

---

# 1. DISTINCT

### Purpose

Returns only unique values by removing duplicate records.

### Syntax

```sql
SELECT DISTINCT column_name
FROM table_name;
```

### Example

```sql
SELECT DISTINCT category
FROM products;
```

### Output

```
Electronics
Accessories
Stationery
Fitness
Home & Kitchen
```

---

# 2. UPPER()

### Purpose

Converts all characters into uppercase.

### Syntax

```sql
SELECT UPPER(column_name)
FROM table_name;
```

### Example

```sql
SELECT UPPER(category)
FROM products;
```

---

# 3. LOWER()

### Purpose

Converts text into lowercase.

### Example

```sql
SELECT LOWER(name)
FROM products;
```

---

# 4. LENGTH()

### Purpose

Returns the number of characters in a string.

### Example

```sql
SELECT name,
LENGTH(name)
FROM products;
```

---

# 5. LIKE Operator

### Purpose

Searches text using patterns.

---

## Wildcard %

Matches zero or more characters.

Example:

```sql
SELECT *
FROM products
WHERE name LIKE 'W%';
```

Matches:

* Wireless Mouse
* Water Bottle

---

Example:

```sql
SELECT *
FROM products
WHERE name LIKE '%oo%';
```

Matches names containing "oo".

---

## Wildcard _

Matches exactly one character.

Example:

```sql
SELECT *
FROM products
WHERE name LIKE '_a%';
```

Matches names whose second character is "a".

---

# 6. Alias (AS)

Provides a temporary name for a column.

Example

```sql
SELECT
UPPER(category) AS category_upper
FROM products;
```

---

# Combined Example

```sql
SELECT DISTINCT
UPPER(category) AS category_upper
FROM products
ORDER BY category_upper DESC;
```

---

# Real-world Applications

* Search products by keyword
* Customer name filtering
* Case-insensitive reporting
* Data cleaning
* Dashboard labels
* Product catalog analysis

---

# Key Learnings

* DISTINCT removes duplicate values.
* UPPER() and LOWER() standardize text.
* LENGTH() measures string length.
* LIKE performs flexible pattern searches.
* % matches multiple characters.
* _ matches exactly one character.
* AS improves query readability.

---

# Conclusion

These SQL string functions are widely used in analytics, reporting, business intelligence, and machine learning data preparation. Mastering them helps build cleaner datasets and more readable SQL queries.
