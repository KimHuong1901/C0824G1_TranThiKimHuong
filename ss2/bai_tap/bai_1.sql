use ss2;
create table vat_tu(
id int primary key auto_increment,
ten_vat_tu varchar (50) not null,
gia_nhap int not null,
so_luong int not null
);
create table nha_cung_cap(
id int primary key auto_increment,
ten_nha_cung_cap varchar(30) not null,
dia_chi varchar (30) not null,
sdt int not null
);
create table don_hang(
id int primary key auto_increment,
ngay_len datetime not null,
ma_vat_tu int,
foreign key (ma_vat_tu) references vat_tu(id)
);
create table phieu_xuat(
id int primary key auto_increment,
ngay_xuat datetime
);
create table chi_tiet_phieu_xuat(
id_phieu_xuat int, 
id_vat_tu int,
don_gia_xuat int not null,
so_luong_xuat int not null,
primary key (id_phieu_xuat, id_vat_tu),
foreign key (id_phieu_xuat) references phieu_xuat(id),
foreign key (id_vat_tu) references vat_tu(id)
);
create table phieu_nhap(
id int primary key auto_increment,
ngay_nhap datetime not null
);
create table chi_tiet_phieu_nhap(
id_phieu_nhap int,
id_vat_tu int, 
don_gia_nhap int not null,
so_luong_nhap int not null,
primary key (id_phieu_nhap, id_vat_tu),
foreign key (id_phieu_nhap) references phieu_nhap(id),
foreign key (id_vat_tu) references vat_tu(id)
);
create table chi_tiet_don_hang(
id_don_hang int,
id_vat_tu int,
primary key (id_don_hang, id_vat_tu),
foreign key (id_don_hang) references don_hang(id),
foreign key (id_vat_tu) references vat_tu(id)
);
create table chi_tiet_cung_cap(
id_nha_cung_cap int,
id_vat_tu int,
primary key (id_nha_cung_cap, id_vat_tu),
foreign key (id_nha_cung_cap) references nha_cung_cap(id),
foreign key (id_vat_tu) references vat_tu(id)
);

