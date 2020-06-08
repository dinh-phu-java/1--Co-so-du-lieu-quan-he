use test_constraint;
create table customers(
    id int auto_increment PRIMARY KEY,
    name varchar(100),
    address varchar(150),
    email varchar(150)
);
create table orders(
    id int auto_increment,
    staff varchar(50),
    primary key (id),
    customer_id int,
     FOREIGN KEY(customer_id) REFERENCES customers(id)
);