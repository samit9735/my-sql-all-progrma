
-- JOINS 

-- INNER JOIN
-- OUTER JOIN
-- 	   LEFT OUTER JOIN
--     RIGHT OUTER JOIN
--     CROSS JOIN
-- SELF JOIN

 -- INNER JOIN
 
 CREATE TABLE CUSTOMER (
 CUSTID INT,
 custname varchar(100),
 city VARCHAR(100)
 );
 
 INSERT INTO CUSTOMER VALUES(1000,'Raghul Ramesh','Chennai');
INSERT INTO CUSTOMER VALUES(1001,'Ashwin Sekar','Bangalore');
INSERT INTO CUSTOMER VALUES(1002,'Aveek Mishra','Pune');
INSERT INTO CUSTOMER VALUES(1003,'Pankaj kumar','Delhi');
INSERT INTO CUSTOMER VALUES(1004,'Jitendra kumar','Hyderabad');

SELECT * FROM CUSTOMER;

CREATE TABLE transaction_tbl(
transid INT,
custid int,
productname varchar(100),
amount int
);

INSERT INTO TRANSACTION_TBL VALUES(1,1000,'Laptop',5000);
INSERT INTO TRANSACTION_TBL VALUES(2,1002,'Mobile',20000);
INSERT INTO TRANSACTION_TBL VALUES(3,1001,'Toys',2000);
INSERT INTO TRANSACTION_TBL VALUES(4,1001,'Chocolates',500);
INSERT INTO TRANSACTION_TBL VALUES(5,1003,'Books',1200);
INSERT INTO TRANSACTION_TBL VALUES(6,1000,'TV',65000);
INSERT INTO TRANSACTION_TBL VALUES(7,1000,'Table',3000);
INSERT INTO TRANSACTION_TBL VALUES(8,1002,'Toys',10000);
INSERT INTO TRANSACTION_TBL VALUES(9,1002,'Dekstop',50000);
INSERT INTO TRANSACTION_TBL VALUES(10,1005,'Software',100000);

SELECT * FROM TRANSACTION_TBL;


SELECT * FROM customer c INNER JOIN transaction_tbl t ON c.custid=t.custid ;


-- LEFT JOIN

SELECT * FROM customer c LEFT  JOIN transaction_tbl t ON c.custid=t.custid;
SELECT custname FROM customer c LEFT  JOIN transaction_tbl t ON c.custid=t.custid WHERE transid is NULL;


-- RIGHT JOIN
SELECT * FROM customer c RIGHT  JOIN transaction_tbl t ON c.custid=t.custid;

SELECT custid, count(*) from transaction_tbl group by custid order by count(*) DESC LIMIT 2;

-- WINDOWING FUNTION ( row_number, rank, dense_rank)