USE retail_analytics;

SELECT COUNT(*) AS total_records
FROM superstore_sales;

SELECT
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore_sales;

SELECT
    State,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore_sales
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore_sales
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT
    Category,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore_sales
GROUP BY Category
ORDER BY Total_Profit DESC;