-- List the top 5 most ordered pizza types along with their quantities.

with tab1 as (
 Select p.pizza_id,
 p.pizza_type_id,
 quantity,
 p1.name
 
 from pizzas as p
 join order_details as o
 on p.pizza_id = o.pizza_id
 join pizza_types as p1
 on p.pizza_type_id = p1.pizza_type_id
 join orders as os 
 on o.order_id = os.order_id
 )
 
 Select name, sum(quantity) as ad 
 from tab1

 group by name 
 order by ad desc
 limit 5
;