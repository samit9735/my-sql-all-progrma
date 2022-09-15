select COUNT(*) AS Total_Rows FROM Customers;  #122

select COUNT(*) AS Total_Rows FROM Customers WHERE state IS NULL; #73

select COUNT(*) AS Total_Rows FROM Customers WHERE state IS NOT NULL;

select state from Customers;
select distinct(state) from Customers;
select COUNT(distinct(state))-1 as unique_States from Customers; #17
