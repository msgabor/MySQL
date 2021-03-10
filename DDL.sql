create database if not exists student_db;
drop database student_db;

create schema student_db;
drop schema student_db;
---------------------------------------------
use student_db;

create table student(

student_number int(5),
student_name varchar(15),
marks int(3));

describe student;
select * from student;
---------------------------------------------
insert into student values (101,'Huba', 80);
insert into student (student_name, student_number, marks) values ('RAM', 102, 60);
insert into student values (103,'Gabi', 85);
insert into student values (104,'Laci', NULL);
commit; 
select * from student;
---------------------------------------------
alter table student add (grade varchar(2));
alter table student drop column grade;
alter table student modify column student_name varchar(20);
alter table student rename column student_name to tanulók;

describe student;
---------------------------------------------
select * from student;
select tanulók from student as Tanuló_Neve;
---------------------------------------------
set autocommit = 0;
set sql_safe_updates =0;

delete from student;
commit;

select * from student;

rollback;
select * from student;
----------------------------------------------
rename table jobs to work; 
----------------------------------------------
create table ship(
shipname varchar(32));
insert into ship values ('regal');
---------------------------------------------
select * from ship; 
---------------------------------------------
truncate table ship;
---------------------------------------------
select * from ship; 
drop table ship;
-- -------------------------------------------

-- using constratins
create schema constraints_db;
use constraints_db;
create table constraints (
vehicle_type varchar(32) not null, -- these values cannot be null value (mandatory to populate) 
vehicle_plate varchar(32) not null unique, -- UNIQUE constraint ensures that all values in a column are different
vehicle_age int(6));
describe constraints;

select * from constraints;

alter table constraints 
modify vehicle_age int not null;

create table Owners (
    ID int NOT NULL,
    primary key (ID),
    CONSTRAINT PK_Person PRIMARY KEY (ID,LastName), -- defining a PRIMARY KEY constraint on multiple columns
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    UNIQUE (ID)
    
);

CREATE TABLE persons (
    ID int NOT NULL,
    LastName varchar(255) not null,
    FirstName varchar(255) not null,
    Age int,
    CONSTRAINT UC_Person UNIQUE (ID,LastName) -- define a UNIQUE constraint on multiple columns
);

select * from persons;

ALTER TABLE persons
ADD UNIQUE (ID);

ALTER TABLE persons
DROP INDEX UC_Person;

-- PK vs. FK

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);











