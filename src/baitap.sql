create database quanlyhocvien;
use quanlyhocvien;
create table classes(
    id int primary key auto_increment ,
    name varchar(20),
    language varchar(20),
    description varchar(200)
);
create table addresses(
    id int primary key auto_increment,
    address varchar (200)
);
create table students(
    id int primary key auto_increment,
    fullName varchar(20),
    addressID int,
    age int,
    phone int unique ,
    classID int,
    foreign key (addressID) references addresses(id),
    foreign key (classID) references classes(id)
);
create table course(
    id int primary key ,
    name varchar(20),
    description text
);

create table point(
    id int,
    courseID int,
    studentID int,
    point int,
    foreign key (courseID) references course(id),
    foreign key (studentID) references students(id)
);
use quanlyhocvien;
insert into addresses(id, address)
    VALUE (1, 'Xa Dan'),
    (2,'Co nhue' ),
    (3, 'Kham Thien'),
    (4, 'Chua Boc'),
    (5, 'Kim Ma');
insert into classes(id, name, language, description)
    VALUE(1, 'Java 1', 'Java', 'Beginner'),
    (2,'Java 2', 'Java', 'Elementary' ),
    (3,'Java 3', 'Java', 'Pre - inter' ),
    (4,'Java 4', 'Java', 'Inter' ),
    (5,'Java 5', 'Java', 'Advanced' );
insert into students(id, fullName, addressID, age, phone, classID) VALUE
    (1, 'Nguyen Anh', 1, 30, 0123456, 5),
    (2, 'Tran Duc', 1, 22, 456789, 3),
    (3, 'Phan Giang', 3, 24, 456112, 5),
    (4, 'Nguyen Luong', 4,22, 444123, 1),
    (5, 'Nguyen Tuan', 1, 25, 456125, 5),
    (6, 'Le Quan', 3, 21, 478521, 4),
    (7, 'Nguyen Hieu', 2, 20, 498512, 3),
    (8, 'Hoang Huyen', 5, 23, 423657, 1),
    (9, 'Pham Canh', 1, 24, 859142, 2),
    (10, 'Hoang Tung', 2, 18, 658741, 1);
insert into course(id, name, description)value (1, '3 month', 'ngan han'),
    (2, '6 month', 'Trung Han'),
    (3, '12 month', 'Dai Han');
insert into point(id, courseID, studentID, point) VALUE
    (1,1,2,10),
    (2,3,4,9),
    (3,2,3,8),
    (4,1,1,7),
    (5,2,7,9),
    (6,3,4,8),
    (7,2,2,9),
    (8,1,9,5),
    (9,1,8,4),
    (10,2,10,10),
    (11,1,5,6),
    (12,3,6,5),
    (13,1,8,7),
    (14,3,6,5),
    (15,2,4,7);
select * from students where fullName like 'Nguyen%';
select * from students where fullName like '% anh%';
select * from students where age between 15 and 18;
select * from students where id = 12;










