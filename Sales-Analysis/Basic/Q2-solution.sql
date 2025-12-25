-- Calculate the total revenue generated from pizza sales.

Select 
    sum(price*quantity) as Total_Revenue
 from pizzas as p
join order_details as o
on p.pizza_id = o.pizza_id
;