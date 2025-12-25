-- Identify the most common pizza size ordered.
with tab1 as (

Select size,count(size) as cnt from pizzas as p
join order_details as o
on p.pizza_id = o.pizza_id
group by size)

Select * from tab1
order by cnt desc
limit 1
;