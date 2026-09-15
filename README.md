# Olist SQL Analysis

## Overview

This project analyzes the **Brazilian E-Commerce Public Dataset by Olist** using MySQL. The dataset contains information about customers, orders, products, payments, reviews, sellers, and geographic locations.

The goal of this analysis is to understand revenue trends, product and category performance, customer spending behavior, and customer retention. SQL queries were used to identify patterns and generate business insights that can support data-driven decisions.

## Business Questions

1. Who are the Top 10 customers by total amount spent?
2. What is the monthly revenue trend across the dataset?
3. What is the month-over-month change in revenue?
4. Which product categories generate the most revenue?
5. What are the Top 3 products within each category by revenue?
6. How can customers be segmented based on their total spending?
7. How many customers are repeat buyers versus one-time buyers?
8. What percentage of total revenue comes from the top revenue-generating category?

## Key Findings

- Monthly revenue generally increased from 2017 to 2018, with the highest monthly revenue reaching **$1.19M in November 2017**.
- Revenue increased by **53.25% month-over-month in November 2017**, followed by a **26.49% decline in December**, showing the impact of seasonal or promotional demand.
- **Health & Beauty** was the highest revenue-generating category, contributing **$1.26M or 9.26%** of total revenue.
- The **top 6 categories contributed 45.11%** of total revenue, showing that revenue is distributed across several strong-performing categories rather than being dominated by a single category.
- Several individual products generated significant revenue within their categories, showing that specific high-performing products are important drivers of category performance.
- **Medium-spending customers** contributed the largest share of customer spending at **$9.17M or 57.26%**.
- Only **3.12% of customers were repeat buyers**, while **96.88% were one-time buyers**, indicating a potential customer retention issue.

## Recommendations

### 1. Convert One-Time Buyers into Repeat Customers

Launch a 30-day post-purchase email or voucher campaign for one-time buyers, offering a small discount on their next purchase. Medium-spending customers should be prioritized because they contributed **$9.17M or 57.26%** of total customer spending.

### 2. Prepare for Peak-Season Demand

Increase inventory and promotional activities starting in October for high-revenue categories such as Health & Beauty, Watches & Gifts, and Bed, Bath & Table. Since November generated the highest monthly revenue at **$1.19M**, maintaining sufficient stock and promotions through December could help sustain peak-season sales.

## Tools & Skills

- **MySQL**
- SQL
- Data Analysis
- Data Exploration
- JOINs
- GROUP BY
- Aggregate Functions
- Common Table Expressions (CTEs)
- CASE WHEN
- Window Functions
- LAG()
- ROW_NUMBER()
- Customer Segmentation
- Data Interpretation
- Business Insights

## Files

| File | Description |
|---|---|
| `q1_top_customers.sql` | Top 10 customers by total amount spent |
| `q2_monthly_revenue_trend.sql` | Monthly revenue trend |
| `q3_month_over_month_revenue.sql` | Month-over-month revenue changes |
| `q4_top_revenue_categories.sql` | Top revenue-generating product categories |
| `q5_top_3_products_by_category.sql` | Top 3 products by revenue within each category |
| `q6_customer_spend_tiers.sql` | Customer segmentation by spending tier |
| `q7_repeat_vs_one_time_buyers.sql` | Repeat buyers versus one-time buyers |
| `q8_top_category_revenue_percentage.sql` | Revenue percentage of the top category |
