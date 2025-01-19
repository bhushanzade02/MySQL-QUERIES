use college;
create table class( rollno int primary key, name varchar(50), marks int not null, grade varchar(1), city varchar(20) );


select * from class;

insert into class (rollno ,name , marks , grade ,city) values
 (101,'anil',78,'C','Pune'),
 (102,'bhumika',93,'A','MUmbai'),
 (103,'chetan',85,'B','Mumbai'),
 (104,'dhruv',96,'A','Delhi'),
 (105,'emanual',92,'F','Delhi'),
 (106,'farah',82,'B','Delhi');
 
 
 select * from class;
 
 select avg(marks) from class;


select name from class where  marks> 87.667 ;

select name, marks from class where marks > 87; 


select name, marks from student where marks >(select avg(marks) from student);


select * from class;
use college;
select * from class;

select rollno,name from class where rollno%2=0;
  select rollno , name from class where rollno in(102,104,106);
  
  
  select name,rollno
  from class 
  where rollno in (
  select rollno 
  from student 
  where rollno%2 =0);
  

  
  select * from class where max(marks);
  
  use college;
  
  
  
  select * from class  where city="Delhi";
  
  select max(marks) from (select * from class where city="Mumbai") as temp;
  
  select max(marks) from class where city ="Pune";
  
  
  sl