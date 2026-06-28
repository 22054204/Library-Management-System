create database if not exists library_management_system;
use library_management_system;

create table if not exists account (
    username varchar(50) primary key,
    name varchar(100) not null,
    password varchar(255) not null,
    sec_q varchar(255) not null,
    sec_ans varchar(255) not null
);

create table if not exists book (
    book_id varchar(20) primary key,
    name varchar(150) not null,
    isbn varchar(50) not null,
    publisher varchar(100) not null,
    edition varchar(20) not null,
    price varchar(20) not null,
    pages varchar(20) not null
);

create table if not exists student (
    student_id varchar(20) primary key,
    name varchar(100) not null,
    father varchar(100) not null,
    course varchar(50) not null,
    branch varchar(50) not null,
    year varchar(20) not null,
    semester varchar(20) not null
);

create table if not exists issuebook (
    id int auto_increment primary key,
    book_id varchar(20) not null,
    student_id varchar(20) not null,
    bname varchar(150) not null,
    sname varchar(100) not null,
    course varchar(50) not null,
    branch varchar(50) not null,
    dateOfIssue varchar(20) not null
);

create table if not exists returnBook (
    id int auto_increment primary key,
    book_id varchar(20) not null,
    student_id varchar(20) not null,
    bname varchar(150) not null,
    sname varchar(100) not null,
    course varchar(50) not null,
    branch varchar(50) not null,
    dateOfIssue varchar(20) not null,
    dateOfReturn varchar(20) not null
);
