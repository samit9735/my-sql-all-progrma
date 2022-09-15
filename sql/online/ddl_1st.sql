CREATE table Employees(
Emp_id int not null,
First_name varchar(20),
last_name varchar(20),
salary int,
primary key(Emp_id)
);
insert into employee values(1,'samit','nandi',2000,10001);
select * from employees;

describe employees;

#------add column
alter table employees add column contact int;

#--rename column
alter table employees rename column contact to job_code;

#values delete
truncate table employees;

#table delete
drop table employees;