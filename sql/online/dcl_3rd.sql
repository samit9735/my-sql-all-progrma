select * from employees where salary=3000;

#and,or,not used
select * from employees where First_name='piu' and salary=2000;
select * from employees where First_name='samit' or last_name='ghosh';

#operator(<,>,!)
select * from employees where salary>3000;
select * from employees where salary<3000;

select * from employees where first_name!='piu';

#spacial operators(between,like,is null,in,distinct)
select * from employees where salary between 3000 and 5000;
select * from employees where last_name like 'n%';

select * from employees where salary in(1000,3000,5000);
select distinct(first_name) from employees;

#aggreation(avg,count,max,min,sum)
select  max(salary) from employees;
select  avg(salary) from employees;
select  sum(salary) from employees;
select  count(salary) from employees;
select  min(salary) from employees; 

#group by
alter table employees add column dept varchar(20); 

#add values
update employees set dept='sales' where emp_id=1;
update employees set dept='tech' where emp_id=2;
update employees set dept='sales' where emp_id=3;
update employees set dept='marketing' where emp_id=4;
update employees set dept='content' where emp_id=5;
update employees set dept='tech' where emp_id=6;

#hightes salary
select first_name,max(salary),dept from employees group by dept;

#having clause
select first_name,max(salary),dept from employees group by dept having count(dept)>=2;
select avg(salary),dept from employees group by dept having count(dept)>=2;

#order by
select * from employees order by salary desc;



