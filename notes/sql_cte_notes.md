# SQL CTE Notes

## Goal

Understand how Common Table Expressions (CTEs) simplify complex SQL queries and improve readability.

---

# WITH

Creates a temporary named result set that can be referenced within the same query.

Example

```sql
WITH customer_orders AS (
    SELECT customer_id,
           SUM(amount) AS total_amount
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM customer_orders;
```

---

# Multi-Step CTE

Multiple CTEs can be chained together.

Example workflow

Customer Orders

↓

Customer Segmentation

↓

Customer Ranking

↓

Final Business Report

---

# CASE

Used to classify customers.

Example

```sql
CASE
WHEN total_amount >=7000 THEN 'Gold'
WHEN total_amount >=4000 THEN 'Silver'
ELSE 'Bronze'
END
```

---

# Recursive CTE

A recursive CTE repeatedly references itself until a stopping condition is reached.

Example

```sql
WITH RECURSIVE numbers AS
(
SELECT 1 AS n

UNION ALL

SELECT n+1
FROM numbers
WHERE n<5
)

SELECT *
FROM numbers;
```

---

# Benefits of CTEs

- Improve query readability.
- Simplify debugging.
- Break large queries into logical steps.
- Reuse intermediate query results.

---

# Business Applications

- Customer segmentation
- Revenue analysis
- Employee hierarchy
- Organization charts
- Sales reporting
- ETL pipelines

---

# Summary

CTEs are one of the most valuable SQL features for writing clean, scalable, and maintainable analytical queries.