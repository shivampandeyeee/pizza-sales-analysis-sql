-- Join the necessary tables to find the total quantity of each pizza category ordered.

Select category,sum(quantity) as sm from pizza_types as p_t
join pizzas as p
on p_t.pizza_type_id = p.pizza_type_id
join order_details as o_d
on p.pizza_id = o_d.pizza_id
group by category order by sm desc
;
