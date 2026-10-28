# Zepto SQL Data Analysis Project

## 📌 About the Project

In this project, I used MySQL to explore Zepto product data and understand how different products are priced, discounted, and managed in inventory.

I worked on cleaning the data, exploring product categories, checking stock availability, and answering business questions related to pricing, discounts, and inventory. The main goal was to improve my SQL skills and learn how to use data to answer real-world business questions.

## 🛠️ Tools Used

* MySQL
* MySQL Workbench
* SQL

## 🔍 What I Worked On

* Created a database and table to store the product data.
* Explored the dataset and checked for missing values and repeated product names.
* Cleaned records with invalid prices.
* Converted product prices from paise to rupees.
* Analyzed product prices, discounts, and stock availability.
* Calculated estimated inventory value for different product categories.
* Compared average discounts across categories.
* Checked product weight and price to identify value-for-money options.
* Used `CASE WHEN` to group products by weight.
* Used CTEs and window functions to rank products within each category.

## 💻 SQL Concepts Used

During this project, I practiced:

* Filtering and sorting data using `WHERE` and `ORDER BY`
* Grouping data using `GROUP BY` and `HAVING`
* Aggregate functions such as `COUNT()`, `SUM()`, and `AVG()`
* Removing duplicates from query results using `DISTINCT`
* Conditional logic using `CASE WHEN`
* Updating and deleting records for data cleaning
* Common Table Expressions (CTEs)
* Window functions using `ROW_NUMBER()`

## 🎯 Project Objective

The aim of this project was to get hands-on experience with SQL and understand how product data can help answer business questions about pricing, discounts, and inventory management.

## 📋 Business Questions I Explored

1. Which products have the highest discount percentages?
2. Which high-priced products are out of stock?
3. What is the estimated inventory value of each category?
4. Which products have an MRP above ₹500 and a discount below 10%?
5. Which categories offer the highest average discounts?
6. How can products be grouped into Low, Medium, and Bulk weight categories?
7. What is the total inventory weight for each category?
8. Which products offer the lowest price per 100 grams?
9. What are the top three highest-discount products in each category?
10. Which in-stock products have discounts of 40% or more?

## 📊 Key Business Insights

* **Product Availability:** 453 out of 3,732 product records (12.14%) are marked as out of stock.
* **Highest Discount:** Dukes Waffy wafers have discounts of up to 51%.
* **Category Discounts:** Fruits & Vegetables has the highest average discount at 15.46%.
* **Estimated Inventory Value:** Cooking Essentials and Munchies have estimated inventory values of ₹3,37,369 each.
* **Value for Money:** Garlic and mint leaves have a calculated price of ₹9 per 100 grams.

*Note: Inventory value is estimated using discounted selling prices and available quantities. It does not represent actual sales revenue.*
