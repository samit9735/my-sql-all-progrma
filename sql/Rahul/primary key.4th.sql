-- composite primary key 
 
 create table composite_primary_table(
 orderid INT,
 productId INT,
 custId INT,
 productname VARCHAR(100),
 amount DECIMAL(32,2),
 ordered_date DATE,
 PRIMARY KEY (orderId,ProductId)
 );
 
 INSERT INTO composite_primary_table VALUES(1,100,1000,'mobile',30000,current_date());
 SELECT * FROM composite_primary_table;
INSERT INTO composite_primary_table VALUES(1,101,1000,'Laptop',70000,current_date());
 INSERT INTO composite_primary_table VALUES(2,100,1000,'mobile',30000,current_date());
 INSERT INTO composite_primary_table VALUES(2,101,1000,'Laptop',70000,current_date());
 
 -- Foreign key

 create table foreignkey_table(
 orderid INT ,
 productId INT,
 custId INT,
 productname VARCHAR(100),
 amount DECIMAL(32,2),
 ordered_date DATE,
 PRIMARY KEY (orderId,ProductId),
 FOREIGN KEY (custId) REFERENCES primarykey_table(custid)
 );
 
 SELECT * FROM primarykey_table;
 
INSERT INTO foreignkey_table VALUES(1,100,1000,'mobile',30000,current_date());
 SELECT * FROM foreignkey_table;
INSERT INTO foreignkey_table VALUES(1,101,1001,'Laptop',70000,current_date());
 INSERT INTO foreignkey_table VALUES(2,100,1002,'mobile',30000,current_date());
 INSERT INTO foreignkey_table VALUES(2,101,1003,'Laptop',70000,current_date());
  INSERT INTO foreignkey_table VALUES(2,102,1003,'Tv',70000,current_date());
  
   -- DEFAULT 
  
CREATE TABLE default_table(
 custid INT UNIQUE,
 custname VARCHAR(100) NOT NULL,
 gender CHAR(1),
 city VARCHAR(100) DEFAULT 'Pune'
 );
 
INSERT INTO default_table VALUES(1000,'Anand','M','Mumbai');
 SELECT * FROM default_table;
INSERT INTO default_table(custid,custname,gender) VALUES(1001,'Anik','M');
INSERT INTO default_table(custid,custname,gender)  VALUES(1002,'Akanksha','F');
INSERT INTO default_table VALUES(1004,'Seema','F','');
 delete from default_table where custid=1005;    
 
 -- check 


CREATE TABLE check_table(
 custid INT UNIQUE,
 custname VARCHAR(100) NOT NULL,
 gender CHAR(1),
 age INT CHECK ( age > 0 and age <= 100),
 city VARCHAR(100) DEFAULT 'Pune',
 country VARCHAR(100) CHECK ( country IN ('India','China','Singapore'))
 );
 
 INSERT INTO check_table VALUES(1000,'Anjana','F',25,'Hyderabad','india');
 SELECT * FROM check_table;
  INSERT INTO check_table VALUES(1001,'Ankita','F',25,'','India');

-- Auto increment 

CREATE TABLE auto_increment_table(
 custid INT UNIQUE auto_increment,
 custname VARCHAR(100) NOT NULL,
 gender CHAR(1),
 city VARCHAR(100) DEFAULT 'Pune'
 );
 
 INSERT INTO auto_increment_table(custname,gender,city) VALUES('Dharanija','F','Bangalore');
 SELECT * FROM auto_increment_table;
  INSERT INTO auto_increment_table(custname,gender,city) VALUES('Himanshu','M','Pune');
  INSERT INTO auto_increment_table(custname,gender,city) VALUES('Indrani','F','Hyderabad');

DELETE FROM auto_increment_table WHERE custid=4;
  INSERT INTO auto_increment_table(custname,gender,city) VALUES('Jhinuk','M','Hyderabad');
   INSERT INTO auto_increment_table(custname,gender,city) VALUES('samit','M','wb');
   
   