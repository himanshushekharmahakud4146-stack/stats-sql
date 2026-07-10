-- ==========================================
-- Month 4 | Day 25
-- SQL Common Table Expressions (CTEs)
-- ==========================================

-- ==========================================
-- Simple CTE
-- ==========================================

WITH customer_orders AS
(
    SELECT
        customer_id,
        SUM(amount) AS total_amount
    FROM orders
    GROUP BY customer_id
)

SELECT *
FROM customer_orders;

--------------------------------------------------

-- ==========================================
-- Multi-Step CTE
-- ==========================================

WITH customer_orders AS
(
    SELECT
        customer_id,
        SUM(amount) AS total_amount
    FROM orders
    GROUP BY customer_id
),

customer_segments AS
(
    SELECT
        customer_id,
        total_amount,

        CASE

            WHEN total_amount >=7000 THEN 'Gold'

            WHEN total_amount >=4000 THEN 'Silver'

            ELSE 'Bronze'

        END AS segment

    FROM customer_orders
)

SELECT *
FROM customer_segments;

--------------------------------------------------

-- ==========================================
-- Customer Report
-- ==========================================

WITH customer_orders AS
(
    SELECT
        customer_id,
        SUM(amount) AS total_amount
    FROM orders
    GROUP BY customer_id
),

customer_segments AS
(
    SELECT
        customer_id,
        total_amount,

        CASE

            WHEN total_amount >=7000 THEN 'Gold'

            WHEN total_amount >=4000 THEN 'Silver'

            ELSE 'Bronze'

        END AS segment

    FROM customer_orders
)

SELECT
    c.customer_name,
    c.region,
    cs.total_amount,
    cs.segment
FROM customers c
JOIN customer_segments cs
ON c.customer_id = cs.customer_id;

--------------------------------------------------

-- ==========================================
-- Customer Ranking
-- ==========================================

WITH customer_orders AS
(
    SELECT
        customer_id,
        SUM(amount) AS total_amount
    FROM orders
    GROUP BY customer_id
)

SELECT
    customer_id,
    total_amount,
    RANK() OVER(
        ORDER BY total_amount DESC
    ) AS revenue_rank
FROM customer_orders;

--------------------------------------------------

-- ==========================================
-- Recursive CTE
-- ==========================================

WITH RECURSIVE numbers AS
(
    SELECT 1 AS n

    UNION ALL

    SELECT n + 1
    FROM numbers
    WHERE n < 5
)

SELECT *
FROM numbers;