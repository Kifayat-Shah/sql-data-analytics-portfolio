-- =========================================================
-- SALES REPORTING VIEWS
-- SQL Module 19 - Lesson 3
-- PostgreSQL
-- =========================================================


-- VIEW 1: DELIVERED ORDERS

DROP VIEW IF EXISTS delivered_orders;

CREATE VIEW delivered_orders AS
SELECT
    order_id,
    customer_name,
    product_name,
    quantity,
    unit_price,
    city
FROM sales_orders
WHERE order_status = 'Delivered';


-- Test View 1

SELECT *
FROM delivered_orders;


-- VIEW 2: HIGH VALUE ORDERS

DROP VIEW IF EXISTS high_value_orders;

CREATE VIEW high_value_orders AS
SELECT
    order_id,
    customer_name,
    product_name,
    quantity,
    unit_price
FROM sales_orders
WHERE unit_price > 500;


-- Test View 2

SELECT *
FROM high_value_orders;


-- VIEW 3: PESHAWAR SALES

DROP VIEW IF EXISTS peshawar_sales;

CREATE VIEW peshawar_sales AS
SELECT
    order_id,
    customer_name,
    product_name,
    quantity,
    unit_price
FROM sales_orders
WHERE city = 'Peshawar';


-- Test View 3

SELECT *
FROM peshawar_sales;


-- MODIFY HIGH VALUE ORDERS VIEW
-- Using CREATE OR REPLACE VIEW

CREATE OR REPLACE VIEW high_value_orders AS
SELECT
    order_id,
    customer_name,
    product_name,
    quantity,
    unit_price
FROM sales_orders
WHERE unit_price > 800;


-- Test the replaced View

SELECT *
FROM high_value_orders;
