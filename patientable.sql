create database patient;
use patient;
CREATE TABLE patient (
    pid INT,
    fname VARCHAR(50),
    lname VARCHAR(50),
    age INT,
    bg VARCHAR(10)
);
INSERT INTO patient (pid, fname, lname, age, bg) VALUES
(1, 'madhava', 'reddy', 45, 'o+ve'),
(2, 'abhinav', 'bandra', 45, 'o-ve'),
(4, 'hari', 'kiran', 60, 'b-ve'),
(3, 'madhava', 'kiran', 52, 'o+ve'),
(5, 'veena', 'kumari', 42, NULL),
(6, 'k_iran', 'kumar', 39, 'b-ve'),
(2, 'abhinav', 'bandra', 45, 'o-ve'),
(7, 'mahes%h', 'nambootri', 36, 'b+ve'),
(8, 'rahul', 'kumar', 46, 'b-ve'),
(9, 'bharat', 'kumar', 56, 'b-ve');
select * from patient order by lname desc;
select concat(lname,fname) as 'fullname',pid from patient;
select * from patient order by fname;
select * from patient limit 3,6;
select distinct age from patient;
select bg, count(*) as 'count' from patient group by bg;
select max(age) as 'max age' , bg from patient group by bg;
select lname,MIN(age) from patient group by bg,lname;
select bg,MAX(age) as 'max age' from patient group by bg having MAX(age)>40;
select p1 .*from patient p1 where 3=(select count(distinct(p2.pid)) from patient p2 where p2.age>p1.age);
select fname from patient where age = (select MIN(age) from patient);
select count(age) as 'tot rows' ,max(age) as 'max age' from patient where age>45;
select bg, count(*) as 'count' from patient group by bg;
SELECT bg, MAX(age) AS 'max age' FROM patient GROUP BY bg HAVING MAX(age) > 40;