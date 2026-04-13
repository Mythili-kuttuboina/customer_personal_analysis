USE ecommerce;
select*from marketing;
#RENAME COLUMN NAME
alter table marketing rename column `ï»¿ID` to  customer_id; 
select*from marketing;
#using row number() to create the index of customer
select row_number()over()as customer,customer_id,Dt_Customer from marketing;
describe marketing;
select*from marketing;
#visualize the dataset
select*from marketing limit 10;
#using where condition returns the data customers with income greater than 50000
select customer_id,Income from marketing where Income>50000;
#Returns the marital_status of the customer
select*from marketing where Marital_Status='Married';
#sort customers by income using descending order
select customer_id,Income from marketing order by Income desc;
#returns count of customers by education level
select Education,count(*)as total_customers from marketing group by Education;
#Average income by marital status
select Marital_Status,avg(Income)as avg_income from marketing group by Marital_Status;
#using aggregrate functions returns the total money spent on wines
select sum(MntWines)as total_wine_spent from marketing;
#Average spending
select avg(MntMeatProducts)as avg_meat_spent from marketing;
#using subquery customers spending more than average wine spending
select customer_id,MntWines from marketing where MntWines>(select avg(MntWines) from marketing);
#create a view to returns the customer spending
create view customer_spending as select customer_id,Income,(MntWines+MntFruits+MntMeatProducts+MntFishProducts+MntSweetProducts+MntGoldProds)as total_spending from marketing;
select*from customer_spending;
#create a index
create index idx_income on marketing(Income);
#total spending per customer
SELECT customer_id,(MntWines + MntFruits + MntMeatProducts +MntFishProducts + MntSweetProducts +MntGoldProds) AS total_spending FROM marketing;
#Top 10 Highest spending customers
SELECT customer_id,(MntWines + MntFruits + MntMeatProducts +MntFishProducts + MntSweetProducts +MntGoldProds) AS total_spending FROM marketing ORDER BY total_spending DESC LIMIT 10;
#customers with kids
SELECT *FROM marketing WHERE Kidhome > 0;
#most active web visitors
SELECT customer_id, NumWebVisitsMonth FROM marketing ORDER BY NumWebVisitsMonth DESC LIMIT 10;

