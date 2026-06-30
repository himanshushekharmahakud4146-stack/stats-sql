# HackerRank SQL Notes

## Purpose

Practice SQL using real interview-style questions to improve problem-solving skills.

---

# Concepts Practiced

## SELECT

Retrieve data from a table.

```sql
SELECT *
FROM CITY;
```

---

## WHERE

Filter records based on conditions.

```sql
WHERE COUNTRYCODE = 'USA'
```

---

## AND

Combine multiple conditions.

```sql
WHERE COUNTRYCODE='USA'
AND POPULATION>100000;
```

---

## DISTINCT

Remove duplicate values.

```sql
SELECT DISTINCT CITY
FROM STATION;
```

---

## COUNT()

Count total records.

```sql
COUNT(CITY)
```

---

## COUNT(DISTINCT)

Count only unique records.

```sql
COUNT(DISTINCT CITY)
```

---

## MOD()

Find even or odd numbers.

```sql
MOD(ID,2)=0
```

---

# Interview Tips

- Read the complete question before writing SQL.
- Identify the required table.
- Identify required columns.
- Check whether filtering is required.
- Look for keywords like DISTINCT, ORDER BY, GROUP BY, LIMIT.

---

# Day Summary

Solved beginner SQL interview questions on HackerRank and practiced writing clean, readable SQL queries using PostgreSQL concepts.