-- creating database
drop database if exists class;
create database class;
use class;

-- using database
use class;

-- creating table
create table students(student_id int not null, first_name varchar(10), last_name varchar(10), ph_no bigint(10), mail_id varchar(30), gender enum('m','f'),primary key(student_id)); 
drop table students;
select * from students;

-- inserting values
insert into students values('10001', 'naren', 'modi', '9987654321', 'namo@gmail.com', 'm');
insert into students values('10002', 'amit', 'sha', '9999234311', 'amitsha@gmail.com', 'm');
insert into students values('10003', 'nirmala', 'sitaraman', '8884466655', 'nirmala.sitaraman@gmail.com', 'f');
insert into students values('10004', 'rajnath', 'singh', '9000023451', 'rajnathsingh@gmail.com', 'm');
insert into students values('10005', 'nitin', 'gadkari', '6363454578', 'nithin.gadkari@gmail.com', 'm');
insert into students values('10006', 'sumanyam', 'jaishankar', '8976897654', 'jaishankankar.s@gmail.com', 'm');
insert into students values('10007', 'smriti', 'irani', '7065734285', 'smriti.zubin.irani@gmail.com', 'f');
insert into students values('10008', 'kishan', 'reddy', '9056982340', 'gkishanreddy@gmail.com', 'm');
insert into students values('10009', 'anurag', 'thakur', '8745672391', 'thakur.anurag@gmail.com', 'm');
insert into students values('10010', 'bhupender', 'yadav', '6783459999', 'bhupender_yadav@gmail.com', 'm');

create table students_temp(student_id int not null, first_name varchar(10), last_name varchar(10), ph_no bigint(10), mail_id varchar(30), gender enum('m','f'),primary key(student_id)); 
select * from students_temp;

insert into students_temp (student_id, first_name, last_name, ph_no, mail_id, gender) select * from students;
delete from students_temp where student_id in ('10009','10010');

