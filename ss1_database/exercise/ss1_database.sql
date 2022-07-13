create database student_managament;

use student_managament;

create table class(
id int auto_increment,
name varchar(50),
primary key(id)
);

create table teacher(
id int auto_increment,
`name` varchar(50),
age int ,
country varchar(50),
primary key(id)
);
insert into class(name)
 values ("Nhân"),("Tài"),("Phát");
 
select * from class;

insert into teacher(name,age,country)
 values ("thanh",9,"QT"),("trang",10,"QT");
 
select *from teacher;

alter table class add point_class text;

select *from class;

set sql_safe_updates = 0;
update class set class.point_class = 9
where name = "Nhân";
set sql_safe_updates =1;

update class set class.point_class = 8
where id = 2;

select *from class;

alter table class add age text;

alter table class drop age;

set sql_safe_update= 0;
delete from class where point_class = 8;
set sql_safe_update = 1;



