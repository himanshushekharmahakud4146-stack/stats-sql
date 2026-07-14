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

-- ==========================================================
-- Customer Intelligence Engine
-- Database Schema
-- PostgreSQL
-- ==========================================================

DROP TABLE IF EXISTS superstore;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;

-- ==========================================================
-- Customers
-- ==========================================================

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

-- ==========================================================
-- Products
-- ==========================================================

CREATE TABLE products (
    product_id VARCHAR(30) PRIMARY KEY,
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name TEXT
);

-- ==========================================================
-- Superstore Transactions
-- ==========================================================

CREATE TABLE superstore (

    row_id INT,

    order_id VARCHAR(30),

    order_date DATE,

    ship_date DATE,

    ship_mode VARCHAR(50),

    customer_id VARCHAR(20),

    customer_name VARCHAR(100),

    segment VARCHAR(50),

    country VARCHAR(50),

    city VARCHAR(100),

    state VARCHAR(100),

    postal_code INT,

    region VARCHAR(50),

    product_id VARCHAR(30),

    category VARCHAR(50),

    sub_category VARCHAR(50),

    product_name TEXT,

    sales NUMERIC(10,2),

    quantity INT,

    discount NUMERIC(5,2),

    profit NUMERIC(10,2)
);