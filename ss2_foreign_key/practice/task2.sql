drop database if exists quan_ly_sinh_vien;

create database quan_ly_sinh_vien;

use quan_ly_sinh_vien;

create table class(
     classID int auto_increment primary key,
     className varchar(50) not null, 
     startDate datetime not null,
     `status` bit
     );

create table student(
     studentID int auto_increment primary key,
     studentName varchar(50) not null,
     address varchar(50) ,
     phone varchar(50) ,
     `status` bit,
     classID INT NOT NULL,
      FOREIGN KEY (classId) REFERENCES class (classID)
      );
      
create table `subject`(
    subjectID int auto_increment primary key,
    subjectName varchar(50) not null,
    credit tinyint not null default 1 check (credit >=1),
    `status` bit default 1
    );
    
create table mark(
   markID int auto_increment primary key,
   subjectID int not null,
   studentID int not null,
   mark float default 0 check ( mark between 0 and 100),
   examtimes tinyint default 1,
   unique (subjectID,studentID),
   foreign key (subjectID) references `subject`(subjectID),
   foreign key (studentID) references student(studentID)
   );
   
   
   
   

    
    
    
      
     
     
     
     
     
     
     