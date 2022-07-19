-- Bước 1: Tạo cơ sở dữ liệu demo

DROP DATABASE IF EXISTS `demo`;

CREATE DATABASE demo;

USE demo;

-- Bước 2: Tạo bảng Products với các trường dữ liệu sau:
CREATE TABLE `products`(
id INT AUTO_INCREMENT PRIMARY KEY,
productCode VARCHAR(50),
productName VARCHAR(50),
productPrice INT,
productAmount INT,
productDescription VARCHAR(50),
productStatus VARCHAR(50)
);

INSERT INTO `products`(productCode,productName,productPrice,productAmount,productDescription,productStatus)
VALUE ('M1','Bánh quy',500,12,NULL,NULL), 
('M2','Bánh ngọt',600,22,NULL,NULL),
('M3','BáNh mặn',100,22,NULL,NULL),
('M4','Bánh Mặn ngọt',800,32,null,NULL),
('M5','Kẹo ngọt',300,22,null,nulL),
('M6','Kẹo chua',100,22,null,null),
('M7','Kẹo màu',600,22,Null,null),
('M8','Kẹo màu trong suốt',900,12,null,null);


/* Bước 3:

Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
So sánh câu truy vấn trước và sau khi tạo index*/

CREATE  INDEX unique_index ON `products`(productCode);

EXPLAIN SELECT *FROM `products`
WHERE productCode = 'M3';

DROP INDEX unique_index ON `products`;

CREATE INDEX composite_index ON `products`(productName,productPrice);

DROP INDEX composite_index ON `products`;

/*Bước 4:
Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
Tiến hành sửa đổi view
Tiến hành xoá view*/

CREATE VIEW product_view AS
    SELECT 
        `products`.productCode,
        `products`.productName,
        `products`.productPrice
    FROM
        `products`;
        
        
CREATE OR REPLACE VIEW product_view AS
    SELECT 
        `products`.productCode,
        `products`.productName,
        `products`.productPrice,
        `products`.productStatus
    FROM
        `products`;
        
        
DROP VIEW product_view;

/*Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
Tạo store procedure thêm một sản phẩm mới
Tạo store procedure sửa thông tin sản phẩm theo id
Tạo store procedure xoá sản phẩm theo id */

delimiter $$
CREATE PROCEDURE store_procedure ()
BEGIN
SELECT * FROM  `products`;
END $$
delimiter ;

CALL store_procedure();


delimiter $$
CREATE  PROCEDURE  store_procedure_add (in 
`Code` VARCHAR(50),
`Name` VARCHAR(50),
`Price` INT,
`Amount` INT,
`Description` VARCHAR(50),
`Status` VARCHAR(50))
BEGIN
 INSERT INTO `products`(productCode,productName,productPrice,productAmount,productDescription,productStatus)
VALUE (`Code`,`Name`,`Price`,`Amount`,`Description`,`Status`);
END $$.
delimiter ;

CALL  store_procedure_add('M9','Kẹo bảy màu',950,32,null,null);

delimiter $$

CREATE PROCEDURE edit_product (IN 
id INT,
`Code` VARCHAR(50),
`Name` VARCHAR(50),
`Price` INT,
`Amount` INT,
`Description` VARCHAR(50),
`Status` VARCHAR(50))
BEGIN 
SET sql_safe_updates = 0;
UPDATE `products`
SET
  `products`.id = id,
`products`.productCode = `Code`,
 `products`.productName = `Name`,
 `products`.productPrice = `Price`,
`products`.productAmount = `Amount`,
`products`.productDescription = `Description`,
`products`.productStatus = `Status`
WHERE `products`.id = id;
SET sql_safe_updates = 1;
END $$
delimiter ;
CALL edit_product(1,'M1','Kẹo kéo',350,23,NULL,NULL);


SELECT * FROM PRoducts;


delimiter $$;
create procedure delete__product(IN id INT)
begin
delete from products where  `products`.id = id
end $$
delimiter ;

CALL delete__product(5);



