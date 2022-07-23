DROP DATABASE IF EXISTS internship;
CREATE DATABASE internship;

USE internship;

-- KHOA
CREATE TABLE faculty (
    faculty_id CHAR(10) PRIMARY KEY, 
    faculty_name CHAR(30),
    phone CHAR(10)
);

-- GIANG VIEN
CREATE TABLE instructor (
    instructor_id INT PRIMARY KEY,
    instructor_name CHAR(30),
    salary DECIMAL(5, 2),
    faculty_id CHAR(10),
    FOREIGN KEY (faculty_id) REFERENCES faculty (faculty_id)
);

-- SINH VIEN
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name CHAR(40),
    faculty_id CHAR(10),
    date_of_birth INT,
    place_of_birth CHAR(30),
    FOREIGN KEY (faculty_id) REFERENCES faculty (faculty_id)
);

-- DE TAI
CREATE TABLE project (
    project_id CHAR(10) PRIMARY KEY,
    project_name CHAR(30),
    expense INT,
    place_of_intern CHAR(30)
);

-- HUONG DAN THUC TAP
CREATE TABLE instructor_student (
    student_id INT PRIMARY KEY,
    project_id CHAR(10),
    instructor_id INT,
    grade DECIMAL(5, 2),
    FOREIGN KEY (student_id) REFERENCES student (student_id),
    FOREIGN KEY (project_id) REFERENCES project (project_id),
    FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id)
);

INSERT INTO faculty VALUES
('Geo', 'Dia ly va QLTN', 3855413), 
('Math', 'Toan', 3855411), 
('Bio', 'Cong nghe Sinh hoc', 3855412);

INSERT INTO instructor VALUES
(11, 'Thanh Binh', 700, 'Geo'),     
(12, 'Thu Huong', 500, 'Math'), 
(13, 'Chu Vinh', 650, 'Geo'), 
(14, 'Le Thi Ly', 500, 'Bio'), 
(15, 'Tran Son', 900, 'Math');

INSERT INTO student VALUES
(1, 'Le Van Son', 'Bio', 1990, 'Nghe An'), 
(2, 'Nguyen Thi Mai', 'Geo', 1990, 'Thanh Hoa'), 
(3, 'Bui Xuan Duc', 'Math', 1992, 'Ha Noi'), 
(4, 'Nguyen Van Tung', 'Bio', null, 'Ha Tinh'), 
(5, 'Le Khanh Linh', 'Bio', 1989, 'Ha Nam'), 
(6, 'Tran Khac Trong', 'Geo', 1991, 'Thanh Hoa'), 
			(7, 'Le Thi Van', 'Math', null, 'null'), 
(8, 'Hoang Van Duc', 'Bio', 1992, 'Nghe An');

INSERT INTO project VALUES
('PRJ01', 'GIS', 100, 'Nghe An'), 
('PRJ02', 'ARC GIS', 500, 'Nam Dinh'), 
('PRJ03', 'Spatial DB', 100,  'Ha Tinh'), 
('PRJ04', 'MAP', 300, 'Quang Binh' );

INSERT INTO instructor_student VALUES
(1, 'PRJ01', 13, 8), 
(2, 'PRJ03', 14, 0), 
(3, 'PRJ03', 12, 10), 
(5, 'PRJ04', 14, 7), 
(6, 'PRJ01', 13, null), 
(7, 'PRJ04', 11, 10), 
(8, 'PRJ03', 15, 6);

-- 1.	Đưa ra thông tin gồm mã số, họ tên và tên khoa của tất cả các giảng viên

SELECT 
    i.instructor_id, i.instructor_name, f.faculty_name
FROM
    instructor i
        JOIN
    faculty f ON f.faculty_id = i.faculty_id
ORDER BY i.instructor_id;
    
    -- 2.	Đưa ra thông tin gồm mã số, họ tên và tên khoa của các giảng viên của khoa ‘DIA LY va QLTN’
    
 SELECT 
    i.instructor_id, i.instructor_name, f.faculty_name
FROM
    instructor i
        JOIN
    faculty f ON f.faculty_id = i.faculty_id
WHERE
    f.faculty_name = 'DIA LY va QLTN';
 
 -- 3.	Cho biết số sinh viên của khoa ‘CONG NGHE SINH HOC’
 SELECT 
    COUNT(s.student_id) so_hoc_vien_khoa_cong_nghe_sinh_hoc
FROM
    faculty f
        JOIN
    student s ON s.faculty_id = f.faculty_id
WHERE
    f.faculty_name = 'Cong nghe Sinh hoc';
 
 -- 4.	Đưa ra danh sách gồm mã số, họ tên và tuổi của các sinh viên khoa ‘TOAN’
 
SELECT 
    s.student_id,
    s.student_name,
    (YEAR(NOW()) - date_of_birth) tuoi
FROM
    student s
        JOIN
    faculty f ON f.faculty_id = s.faculty_id
WHERE
    f.faculty_name = 'Toan';
 
 -- 5.	Cho biết số giảng viên của khoa ‘CONG NGHE SINH HOC’
    
