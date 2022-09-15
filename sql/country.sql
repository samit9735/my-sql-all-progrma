create TABLE Customers
SELECT * FROM Customers WHERE country='USA';

SELECT customerNumber,coustomerName,country,state FROM Customers WHERE country='USA' OR state='NY';
SELECT customerNumber,customerName,country FROM Customers WHERE country='Australia' OR country='Canada';

SELECT customerNumber,customerName,country FROM Customers WHERE country <>'USA';

SELECT customerNumber,customerName,country FROM Customers
WHERE country IN('UK','France','Russia','Austria');

SELECT customerNumber,customerName,country FROM Customers
WHERE country NOT IN('UK','France','Russia','Austria');