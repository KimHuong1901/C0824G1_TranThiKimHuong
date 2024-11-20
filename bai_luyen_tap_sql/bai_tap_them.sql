use bai_tap_sql;
create table vi_tri(
id int unique not null primary key,
ten_vi_tri varchar(50) not null
);
create table trinh_do(
id int unique not null primary key,
name_trinh_do varchar (20)
);
create table bo_phan(
id int unique not null primary key,
name_bo_phan varchar (50) not null
);

create table nhan_vien(
id_nhan_vien int primary key unique,
name_nhan_vien varchar(100) not null,
id_vi_tri int,
id_trinh_do int,
id_bo_phan int,
ngay_sinh date not null,
cmnd_nhan_vien varchar(20) not null,
luong int not null,
sdt int not null,
email varchar(50) not null,
dia_chi varchar(100),
foreign key (id_vi_tri) references vi_tri(id),
foreign key (id_trinh_do) references trinh_do(id),
foreign key (id_bo_phan) references bo_phan(id)
);
create table loai_khach(
id int unique not null primary key,
name_loai_khach varchar (100) not null
);
create table khach_hang(
id int unique not null primary key,
id_loai_khach_hang int,
ho_va_ten varchar (100) not null,
ngay_sinh date not null,
cmnd varchar(20) not null,
sdt int (10) not null,
email varchar (50),
dia_chi varchar (50) not null,
foreign key (id_loai_khach_hang) references loai_khach(id)
);
create table loai_dich_vu(
id int unique not null primary key,
name_loai_dich_vu varchar (200) not null
);
create table kieu_thue(
id int unique not null primary key,
name_kieu_thue varchar (100) not null,
gia int not null
);
create table dich_vu(
id int unique not null primary key,
name_dich_vu varchar (100) not null,
dien_tich int not null,
so_tang int not null,
so_nguoi_toi_da int not null,
chi_phi_thue int not null,
id_kieu_thue int,
id_loai_dich_vu int,
trang_thai varchar (30) not null,
foreign key (id_kieu_thue) references kieu_thue(id),
foreign key (id_loai_dich_vu) references loai_dich_vu(id)
);
create table hop_dong(
id int unique not null primary key,
id_nhan_vien int,
id_khach_hang int, 
id_dich_vu int,
ngay_lam_hop_dong date not null,
ngay_ket_thuc date not null,
tien_dat_coc int not null,
tong_tien int not null,
foreign key (id_nhan_vien) references nhan_vien(id),
foreign key (id_khach_hang) references khach_hang(id),
foreign key (id_dich_vu) references dich_vu(id)
);
create table dich_vu_di_kem(
id int unique not null primary key,
name_dich_vu varchar (100) not null,
gia int not null,
don_vi int not null,
trang_thai_kha_dung varchar (30) not null
);
create table hop_dong_chi_tiet(
id int unique not null primary key,
id_hop_dong int,
id_dich_vu_di_kem int,
so_luong int not null,
foreign key (id_hop_dong) references hop_dong(id),
foreign key (id_dich_vu_di_kem) references dich_vu_di_kem(id)
);








