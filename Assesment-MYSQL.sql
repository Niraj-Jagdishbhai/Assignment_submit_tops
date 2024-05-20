create database assessment;

use assessment;

create table WORKER (
WORKER_ID INT,
FIRST_NAME VARCHAR(52),
LAST_NAME VARCHAR(25),
SALARY INT,
JOINING_DATE TEXT,
DEPARTMENT VARCHAR(24) ) ;

SELECT * FROM WORKER ;

INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
(2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
(7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(8, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');

SELECT * FROM Worker ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

SELECT * FROM Worker WHERE FIRST_NAME IN ('Vipul', 'Satish');

SELECT * FROM Worker WHERE FIRST_NAME LIKE '_____h';

SELECT * FROM Worker WHERE SALARY > 1;

SELECT FIRST_NAME, LAST_NAME, COUNT(*) FROM Worker
GROUP BY FIRST_NAME, LAST_NAME HAVING COUNT(*) > 1;

SELECT * FROM Worker LIMIT 6;

SELECT DEPARTMENT FROM Worker GROUP BY DEPARTMENT
HAVING COUNT(*) < 5;

SELECT DEPARTMENT, COUNT(*) as NumPeople FROM Worker GROUP BY DEPARTMENT;

SELECT DEPARTMENT, FIRST_NAME, LAST_NAME, SALARY FROM Worker AS w1
WHERE SALARY = (SELECT MAX(SALARY) FROM Worker AS w2 WHERE w1.DEPARTMENT = w2.DEPARTMENT);

CREATE TABLE Students (
    StdID INT,
    StdName VARCHAR(100),
    Sex varchar(100),
    Percentage DECIMAL(5,2),
    Class INT,
    Sec varchar(100),
    Stream VARCHAR(50),
    DOB text
);

INSERT INTO Students (StdID, StdName, Sex, Percentage, Class, Sec, Stream, DOB)
VALUES (1001, 'Surekha Joshi',	'Female' ,	82,	12,	'A',	'Science'	,'3/8/1998'),
       (1002,	'MAAHI AGARWAL'	,'Female'	,56	,11,	'C'	, 'Commerce' ,	'11/23/2008'),
(1003,	'Sanam Verma' ,	'Male'	,59	,11,	'C',	'Commerce'	,'6/29/2006'),
(1004,	'Ronit Kumar',	'Male'	,63	,11	,'C'	,'Commerce'	,'11/5/1997'),
(1005,	'Dipesh Pulkit',	'Male'	,78	,11	,'B'	,'Science'	,'14/09/2003'),
(1006,	'JAHANVI Puri',	'Female'	,60	,11	,'B'	,'Commerce'	,'11/7/2008'),
(1007,	'Sanam Kumar',	'Male'	,23	,12	,'F'	,'Commerce'	,'3/8/1998'),
(1008,	'SAHIL SARAS',	'Male'	,56	,11	,'C'	,'Commerce'	,'11/7/2008'),
(1009,	'AKSHRA AGARWAL',	'Female'	,72	,12	,'B'	,'Commerce'	,'10/1/1996'),
(1010,	'STUTI MISHRA',	'Female'	,39	,11	,'F'	,'Science'	,'11/23/2008');
      
select * from students;

SELECT StdName, DOB FROM students ;

SELECT * FROM students WHERE percentage >= 80;

SELECT StdName, Stream, Percentage from students WHERE percentage > 80;

SELECT * FROM students WHERE Stream = 'Science' AND Percentage > 75;

