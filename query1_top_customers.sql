#create database olist;
#use olist;

#select * from customers;
#select * from geolocation;
#select * from orders;
#select * from products;

-- Who are the Top 10 customers by total amount spent?

#select

#    c.customer_id,
#    ROUND(SUM(p.payment_value), 2) AS total_spent,
#    COUNT(DISTINCT o.order_id) AS num_orders
#FROM customers c
#INNER JOIN orders o ON c.customer_id =  o.customer_id
#INNER JOIN olist.order_payments p ON o.order_id = p.order_id
#GROUP BY c.customer_id
#ORDER BY total_spent DESC
#LIMIT 10;


-- Who are the Top 10 customers by total amount spent?
#select * from customers;
#select * from orders;
#select * from order_payments;

use olist;

select
    c.customer_id,
    sum(op.payment_value) as total_spent
from customers as c
join orders as o on c.customer_id = o.customer_id
join order_payments as op on o.order_id = op.order_id
group by c.customer_id
order by total_spent desc
limit 10;