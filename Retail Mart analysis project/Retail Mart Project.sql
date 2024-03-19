# 1. write  a query to create a database named SQL_basics:

create database if not exists sql_basics;

# 2. write a query to select the database sql_basics

use sql_basics;

# 3. write a query to create a product table , customer table, sales table 

select * from product_datasets;
select * from customer_datasets;
select * from sales_datasets;

# 4. Insert values into the tables

select * from product_datasets;
insert into product_datasets values
('27','rubber', 25, 10, 'Stationary'),
('28','beetroot', 30, 7, 'vegetable');

# 5. Add new column such as S_no and category in sales_datasets
select * from sales_datasets;
alter table sales_datasets
add column S_no int auto_increment primary key,
add column category varchar(250);

# 6. change column type of stock in the product table to varchar

alter table product_datasets
modify column stock varchar(100);

# 7. change the table name from customer to customer_details

rename table customer_datasets to customer_details;

# 8. drop the columns S_no and category from sales table

alter table sales_datasets
drop column S_no,
drop column category;

# 9. display order Id, customer id, order date, price and quantity from the sales table

select * from sales_datasets;

select order_no, c_id, order_date, price, qty from sales_datasets;

# 10. display the all details of stationary category in product_datasets

select distinct * from product_datasets
where category = 'Stationary';

# 11. display the unique category from the product table

select distinct category from product_datasets;

# 12. display the sales details if gty is >2, and price is < 500 from sales table

select * from sales_datasets;

select c_name, qty, price from sales_datasets
where qty > 2 and price < 500;

# 13. display the customer's name if the names ends with a.

select c_name from sales_datasets
where c_name like '%a';  # if c_name begin with a , 'a%'

# 14. display the product details in descending order ot the price

select * from sales_datasets
order by price desc;

 # 15. display the product code and category from similar categories that are >=2;
 
 select p_code, category from product_datasets
 group by p_code, category
 having count(*) >=2;

# 16. display the order number and the customer name to combine the results of the order and the customer tables including duplicate rows.

select s.order_no, c.c_name from sales_datasets as s
join customer_details as c
on s.c_id = c.c_id;

