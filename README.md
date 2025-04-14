## Retail Sales Performance Analysis 
A data analysis project to explore and visualize retail sales performance using SQL, Python, and Power BI.
This project aims to uncover actionable insights such as sales trends, regional performance, customer behavior, and product category profitability to inform data-driven decision-making.

## Objectives
-- Analyze sales data to identify key trends, growth opportunities, and profitability drivers
-- Build executive-level dashboards for business stakeholders
-- Track sales performance over time, by region, customer, and product category
-- Recommend strategies for improving revenue growth and operational efficiency

## Problem Statement
## Background
A global retail company operates across multiple regions and sales channels (both online and physical stores).

Leadership faces challenges in understanding:
-- Fluctuating sales performance across regions and markets
-- Underperforming product categories and declining customer segments
-- Identifying growth drivers and profitable customer segments
-- Evaluating profitability erosion from operational factors (e.g., shipping costs)
-- Despite having data, the information is siloed, unstructured, and lacks actionable insights for decision-making.

## Business Goal
Develop a centralized Sales Performance Analysis solution to:
-- Uncover trends and patterns in sales performance (YoY, MoM)
-- Identify top-performing regions, categories, and customers
-- Analyze cross-selling opportunities and customer lifetime value
-- Understand channel performance (online vs. offline) (pending channel data availability)
-- Evaluate profitability drivers (shipping costs, product margins) to recommend actionable strategies

## Business Questions to Answer
1. Sales Trends
-- How has total sales volume changed over time?
-- Are there specific months with significant growth or decline?
SQL: total_sales_over_time.sql, month_sales.sql

2. Regional & Market Analysis
-- Which markets and regions are contributing most to sales and profitability?
-- Are there consistently underperforming markets?
SQL: market_analysis.sql

3. Product Category Performance
-- Which product categories generate the highest sales and profits?
-- How do shipping costs impact category profitability?
SQL: profitability.sql

4. Customer Analysis & Growth Opportunities
-- Who are our most valuable and loyal customers?
-- Are there dormant or high-potential customers to target?
SQL: customer_lifetime_value.sql

5. Cross-Selling Opportunities
-- Which products are frequently purchased together?
-- How can we create bundled offers for better sales?
SQL: product_analysis.sql

6. Operational Efficiency
-- Does shipping mode or order priority affect delivery speed?
-- How can we optimize shipping for better customer satisfaction and efficiency?
SQL: delivery_impact.sql

## Approach
1. Data Acquisition & Cleaning:
Import and clean publicly available retail sales data using Python. Prepare MySQL database for analysis.

2. Exploratory Data Analysis (EDA):
Use advanced SQL techniques (CTEs, window functions, self-joins) to explore the data and answer complex business questions.

3. Dashboard Development:
Visualize findings in Power BI for executive-level consumption, with interactive filters and dynamic visual storytelling.

4. Insights & Recommendations:
Document actionable insights and data-driven recommendations to support business strategies.

## Expected Impact
-- Enhanced decision-making through deep, data-driven insights.
-- Identification of high-potential markets, categories, and customer segments
-- Improved operational strategies (shipping efficiency, customer targeting)
-- Data-driven recommendations to improve profitability and accelerate growth