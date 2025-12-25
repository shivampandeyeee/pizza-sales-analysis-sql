-- Group the orders by date and calculate the average number of pizzas ordered per day.
with new as (
Select date, sum(quantity) as ag 
from orders as o
join order_details as o_d
on o.order_id = o_d.order_id
group by date  )

Select avg(ag)
from new
;

CREATE TABLE `orders` (
  `order_id` int DEFAULT NULL,
  `date` text,
  `time` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `order_details` (
  `order_details_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `pizza_id` text,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

