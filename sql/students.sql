CREATE DATABASE Samit;
use Samit;
CREATE TABLE Students(
Roll_no INT UNIQUE,
Name VARCHAR(50),
Age int);

SELECT * FROM Students;

INSERT INTO Students
VALUES(1,'Gita',25);

INSERT INTO Students(Name,Age)
VALUES('Sita',25);
