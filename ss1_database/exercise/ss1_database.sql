create database student_managament;
use student_managament;
create table class(
id int auto_increment,
name varchar(50),
primary key(id));
create table teacher(
id int auto_increment,
`name` varchar(50),
age int ,
country varchar(50),
primary key(id));
insert into class(name) values ("Nhân"),("Tài"),("Phát");
select * from class;
insert into teacher(name,age,country) values ("thanh",9,"QT"),("trang",10,"QT");
select * from teacher;
