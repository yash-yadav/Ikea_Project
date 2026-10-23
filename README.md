# Retail Customer Analytics & RFM Analysis

## Project Overview

This project focuses on analyzing retail customer behavior, revenue, and churn using SQL, Python, and Power BI.

The project starts with two raw datasets provided as client data. After cleaning and combining the data, I performed RFM analysis to segment customers based on their purchasing behavior. Finally, I built an interactive Power BI dashboard to help the business understand customer value, revenue trends, and churn patterns.

## Tools & Technologies

- **SQL:** Data cleaning, data type conversion, combining tables, and duplicate removal.
- **Python:** Data analysis, RFM analysis, customer segmentation, and churn identification.
- **Libraries:** Pandas and MySQL Connector.
- **Power BI:** Interactive dashboard, KPIs, charts, slicers, and navigation.
- **Excel:** Exporting the final dataset for Power BI.

## Project Workflow

### 1. Data Preparation Using SQL

- Received two raw datasets containing approximately 530,000 and 540,000 rows.
- Loaded the datasets into SQL and combined them using a `UNION` operation based on the common customer data structure.
- Corrected data types for columns such as dates and prices.
- Checked missing values and found approximately 24,000 null values in `Customer ID` and 4,000 in `Description`.
- Checked for duplicate records and removed duplicates.

### 2. Data Analysis Using Python

- Connected Python to MySQL and loaded the cleaned data into a DataFrame named `retail`.
- Performed RFM analysis using three metrics:
  - **Recency:** How recently a customer made a purchase.
  - **Frequency:** How often a customer made purchases.
  - **Monetary:** How much a customer spent.
- Assigned scores to each metric and created `R_Score`, `F_Score`, and `M_Score` columns.
- Segmented customers into Champions, Loyal, At Risk, Need Attention, and Lost based on the business requirements document (BRD).
- Identified churned customers and added a Boolean churn column.
- Prepared the final dataset according to the BRD, handled remaining null values, and exported it as `retailfinal.xlsx`.

### 3. Power BI Dashboard

Loaded `retailfinal.xlsx` into Power BI and created a three-page interactive dashboard.

**Page 1: Home**
- Designed a home page for the dashboard.
- Added navigation buttons to move between pages.

**Page 2: Business Overview**
- Added key business KPIs using cards.
- Included slicers and bar charts for interactive analysis.
- Analyzed revenue and customer distribution across different segments.
- Explored how customer behavior and revenue contribution vary by segment.

**Page 3: RFM Analysis**
- Analyzed average customer value and churn percentage by country and customer segment.
- Added slicers to explore different customer groups and countries.
- Included back navigation, page navigation, and a clear-all-slicers button for easier dashboard use.

## Findings

The dashboard provides several insights into customer behavior, revenue trends, customer segmentation, and churn. Although many insights can be explored using the available filters and visuals, some of the main findings are highlighted below:

- The **Loyal** segment has the highest number of customers, while the **Champions** segment generates the highest revenue.
- Champions also have the highest average customer value.
- Customer count and revenue are lower in Q1 and Q2 but increase in Q3 and Q4.
- The highest number of churned customers was observed in 2010, with more churn in Q1 and Q2 than in Q3 and Q4.
- The **United States** has the highest customer count, total revenue, and purchase frequency.
- **France** has the highest average Recency, Frequency, and Monetary values among the countries analyzed.

## Conclusion

This project demonstrates how SQL, Python, and Power BI can be used together to transform raw retail data into useful business insights. RFM analysis helps identify valuable customers, understand purchasing behavior, and recognize customers at risk of churn.

The dashboard provides many opportunities for further analysis. The findings highlighted above are some of the key insights that can help the business understand customer value, monitor revenue trends, and make more informed decisions about customer retention.
