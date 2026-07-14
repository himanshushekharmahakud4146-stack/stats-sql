-- ===========================================
-- Customer Intelligence Engine
-- Database Schema
-- Month 4 |
-- ===========================================

-- Tables to be created

-- customers

-- products

-- orders

-- Future tables

-- returns

-- payments

-- inventory

-- ===========================================
-- Customers Table
-- Customer Intelligence Engine
-- ===========================================

CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code INT,
    region VARCHAR(50)
);
SELECT * FROM customers;

-- ===========================================
-- Products Table
-- Customer Intelligence Engine
-- ===========================================

CREATE TABLE products (
    product_id VARCHAR(30) PRIMARY KEY,
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name TEXT
);
SELECT * FROM products;