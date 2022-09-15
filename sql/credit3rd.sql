CREATE database Orderdetails;
SELECT customerNumber,customerName,country,state FROM Customers
where country ='USA'
order by state;

SELECT customerNumber,customerName,country,state FROM Customers
WHERE country='USA'
order by state DESC;

SELECT customerNumber,creditLimit FROM Customers order by creditLimit DESC;
