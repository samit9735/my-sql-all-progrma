SELECT orderNumber, SUM(quantityOrdered) AS Total_Qty
FROM Orderdetails
GROUP BY orderNumber
ORDER BY Total_Qty DESC
LIMIT 5;

SELECT orderNumber, MAX(quantityOrdered) AS Max_Qty
FROM Orderdetails
GROUP BY orderNumber
ORDER BY Max_Qty DESC
LIMIT 1;

SELECT orderNumber, MAX(quantityOrdered) AS Max_Qty
FROM Orderdetails
where orderNumber=10100
group by orderNumber;


SELECT orderNumber, MAX(quantityOrdered) AS Max_Qty
FROM Orderdetails
GROUP BY orderNumber
ORDER BY Max_Qty DESC
LIMIT 1,1;

SELECT orderNumber, MAX(quantityOrdered) AS Max_Qty
FROM Orderdetails
GROUP BY orderNumber
ORDER BY Max_Qty DESC
LIMIT 99,1;

SELECT orderNumber, MAX(quantityOrdered) AS Max_Qty
FROM Orderdetails
GROUP BY orderNumber
ORDER BY Max_Qty DESC
LIMIT 3,2;

SELECT orderNumber, MAX(quantityOrdered) AS Max_Qty
FROM Orderdetails
GROUP BY orderNumber
HAVING Max_Qty between 50 AND 60;


select customerName,country FROM Customers WHERE country LIKE 'F%';
select customerName,country FROM Customers WHERE country LIKE '%s';
select customerName,country FROM Customers WHERE country LIKE 'a%a';

select customerName,country FROM Customers WHERE country LIKE '%k%';

select customerName,country FROM Customers WHERE country NOT LIKE 'F%';
select customerName,country FROM Customers WHERE country LIKE 'F%';



SELECT * FROM Customers,
c.customerNumber,
c.customerName,
SUM(od.quantityOrdered) as total_Qty

from 
Customers c

INNER JOIN Orders o
ON c.CustomersNumber=o.CustomersNumber

INNER JOIN Orders od
ON o.CustomersNumber=od.CustomersNumber

group by c.customerNumber
ORDER BY Total_Qty DESC;




