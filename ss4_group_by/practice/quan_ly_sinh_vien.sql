drop database if exists quan_ly_sinh_vien;

create database quan_ly_sinh_vien;

use quan_ly_sinh_vien;

CREATE TABLE class (
    classID INT AUTO_INCREMENT PRIMARY KEY,
    className VARCHAR(50) NOT NULL,
    startDate DATETIME NOT NULL,
    `status` BIT
);

CREATE TABLE student (
    studentID INT AUTO_INCREMENT PRIMARY KEY,
    studentName VARCHAR(50) NOT NULL,
    address VARCHAR(50),
    phone VARCHAR(50),
    `status` BIT,
    classID INT NOT NULL,
    FOREIGN KEY (classId)
        REFERENCES class (classID)
);
      
CREATE TABLE `subject` (
    subjectID INT AUTO_INCREMENT PRIMARY KEY,
    subjectName VARCHAR(50) NOT NULL,
    credit TINYINT NOT NULL DEFAULT 1 CHECK (credit >= 1),
    `status` BIT DEFAULT 1
);
    
CREATE TABLE mark (
    markID INT AUTO_INCREMENT PRIMARY KEY,
    subjectID INT NOT NULL,
    studentID INT NOT NULL,
    mark FLOAT DEFAULT 0 CHECK (mark BETWEEN 0 AND 100),
    examtimes TINYINT DEFAULT 1,
    UNIQUE (subjectID , studentID),
    FOREIGN KEY (subjectID)
        REFERENCES `subject` (subjectID),
    FOREIGN KEY (studentID)
        REFERENCES student (studentID)
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
   
SELECT 
    *
FROM
    student
WHERE
    `status` = TRUE;
   
SELECT 
    *
FROM
    `subject`
WHERE
    credit < 10;
   
SELECT 
    s.studentID, s.studentName, c.className
FROM
    student s
        LEFT JOIN
    class c ON s.classID = c.classID;
  
SELECT 
    S.studentID, S.studentName, C.className
FROM
    student S
        JOIN
    class C ON S.classID = C.ClassID
WHERE
    C.ClassName = 'A1';

SELECT 
    s.studentID,
    s.studentName,
    `subject`.subjectID,
    mark.subjectID,
    `subject`.subjectName
FROM
    student s
        RIGHT JOIN
    mark ON s.studentID = mark.studentID
        JOIN
    `subject` ON `subject`.subjectID = mark.subjectID
WHERE
    `subject`.subjectName = 'CF';

SELECT 
    *
FROM
    student
WHERE
    student.studentName LIKE 'h%';

SELECT 
    *
FROM
    class
WHERE
    MONTH(class.startDate) = '12';

SELECT 
    *
FROM
    `subject`
WHERE
    credit BETWEEN 3 AND 5;


SELECT 
    *
FROM
    `subject`
WHERE
    `subject`.credit IN (3 , 4, 5);


set sql_safe_updates = 0;
UPDATE student 
SET 
    classID = 2
WHERE
    studentName = 'Hung';
set sql_safe_updates = 1;

SELECT 
    *
FROM
    student;
    
SELECT 
    s.studentName, su.subjectName, mark.mark
FROM
    student s
        JOIN
    mark ON s.studentID = mark.studentID
        JOIN
    `subject` su ON su.subjectID = mark.subjectID
ORDER BY mark.mark DESC , s.studentName;

select address, count(address) so_luong_hoc_viên
  from student 
  group by address;
  
  select student.studentID,student.studentName, avg(mark) diem_trung_binh
  from student
  join mark on student.studentID = mark.studentID
  group by student.studentID,student.studentName;

 select student.studentID,student.studentName, avg(mark) diem_trung_binh
  from student
  join mark on student.studentID = mark.studentID
  group by student.studentID,student.studentName
  having diem_trung_binh > 15;
  
   select student.studentID,student.studentName,avg(mark) diem_trung_binh
  from student
  join mark on student.studentID = mark.studentID
  group by student.studentID,student.studentName
HAVING diem_trung_binh >= ALL (SELECT AVG(mark) FROM mark GROUP BY mark.studentID);
  
  
  







  
 
  
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   

    
    
    
      
     
     
     
     
     
     
     