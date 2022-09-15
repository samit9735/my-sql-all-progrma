insert into employees(Emp_id,first_name,last_name,salary) values (1,'samit','nandi',1000);
insert into employees(Emp_id,first_name,last_name,salary) values (2,'piu','ghosh',2000);
insert into employees(Emp_id,first_name,last_name,salary) values (3,'samit','nandi',3000);
insert into employees(Emp_id,first_name,last_name,salary) values (4,'ankush','nandi',4000);
insert into employees(Emp_id,first_name,last_name,salary) values (5,'piru','ghosh',5000);
insert into employees(Emp_id,first_name,last_name,salary) values (6,'gunadhar','nandi',6000);

#update
update employees set last_name='nandi'
where emp_id=2;

#delete employees id
delete from employees where emp_id in (2,5);