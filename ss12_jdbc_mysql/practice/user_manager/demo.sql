drop database if exists `demo`;

create database `demo`;

use `demo`;

CREATE TABLE `users` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL
);

INSERT INTO `users`(`name`,email,country) VALUE 
("Tom","tommy@gamil.com","america"),
("Joy","joyjoy@gmail.com","italy"),
("Jack","jack@gamil.com","brazil");

