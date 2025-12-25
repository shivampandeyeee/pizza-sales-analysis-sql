-- Determine the top 3 most ordered pizza types based on revenue.

select name, sum(quantity*price) as sm from pizzas as p 
join pizza_types as p_t
on p.pizza_type_id = p_t.pizza_type_id
join order_details as o_d
on p.pizza_id = o_d.pizza_id
group by name order by sm desc 
limit 3;