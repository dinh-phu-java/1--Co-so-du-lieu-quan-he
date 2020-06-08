create database test_constraint;
use test_constraint;
create table users(
    user_id int auto_increment,
    username varchar(100),
    password varchar(150),
    email varchar(255),
    PRIMARY KEY (user_id)
);
create table roles(
    role_id int auto_increment,
    role_name varchar(150),
    PRIMARY KEY (role_id)
);

create table userroles(
    user_id int NOT NULL,
    role_id int NOT NULl,
    PRIMARY KEY (user_id,role_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);


