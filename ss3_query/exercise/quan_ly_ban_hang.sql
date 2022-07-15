drop database if exists quan_ly_ban_hang;

create database quan_ly_ban_hang;

use quan_ly_ban_hang;

CREATE TABLE customer (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(40),
    customer_age TINYINT
);

CREATE TABLE `order` (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customerID INT,
    order_date DATETIME,
    order_total_price INT,
    FOREIGN KEY (customerID)
        REFERENCES customer (customerID)
);

CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(40),
    product_price DOUBLE
);

CREATE TABLE order_detail (
    order_id INT,
    product_id INT,
    order_quanity INT,
    PRIMARY KEY (order_id , product_id),
    FOREIGN KEY (order_id)
        REFERENCES `order` (order_id),
    FOREIGN KEY (product_id)
        REFERENCES product (product_id)
);

insert into customer(customer_name,customer_age)
value ("Minh Quan",10),("Ngoc Oanh",20),("Hong Ha",50);

insert into `order`(customerID,order_date,order_total_price) 
value (1,"2006-3-21",null),(2,"2006-3-23",null),(1,"2006-3-16",null);

insert into product(product_name,product_price)
value ("May Giat",3),("Tu Lanh",5),("Dieu Hoa",7),("Quat",1),("Bep Dien",2);

insert into order_detail (order_id,product_id,order_quanity)
value (1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);

SELECT 
    order_id, order_date, order_total_price
FROM
    `order`;

SELECT 
    customer.customer_name, product.product_name
FROM
    customer
        JOIN
    `order` ON customer.customerID = `order`.customerID
        JOIN
    order_detail ON order_detail.order_id = `order`.order_id
        JOIN
    product ON product.product_id = order_detail.product_id;


SELECT 
    customer.customer_name
FROM
    customer
        LEFT JOIN
    `order` ON customer.customerID = `order`.customerID
WHERE
    order_id IS NULL;

SELECT 
    `order`.order_id,
    `order`.order_date,
    SUM((product.product_price * order_detail.order_quanity)) AS price
FROM
    `order`
        JOIN
    order_detail ON order_detail.order_id = `order`.order_id
        JOIN
    product ON product.product_id = order_detail.product_id
GROUP BY order_id;

