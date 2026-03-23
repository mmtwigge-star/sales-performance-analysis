-- SQL analysis will go here

-- Total monthly sales and profit
SELECT 
    DATE_TRUNC('month', "Order Date") AS month,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM superstore
GROUP BY month
ORDER BY month;
