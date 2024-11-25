use thuc_hanh2;
create table students(
id varchar(20) primary key,
name_student varchar(50) not null,
ngay_sinh datetime not null,
class_name varchar(20) not null,
gender varchar(20) not null
);
create table teachers(
id varchar(20) primary key,
name_student varchar(50) not null,
phone_number varchar(10)
);
create table subjects (
id varchar(20) primary key,
name_subject varchar(50) not null,
id_teacher varchar(20),
foreign key (id_teacher) references teachers(id)
);
create table scores (
id_student varchar(20) primary key,
id_subject varchar(50) primary key,
score int not null,
final_date datetime not null,
foreign key (id_student) references students(id),
foreign key (id_subject) references subjects(id)
);
