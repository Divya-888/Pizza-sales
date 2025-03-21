-- total revenue --
SELECT 
    SUM(total_price) AS total_revenue
FROM
    pizza_sales
    
-- average order value --   
SELECT 
    SUM(total_price) / COUNT(DISTINCT order_id) AS avg_order_value
FROM
    pizza_sales

-- total pizzas sold----
SELECT 
    SUM(quantity) AS total_pizzas_sold
FROM
    pizza_sales

-- total orders --
SELECT 
    COUNT(DISTINCT order_id) AS total_orders
FROM
    pizza_sales

-- average pizzas per order --
SELECT 
    ROUND(SUM(quantity) / COUNT(DISTINCT order_id),
            2) AS avg_pizzasperorder
FROM
    pizza_sales