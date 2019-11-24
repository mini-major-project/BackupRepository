create database OnRoadBreakDown;

use OnRoadBreakDown;
create table user(
userId int auto_increment,
userName varchar(20),
userPswd varchar(20),
userAddress varchar(100),
userMobile varchar(20),
userMail varchar(30),
userPinCode varchar(6),
primary key(userId)
);

create table serviceProvider(
serviceProviderId int auto_increment,
serviceProviderName varchar(20),
serviceProviderPswd varchar(20),
serviceProviderAddress varchar(100),
serviceProviderMobile varchar(20),
serviceProviderMail varchar(30),
serviceProviderPinCode varchar(6),
MechAsst varchar(5),
BatRepl varchar(5),
TyreRepl varchar(5),
VechTow varchar(5),
FuelRef varchar(5),
Servicing varchar(5),
primary key(serviceProviderId)
);
create table transaction(
transId int auto_increment,
serviceProviderId int,
serviceProviderName varchar(20),
userId int,
userName varchar(20),
userPincode varchar(20),
userMobile varchar(20),
primary key(transId)
);

select * from transaction;
select * from serviceProvider;
truncate table serviceProvider;
select * from user;
insert into user(userName,userPswd,userAddress,userMobile,userMail,userPinCode) 
values("manasa","manasa","hno:12-1-468/15EP,madhura nagar,nagole","9490297756","sonyreddy2114@gmail.com","500068");

insert into transaction(serviceProviderId,serviceProviderName,userId,userName,userPinCode,userMobile) values(4,"manasa",2,"manasa","500068","9490297756");