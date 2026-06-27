-- ============================================================
-- ALTER TABLE & String Functions
-- Databases: new_db (ALTER), flipkart_db (String Functions)
-- Author: Himanshu
-- Date: 2026-06-27
-- ============================================================


-- ============================================================
-- SECTION 1: CREATE TABLE & INSERT (new_db)
-- ============================================================

CREATE TABLE students (
    student_id serial primary key,
    name varchar(100),
    age int
);

INSERT INTO students (name, age)
VALUES
    ('Himanshu', 21),
    ('Rajesh', 20);

SELECT * FROM students;


-- ============================================================
-- SECTION 2: ADD COLUMN
-- ============================================================

ALTER TABLE students
ADD COLUMN email varchar(100);


-- ============================================================
-- SECTION 3: DROP COLUMN
-- ============================================================

ALTER TABLE students
DROP COLUMN email;


-- ============================================================
-- SECTION 4: ADD COLUMN WITH DEFAULT
-- ============================================================

ALTER TABLE students
ADD COLUMN phone_number varchar(100) DEFAULT 'not provided';


-- ============================================================
-- SECTION 5: RENAME COLUMN
-- ============================================================

ALTER TABLE students
RENAME COLUMN name TO full_name;


-- ============================================================
-- SECTION 6: CHANGE COLUMN DATA TYPE
-- ============================================================

ALTER TABLE students
ALTER COLUMN age TYPE smallint;


-- ============================================================
-- SECTION 7: SET DEFAULT ON EXISTING COLUMN
-- ============================================================

ALTER TABLE students
ALTER COLUMN age SET DEFAULT 18;


-- ============================================================
-- SECTION 8: DROP DEFAULT FROM COLUMN
-- ============================================================

ALTER TABLE students
ALTER COLUMN age DROP DEFAULT;


-- ============================================================
-- SECTION 9: ADD CONSTRAINT
-- ============================================================

ALTER TABLE students
ADD CONSTRAINT age_check CHECK (age >= 0);


-- ============================================================
-- SECTION 10: DROP CONSTRAINT
-- ============================================================

ALTER TABLE students
DROP CONSTRAINT students_pkey;


-- ============================================================
-- SECTION 11: RENAME TABLE
-- ============================================================

ALTER TABLE students
RENAME TO school_students;

SELECT * FROM students;


-- ============================================================
-- SECTION 12: STRING FUNCTIONS (flipkart_db → products)
-- ============================================================

-- View all products
SELECT * FROM products;

-- UPPER: convert name to uppercase
SELECT upper(name) FROM products;

-- LENGTH: count characters in sku_code
SELECT length(sku_code) FROM products;

-- SUBSTRING: extract from a literal string
SELECT substring('I am learning SQL', 6, 12);

-- LOWER + SUBSTRING combined: first 3 chars of sku_code in lowercase
SELECT name, lower(substring(sku_code, 1, 3)) AS sku_code_lower FROM products;

-- LEFT: first 7 chars of a literal string
SELECT left('Brother Arms', 7);

-- RIGHT: last 8 chars of a literal string
SELECT right('SQL learning', 8);

-- LEFT on column: first 2 chars of sku_code
SELECT name, left(sku_code, 2) FROM products;

-- RIGHT on column: last 3 chars of sku_code
SELECT name, right(sku_code, 3) FROM products;

-- CONCAT: join name, sku_code, category with spaces
SELECT concat(name, ' ', sku_code, ' ', category) AS all_in_one FROM products;

-- CONCAT_WS: join with separator ' : '
SELECT concat_ws(' : ', name, sku_code, category) AS all_in_one FROM products;

-- TRIM: remove leading and trailing spaces
SELECT trim('   hi this is himanshu            ');

-- REPLACE: replace first 2 chars of sku_code with 'FF'
SELECT name, replace(sku_code, left(sku_code, 2), 'FF') FROM products;