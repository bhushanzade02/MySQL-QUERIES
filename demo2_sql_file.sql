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


select rollno,marks from student;
select marks,city from student;
select *
 from student
where marks >80 and city = "Mumbai";

select * from student where grade = "b";





select * 
from student 
where city="pune" or marks>90;

select * from student where marks between 80 and 90;



SELECT *
FROM student
where city not in ("pune","mumbai","delhi");

select*from student;

select marks from student limit 3;
select * from student 
where marks >75
limit 3;

select * 
from student 
order by marks desc;


select * 
from student 
order by marks desc
limit 3;

select max(marks) from student;
select min(marks) from student;

use college;

create database college;
create database if not exists college;

DROP DATABASE COMAPANY;
DROP DATABASE IF EXISTS COMPANY;
SELECT * FROM student;

show databases;+
show tables;

drop table student;

create table student(
rollno int primary key ,
name varchar(50)
);

select * from student;


insert into student 
(rollno,name)
values 
(101,"bhushan"),
(102,"siddhi");
select * from student;
select * from student;