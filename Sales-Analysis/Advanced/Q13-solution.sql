-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

with tab1 as(
Select category,name,sum(quantity*price) as rev ,
rank () over(partition by category order by (sum(quantity*price))desc ) as reve
from pizzas as p
join order_details as o_d
on p.pizza_id = o_d.pizza_id
join pizza_types as p_t
on p.pizza_type_id = p_t.pizza_type_id
group by category,name

)

Select name,rev as revenue
 from tab1
 where reve<4
 order by category
;