create database rakamin;
select * from customers;
select * from orders;
select * from productcategory;
select * from products;


select date as order_date, CategoryName as category_name,ProdName as product_name,price as product_price,
 orders.Quantity as order_qty, orders.Quantity*Price as total_sales, customeremail as cus_email, customercity as cus_city
  from customers 
 join orders on orders.orderid = customers.CustomerID join products on orders.ProdNumber = products.ProdNumber 
 join productcategory on products.Category = productcategory.CategoryID order by date; 
