drop database if exists quan_ly_ban_hang;

create database quan_ly_ban_hang;

use quan_ly_ban_hang;

CREATE TABLE customer (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(40),
    customer_age INT
);

CREATE TABLE `order` (
    order_id INT PRIMARY KEY,
    customerID INT,
    order_date DATETIME,
    order_total_price DOUBLE,
    FOREIGN KEY (customerID)
        REFERENCES customer (customerID)
);

CREATE TABLE product (
    product_id INT PRIMARY KEY,
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
