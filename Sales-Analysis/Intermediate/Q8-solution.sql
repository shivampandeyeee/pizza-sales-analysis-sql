-- Join relevant tables to find the category-wise distribution of pizzas.

select category, count(name) from pizza_types as p_t

group by category;