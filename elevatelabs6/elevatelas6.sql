CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(101, '2023-01-15', 250.00, 1),
(102, '2023-01-22', 150.00, 2),
(103, '2023-02-05', 300.00, 1),
(104, '2023-02-15', 175.00, 3),
(105, '2023-03-10', 400.00, 2),
(106, '2023-03-18', 220.00, 2),
(107, '2023-04-01', 180.00, 1),
(108, '2023-04-25', 600.00, 3),
(109, '2023-05-05', 350.00, 2),
(110, '2023-05-20', 270.00, 1),
(111, '2023-06-10', 200.00, 1),
(112, '2023-06-15', 450.00, 3),
(113, '2023-07-01', 330.00, 2),
(114, '2023-07-15', 510.00, 3),
(115, '2023-08-10', 390.00, 2);

SELECT 
    STRFTIME('%Y-%m', Date(order_date)) AS month,            -- Extracts "YYYY-MM" from order_date
    SUM(amount) AS total_revenue,                      -- Calculates monthly revenue
    COUNT(DISTINCT order_id) AS order_volume           -- Counts unique orders in each month
FROM 
    online_sales                                       -- Source table
GROUP BY 
    month                                              -- Groups by formatted month
ORDER BY 
    month;                    -- Sorts months in ascending order

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;
    SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month_year,
    SUM(amount) AS total_revenue
FROM 
    online_sales
GROUP BY 
    month_year
ORDER BY 
    total_revenue DESC
LIMIT 3;



