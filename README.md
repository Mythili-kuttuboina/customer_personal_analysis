📊 Customer Personal Analysis using MySQL

This project analyzes customer data using MySQL to uncover insights into customer behavior, spending habits, and demographics. The analysis helps businesses make data-driven decisions to improve marketing strategies, customer retention, and overall performance.

🎯 Objective
Understand customer purchasing behavior
Identify high-value customers
Analyze product-wise spending patterns
Segment customers for targeted marketing

📁 Dataset Description

The dataset includes the following key features:

Customer ID – Unique identifier for each customer
Demographics – Age, education, marital status, income
Customer Since – Enrollment date (Dt_Customer)
Spending Data – Amount spent on products (wine, fruits, meat, fish, sweets, gold)
Purchase Channels – Web, store, catalog purchases
Campaign Response – Marketing campaign acceptance
Other Metrics – Recency, complaints, web visits

⚙️ Project Workflow
🔸 1. Data Cleaning
Handled missing and null values
Converted data types (especially date fields)
Removed inconsistencies

🔸 2. Feature Engineering
Created new columns:
Customer_Age from Year_Birth
Total_Spending (sum of all product categories)
Customer_Tenure from Dt_Customer
Categorized customers based on income and spending

🔸 3. Data Analysis (SQL)

Used SQL queries to extract insights:

Aggregate functions: SUM(), AVG(), COUNT()
Filtering and grouping using WHERE, GROUP BY
Sorting using ORDER BY
![where](https://github.com/Mythili-kuttuboina/customer_personal_analysis/blob/main/where.png?raw=true)
![view](https://github.com/Mythili-kuttuboina/customer_personal_analysis/blob/main/view.png?raw=true)
![total_spending_customer](https://github.com/Mythili-kuttuboina/customer_personal_analysis/blob/main/total_spending_customer.png?raw=true)
![subquery](https://github.com/Mythili-kuttuboina/customer_personal_analysis/blob/main/subquery.png?raw=true)
![select_table](https://github.com/Mythili-kuttuboina/customer_personal_analysis/blob/main/select_table.png?raw=true)





🔸 4. Customer Segmentation

Customers were segmented into:

High-value customers
Medium-value customers
Low-value customers
📈 Key Insights
High-income customers contribute more to total revenue
Wine and meat products have the highest sales
Customers with frequent web visits are more likely to purchase
Marketing campaign success varies across customer segments
🛠️ Tools & Technologies
Database: MySQL
Language: SQL
Visualization (optional): Power BI / Excel
🚀 Outcome
Built a structured customer database
Generated actionable insights
Enabled better business decision-making
📌 Use Cases
Targeted marketing campaigns
Customer retention strategies
Product recommendations
Sales and performance analysis
⭐ Future Enhancements
Integration with visualization tools like Power BI
Predictive analysis using Machine Learning
Real-time customer analytics dashboard
