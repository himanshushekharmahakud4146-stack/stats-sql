# Project Notes

## Project Name

Customer Intelligence & Business Decision Engine

---

# Business Problem

Many businesses collect large amounts of customer, product, and order data every day.

Although the data is available, management often struggles to answer important business questions such as:

- Which customers generate the highest revenue?
- Which products perform poorly?
- Which categories are most profitable?
- Which regions contribute the most sales?
- Which customers have become inactive?
- Which products need inventory attention?

This project is designed to answer these questions using SQL and convert raw data into actionable business insights.

---

# Project Goal

Build a business analytics system using SQL that helps decision-makers understand customer behavior, product performance, and sales trends.

---

# Skills Demonstrated

- PostgreSQL
- SQL Queries
- JOIN
- GROUP BY
- HAVING
- CASE
- Window Functions
- Common Table Expressions (CTEs)
- Business Analytics
- Statistical Thinking

---

# Expected Outputs

- Customer analysis
- Product analysis
- Sales analysis
- Regional analysis
- Business recommendations
- Executive summary

---

# Project Workflow

Business Problem

↓

Collect Dataset

↓

Create Database

↓

Write SQL Queries

↓

Generate Business Insights

↓

Business Recommendations

↓

Executive Report

---

# Future Enhancements

## Month 5

- Pandas
- Data Cleaning
- Missing Value Handling
- Matplotlib
- Seaborn

## Month 6

- Customer Segmentation
- Churn Prediction
- Sales Forecasting

## Future

- FastAPI
- Dashboard
- GenAI Analytics Assistant

---

# Current Progress

* Project structure created

* Business objectives defined

⬜ Database schema

⬜ Data import

⬜ SQL analysis

⬜ Business insights

⬜ Final report

## Progress

Created the Customers table.

This table stores customer-related information independently from orders and products, following basic database normalization principles.

## Products Table

Created the Products table.

Purpose:

- Store product information.
- Avoid duplicate product details.
- Prepare for joins with the Orders table.

# Notes

## Goal

Transform a flat CSV dataset into a normalized relational database.

## Tables

customers

Stores one record for each customer.

products

Stores one record for each product.

superstore

Stores every sales transaction.

## SQL Concepts Practiced

- CREATE TABLE
- PRIMARY KEY
- INSERT INTO
- SELECT DISTINCT
- COUNT()
- COUNT(DISTINCT)
- Data validation

## Learning Outcome

Learned how transactional datasets are transformed into relational databases before performing business analysis.