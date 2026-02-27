create database employee;
use employee;
CREATE TABLE employee (
    eid INT,
    fname VARCHAR(50),
    lname VARCHAR(50),
    age INT,
    salary INT NULL,
    dept VARCHAR(20),
    doj DATE
);
INSERT INTO employee (eid, fname, lname, age, salary, dept, doj) VALUES
(1, 'rajeev', 'sukla', 23, 12000, '.net', '2011-10-23'),
(2, 'sowmya', 'kumari', 23, 19000, 'db', '2010-11-13'),
(3, 'kishore', 'kumar', 27, 36000, 'android', '2011-10-16'),
(4, 'abimanyu', 'biswal', 22, NULL, 'android', '2010-02-20'),
(5, 'soni', 'kumar', 24, 21800, '.net', '2009-06-21'),
(6, 'anu', '_singh', 22, 12000, 'db', '2010-10-23'),
(7, '_dinesh', 'moh%anty', 23, 15000, '.net', '2009-08-26'),
(8, 'nishala', '_kumari', 22, 18000, 'db', '2008-07-19'),
(1,'rajeev', 'sukla', 23, 12000, '.net', '2011-10-23');
select * from employee;
select * from employee order by lname desc;
select * from employee where salary>20000;
select * from employee where salary between 15000 and 25000;
select * from employee where salary not between 15000 and 25000;
select * from employee where salary in(15000,21800,36000);
select * from employee where salary not in(15000,21800,36000);
select * from employee where salary is null;
select * from employee where salary is not null;
select * from employee where fname like 'a%';
select * from employee where fname like '%a'; 
select * from employee where fname like '_a%';
select * from employee where fname like '%a%'; 
select * from employee where lname like '%a_';
select * from employee where fname like '%a%' order by salary desc;
select dept from employee group by dept;
select count(*) as 'result' from employee; 
select count(*) as 'result' from employee where dept='.net';
