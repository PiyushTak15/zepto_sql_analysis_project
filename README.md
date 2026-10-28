# Zepto SQL Data Analysis Project

## Project Overview

This project focuses on analyzing Zepto product data using **MySQL**. The goal is to explore product pricing, discounts, inventory, product availability, categories, and estimated revenue to answer practical business questions using SQL.

The project covers the complete SQL analysis workflow, from creating the database and table to data exploration, data cleaning, and business analysis.

## What I Worked On

* Created a MySQL database and product table
* Explored the dataset and checked the number of records
* Identified null values and duplicate product names
* Analyzed product categories and stock availability
* Cleaned invalid price records
* Converted price values from paise to rupees
* Analyzed product discounts and pricing
* Estimated revenue by category
* Analyzed inventory weight
* Identified products offering better value for money
* Used `CASE` statements to create product weight categories
* Used CTEs and `ROW_NUMBER()` to rank products within each category

## SQL Concepts Used

* `SELECT`, `WHERE`, `DISTINCT`
* `GROUP BY` and `HAVING`
* Aggregate functions: `COUNT()`, `SUM()`, `AVG()`
* `ORDER BY` and `LIMIT`
* `CASE WHEN`
* Data cleaning using `DELETE` and `UPDATE`
* Common Table Expressions (CTEs)
* Window functions
* `ROW_NUMBER()`
* Conditional filtering
* Business-oriented data analysis

## Business Questions Answered

1. What are the top 10 best-value products based on discount percentage?
2. Which high-priced products are currently out of stock?
3. What is the estimated revenue for each category?
4. Which products have a price above ₹500 but a discount below 10%?
5. Which categories offer the highest average discount?
6. How can products be grouped into Low, Medium, and Bulk weight categories?
7. What is the total inventory weight per category?
8. Which products provide the best value for money based on price per 100g?
9. What are the top 3 highest-discount products in each category?
10. Which in-stock products have a discount of 40% or more?

## Tools Used

**MySQL | SQL | MySQL Workbench**

## Project Objective

The main objective of this project is to demonstrate how SQL can be used to transform raw e-commerce product data into meaningful business insights that can support pricing, inventory, discount, and product-level decisions.
