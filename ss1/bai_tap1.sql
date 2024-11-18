use ss1_module3;
create table class(
id int unique primary key,
name_class varchar(10)
);
create table teacher (
id int unique primary key,
name_teacher varchar (50) not null,
age int not null,
country varchar(100)
);


