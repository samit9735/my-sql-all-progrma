use cust;
create table customer(
custid int,
custname varchar(20),
gender char(1),
age int,
city varchar(20)
);
describe customer;
SELECT * FROM CUSTOMER;

INSERT INTO CUSTOMER VALUES(1000,'Sachin','M',45,'Mumbai'),(1002,'Rajesh','M',28,'Bangalore'),(1003,'Jagam','M',32,'Hyderabad'),
(1004,'Satya','F',29,'Pune');

SELECT * FROM CUSTOMER;

-- UPDATE AND DELETE
-- UPDATE <TABLE_NAME> SET column_name = <new_value> , column2=<new_value> WHERE custid=1001
SET sql_safe_updates=0;
UPDATE CUSTOMER SET age=100 , city='Chennai';
UPDATE customer SET age=40,city='Jarkant' WHERE custid=1001;
UPDATE customer SET age=45,city='Mumbai' WHERE custid=1000;
UPDATE customer SET custname='Jagan',age=30,city='Hyderabad' WHERE custid=1003;
UPDATE customer SET age=39,city='Bangalore' WHERE custid=1004; 

update customer set age=50 where age=100;

UPDATE customer SET city='India' WHERE custid IN (1000,1001);

update customer set custname='Tony' Where custid=1008;

-- DELETE 
-- DELETE FROM TABLE WHERE CONDITION
SELECT * FROM CUSTOMER;

DELETE FROM CUSTOMER WHERE custid=1002;

DELETE FROM CUSTOMER WHERE age>=40 AND gender='M' and city='India';

-- ALTER STATEMENT 

DESC CUSTOMER;
SELECT * FROM CUSTOMER;

ALTER TABLE CUSTOMER
MODIFY COLUMN city varchar(50);

ALTER TABLE CUSTOMER
RENAME COLUMN city TO location;

ALTER TABLE CUSTOMER
DROP COLUMN gender;

alter table customer
add column gender char(1);

ALTER TABLE CUSTOMER
ADD COLUMN country VARCHAR(100);

UPDATE CUSTOMER SET COUNTRY = 'INDIA' WHERE custid=1004;

RENAME TABLE customer to employee;

SELECT * FROM employee;

RENAME TABLE employee to customer;