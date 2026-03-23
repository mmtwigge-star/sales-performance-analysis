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

## Step 4.1: Run SQL queries
- Wrote SQL query to sum Sales and Profit per month using:
- SELECT 
    substr(order_date, 1, 7) AS month,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
- FROM superstore
- GROUP BY month
- ORDER BY month;

## step 4.2: Insight
- Initial observation: Sales and profit increase over the years wit some seasonal peaks in June and a range year to year from September to December
- Shows seasonal trends → useful for business decision-making



## Step 5.1: Run SQL queries
- Query 2: Sales & Profit by Category and Sub-Category
- SELECT 
    Category,
    Sub_Category,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
- FROM superstore
- GROUP BY Category, Sub_Category
- ORDER BY total_profit DESC;

## step 5.2: Question to ask
- Which categories make the most profit?   quick answer: Technology 
- Are any sub-categories negative profit? (very important 🔥) quick answer: Furniture, Tables -64083.3887
- Is high sales always equal to high profit? quick answer: No, depends on category and sub category

## step 5.3: Insight
- Initial observation: Technology category is creating the most profit. Tables is the only sub-category with negative profit. The sales quantity and profit ranges depending on the subcategory. Offic supply, Art sub-category was the lowest sales but had higher proft than 6 other sub categories.
- Shows sub-categories need to be looked into. Are they worth keeping? whilst why are technologies doing well?
- While Technology generates the highest sales, some sub-categories such as Tables show negative profitability, indicating pricing or cost issues
