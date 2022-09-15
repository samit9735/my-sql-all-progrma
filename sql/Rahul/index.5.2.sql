-- STRING FUNTIONS:

SELECT transid, custid, UPPER(productname) , amount from transaction_tbl;
SELECT transid, custid, productname , amount from transaction_tbl;
SELECT transid, custid, LOWER(productname) , amount from transaction_tbl;

SELECT transid, custid, concat(upper(productname),'_',amount) as prod_info FROM transaction_tbl;
SELECT transid, custid, productname,length(productname) as no_of_character,amount as prod_info FROM transaction_tbl;
SELECT transid, custid, replace(productname,'o','-') , amount from transaction_tbl;
SELECT transid, custid, replace(productname,'Toys','GAME') , amount from transaction_tbl;

SELECT transid, custid, substr(upper(productname),1,3) as pdct, amount from transaction_tbl;


#new

SELECT productname, amount FROM transaction_tbl WHERE amount>5000; -- <predictor push down approach>
																	-- <projective push down>
SELECT * FROM transaction_tbl;

SELECT count(2) FROM transaction_tbl;
SELECT productname,amount FROM transaction_tbl WHERE amount = (SELECT min(amount) FROM transaction_tbl);
SELECT productname,amount FROM transaction_tbl WHERE amount = (SELECT max(amount) FROM transaction_tbl);
UPDATE  transaction_tbl SET amount=500 WHERE transid=4;
SELECT sum(amount) FROM transaction_tbl;
SELECT avg(amount) FROM transaction_tbl;


SELECT amount, round(sqrt(amount),1) FROM transaction_tbl;
SELECT round(55.651432245,2) FROM DUAL;

CREATE TABLE CUSTOMER_TBL (
 CUSTID INT,
 custname varchar(100),
 city VARCHAR(100),
 REGISTERED_DATE datetime
 );
 
  
 INSERT INTO CUSTOMER_TBL VALUES(1000,'Raghul Ramesh','Chennai','2020-01-01 10:00:30');
INSERT INTO CUSTOMER_TBL VALUES(1001,'Ashwin Sekar','Bangalore','2021-01-31 10:10:30');
INSERT INTO CUSTOMER_TBL VALUES(1002,'Aveek Mishra','Pune','2022-01-31 10:20:30');
INSERT INTO CUSTOMER_TBL VALUES(1003,'Pankaj kumar','Delhi','2020-05-01 11:30:30');
INSERT INTO CUSTOMER_TBL VALUES(1004,'Jitendra kumar','Hyderabad','2020-05-01 12:30:30');

SELECT * FROM CUSTOMER_TBL;
SELECT * FROM CUSTOMER_TBL WHERE date(registered_date)='2020-01-01';
SELECT * FROM CUSTOMER_TBL WHERE month(registered_date)='05';
SELECT * FROM CUSTOMER_TBL WHERE day(registered_date)='31';
SELECT * FROM CUSTOMER_TBL WHERE time(registered_date)='10:00:30';
SELECT custname, registered_date, NEXT_DAY(registered_date) AS Next_Day FROM CUSTOMER_TBL;
--
SELECT custname, registered_date, NEXT_DAY(registered_date,'FRIDAY')  Next_Day FROM CUSTOMER_TBL;
SELECT custname, registered_date, LAST_DAY(registered_date)  FROM CUSTOMER_TBL;

SELECT custname, registered_date, EXTRACT(YEAR FROM registered_date)  year,
EXTRACT(MONTH FROM registered_date)  month,
EXTRACT(DAY FROM registered_date)  day FROM CUSTOMER_TBL;
--

SELECT current_timestamp() FROM dual;

SELECT custname, substr(custname,1,6) as first_name FROM CUSTOMER_TBL WHERE custid=1000;
SELECT  string_split(custname)  FROM CUSTOMER_TBL WHERE custid=1000;