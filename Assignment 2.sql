create database Sales;
create table Orders(Order_Id int Unique PRIMARY KEY,    
Customer_name Varchar (20) NOT NULL, 
Product_Category Varchar (20) NOT NULL DEFAULT 'General',   
Ordered_item varchar(20) NOT NULL ,
Contact_No int(12) Unique NOT NULL
);
select *from Orders;
alter table Orders
add order_quantity int;
select *from Orders;
alter table Orders
rename to sales_orders ;
select *from sales_orders;
INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity)
VALUES
(101, 'John ','Electronics', "Mobile ",500172, 1),
(102, 'Smith', 'Home appliances ', 'Fridge', 220101, 1),
(103, 'limi ', DEFAULT, 'plates', 633641, 10),
(104, 'Naiel', 'Home appliances', 'Ovan',516746, 1),
(105, 'Davis', 'Shirt', 'clothing', 235744, 4),
(106, 'Mith ','Electronics','ipad', 613265, 2),
(107, 'Smith', 'Home appliances ', 'Stove', 574191, 1),
(108, 'Ebin ', DEFAULT, 'Spoon',635965, 10),
(109, 'kevin', 'Home appliances', 'mixer', 214610, 2),
(110, 'lijo', 'pants', 'clothing', 413561, 6);
select *from sales_orders;
select Customer_name,Ordered_item
from sales_orders ;
Update sales_orders set Product_Category="Electronics" where Order_Id=109;
select *from sales_orders;
drop table sales_orders;
