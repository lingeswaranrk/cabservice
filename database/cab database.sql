create database cms;
use cms; 

CREATE TABLE cab(
cab_no int primary key auto_increment,
cab_name varchar(150) not null,
cab_descrpt varchar(150) not null,
cab_totalseating int not null,
etc varchar(150)); 


create table customer(
customer_id int primary key auto_increment,
c_name varchar(50) not null,
user_name varchar(50) not null,
email varchar(50) not null,
password varchar(50) not null,
mobile int not null,
adress varchar(100),
dob date); 


create table cab_schedule (
schedule_id int primary key auto_increment,
pickup varchar(150) not null,
drop_loc varchar(150) not null,
ride_date date,
ride_time time ,
cost int not null,
cab_number int ,
constraint FK_cab_schedule_cab_number foreign key
(cab_number) references cab(cab_no ) on delete cascade); 


create table bookride(ride_otp int primary key auto_increment,
date_of_booking int not null,
date_of_ride date,
pickup varchar(50),
drop_loc varchar(50),
ride_time time,
cab_number int,
constraint FK_bookride_cabtnumber foreign key
(cab_number) references cab(cab_no ) on delete set null,
customer_id int,
constraint FK_bookride_customerid foreign key
(customer_id) references customer(customer_id ) on delete set null);

