drop database if exists `demo`;

create database `demo`;

use `demo`;

CREATE TABLE `users` (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL
);
create table permision(
permision_id int auto_increment primary key,
`name` varchar(255)
);

create table user_permision(
user_id int  ,
permision_id int ,
primary key(user_id,permision_id),
 FOREIGN key (user_id)  REFERENCES users(user_id),
 foreign key (permision_id) references permision (permision_id)
);

INSERT INTO `users`(`name`,email,country) VALUE 
("Tom","tommy@gamil.com","america"),
("Joy","joyjoy@gmail.com","italy"),
("Jack","jack@gamil.com","brazil");

delimiter $$
create procedure get_all_user()
begin 
select *
from users
where user_id = users.user_id;
end$$
delimiter ;

call get_all_user();

delimiter $$
create procedure get_user_by_id(in user_id int)
begin 
select users.`name`,users.email,users.country
from users
where user_id = users.user_id;
end$$
delimiter ;

call get_user_by_id(1);
delimiter $$
create procedure insert_user(
in user_name varchar(255),
in user_email varchar(255),
in user_country varchar(255)
)

begin 
insert into users(`name`,email,country) values (user_name,user_email,user_country);
end$$
delimiter ;

insert into permision(name) values("add"),("edit"),("delete"),("view");







