-- ==========================================
-- Month 4 | Day 24
-- SQL Time Series Analysis
-- LAG(), LEAD(), Running Totals
-- ==========================================

-- View monthly sales

SELECT *
FROM monthly_sales;

--------------------------------------------------

-- Previous month's revenue

SELECT
    month_name,
    revenue,
    LAG(revenue)
    OVER(
        ORDER BY month_id
    ) AS previous_month
FROM monthly_sales;

--------------------------------------------------

-- Month-over-Month revenue change

SELECT
    month_name,
    revenue,
    revenue -
    LAG(revenue)
    OVER(
        ORDER BY month_id
    ) AS revenue_change
FROM monthly_sales;

--------------------------------------------------

-- Next month's revenue

SELECT
    month_name,
    revenue,
    LEAD(revenue)
    OVER(
        ORDER BY month_id
    ) AS next_month
FROM monthly_sales;

--------------------------------------------------

-- Running total

SELECT
    month_name,
    revenue,
    SUM(revenue)
    OVER(
        ORDER BY month_id
    ) AS running_total
FROM monthly_sales;

--------------------------------------------------

-- Running average

SELECT
    month_name,
    revenue,
    AVG(revenue)
    OVER(
        ORDER BY month_id
    ) AS running_average
FROM monthly_sales;