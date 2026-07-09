# SQL LAG(), LEAD(), and Running Totals Notes

## Goal

Understand SQL window functions for comparing rows over time and calculating cumulative values.

---

# LAG()

Returns the value from the previous row.

Example

```sql
LAG(revenue)
OVER(ORDER BY month_id)
```

Use Cases

- Previous month's sales
- Previous employee salary
- Daily stock price comparison

---

# LEAD()

Returns the value from the next row.

Example

```sql
LEAD(revenue)
OVER(ORDER BY month_id)
```

Use Cases

- Forecasting
- Next transaction
- Future planning

---

# Running Total

Calculates a cumulative total while keeping every row.

Example

```sql
SUM(revenue)
OVER(ORDER BY month_id)
```

Output

January → 12000

February → 27000

March → 44000

April → 60000

...

---

# OVER()

Defines the window over which the function operates.

---

# ORDER BY

Specifies the order of rows inside the window.

For time-series analysis, always order by a date or sequence column such as `month_id`.

---

# Business Applications

- Sales dashboards
- Financial reporting
- Customer growth analysis
- Inventory trends
- KPI tracking

---

# Key Difference

GROUP BY

- Combines rows into one summary row.

Window Functions

- Keep every row and add analytical values.

---

# Summary

Window functions make SQL powerful for analytics by comparing rows over time without losing detailed data.