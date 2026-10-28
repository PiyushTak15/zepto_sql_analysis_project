create database zepto_project;
use zepto_project;
drop table if exists zepto;
create table zepto ( 
sku_id int auto_increment PRIMARY KEY,  
category varchar(120),
name varchar(150) NOT NULL,
mrp numeric(8,2),
discountPercent numeric(5,2),
availableQuantity integer,
discountedSellingPrice numeric(8,2),
weightInGms integer,
outOfStock tinyint,                   
quantity integer
) default charset = utf8mb4;             



### DATA EXPLORATION

#Count of rows
select count(*) from zepto;

#Sample data 
select * from zepto
limit 10;

#Null values
 SELECT *
FROM zepto
WHERE sku_id IS NULL
   OR category IS NULL
   OR name IS NULL
   OR mrp IS NULL
   OR discountPercent IS NULL
   OR availableQuantity IS NULL
   OR discountedSellingPrice IS NULL
   OR weightInGms IS NULL
   OR outOfStock IS NULL
   OR quantity IS NULL;
   
#Different product categories
select distinct category
from zepto
order by category;   
   
   
#Products instock V/S outofstock
select outOfStock, count(sku_id)
from zepto
group by outOfStock;

#Product names present multiple times
select name, count(sku_id)
from zepto
group by name
having count(sku_id)> 1
order by count(sku_id) DESC;


###Data Cleaning

#Products with price is 0
select * from zepto
where mrp = 0 or discountedSellingPrice = 0;

delete from zepto 
where mrp = 0;

#conversion of paise into rupees for the two pricing columns
update zepto
set mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

###Moving to solving business questions

#Q.1 Find the top 10 best value products based on the discount percentage

select distinct name, mrp, discountPercent
from zepto
order by discountPercent DESC
limit 10;


#Q.2 Which are the high price products out of stock

select distinct name,mrp
from zepto
where outOfStock = 1 and mrp > 300
order by mrp DESC;


#Q.3 Calcualte estimated revenue for each category

select category,
sum(discountedSellingPrice * availableQuantity) as Total_Revenue
from zepto
group by category
order by Total_Revenue DESC;


#Q.4 Find all Products where price is greater than ₹500 and discount is less than 10%

select distinct name, mrp, discountPercent 
from zepto
where mrp > 500 and discountPercent < 10
order by mrp DESC, discountPercent DESC;


#Q.5 Identify top 5 categories offering the highest average discount

select category,
round(avg(discountPercent),2) as Average_Discount
from zepto
group by category
order by Average_Discount DESC
limit 5;


#Q.6 Group the products into categories like Low, Medium, Bulk

select distinct name, weightInGms,
case when weightInGms < 1000 then 'Low'
	when weightInGms < 5000 then 'Medium'
	else 'Bulk'
end as Weight_Category
from zepto;


#Q.7 What is the Total Inventory Weight Per Category

select category,
sum(weightInGms * avaiQuantity) as Total_Weight
from zepto
group by category
order by Total_Weight;


#Q.8 Which products give the best value for money
select distinct name, weightInGms, discountedSellingPrice,
round(discountedSellingPrice / weightInGms *100 ,2) as price_per_100g
from zepto
where weightInGms <= 100
order by price_per_100g ASC
limit 10;


#Q.9 Find the top 3 highest-discount products in each category

with ranked as (
    select category, name, mrp, discountPercent,
    row_number() over (
        partition by category
        order by discountPercent desc, mrp desc
    ) as Rank_In_Category
    from (select distinct category, name, mrp, discountPercent from zepto) as d
)
select category, Rank_In_Category, name, mrp, discountPercent
from ranked
where Rank_In_Category <= 3
order by category, Rank_In_Category;



#Q.10 Which in-stock products have a discount of 40% or more?

select distinct name, mrp, discountPercent
from zepto
where outOfStock = 0 and discountPercent >= 40
order by discountPercent desc, mrp desc
limit 10;


