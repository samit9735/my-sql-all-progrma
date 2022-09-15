CREATE TABLE Employee(
Emp_ID INT primary key,
Name varchar(50),
company varchar(50)

);

INSERT INTO Employee
values(1,'B','infosys'),
      (2,'C','deloitte'),
      (3,'d','IBM'),
      (4,'e','tcs'),
      (5,'f','gogle')
      
DELETE FROM Employee where Emp_ID=4;