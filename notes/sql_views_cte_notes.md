# SQL Views & CTE Notes

## SQL View

A View is a virtual table generated from a SQL query.

It stores only the SQL statement, not the actual data.

---

## Why Use Views?

- Reuse common queries
- Simplify reporting
- Hide unnecessary columns
- Improve readability
- Increase security by exposing limited data

---

## CREATE VIEW

```sql
CREATE VIEW fitness_item AS
SELECT *
FROM products
WHERE category='Fitness';
```

Use the view

```sql
SELECT *
FROM fitness_item;
```

---

## CTE (Common Table Expression)

A CTE is a temporary result set created using the WITH clause.

Example

```sql
WITH expensive_products AS (
    SELECT *
    FROM products
    WHERE price > 1000
)
SELECT *
FROM expensive_products;
```

---

## Views vs CTE

Views

- Permanent
- Stored in database
- Reusable

CTEs

- Temporary
- Exists for one query
- Makes complex SQL readable

---

## Real-world Uses

- Sales dashboards
- Product reports
- Customer analytics
- Data preprocessing
- Business intelligence

---

## Day Summary

Practiced creating SQL Views and learned the purpose of Common Table Expressions. Built reusable database views for product analysis and prepared for advanced SQL query writing.