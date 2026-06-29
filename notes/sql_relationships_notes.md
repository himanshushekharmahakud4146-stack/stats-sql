# SQL Relationships Notes

## Concepts Learned

### Primary Key

- Unique identifier
- Cannot contain NULL
- One primary key per table

Example

```sql
product_id INT PRIMARY KEY
```

---

### Foreign Key

Connects two tables.

Example

```sql
FOREIGN KEY(product_id)
REFERENCES products(product_id)
```

---

## INNER JOIN

Returns only matching records.

```sql
SELECT *
FROM products p
JOIN orders o
ON p.product_id=o.product_id;
```

---

## LEFT JOIN

Returns all rows from the left table.

```sql
SELECT *
FROM products p
LEFT JOIN orders o
ON p.product_id=o.product_id;
```

---

## GROUP BY

Groups similar rows.

```sql
SELECT category,
COUNT(*)
FROM products
GROUP BY category;
```

---

## HAVING

Filters grouped data.

```sql
HAVING COUNT(*)>2;
```

---

## CASE WHEN

Creates custom categories.

```sql
CASE
WHEN price>1000 THEN 'Expensive'
WHEN price BETWEEN 500 AND 1000 THEN 'Moderate'
ELSE 'Cheap'
END
```

---

## Real-world Uses

- E-commerce databases
- Banking systems
- Student management
- Hospital records
- Sales dashboards
- Machine Learning data preparation

---

## Day Summary

Built multiple PostgreSQL databases and practiced relationships, joins, grouping, filtering, and conditional logic using realistic business datasets.