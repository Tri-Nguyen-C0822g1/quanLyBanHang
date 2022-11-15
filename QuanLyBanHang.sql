create database quanlybanhang;

use quanlybanhang;

create table customer(
cID int not null primary key auto_increment,
cName varchar(20),
cAge int
);

create table CusOrder(
cID int,
oID int not null primary key auto_increment,
foreign key (cID) references customer (cID),
oDate date,
oTotalPrice double
);

create table Product(
pID int not null primary key auto_increment,
pName varchar(20),
pPrice double
);

create table OrderDetail(
oID int,
PID int,
primary key ( oID, pID),
odQTY double,
foreign key (oID) references CusOrder(oID),
foreign key (pID) references Product(pID)
);

alter table orderdetail
rename column PID to pID;