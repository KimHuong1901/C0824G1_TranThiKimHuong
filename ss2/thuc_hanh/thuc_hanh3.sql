use thuc_hanh3;
create table classes(
id int primary key auto_increment,
class_name varchar(60) not null,
start_date datetime not null,
status_class bit
);
create table subjects(
id int primary key auto_increment,
sub_name varchar(30) not null,
credit tinyint not null default 1 check (credit >=1),
status_sub bit default 1
);
create table students(
id int primary key auto_increment,
name_student varchar(30) not null,
address varchar(50),
phone varchar(20),
status_student bit,
id_class int,
foreign key (id_class) references classes(id)
);
create table marks(
id int primary key auto_increment,
id_sub int unique,
id_student int unique,
mark float default 0 check (mark >=0 and mark <= 100),
exam_times tinyint default 1,
foreign key (id_sub) references subjects(id),
foreign key (id_student) references students(id)
);