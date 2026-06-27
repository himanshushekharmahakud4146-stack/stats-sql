# ALTER TABLE & String Functions
**Date:** 2026-06-27
**Databases:** new_db (ALTER TABLE) | flipkart_db (String Functions)

---

## Part 1 — ALTER TABLE

ALTER TABLE is used to modify an existing table structure without deleting it.

---

### ADD COLUMN
```sql
ALTER TABLE students ADD COLUMN email varchar(100);
```
Adds a new column. Existing rows get NULL in that column unless a DEFAULT is set.

---

### DROP COLUMN
```sql
ALTER TABLE students DROP COLUMN email;
```
Permanently removes the column and all its data.

---

### ADD COLUMN WITH DEFAULT
```sql
ALTER TABLE students ADD COLUMN phone_number varchar(100) DEFAULT 'not provided';
```
Existing rows automatically get the default value in the new column.

---

### RENAME COLUMN
```sql
ALTER TABLE students RENAME COLUMN name TO full_name;
```
Changes the column name. All existing data stays intact.

---

### CHANGE COLUMN DATA TYPE
```sql
ALTER TABLE students ALTER COLUMN age TYPE smallint;
```
Changes the data type. Only works if existing data is compatible with the new type.

---

### SET DEFAULT ON EXISTING COLUMN
```sql
ALTER TABLE students ALTER COLUMN age SET DEFAULT 18;
```
Future inserts that skip this column will get 18. Existing rows are not changed.

---

### DROP DEFAULT
```sql
ALTER TABLE students ALTER COLUMN age DROP DEFAULT;
```
Removes the default. Future inserts that skip this column will get NULL.

---

### ADD CONSTRAINT
```sql
ALTER TABLE students ADD CONSTRAINT age_check CHECK (age >= 0);
```
Adds a rule on the column. New and updated data must satisfy this condition.

---

### DROP CONSTRAINT
```sql
ALTER TABLE students DROP CONSTRAINT students_pkey;
```
Removes the constraint. The column still exists but the rule is gone.

---

### RENAME TABLE
```sql
ALTER TABLE students RENAME TO school_students;
```
Renames the table. All data, columns, and constraints move with it.

---

## ALTER TABLE — Quick Reference

| Command | Purpose |
|---|---|
| ADD COLUMN | Add a new column |
| DROP COLUMN | Remove a column permanently |
| RENAME COLUMN | Rename a column |
| ALTER COLUMN TYPE | Change data type |
| ALTER COLUMN SET DEFAULT | Set a default value |
| ALTER COLUMN DROP DEFAULT | Remove default value |
| ADD CONSTRAINT | Add a rule (CHECK, UNIQUE, etc.) |
| DROP CONSTRAINT | Remove a rule |
| RENAME TO | Rename the table |

---

## Part 2 — String Functions (flipkart_db → products)

---

### UPPER / LOWER
```sql
SELECT upper(name) FROM products;
SELECT lower(substring(sku_code, 1, 3)) AS sku_code_lower FROM products;
```
`upper()` converts to all caps. `lower()` converts to all lowercase.

---

### LENGTH
```sql
SELECT length(sku_code) FROM products;
```
Returns number of characters. All sku_codes returned 8 (as expected from our CHECK constraint).

---

### SUBSTRING
```sql
SELECT substring('I am learning SQL', 6, 12);
```
Syntax: `substring(text, start_position, length)`
Starts counting from 1. Returns 12 characters starting at position 6.

---

### LEFT / RIGHT
```sql
SELECT left(sku_code, 2) FROM products;
SELECT right(sku_code, 3) FROM products;
```
`left(col, n)` — first n characters from the left.
`right(col, n)` — last n characters from the right.

---

### CONCAT
```sql
SELECT concat(name, ' ', sku_code, ' ', category) AS all_in_one FROM products;
```
Joins multiple values into one string. You manually add separators.

---

### CONCAT_WS
```sql
SELECT concat_ws(' : ', name, sku_code, category) AS all_in_one FROM products;
```
`concat_ws` = concat with separator. First argument is the separator, applied between all remaining values automatically.

---

### TRIM
```sql
SELECT trim('   hi this is himanshu            ');
```
Removes leading and trailing spaces. Does not remove spaces in the middle.

---

### REPLACE
```sql
SELECT name, replace(sku_code, left(sku_code, 2), 'FF') FROM products;
```
Syntax: `replace(text, old, new)`
Here it takes the first 2 characters of sku_code and replaces them with 'FF'.
Result: WM123456 → FF123456, BS234567 → FF234567, and so on.

---

## String Functions — Quick Reference

| Function | Syntax | Purpose |
|---|---|---|
| upper | `upper(col)` | Convert to uppercase |
| lower | `lower(col)` | Convert to lowercase |
| length | `length(col)` | Count characters |
| substring | `substring(col, start, len)` | Extract part of string |
| left | `left(col, n)` | First n characters |
| right | `right(col, n)` | Last n characters |
| concat | `concat(a, ' ', b)` | Join strings manually |
| concat_ws | `concat_ws(sep, a, b)` | Join with separator |
| trim | `trim(col)` | Remove leading/trailing spaces |
| replace | `replace(col, old, new)` | Replace substring |

---

## Key Takeaways
- ALTER TABLE modifies structure, never the actual row data (except DROP COLUMN)
- String functions do not change data in the table — they only change how results are displayed
- `concat_ws` is cleaner than `concat` when you want the same separator between all values
- `REPLACE` combined with `LEFT` or `RIGHT` is a powerful pattern for transforming codes