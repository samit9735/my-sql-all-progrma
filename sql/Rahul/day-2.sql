use cust;
select * from Customer;
-- SELECT , UPDATE , DELETE , CONSTRAINS ( UNIUQ, NOT NULL, PRIMARY KEY, FOREIGN KEY, DEFAULT, CHECK)

SELECT  city,first_name, gender, age 
FROM customer;

SELECT * FROM customer WHERE city="hyderabad" and gender='M' and first_name='Siva';

select * from customer where age = 25 or gender='M';

select * from customer where age=30;


SELECT * FROM CUSTOMER WHERE (city='Hyderabad' and gender='F') or (city='Bangalore' and age > 20);

-- SELECT , UPDATE , DELETE , CONSTRAINS ( UNIUQ, NOT NULL, PRIMARY KEY, FOREIGN KEY, DEFAULT, CHECK)
SELECT * FROM CUSTOMER;
-- SELECT ,FROM ,WHERE ,GROUP BY ,HAVING ,ORDER BY
-- aggregation function : count, sum, min, max, avg
SELECT count(*) FROM customer WHERE age>25;
SELECT count(*) FROM customer WHERE gender='F';

CREATE TABLE report_table AS
SELECT city,sum(age) FROM customer GROUP BY city;
select mobile,sum(age) from customer group by mobile;
SELECT * FROM report_table;

SET SQL_SAFE_UPDATES = 0;

delete from customer where customer =1000;

