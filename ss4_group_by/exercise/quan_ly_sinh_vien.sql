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
    `subject`
WHERE
    credit = (SELECT 
            MAX(credit)
        FROM
            `subject`);
          
       
            
SELECT 
    `subject`.subjectID,
    `subject`.subjectName,
    `subject`.credit,
    `subject`.`status`,
    MAX(mark)
FROM
    `subject`
        JOIN
    mark ON mark.subjectID = `subject`.subjectID
WHERE
    mark = (SELECT 
            MAX(mark)
        FROM
            mark);
   
SELECT 
    student.studentID,
    student.studentName,
    student.address,
    student.phone,
    AVG(mark.mark) diem_trung_binh
FROM
    student
        LEFT JOIN
    mark ON mark.studentID = student.studentID
GROUP BY student.studentName
ORDER BY mark.mark DESC;


      












  
 
  
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   

    
    
    
      
     
     
     
     
     
     
     