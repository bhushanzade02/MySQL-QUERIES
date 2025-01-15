create database college;
use college;
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

insert into student (id,name)
values
(101,"adam"),
(102,"bob"),
(103,"casey");

create table course(
id int primary key,
course varchar(50)
);


insert into course(id,course)
values
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer sci");

select * from course;
select * from student;


select * from student inner join course on student.id=course.id; 


select * 
from student as s
inner join course as c 
on s.id=c.id;


select * 
from student
left join course
on student.id=course.id
union
select * 
from student
right join course
on student.id=course.id;



select * from student left join course on student.id= course.id where course.id is null;
select * from student;


select * from student
right join course on student.id=course.id
where student.id is null;
select * from student left join course on student.id=course.id union select * from student right join course on student.id=course.id;
 
 
 
create table employee( id int primary key,
name varchar(50),
manager_id int);
 
select * from student;
 
insert into employee(id,name,manager_id) values
(101,"adsm",103),
(102,"bob",104),
(103,"casey",null),
(104,"donald",103);


select * from employee;


select * from employee as a join employee as b on a.id=b.manager_id;
select a.name ,b.name from employee as a join employee as b on a.id=b.manager_id;


 