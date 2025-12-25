-- Analyze the cumulative revenue generated over time.

Select date, sum(quantity * price) from orders o
join order_details as o_d
on o.order_id = o_d.order_id
join pizzas as p
on o_d.pizza_id = p.pizza_id
group by date
;