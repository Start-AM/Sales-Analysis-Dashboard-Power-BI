-- Creating Database Primeor Solution. 
Create DATABASE primeor_Solution;

-- Using database Primeor Solution. 
use primeor_Solution;  

-- Creating Tables in Database.
CREATE TABLE level_2_task_1 (
    order_id VARCHAR(30),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    state VARCHAR(100),
    country VARCHAR(100),
    market VARCHAR(50),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(100),
    product_name VARCHAR(255),
    sales DOUBLE,
    quantity INT,
    discount DOUBLE,
    profit DOUBLE,
    shipping_cost DOUBLE,
    order_priority VARCHAR(20),
    year INT
);

-- Loading Execl Data (Converted into .CSV) In Database. 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Level_2_Task_cleaned.csv'
INTO TABLE level_2_task_1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
order_id,
@order_date,
@ship_date,
ship_mode,
customer_name,
segment,
state,
country,
market,
region,
product_id,
category,
sub_category,
product_name,
sales,
quantity,
discount,
profit,
shipping_cost,
order_priority,
year
)
SET
order_date = STR_TO_DATE(@order_date,'%d-%m-%Y'),
ship_date = STR_TO_DATE(@ship_date,'%d-%m-%Y');

-- Checking DataType Error. 
DESCRIBE level_2_task_1;

-- Counting Total Row Inserted In MY DATABASE. 
SELECT COUNT(*) AS Total_Rows
FROM level_2_task_1;