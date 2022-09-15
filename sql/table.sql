CREATE TABLE Employee(
Emp_ID INT,
Emp_Name VARCHAR(50),
Age int
);

SELECT * FROM Employee;
SELECT Age,Emp_Name FROM Employee;

INSERT INTO Employee
VALUES(1,'Samit',25);

INSERT INTO Employee(Emp_Name,Emp_ID,Age)
VALUES('KEDAR',2,22);


SELECT Age,Emp_Name from Employee;
INSERT INTO Employee(Emp_Name,Emp_ID,Age)
VALUES('Samit',2,22);

INSERT INTO Employee
VALUES(2,'Samit',22),(4,'Nandi',25);

DROP TABLE Employee;

INSERT INTO Employee(Emp_id,Age)
VALUE(10,21);