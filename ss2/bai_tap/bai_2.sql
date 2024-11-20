use ss2_bai_2;
create table customers(
id int primary key,
name_cus varchar(50) not null,
age int
);
create table products(
id int primary key,
name_product varchar(50),
price double
);
create table orders(
id int primary key,
id_customer int,
date_order datetime,
total_price double,
foreign key (id_customer) references customers(id)
);
create table orderdetails (
	id_order int, 
    id_product int,
    quantity_order int,
    primary key (id_order, id_product),
    foreign key (id_order) references orders(id),
    foreign key (id_product) references products(id)
    );
