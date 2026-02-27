create database day1;
use day1;
create table product(
pid int,
pname varchar(40),
cost int,
manufactur_name varchar(40),
man_date date);
insert into product values(1,"lux",34,"HUL","2017-12-12");
insert into product values (2,"locks",1200,"Godrej","2018-01-11");
select * from product;

