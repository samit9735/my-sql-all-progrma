create database bank;
use bank;

create table bank_details(
product char(10),
quantity int,
price real,
purchase_cost decimal(6,2),
estimated_sal_price float
);

describe bank_details;

#new
select * from bank_details;
insert into bank_details values('paycard',3,330,8008,9009);
insert into bank_details values('paypoint',4,200,8000,6800);
#add
alter table bank_details add column geo_location varchar(20);

select geo_location from bank_details where product ='paycard';

select char_length(product) from bank_details where product='paycard';

alter table bank_details modify product varchar(10);

