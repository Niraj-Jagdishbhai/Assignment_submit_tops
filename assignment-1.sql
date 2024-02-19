create database assingment ;
use assingment;
create table worker
(
worker_id int primary key auto_increment,
frist_name varchar(32),
last_name varchar(43),
salary int,
joining_date text,
department varchar(12)
); 

select * from  assingment.worker;

select * from assingment.worker order by frist_name asc , department desc;

select * from assingment.worker where frist_name in ('Vipul', 'Satish');

select * from assingment.worker where frist_name like '_____h';

SELECT frist_name, salary,department FROM worker WHERE salary BETWEEN 75000 and 90000 order by salary  ;

select salary ,count(salary) from assingment.worker group by  salary;

select * from assingment.worker limit 6;

select department, COUNT(department) as num_people from assingment.worker
group by department having count(department) < 5;

select department, count(department) as num_people
from assingment.worker group by department;

SELECT department, MAX(salary) AS max_salary from worker
GROUP BY department;


select * from student ;

SELECT StdName, DOB FROM student ;

SELECT * FROM student WHERE percentage >= 80;

SELECT StdName, Stream, Percentage from student WHERE Percentage > 80; 

SELECT * from student WHERE stream = "Science" AND percentage > 75; 


