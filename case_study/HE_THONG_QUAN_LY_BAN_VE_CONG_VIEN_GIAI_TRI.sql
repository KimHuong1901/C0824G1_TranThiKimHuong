create database case_study;
use case_study;
create table games(
id int primary key auto_increment,
name_game varchar(50) not null,
price int not null
);
create table discounts(
id int primary key auto_increment,
discount_player_quantity int not null,
discount int not null
);
create table tickets(
id int primary key auto_increment,
price_ticket int not null,
time_sell datetime not null,
id_game int not null,
ticket_player_quantity int not null,
id_discount int,
foreign key(id_game) references games(id),
foreign key(id_discount) references discounts(id)
);
create table revenues(
id int primary key auto_increment,
revenue int not null,
time_revenue datetime not null
);