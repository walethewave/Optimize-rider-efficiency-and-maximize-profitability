-- Drop #temp_table if it exists
IF OBJECT_ID('tempdb..#temp_table') IS NOT NULL
    DROP TABLE #temp_table;

-- Create the temporary table
WITH cte AS (
    SELECT * 
    FROM bike_share_year_0
    UNION ALL
    SELECT * 
    FROM bike_share_year_1
)
SELECT 
    a.dteday,
    a.season,
    a.yr,
    a.workingday,
    a.weekday,
    a.hr,
    a.mnth,
    a.weathersit,
    a.temp,
    a.atemp,
    a.hum,
    a.windspeed,
    a.holiday,
    a.rider_type,
    a.riders,
    b.price,
    b.COGS,
    a.riders * b.price AS Revenue,
    a.riders * b.price - b.COGS AS Profit
INTO #temp_table 
FROM cte a
LEFT JOIN cost_table b 
    ON a.yr = b.yr;

-- Continue with your analysis queries
-- Total revenue for each year:
SELECT yr, SUM(Revenue) AS total_revenue
FROM #temp_table
GROUP BY yr
ORDER BY yr;

-- Average temperature during holidays vs non-holidays:
SELECT holiday, AVG(temp) AS avg_temp
FROM #temp_table
GROUP BY holiday;

-- Hour with the highest average revenue:
SELECT hr, AVG(Revenue) AS avg_revenue
FROM #temp_table
GROUP BY hr
ORDER BY avg_revenue DESC;

-- Total cost of goods sold (COGS) per weekday:
SELECT weekday, SUM(COGS) AS total_cogs
FROM #temp_table
GROUP BY weekday
ORDER BY weekday;

-- Rider type generating more profit:
SELECT rider_type, SUM(Profit) AS total_profit
FROM #temp_table
GROUP BY rider_type
ORDER BY total_profit DESC;

-- Revenue generated on holidays vs non-holidays:
SELECT holiday, SUM(Revenue) AS total_revenue
FROM #temp_table
GROUP BY holiday;

-- Average profit per season:
SELECT season, AVG(Profit) AS avg_profit
FROM #temp_table
GROUP BY season
ORDER BY season;

-- Month with the highest average revenue:
SELECT mnth, AVG(Revenue) AS avg_revenue
FROM #temp_table
GROUP BY mnth
ORDER BY avg_revenue DESC;

-- Time Slots for Maximum Profitability Across Seasons (Optimal Delivery Hours) 
SELECT season, hr, AVG(Profit) AS avg_profit
FROM #temp_table
GROUP BY season, hr
ORDER BY season, avg_profit DESC;

-- Predicting Rider Demand Using Historical Data

SELECT yr, mnth, weekday, hr, weathersit, temp, atemp, hum, windspeed, 
LAG(riders, 1) OVER (ORDER BY dteday) AS previous_day_riders, 
riders AS current_day_riders
FROM #temp_table;

-- Cost Optimization: Balancing Revenue and Costs of Goods Sold (COGS) This will help to categorize performance based on efficiency in generating revenue relative to the cost of goods sold, helping the business optimize profitability.

SELECT COGS, Revenue, 
CASE WHEN Revenue / COGS > 2 THEN 'High Profit Efficiency' 
     WHEN Revenue / COGS BETWEEN 1 AND 2 THEN 'Moderate Profit Efficiency' 
     ELSE 'Low Profit Efficiency' 
END AS efficiency_category
FROM #temp_table;

-- Seasonal Profitability Prediction Using Time Series This time series analysis will help predict seasonal profitability trends, enabling the business to adjust its strategies for peak and off-peak seasons.
SELECT dteday, Profit, 
SUM(Profit) OVER (ORDER BY dteday ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS rolling_weekly_profit
FROM #temp_table;
