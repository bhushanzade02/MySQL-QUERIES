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

insert into student 
(rollno,name)
values
(103,"sarthak"),
(104,"rahul");
select * from student;

create database company;
 
select* from company;


drop database company;

use college;
select * from student;


select city from student group by city;

select city ,count(rollno) from student group by city;

select city ,count(rollno) from student group by city having max(marks) >= 75;


select city ,avg(marks) from student group by city having avg(marks)>=80;


select grade , sum(marks) from student group by grade having sum(marks)>150; 
SELECT grade, SUM(marks) AS total_marks
FROM student
GROUP BY grade
HAVING SUM(marks) > 150;

SELECT city, AVG(marks) AS avg_marks
FROM student
GROUP BY city
HAVING AVG(marks) > 80;

select city,count(rollno) from student group by city having count(rollno)>2;



SELECT city, COUNT(*) AS student_count
FROM student
GROUP BY city
HAVING COUNT(*) > 2;

select grade,avg(marks) from student group  by grade having avg(marks)<80; 

SELECT grade, AVG(marks) AS avg_marks
FROM student
GROUP BY grade
HAVING AVG(marks) < 80;

select city,max(marks)from student group by city having max(marks)>90;


SELECT city, MAX(marks) AS max_marks
FROM student
GROUP BY city
HAVING MAX(marks) > 90;


select city,min(marks) from student group by city having min(marks)<20;

SELECT grade, MIN(marks) AS min_marks
FROM student
GROUP BY grade
HAVING MIN(marks) < 20;

select city, grade from student where grade="a" group by city having max(marks)>75 order by city desc; 

select * from student;


set sql_safe_updates =0;

update student set grade ="o"  where grade ="a";

select * from student;

update student set marks=72 where marks=12;
select * from student;

update student set marks =82 where rollno=105;

select * from student;

update student set grade="B" where marks >=80;
select * from student;

update student set grade ="o" where grade="a";

update student set grade="a" where marks between 90 and 99;

update student set marks=marks+1;


update student set marks=12 where rollno=105;
select * from student;

insert into student values(107,"bhushan",3,"c","nagpur");
select * from student;


delete from student where marks >30;
select * from student;
use college;

select * from student;

 set sql_safe_update=0;
 delete from student;
 
 create table dept(
 id int primary key,
 name varchar(50));
 
 create table teacher(
 id int primary key,
 name varchar(50),
 dept_id int,
 foreign key (dept_id) references dept(id)); 
 
 select * from teacher;