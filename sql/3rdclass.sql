SELECT MAX(quantityOrdered) AS Max_Qty from Orderdetails;

select MIN(quantityOrdered) AS Min_Qty from Orderdetail;

select SUM(quantityOrdered) AS Total_Qty from Orderdetail;

select AVG(quantityOrdered) AS Avg_Qty from Orderdetail;

select * from Orderdetails order by quantityOrdered desc;
