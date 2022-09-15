-- UNIQUE CONSTRAINS

 CREATE TABLE unique_table(
 custid INT UNIQUE,
 custname VARCHAR(100),
 gender CHAR(1),
 city VARCHAR(100)
 );


insert into unique_table VALUES(1000,'Ranjitha','F','Pune'),(1001,'Sangeetha','F','Mumbai'),
(1002,'Venkatesan','M','Hyderabad'),(1003,'Raja','M','Bangalore'),(1004,'Aveek','M','Delhi');

INSERT INTO unique_table VALUES(1005,'Malar','F','Ahmadabad');

SELECT * FROM unique_table;
INSERT INTO unique_table(custname,gender,city) VALUES('Vel','M','Chennai');
INSERT INTO unique_table(custname,gender,city) VALUES('Dhivya','F','Chennai');
INSERT INTO unique_table(custname,gender,city) VALUES('piu','F','wb');
UPDATE unique_table SET custid = 1006 WHERE city='wb';
UPDATE unique_table SET custid = 1007 WHERE custname='vel';

-- NOT NULL CONSTRAINS

 CREATE TABLE notnull_table(
 custid INT NOT NULL,
 custname VARCHAR(100),
 gender CHAR(1),
 city VARCHAR(100)
 );
 
 INSERT INTO notnull_table VALUES(1000,'Ranjitha','F','Pune'),(1001,'Sangeetha','F','Mumbai'),
(1002,'Venkatesan','M','Hyderabad'),(1003,'Raja','M','Bangalore'),(1004,'Aveek','M','Delhi');

SELECT * FROM notnull_table;
INSERT INTO notnull_table(custid,custname,gender,city) VALUES(1000,'Vel','M','Chennai');

-- PRIMARY KER CONSTRAINS

 CREATE TABLE primarykey_table(
 custid INT PRIMARY KEY,                     -- primary key = unique + not null
 custname VARCHAR(100),
 gender CHAR(1),
 city VARCHAR(100)
 );
 
  INSERT INTO primarykey_table VALUES(1000,'Ranjitha','F','Pune'),(1001,'Sangeetha','F','Mumbai'),
(1002,'Venkatesan','M','Hyderabad'),(1003,'Raja','M','Bangalore'),(1004,'Aveek','M','Delhi');

SELECT * FROM primarykey_table;
 
 INSERT INTO primarykey_table VALUES(1000,'Sankavi','F','Bangalore');
 INSERT INTO primarykey_table(custid,custname,gender,city) VALUES(1005,'Sankavi','F','Bangalore');
 