SELECT 
    COUNT(i.instructor_id) so_giang_vien_khoa_cong_nghe_sinh_hoc
FROM
    faculty f
        JOIN
    instructor i ON i.faculty_id = f.faculty_id
WHERE
    f.faculty_name = 'Cong nghe Sinh hoc';   
 
 -- 6.	Cho biết thông tin về sinh viên không tham gia thực tập
 
 SELECT 
    s.student_id,
    s.student_name,
    s.date_of_birth,
    s.place_of_birth
FROM
    student s
        LEFT JOIN
    instructor_student ins ON ins.student_id = s.student_id
WHERE
    ins.student_id IS NULL;
 
 -- 7.	Đưa ra mã khoa, tên khoa và số giảng viên của mỗi khoa
 
SELECT 
    f.faculty_id,
    f.faculty_name,
    COUNT(i.instructor_id) so_giang_vien
FROM
    faculty f
        JOIN
    instructor i ON i.faculty_id = f.faculty_id;
 
 -- 8.	Cho biết số điện thoại của khoa mà sinh viên có tên ‘Le van son’ đang theo học
 
SELECT 
    s.student_name, f.phone
FROM
    student s
        JOIN
    faculty f ON f.faculty_id = s.faculty_id
WHERE
    s.student_name = 'Le van son';
 
 -- 1.	Cho biết mã số và tên của các đề tài do giảng viên ‘Tran son’ hướng dẫn
 
 SELECT 
    p.project_id, p.project_name, i.instructor_name
FROM
    instructor i
        JOIN
    instructor_student ins ON ins.instructor_id = i.instructor_id
        JOIN
    project p ON p.project_id = ins.project_id
WHERE
    i.instructor_name = 'Tran son';
 
 -- 2.	Cho biết tên đề tài không có sinh viên nào thực tập
 

 SELECT 
    p.project_id, p.project_name, s.student_name
FROM
    student s
        JOIN
    instructor_student ins ON ins.student_id = s.student_id
        RIGHT JOIN
    project p ON p.project_id = ins.project_id
WHERE
    s.student_name IS NULL;
    
    -- 3.Cho biết mã số, họ tên, tên khoa của các giảng viên hướng dẫn từ 3 sinh viên trở lên.
    
   SELECT 
    i.instructor_id, i.instructor_name, f.faculty_name
FROM
    instructor i
        JOIN
    faculty f ON f.faculty_id = i.faculty_id
        JOIN
    student s ON s.faculty_id = f.faculty_id
GROUP BY i.instructor_name
HAVING COUNT(i.instructor_name) >= 3;
    
   -- 4.Cho biết mã số, tên đề tài của đề tài có kinh phí cao nhất

select p. project_id,p.project_name,max(p.expense)
from project p;

-- 5.	Cho biết mã số và tên các đề tài có nhiều hơn 2 sinh viên tham gia thực tập

SELECT 
    p.project_id,
    p.project_name,
    COUNT(p.project_name) so_luong_hoc_sinh
FROM
    project p
        JOIN
    instructor_student ins ON ins.project_id = p.project_id
        JOIN
    student s ON s.student_id = ins.student_id
GROUP BY p.project_name
HAVING so_luong_hoc_sinh > 2;

-- 6.	Đưa ra mã số, họ tên và điểm của các sinh viên khoa ‘DIALY và QLTN’

SELECT 
    s.student_id, s.student_name, ins.grade
FROM
    student s
        JOIN
    faculty f ON f.faculty_id = s.faculty_id
        JOIN
    instructor_student ins ON ins.student_id = s.student_id
WHERE
    f.faculty_name = 'Dia ly va QLTN';

-- 7.	Đưa ra tên khoa, số lượng sinh viên của mỗi khoa

select f.faculty_name,count(f.faculty_name) so_luong_sinh_vien_moi_khoa
from faculty f 
join student s on s.faculty_id = f.faculty_id
group by f.faculty_name;

-- 8.	Cho biết thông tin về các sinh viên thực tập tại quê nhà

select s.student_id,s.student_name,s.date_of_birth,s.place_of_birth from student s 
 join instructor_student ins on ins.student_id = s.student_id
 join project p on p.project_id = ins.project_id
where  s.place_of_birth = p.place_of_intern;

-- 9.	Hãy cho biết thông tin về những sinh viên chưa có điểm thực tập

select s.student_id,s.student_name,s.date_of_birth,s.place_of_birth from student s 
join instructor_student ins on ins.student_id = s.student_id
join project p on p.project_id = ins.project_id
where ins.grade is null;


-- 10.	 Đưa ra danh sách gồm mã số, họ tên các sinh viên có điểm thực tập bằng 0

select s.student_id,s.student_name,s.date_of_birth,s.place_of_birth from student s 
join instructor_student ins on ins.student_id = s.student_id
join project p on p.project_id = ins.project_id
where ins.grade = 0;


 
  
  
    
    

    
