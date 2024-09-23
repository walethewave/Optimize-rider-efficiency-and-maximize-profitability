# Project README: Optimizing Rider Efficiency and Revenue Using Data-Driven Insights

## Project Title:
**"Optimizing Rider Efficiency and Revenue Through Data-Driven Insights: A Predictive and Anomaly Detection Approach"**

## Overview:
This project focuses on improving rider efficiency, maximizing profitability, and detecting anomalies in a bike-sharing system using advanced data analysis techniques. By leveraging SQL for data processing, predictive modeling, anomaly detection, and integrating Power BI for visualization, this project delivers actionable insights to optimize operational strategies.

## Key Insights:
- **Optimal Delivery Hours:** Identified peak profitability times by season, helping the business allocate resources and plan promotions effectively.
- **Predicting Rider Demand:** Developed a predictive model using past data to forecast future rider demand, reducing under- or over-staffing issues.
- **Anomaly Detection:** Detected anomalies in revenue and rider counts to highlight special events or issues that required attention.
- **Cost Optimization:** Balanced costs and revenue through a profitability efficiency analysis, helping the business optimize its cost structure.
- **Seasonal Profitability Prediction:** Implemented time series analysis to forecast seasonal trends, allowing for strategic planning during peak and off-peak periods.

---

## What I Did:

### 1. Data Collection and Integration:
- Combined data from multiple years of bike-sharing data (`bike_share_year_0` and `bike_share_year_1`) and linked it with cost data (`cost_table`) to create a comprehensive dataset for analysis.

### 2. SQL Queries and Analysis:
- **Revenue and Profitability:** Analyzed total revenue, average profit, and COGS across different dimensions such as year, month, and rider type.
- **Time Slots for Maximum Profit:** Identified the best time slots by season to maximize profitability.
- **Rider Demand Prediction:** Prepared a dataset for predictive modeling by calculating lagged rider counts, which can be fed into machine learning models for future rider demand forecasting.
- **Cost Efficiency:** Categorized revenue relative to costs into three categories—High, Moderate, and Low Profit Efficiency—to optimize operational costs.
- **Seasonal Trends:** Used time series analysis to track rolling weekly profit, allowing for proactive decision-making during seasonal fluctuations.

### 3. Power BI Dashboard:
- Created a dynamic dashboard in Power BI to visualize key metrics like total revenue, average profit, and rider demand trends. The dashboard allows users to interact with the data, providing an intuitive way to monitor business performance.

---

## In-Depth Insights:

### 1. **How Much Profit Per Day?**
- This table provides a detailed breakdown of the **daily profits** generated.
#### Key Insights:
  - **Profit Trends:** Some days have remarkably high profits, such as **January 6** with **$264**, while others, like **January 3**, show much lower returns (**$19**).
  - **Business Efficiency:** The variation in daily profit reveals which days are more profitable, helping the business optimize resource allocation, including staffing and bike availability.

### 2. **KPI Overtime (2021 & 2022):**
- This line and bar chart combo tracks three KPIs: 
  - **Sum of Riders** (total number of riders over time)
  - **Average of Profit**
  - **Average of Revenue**

#### Key Takeaways:
  - The graph shows **seasonal peaks** in rider usage, particularly around **June to September**, indicating higher revenue and rider activity during warmer months.
  - There is a consistent upward trend in both **revenue** and **profit** from January to August, before declining towards the end of the year. This highlights the **cyclical nature** of demand and can inform **seasonal promotions** or **pricing strategies**.

### 3. **Revenue by Season:**
- This horizontal bar chart breaks down total revenue by season:
  - **Summer** leads with the highest revenue, **$4.9M**, while **Winter** brings in the least, at **$2.2M**.
  - **Fall** and **Spring** show moderate performances, with **$4.2M** and **$3.9M** respectively.

#### Business Implication:
  - The **seasonal variations** in revenue highlight opportunities to **maximize revenue during summer** and **manage costs during slower periods** like winter.
  - These insights can be used for **seasonal workforce management** and targeted campaigns during lower revenue months to boost profitability.

### 4. **Rider Demographic:**
- This donut chart divides the user base into two primary categories:
  - **Registered Riders** make up **81.17%** of the total riders.
  - **Casual Riders** constitute **18.83%** of the total.

#### Business Implication:
  - The dominance of registered riders suggests that the business has a **strong customer retention model** but should also consider **strategies to convert casual riders** into registered users to drive repeat business.
  - Understanding rider demographics helps tailor **marketing campaigns**—for instance, focusing on **promotional incentives** for casual riders or loyalty rewards for registered users.

### 5. **Total Summary (Top Right Corner):**
  - **Sum of Riders:** The total rider count over the tracked period is **3 million**, indicating the scale of the business.
  - **Profit Margin:** A high **Profit Margin of 68.80%** demonstrates strong profitability, suggesting that the business is efficiently converting revenue into profit.

#### Business Implication:
  - This high-profit margin indicates a **well-balanced cost structure** where revenue generation significantly exceeds the cost of operations.
  - The rider count is substantial, but further strategies could focus on increasing **rider engagement** and **expanding the user base**.

---

## Future Applications:
- **Predictive Analysis for Demand Planning:** The data can be further used to build machine learning models that predict rider demand, helping to plan staffing more accurately.
- **Real-Time Anomaly Detection:** The system can be enhanced to automatically detect and flag anomalies in real-time, alerting managers to potential issues instantly.
- **Optimization of Resource Allocation:** By understanding peak operational hours and seasonal trends, businesses can allocate resources more effectively, leading to increased profitability and improved rider efficiency.

---

## Conclusion:
This project not only optimizes rider efficiency and profitability but also paves the way for **data-driven decision-making** to enhance business performance in the bike-sharing industry.
