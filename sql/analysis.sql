-- SQL analysis will go here

-- Query 1: Total Sales & Profit by Month
-- Purpose: Aggregate daily order data to see monthly trends
SELECT 
    substr(order_date, 1, 7) AS month,  -- take YYYY-MM from YYYY-MM-DD
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM superstore
GROUP BY month
ORDER BY month;
