create database ss3;
use ss3;
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
id_sub int,
id_student int,
mark float default 0 check (mark >=0 and mark <= 100),
exam_times tinyint default 1,
foreign key (id_sub) references subjects(id),
foreign key (id_student) references students(id)
);
insert into classes 
values 
(null, 'Class A', '2024-12-01 08:00:00', 1),
(null, 'Class B', '2024-12-15 09:00:00', 1),
(null, 'Class C', '2024-11-01 08:00:00', 0);
insert into students
values
(null, 'Hung', 'Hanoi', '0123456789', 1, 1),
(null, 'Ha', 'HCM', '0987654321', 1, 2),
(null, 'Huyen', 'Danang', '0123454321', 1, 3),
(null, 'Lan', 'Hue', '0976543210', 1, 2);
insert into subjects 
values
(null, 'Math', 3, 1),
(null, 'Physics', 4, 1),
(null, 'Chemistry', 5, 1),
(null, 'History', 2, 1);
insert into marks
values
(null, 1, 1, 85, 1),
(null, 2, 2, 92, 1),
(null, 3, 3, 75, 2),
(null, 1, 4, 90, 1);
select * from students
         where name_student like 'H%';
select * from classes
		 where month(start_date) = 12;
select * from subjects
		where credit >=3 and credit <=5;
set SQL_SAFE_UPDATES = 0;
update students 
set id_class = 2
where name_student = 'Hung';
set SQL_SAFE_UPDATES = 1;
select s.name_student as name_student,
		sub.sub_name as name_subject,
        m.mark as mark
        from marks m
        join students s on m.id_student = s.id
        join subjects sub on m.id_sub = sub.id
        order by m.mark desc, s.name_student asc;