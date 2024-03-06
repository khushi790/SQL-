create database library;

use library;

-- create table student 
create table STUDENT(
	StuID int primary key,
    StuName varchar(20),
    StuAddr varchar(30),
    StuEmail varchar(20)
);

-- create table employee
create table EMPLOYEE(
	EmpID int primary key,
    EmpName varchar(20),
    EmpAddr varchar(30),
    EmpEmail varchar(20)
);

-- create table author
CREATE TABLE AUTHOR (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(20),
    AuthorAddr VARCHAR(30),
    AuthorEmail VARCHAR(20)
);

-- create table publisher
create table PUBLISHER(
	PubID int primary key,
    PubName varchar(20),
    PubAddr varchar(30),
    PubEmail varchar(20)
);

-- Create table book
CREATE TABLE Book(
    BookID int primary Key,
    BookName varchar(30),
    NoOfPages int,
    ISBNNum int,
    StuId int, 
    EmpID int, 
    PubId int,
    foreign key (StuID) REFERENCES STUDENT(StuID),
	foreign key  (EmpID) REFERENCES EMPLOYEE(EmpID),
	foreign key  (PubID) REFERENCES PUBLISHER(PubID)
    
);
    
-- create table BOOK_AUTH
create table BOOK_AUTH(
	BookAuthID int primary key,
    BookID int, 
    AuthorID int,
	foreign key  (BookID) REFERENCES BOOK(BookID),
	foreign key  (AuthorID) REFERENCES Author(AuthorID)
);



