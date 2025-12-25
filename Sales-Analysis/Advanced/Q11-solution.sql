-- Calculate the percentage contribution of each pizza type to total revenue.

select category, round(((sum(quantity*price)/(SELECT SUM(o_d2.quantity * p2.price)
         FROM order_details o_d2
         JOIN pizzas p2 ON o_d2.pizza_id = p2.pizza_id))*100),2) as sm from pizzas as p 
join pizza_types as p_t
on p.pizza_type_id = p_t.pizza_type_id
join order_details as o_d
on p.pizza_id = o_d.pizza_id
group by category order by sm desc ;