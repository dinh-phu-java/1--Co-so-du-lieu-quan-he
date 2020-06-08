create database codegym_bank;
use codegym_bank;

create table customers(
    customer_number int primary key auto_increment,
    fullname varchar(150),
    address varchar(200),
    email varchar(150),
    phone varchar(150)
);

create table account(
    account_number int primary key auto_increment,
    account_type int,
    open_date date,
    balance decimal(20,4),
    customer_number int,
    foreign key (customer_number) references customers(customer_number)
);

create table transaction(
    tran_number int primary key auto_increment,
    account_number int,
    trade_date date,
    amounts decimal(20,4),
    description varchar(50),
    foreign key (account_number) references account(account_number)
);

