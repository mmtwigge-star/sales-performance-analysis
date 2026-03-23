# SuperStore Sales Analysis

## Step 1: Get the data
- Downloaded the SuperStore dataset from Kaggle (SuperStoreOrders.csv)

## Step 2: Clean the data
- Opened CSV in Google Sheets
Noticed Order Date and Ship Date had inconsistent formats (6/1/2011 vs 13-01-2011)
Created a new column Normalized Date with a formula to convert all dates to proper date format
Formatted as YYYY-MM for easy monthly aggregation
Deleted old, inconsistent columns (Order Date and Ship Date) after confirming the new column worked

## Step 3: Import into SQLite
- Created a new database in DB Browser for SQLite
Imported the cleaned CSV as table superstore

## Step 4: Run SQL queries
- Wrote SQL query to sum Sales and Profit per month using:
SELECT 
    substr(order_date, 1, 7) AS month,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM superstore
GROUP BY month
ORDER BY month;

## step 5: Insight
- Initial observation: Sales and profit increase over the years wit some seasonal peaks in June and a range year to year from September to December
- Shows seasonal trends → useful for business decision-making
