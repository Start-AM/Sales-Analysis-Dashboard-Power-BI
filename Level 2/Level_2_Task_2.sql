-- Write SQL queries for:

-- Using database Primeor Solution. 
use primeor_Solution;

-- 1. Top 10 profitable products 

SELECT
    product_name,
    SUM(profit) AS total_profit
FROM level_2_task_1
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

-- 2. Top 10 customers by sales 

SELECT
    customer_name,
    SUM(sales) AS total_sales
FROM level_2_task_1
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- 3. Region-wise total sales 

SELECT
    region,
    SUM(sales) AS total_sales
FROM level_2_task_1
GROUP BY region
ORDER BY total_sales DESC;

-- 4. Category-wise average profit 

SELECT
    category,
    AVG(profit) AS average_profit
FROM level_2_task_1
GROUP BY category;

-- 5. Highest discount category 

SELECT
    category,
    AVG(discount) AS average_discount
FROM level_2_task_1
GROUP BY category
ORDER BY average_discount DESC
LIMIT 1;

-- 6. Orders with negative profit 

SELECT
    order_id,
    customer_name,
    product_name,
    sales,
    profit
FROM level_2_task_1
WHERE profit < 0;

-- 7. Monthly sales trend 

SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS total_sales
FROM level_2_task_1
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date);

-- 8. Market-wise revenue analysis 

SELECT
    market,
    SUM(sales) AS revenue
FROM level_2_task_1
GROUP BY market
ORDER BY revenue DESC;

-- 9. Top-performing sub-categories 

SELECT
    sub_category,
    SUM(profit) AS total_profit
FROM level_2_task_1
GROUP BY sub_category
ORDER BY total_profit DESC
LIMIT 10;

-- 10. Ship mode usage analysis

SELECT
    ship_mode,
    COUNT(*) AS total_orders
FROM level_2_task_1
GROUP BY ship_mode
ORDER BY total_orders DESC;
