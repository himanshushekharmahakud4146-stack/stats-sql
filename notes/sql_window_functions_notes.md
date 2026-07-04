# SQL Window Functions Notes

## Goal

Understand SQL window functions for ranking and analytical queries.

---

# OVER()

Defines the window over which the function operates.

Example

```sql
MAX(revenue) OVER()
```

---

# PARTITION BY

Splits data into groups while keeping every row.

Example

```sql
PARTITION BY region
```

Each region is processed independently.

---

# ROW_NUMBER()

Assigns a unique number.

Example

1
2
3
4

Duplicate values still receive different numbers.

---

# RANK()

Equal values receive the same rank.

Example

1
2
2
4

Ranks skip after duplicates.

---

# DENSE_RANK()

Equal values receive the same rank.

Example

1
2
2
3

Ranks do not skip numbers.

---

# GROUP BY vs Window Functions

GROUP BY

- Returns one row per group.
- Aggregates data.

Window Functions

- Return every row.
- Add analytical information.

---

# Real-world Applications

- Sales leaderboards
- Customer ranking
- Employee performance
- Top N products
- Business reporting
- Data analytics dashboards

---

# Summary

Window functions provide analytical capabilities while preserving detailed row-level information.