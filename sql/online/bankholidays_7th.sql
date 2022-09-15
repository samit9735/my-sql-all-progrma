create table bank_holidays(
holiday date,
start_time datetime,
end_time timestamp
);
describe bank_holidays;
select * from bank_holidays;

insert into bank_holidays values(
current_date(),
current_date(),
current_date()
);

update bank_holidays set holiday = date_add(holiday,interval 10 day);


