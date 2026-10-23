# Retail Customer Segmentation & RFM Analysis

## Project Overview
This project focuses on analyzing retail customer behavior, identifying valuable customers, and understanding customer churn. I worked with two retail datasets, used SQL for data preparation, Python for RFM analysis, and Power BI to build an interactive dashboard.

## Tools & Technologies
- **SQL (MySQL):** Data cleaning, combining tables, and handling duplicates and missing values.
- **Python:** Data extraction, RFM analysis, customer segmentation, and churn identification.
- **Pandas:** Data manipulation and analysis.
- **Power BI:** Interactive dashboard and business insights.
- **Excel:** Exporting the final dataset.

## Project Workflow

### 1. Data Preparation Using SQL
- Assumed the role of a data analyst receiving raw customer data from a client.
- Received two datasets containing approximately 530,000 and 540,000 rows.
- Loaded both datasets into MySQL and combined them using a `UNION`, aligning the columns and converting data types where required, such as dates and prices.
- Checked missing values and found approximately 24,000 null values in `Customer ID` and 4,000 in `Description`.
- Checked for duplicate records and removed duplicates to improve data quality.

### 2. RFM Analysis Using Python
- Connected Python to MySQL and loaded the prepared data into a DataFrame named `retail`.
- Calculated three RFM metrics:
  - **Recency:** How recently a customer made a purchase.
  - **Frequency:** How often a customer made purchases.
  - **Monetary:** How much a customer spent.
- Assigned scores to each metric and created `R_Score`, `F_Score`, and `M_Score` columns.
- Segmented customers into **Champions, Loyal, At Risk, Need Attention, and Lost** based on the business requirements document.
- Identified churned customers and added a Boolean column to indicate churn status.

### 3. Final Dataset Preparation
- Followed the business requirements document to prepare the final dataset for the client.
- Handled remaining missing values in the final output.
- Exported the cleaned and enriched dataset as `retailfinal.xlsx` for Power BI reporting.

### 4. Power BI Dashboard
Built an interactive dashboard with three pages:

**Home Page**
- Created a landing page with navigation buttons to access the dashboard pages.

**Business Overview**
- Displayed key performance indicators (KPIs), slicers, and bar charts.
- Analyzed revenue and customer distribution across different customer segments.
- Compared customer behavior and revenue contribution by segment.
- Examined customer and revenue trends across quarters.

**RFM Analysis**
- Analyzed average customer value and churn percentage by country and customer segment.
- Used slicers to explore customer performance and identify important patterns.

**Dashboard Navigation**
- Added page navigation buttons, a Back button, and a Clear All Slicers button for easier interaction.

## Key Findings
- The **Loyal** segment has the highest number of customers, while **Champions** contribute the most revenue.
- Customer numbers and revenue are lower in Q1 and Q2 but increase in Q3 and Q4.
- Customer churn is highest in 2010, with Q1 and Q2 showing more churn than Q3 and Q4.
- Champions have the highest average customer value, making them an important segment for revenue growth.
- The **United States** has the highest customer count, total revenue, and purchase frequency.
- **France** has the highest Recency, Frequency, and Monetary metrics among the countries analyzed.

## Conclusion
This project demonstrates how SQL, Python, and Power BI can be used together to transform raw retail data into meaningful business insights. The dashboard helps identify valuable customer segments, understand purchasing patterns, monitor churn, and compare country-level performance.

Although the dashboard offers many ways to explore the data, these findings highlight some of the key insights that can support better customer retention strategies and data-driven business decisions.
