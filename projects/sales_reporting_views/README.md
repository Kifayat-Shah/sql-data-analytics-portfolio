# Sales Reporting Views

## Project Overview

This project demonstrates how PostgreSQL Views can be used to create reusable sales reports from a `sales_orders` table.

## Business Requirements

The company needs three sales reports:

1. Delivered Orders
2. High Value Orders
3. Peshawar Sales

## Views Created

### 1. Delivered Orders

View name:

`delivered_orders`

Shows:

- Order ID
- Customer
- Product
- Quantity
- Unit Price
- City

Filter:

`order_status = 'Delivered'`

### 2. High Value Orders

View name:

`high_value_orders`

Shows:

- Order ID
- Customer
- Product
- Quantity
- Unit Price

Initial filter:

`unit_price > 500`

The View was then modified using `CREATE OR REPLACE VIEW`.

New filter:

`unit_price > 800`

### 3. Peshawar Sales

View name:

`peshawar_sales`

Shows:

- Order ID
- Customer
- Product
- Quantity
- Unit Price

Filter:

`city = 'Peshawar'`

## SQL Concepts Used

- CREATE VIEW
- CREATE OR REPLACE VIEW
- DROP VIEW IF EXISTS
- SELECT
- WHERE
- SQL filtering

## Database

PostgreSQL

## Dataset

`sales_orders`

## Learning Outcome

This project demonstrates how Views can simplify repeated reporting queries and how an existing View can be modified using `CREATE OR REPLACE VIEW`.

## Project Status

Completed
