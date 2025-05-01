CREATE DATABASE elevatelabs_db;
use elevatelabs_db;
create table students(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
age INT,
city VARCHAR(50));
insert into students(name,age,city) values('John Smith',22,'New York'),('Jane Smith',24,'Los Angeles'),('Bob Brown',23,'Chicago');
select * from students;
create table courses(
course_id INT AUTO_INCREMENT PRIMARY KEY,
student_id INT,
Course_name VARCHAR(100),
FOREIGN KEY(student_id) References students(id));
insert into courses(student_id,course_name) values(1, 'Mathematics'),(2,'Biology'),(3,'History'),(1,'Physics');
select students.name, courses.course_name from students inner join courses on students.id=courses.student_id;
select count(*) as total_students from students;
select avg(age) as average_age from students;
select sum(course_name) as sum_course from courses;
select max(age) as oldest_age from students;
select min(age) as youngest from students;
select city,count(*) as students_from_city from STudents Group By city;