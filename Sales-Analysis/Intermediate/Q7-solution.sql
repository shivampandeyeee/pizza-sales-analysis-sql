-- Determine the distribution of orders by hour of the day.

select Hour (time) as hour, count(order_id) as order_count

 from orders as o
group by hour(time);
