create database lab1;
use lab1;
create table employee(
eid int primary key,
name varchar(40) not null,
salary int,
age int check(age between 18 and 60),
bg varchar(20) default "o+ve",
email varchar(40) unique
);
insert into employee values(1,"ravi",36000,48,"o+ve","ravi@gmail.com");
insert into employee values(2,"suresh",38000,56,"o+ve",null);
select * from employee;
