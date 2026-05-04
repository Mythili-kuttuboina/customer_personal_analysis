create database customer_personal_analysis;
use customer_personal_analysis;
#using where condition returns the data customers with income greater than 50000
select customer_id,Income from  customers where Income>50000;
#Returns the marital_status of the customer
select*from  customers where Marital_Status='Married'; 
#sort customers by income using descending order
select customer_id,Income from  customers order by Income desc;
#returns count of customers by education level
select Education,count(*)as total_customers from customers  group by Education;
#Average income by marital status
select Marital_Status,avg(Income)as avg_income from customers group by Marital_Status;
#using aggregrate functions returns the total money spent on wines
select sum(MntWines)as total_wine_spent from customers ;
#Average spending
select avg(MntMeatProducts)as avg_meat_spent from customers ;
#using subquery customers spending more than average wine spending
select customer_id,MntWines from customers where MntWines>(select avg(MntWines) from  customers);
#create a view to returns the customer spending
create view customers_spending as select customer_id,Income,(MntWines+MntFruits+MntMeatProducts+MntFishProducts+MntSweetProducts+MntGoldProds)as total_spending from customers ;
select*from customers_spending;
#create a index
create index idx_income on  customers (Income);
#total spending per customer
SELECT customer_id,(MntWines + MntFruits + MntMeatProducts +MntFishProducts + MntSweetProducts +MntGoldProds) AS total_spending FROM   customers;
#Top 10 Highest spending customers
SELECT customer_id,(MntWines + MntFruits + MntMeatProducts +MntFishProducts + MntSweetProducts +MntGoldProds) AS total_spending FROM  customers ORDER BY total_spending DESC LIMIT 10;
#most active web visitors
SELECT customer_id, NumWebVisitsMonth FROM   customers ORDER BY NumWebVisitsMonth DESC LIMIT 10;
#customer with kids
SELECT *FROM customers WHERE Kidhome > 0;
#Customer Segmentation
SELECT 
    customer_id,
    Income,
    (MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds) AS total_spending,
    CASE 
        WHEN (MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds) > 1500 THEN 'Platinum'
        WHEN (MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds) BETWEEN 500 AND 1500 THEN 'Gold'
        ELSE 'Silver'
    END AS customer_segment
FROM customers;

#Product Affinity (Basket Analysis)
SELECT 
    CASE WHEN MntWines > (SELECT AVG(MntWines) FROM customers) THEN 'High Wine Buyer' ELSE 'Low Wine Buyer' END AS wine_profile,
    AVG(MntMeatProducts) AS avg_meat_spend,
    COUNT(*) AS total_customers
FROM customers
GROUP BY 1;
#Percentiles
SELECT * FROM (
    SELECT 
        customer_id, 
        Income,
        PERCENT_RANK() OVER (ORDER BY Income DESC) as income_rank
    FROM customers
) as ranked_data
WHERE income_rank <= 0.10;
