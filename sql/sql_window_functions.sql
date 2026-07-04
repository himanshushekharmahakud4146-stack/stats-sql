-- ==========================================
-- Month 4 | Day 23
-- SQL Window Functions
-- ==========================================

-- Maximum revenue by region

SELECT region,
       MAX(revenue) AS max_revenue
FROM customers
GROUP BY region;

--------------------------------------------------

-- Window Aggregate

SELECT
    c.*,
    MAX(revenue) OVER(PARTITION BY region) AS max_revenue
FROM customers c;

--------------------------------------------------

-- ROW_NUMBER()

SELECT
    c.*,
    ROW_NUMBER() OVER(
        PARTITION BY region
        ORDER BY customer_id
    ) AS row_num
FROM customers c;

--------------------------------------------------

-- Top 2 customers in every region

SELECT *
FROM
(
    SELECT
        c.*,
        ROW_NUMBER() OVER(
            PARTITION BY region
            ORDER BY customer_id
        ) AS rn
    FROM customers c
) x
WHERE rn < 3;

--------------------------------------------------

-- RANK()

SELECT *
FROM
(
    SELECT
        c.*,
        RANK() OVER(
            PARTITION BY region
            ORDER BY revenue DESC
        ) AS rank_num
    FROM customers c
) x
WHERE rank_num < 3;

--------------------------------------------------

-- DENSE_RANK()

SELECT
    c.*,
    DENSE_RANK() OVER(
        PARTITION BY region
        ORDER BY revenue DESC
    ) AS dense_rank
FROM customers c;