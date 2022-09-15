 -- DATABASE is a collections of table
-- table is to store the data

-- SQL -> Structures Query Language

-- MySQL is case insensitive

CREATE DATABASE cust;   
create database mydb;
DROP database mydb;
CREATE DATABASE IF NOT EXISTS new_database;
DROP DATABASE IF EXISTS mydb;
DROP DATABASE IF EXISTS new_database;

USE cust;

-- QUERY TYPES
-- DDL -> DATA DEFINITION LANGUAGE
-- 	CREATE , ALTER, DROP
-- DML -> DATA MANUPLUATION LANGUAGE
-- 	INSERT, UPDATE, DELETE
-- DCL  -> DATE CONTROL LANGUAGE
-- 	GRANT, REVOKE
-- TCL  -> TRANSACTION CONTROL LANGUAGE
-- 	COMMIT, ROLLBACK, SAVEPOINT
-- DQL -> DATA QUERY LANGUAGE
-- 	SELECT



-- CREATE TABLE  

DROP TABLE customer;
CREATE TABLE IF NOT EXISTS customer(
custid INT ,
first_name VARCHAR(100),
last_name VARCHAR(50),
gender CHAR(1),
age INT, 
city VARCHAR(50),
mobile VARCHAR(20)
);

DESC CUSTOMER;

SHOW CREATE TABLE CUSTOMER;

INSERT INTO customer VALUES(1000,'Raghul','Ramesh','M',37,'Chennai','9837383780');

INSERT INTO CUSTOMER VALUES(1001,'Karthick','Ram','M',25,'Bangalore','9876543210'),
(1002,'Siva','Krishnan','M',30,'Hyderabad','+91-9876789987');


INSERT INTO CUSTOMER VALUES(1003,'Priya','Rajesh','F',30,'Hyderabad','+91-9098767890');

INSERT INTO CUSTOMER(custid,first_name,last_name,gender,city,mobile)  VALUES(1004,'Ram','Prasath','M','Pune','9898989899');

SELECT * FROM CUSTOMER;


-- SELECT , UPDATE , DELETE , CONSTRAINS ( UNIUQ, NOT NULL, PRIMARY KEY, FOREIGN KEY, DEFAULT, CHECK)