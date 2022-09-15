CREATE TABLE Deaprtment(
Dept_ID INT PRIMARY KEY,
Name VARCHAR(50),
Emp_ID INT,
FOREIGN KEY(Emp_ID)REFERENCES Employee(Emp_ID)
);
 INSERT INTO deaprtment
 values(101,'IT',3);
 
 INSERT INTO deaprtment
 values(102,'HR',5);