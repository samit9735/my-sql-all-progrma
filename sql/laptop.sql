create table Laptop(
Name varchar(50)
);
create table colour(
colour_Name varchar(50)
); 

insert into laptop
values('Dell'),('HP'),('Asus');

insert into colour
values('Black'),('Grey'),('White'),('Blue');

select * from colour cross join laptop;

select * from laptop cross join colour;