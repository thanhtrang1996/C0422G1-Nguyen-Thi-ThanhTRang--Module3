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
   
   insert into class (className,startDate,`status`)
   values ('A1','2008-12-20',1),('A2','2008-12-22',1),('B3',current_date(),0);
   
   insert into student(studentName,address,phone,`status`,classID)
   values ('Hung', 'Ha Noi', '0912113113', 1, 1),('Manh', 'HCM', '0123123123', 0, 2);
   
   
   insert into student (studentName,address,`status`,classID)
   value('Hoa', 'Hai phong', 1, 1);
   
   
   insert into `subject` (subjectName,credit,`status`) 
   value ('CF', 5, 1),('C', 6, 1),('HDJ', 5, 1),('RDBMS', 10, 1);
   
   insert into mark (subjectID,studentID,mark,examtimes)
   value (1, 1, 8, 1),(1, 2, 10, 2),(2, 1, 12, 1);
   
   
   
   
   
   
   
   
   
   

    
    
    
      
     
     
     
     
     
     
     