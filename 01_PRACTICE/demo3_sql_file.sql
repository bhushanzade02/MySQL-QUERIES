create database xyz_company;
drop table employee;

create table employee(
id  int primary key,
name varchar(50),
salary int ); 


insert into employee
(id,name ,salary)
values
(11,"bhus",30000),
(12,"siddhi",30000);


select * from employee;

drop database college;


CREATE DATABASE college;
USE college;
CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);




INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(101,"anil",78,"c","pune"),
(102,"bhumika",93,"a","mumbai"),
(103,"cheten",85,"b","mumbai"),
(104,"dhruv",96,"a","delhi"),
(105,"emanual",12,"b","delhi"),
(106,"farah",82,"b","delhi");


select * from student;

select name,marks from student;
SELECT rollno,name from student;

select distinct city from student;
select rollno,name,city,grade from student where grade="a";

select distinct city,name,rollno from student where marks >75 ;
select * from student where marks >80 and city="delhi";


select * from student where marks+20 >70;

select * from student where marks >90 and city ="delhi";
select * from student where marks >90 or city="delhi";
select * from student where marks between 70 and 90;

select * from student where city in ("delhi","pune");


select * from student where city not in ("delhi","pune");

select * from student ;

select * from student limit 4;

select * from student where city="delhi" limit 1 ;


select * from student order by name asc;
select * from student order by grade asc;

select * from student order by marks desc limit 3;
select marks from student;

select min(marks) from student;

select max(marks) from student;

select avg(marks) from student ;

select count(rollno) from student;

select count(name) from student;

select city , count(rollno) from student group by  city;

select city,name from student group by city,name;

select city,count(city) from student group by city;

select city , avg(marks) from student group by city;
select city , max(marks) from student group by city ;


select city,avg(marks) from student group by city order by city asc;


select city,avg(marks) from student group by city order by avg(marks) desc;




create database payment;
use payment;

create table customer(
cust_id int primary key,
name varchar(50),
mode varchar(50),
city varchar(25));


select * from customer;


insert into customer 
(cust_id,name,mode,city)
values
(101,"olivia barett","netbanking","portland"),
(102,"ethan slicair","credit card","miami"),
(103,"maya","credit card","seattle"),
(104,"liam","netbanking","denver"),
(105,"sophia","credit card","new orleans"),
(106,"caleb","debit card","minnea polis"),
(107,"ava patel","debit card","phoneix"),
(108,"lucas carter","netbanking","boston"),
(109,"isabella","netbanking","nashville"),
(110,"jackson","credit card","boston");


select * from customer;

select count(name) from customer;
select mode, count(mode), count(name) from customer group by mode;

select distinct city from student;



use college;
select grade , count(rollno) from student group by grade order by grade asc; 