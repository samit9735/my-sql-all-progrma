create table Students(
Roll_No int primary key,
name varchar(50),
age int
);

start transaction;
insert into Students
values(1,'Deepak',23),(2,'Krishna',20);


update Students
set age=30
where Roll_No=2;

delete from students where Roll_No=2;
rollback;
