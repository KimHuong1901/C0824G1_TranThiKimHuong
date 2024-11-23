create database bai_tap_;
use bai_tap_;
create table trinh_do(
id int unique not null primary key,
name_trinh_do varchar (20)
);
create table bo_phan(
id int unique not null primary key,
name_bo_phan varchar (50) not null
);
create table vi_tri(
id int unique not null primary key,
name_vi_tri varchar (50)
);
create table nhan_vien(
id int primary key unique,
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
insert into trinh_do (id, name_trinh_do) 
values 
(101, 'Đại học'),
(102, 'Cao đẳng'),
(103, 'Trung cấp'),
(104, 'Thạc sĩ'),
(105, 'Tiến sĩ'),
(106, 'Đào tạo nghề');
insert into bo_phan (id, name_bo_phan) 
values
(201, 'Kinh doanh'),
(202, 'Kế toán'),
(203, 'Nhân sự'),
(204, 'Kỹ thuật'),
(205, 'Marketing'),
(206, 'Chăm sóc khách hàng'),
(207, 'Pháp chế');
insert into vi_tri (id, name_vi_tri) 
values 
(301, 'Quản lý'),
(302, 'Nhân viên'),
(303, 'Thực tập sinh'),
(304, 'Giám sát'),
(305, 'Chuyên viên'),
(306, 'Trưởng phòng'),
(307, 'Giám đốc');
insert into nhan_vien 
(id, name_nhan_vien, id_vi_tri, id_trinh_do, id_bo_phan, ngay_sinh, cmnd_nhan_vien, luong, sdt, email, dia_chi)
values 
(401, 'Nguyen Van A', 301, 101, 201, '1990-01-01', '012345678', 15000, 987654321, 'vana@gmail.com', 'Ha Noi'),
(402, 'Le Thi B', 302, 102, 202, '1995-05-15', '123456789', 12000, 912345678, 'leb@gmail.com', 'Da Nang'),
(403, 'Tran Van C', 303, 103, 203, '1998-03-20', '234567891', 10000, 998765432, 'tranc@gmail.com', 'Quang Nam'),
(404, 'Hoang Thi D', 304, 104, 204, '1992-07-30', '345678912', 8000, 976543219, 'hoangd@gmail.com', 'Ho Chi Minh'),
(405, 'Pham Minh E', 306, 105, 205, '1987-11-11', '567891234', 20000, 965432198, 'pme@gmail.com', 'Da Lat'),
(406, 'Nguyen Thi F', 307, 106, 207, '1994-06-01', '678912345', 25000, 988888999, 'ntf@gmail.com', 'Hai Phong');
insert into nhan_vien 
(id, name_nhan_vien, id_vi_tri, id_trinh_do, id_bo_phan, ngay_sinh, cmnd_nhan_vien, luong, sdt, email, dia_chi)
values 
(407, 'Hoang Thi HHHHHHHHHHHHHHH', 307, 106, 207, '1994-06-01', '4452424', 25000, 34234424, 'HH@gmail.com', 'Hai Phong');

insert into loai_khach (id, name_loai_khach) 
values 
(501, 'Cá nhân'),
(502, 'Doanh nghiệp'),
(503, 'Đoàn thể quốc tế');
insert into loai_khach (id, name_loai_khach) 
values 
(504, 'Diamond');
insert into khach_hang 
(id, id_loai_khach_hang, ho_va_ten, ngay_sinh, cmnd, sdt, email, dia_chi)
value 
(601, 501, 'Nguyen Van E', '1985-10-20', '543219876', 934567891, 'nve@gmail.com', 'Da Nang'),
(602, 502, 'Tran Thi F', '1990-05-15', '654321987', 921234567, 'ttf@gmail.com', 'Ha Noi'),
(603, 502, 'Le Van G', '1987-03-10', '765432198', 988888888, 'lvg@gmail.com', 'Quang Nam'),
(604, 501, 'Pham Thi H', '1995-08-25', '876543210', 955555555, 'pth@gmail.com', 'Ho Chi Minh'),
(605, 503, 'Doan Van I', '1992-03-22', '987654321', 966666666, 'dvi@gmail.com', 'Vung Tau');
insert into khach_hang 
(id, id_loai_khach_hang, ho_va_ten, ngay_sinh, cmnd, sdt, email, dia_chi)
value 
(606, 501, 'Nguyen Van Y', '1955-10-20', '233442334', 65646656, 'nve@gmail.com', 'Da Nang');
insert into khach_hang 
(id, id_loai_khach_hang, ho_va_ten, ngay_sinh, cmnd, sdt, email, dia_chi)
value 
(607, 504, 'Nguyen Van W', '1955-10-20', '23423434', 221211, 'WW@gmail.com', 'Da Nang'),
(608, 504, 'Nguyen Van Z', '1955-10-20', '4444245', 43432424, 'ZZ@gmail.com', 'Quang Nam');
insert into loai_dich_vu (id, name_loai_dich_vu) 
values 
(701, 'Phòng họp'),
(702, 'Biệt thự nghỉ dưỡng'),
(703, 'Khách sạn'),
(704, 'Căn hộ cao cấp'),
(705, 'Nhà nghỉ bình dân');
insert into kieu_thue (id, name_kieu_thue, gia) 
values 
(801, 'Thuê ngày', 500),
(802, 'Thuê tháng', 10000),
(803, 'Thuê quý', 27000),
(804, 'Thuê năm', 100000),
(805, 'Thuê giờ', 100);
insert into dich_vu 
(id, name_dich_vu, dien_tich, so_tang, so_nguoi_toi_da, chi_phi_thue, id_kieu_thue, id_loai_dich_vu, trang_thai)
values
(901, 'Villa', 50, 1, 10, 5000, 801, 701, 'Còn trống'),
(902, 'House', 200, 2, 15, 15000, 802, 702, 'Đã thuê'),
(903, 'Phòng', 100, 5, 20, 20000, 803, 703, 'Còn trống');
insert into hop_dong 
(id, id_nhan_vien, id_khach_hang, id_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, tong_tien)
values 
(1001, 401, 601, 901, '2024-01-01', '2024-01-10', 1000, 5000),
(1002, 402, 602, 902, '2024-02-01', '2024-02-20', 3000, 15000),
(1003, 403, 603, 903, '2024-03-01', '2024-03-15', 4000, 20000),
(1004, 404, 604, 902, '2024-04-01', '2024-04-30', 5000, 12000),
(1005, 405, 605, 903, '2024-05-01', '2024-05-10', 2000, 3000);
insert into hop_dong 
(id, id_nhan_vien, id_khach_hang, id_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, tong_tien)
values 
(1006, 406, 607, 901, '2024-01-01', '2024-01-10', 1000, 5000),
(1007, 407, 608, 902, '2024-01-01', '2024-01-10', 1000, 5000);

insert into hop_dong 
(id, id_nhan_vien, id_khach_hang, id_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, tong_tien)
values 
(1012, 401, 601, 901, '2019-09-01', '2019-09-10', 1000, 5000), 
(1013, 402, 602, 902, '2019-10-01', '2019-10-20', 1500, 8000),
(1010, 403, 603, 903, '2019-11-01', '2019-11-15', 2000, 10000),
(1011, 404, 604, 901, '2019-12-01', '2019-12-10', 2500, 12000);

insert into hop_dong 
(id, id_nhan_vien, id_khach_hang, id_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, tong_tien)
values 
(1014, 401, 601, 901, '2019-09-01', '2019-09-10', 1000, 5000), 
(1015, 402, 602, 902, '2019-10-01', '2019-10-20', 1500, 8000), 
(1010, 403, 603, 903, '2019-11-01', '2019-11-15', 2000, 10000),
(1011, 404, 604, 901, '2019-12-01', '2019-12-10', 2500, 12000), 
(1012, 405, 605, 901, '2020-01-01', '2020-01-10', 1500, 7000),
(1013, 406, 606, 902, '2020-02-01', '2020-02-10', 2000, 8000);
insert into dich_vu_di_kem 
(id, name_dich_vu, gia, don_vi, trang_thai_kha_dung)
values 
(1101, 'Thuê xe', 500, 1, 'Còn trống'),
(1102, 'Nhà bếp', 1000, 1, 'Đã thuê'),
(1103, 'Hồ bơi', 1500, 1, 'Đã thuê'),
(1104, 'Nhà vệ sinh', 300, 1, 'Còn trống'),
(1105, 'Wifi', 200, 1, 'Còn trống');

insert into hop_dong_chi_tiet 
(id, id_hop_dong, id_dich_vu_di_kem, so_luong)
values 
(1201, 1001, 1101, 2),
(1202, 1002, 1102, 1),
(1203, 1003, 1103, 3),
(1204, 1004, 1104, 1),
(1205, 1005, 1105, 4);
insert into hop_dong_chi_tiet 
(id, id_hop_dong, id_dich_vu_di_kem, so_luong)
values 
(1208, 1014, 1101, 2),
(1209, 1015, 1103, 3), 
(1210, 1010, 1104, 1), 
(1211, 1011, 1105, 4), 
(1212, 1012, 1101, 1),
(1213, 1013, 1103, 1);
update hop_dong_chi_tiet 
set so_luong = 1 
where id = 1208;
update hop_dong_chi_tiet 
set so_luong = 1 
where id = 1209;
update hop_dong_chi_tiet 
set so_luong = 1 
where id IN (1210, 1211, 1212, 1213);
select * from nhan_vien where name_nhan_vien regexp '^[HKT]'and char_length(name_nhan_vien) <=15;
select * from khach_hang where (((datediff( current_date(), ngay_sinh))/365) between 15 and 50) and dia_chi = 'Da Nang' or 'Quang Tri';

select khach_hang.ho_va_ten, count(hop_dong.id) as so_lan_dat_phong
from khach_hang
join loai_khach on khach_hang.id_loai_khach_hang = loai_khach.id
join hop_dong on khach_hang.id = hop_dong.id_khach_hang
where loai_khach.name_loai_khach = 'Diamond'
group by khach_hang.id
order by so_lan_dat_phong ASC;
select
    khach_hang.id as id_khach_hang,
    khach_hang.ho_va_ten as ho_ten,
    loai_khach.name_loai_khach as ten_loai_khach,
    hop_dong.id as id_hop_dong,
    dich_vu_di_kem.name_dich_vu as ten_dich_vu,
    hop_dong.ngay_lam_hop_dong as ngay_lam_hop_dong,
    hop_dong.ngay_ket_thuc as ngay_ket_thuc,
    (dich_vu.chi_phi_thue + hop_dong_chi_tiet.so_luong * dich_vu_di_kem.gia) as tong_tien
from 
    khach_hang
left join 
    hop_dong on khach_hang.id = hop_dong.id_khach_hang
left join
    hop_dong_chi_tiet on hop_dong.id = hop_dong_chi_tiet.id_hop_dong
left join 
    dich_vu_di_kem on hop_dong_chi_tiet.id_dich_vu_di_kem = dich_vu_di_kem.id
left join 
    dich_vu on hop_dong.id_dich_vu = dich_vu.id
left join
    loai_khach on khach_hang.id_loai_khach_hang = loai_khach.id
order by 
    khach_hang.id;

select dv.id, 
dv.name_dich_vu, 
dv.dien_tich, 
dv.chi_phi_thue, 
ldv.name_loai_dich_vu
from 
dich_vu dv
join loai_dich_vu ldv on dv.id_loai_dich_vu = ldv.id
join hop_dong hd on dv.id = hd.id_dich_vu;
select 
    dv.id as id_dich_vu,
    dv.name_dich_vu as name_dich_vu,
    dv.dien_tich as dien_tich,
    dv.chi_phi_thue as chi_phi_thue,
    ldv.name_loai_dich_vu as ten_loai_dich_vu
from 
    dich_vu dv
join 
    loai_dich_vu ldv on dv.id_loai_dich_vu = ldv.id
where 
    dv.id not in (
        select id_dich_vu
        from hop_dong
        where ngay_lam_hop_dong between '2019-01-01' and '2019-03-31'
    );
    
    select 
    dv.id as id_dich_vu,
    dv.name_dich_vu as ten_dich_vu,
    dv.dien_tich as dien_tich,
    dv.so_nguoi_toi_da as so_nguoi_toi_da,
    dv.chi_phi_thue as chi_phi_thue,
    ldv.name_loai_dich_vu as ten_loai_dich_vu
from 
    dich_vu dv
join 
    loai_dich_vu ldv on dv.id_loai_dich_vu = ldv.id
where 
    dv.id in (
        select id_dich_vu
        from hop_dong
        where year(ngay_lam_hop_dong) = 2018
    )
and 
    dv.id not in (
        select id_dich_vu
        from hop_dong
        where year(ngay_lam_hop_dong) = 2019
    );
    
select distinct ho_va_ten as HoTenKhachHang 
from khach_hang;

select ho_va_ten as HoTenKhachHang 
from khach_hang
group by ho_va_ten;

select kh.ho_va_ten as HoTenKhachHang
from khach_hang kh
where not exists (
    select 1 
    from khach_hang kh2 
    where kh2.ho_va_ten = kh.ho_va_ten 
    and kh2.id > kh.id
);

select 
    month(ngay_lam_hop_dong) as thang,
    sum(tong_tien) as tong_doanh_thu
from 
    hop_dong
where 
    year(ngay_lam_hop_dong) = 2019
group by 
    month(ngay_lam_hop_dong)
order by  
    thang;
    
select 
    hd.id as id_hop_dong,
    hd.ngay_lam_hop_dong as ngay_lam_hop_dong,
    hd.ngay_ket_thuc as ngay_ket_thuc,
    hd.tien_dat_coc as tien_dat_coc,
    count(hdct.id) as so_luong_dich_vu_di_kem
from 
    hop_dong hd
left join
    hop_dong_chi_tiet hdct on hd.id = hdct.id_hop_dong
group by 
    hd.id;
    
select
    dvdk.id as id_dich_vu_di_kem,
    dvdk.name_dich_vu as ten_dich_vu_di_kem,
    dvdk.gia as gia,
    dvdk.don_vi as don_vi
from 
    dich_vu_di_kem dvdk
join 
    hop_dong_chi_tiet hdct on dvdk.id = hdct.id_dich_vu_di_kem
join 
    hop_dong hd on hd.id = hdct.id_hop_dong
join 
    khach_hang kh on hd.id_khach_hang = kh.id
join 
    loai_khach lk on kh.id_loai_khach_hang = lk.id
where 
    lk.name_loai_khach = 'Diamond'
    and (kh.dia_chi = 'Vinh' or kh.dia_chi = 'Quang Ngai');
    
    select 
    hd.id as id_hop_dong,
    nv.name_nhan_vien as ten_nhan_vien,
    kh.ho_va_ten as ten_khach_hang,
    kh.sdt as sdt_khach_hang,
    dv.name_dich_vu as ten_dich_vu,
    sum(hdct.so_luong) as so_luong_dich_vu_di_kem,
    hd.tien_dat_coc as tien_dat_coc
from 
    hop_dong hd
join 
    nhan_vien nv on hd.id_nhan_vien = nv.id
join 
    khach_hang kh on hd.id_khach_hang = kh.id
join 
    dich_vu dv on hd.id_dich_vu = dv.id
join 
    hop_dong_chi_tiet hdct on hd.id = hdct.id_hop_dong
where 
    hd.ngay_lam_hop_dong between '2019-10-01' and '2019-12-31'
    and hd.id not in (
        select id 
        from hop_dong 
        where ngay_lam_hop_dong between '2019-01-01' and '2019-06-30'
    )
group by 
    hd.id;
    
select
    dvdk.id as IDDichVuDiKem,
    dvdk.name_dich_vu as TenDichVuDiKem,
    COUNT(hdct.id) as SoLanSuDung
from 
    dich_vu_di_kem dvdk
join 
    hop_dong_chi_tiet hdct on dvdk.id = hdct.id_dich_vu_di_kem
group by
    dvdk.id
having 
    count(hdct.id) = (
        select max(SoLan) 
        from (
            select count(id) as SoLan 
            from hop_dong_chi_tiet 
            group by id_dich_vu_di_kem
        ) as so_lan_dung_dich_vu_nhieu_nhat
    );	
    
select
    hd.id as id_hop_dong,
    ldv.name_loai_dich_vu as ten_loai_dich_vu,
    dvdk.name_dich_vu as ten_dich_vu_di_kem,
    count(hdct.id) as so_lan_su_dung
from 
    hop_dong hd
join 
    hop_dong_chi_tiet hdct on hd.id = hdct.id_hop_dong
join 
    dich_vu_di_kem dvdk on hdct.id_dich_vu_di_kem = dvdk.id
join 
    loai_dich_vu ldv on dvdk.id = ldv.id
group by 
	hd.id, 
    ldv.name_loai_dich_vu, 
    dvdk.name_dich_vu
having 
    so_lan_su_dung = 1;


select 
    nv.id as id_nhan_vien, 
    nv.name_nhan_vien as ho_ten, 
    td.name_trinh_do as trinh_do, 
    bp.name_bo_phan as ten_bo_phan, 
    nv.sdt as so_dien_thoai, 
    nv.dia_chi as dia_chi,
    count(hd.id) as so_luong_hop_dong
from 
    nhan_vien nv
left join  
    hop_dong hd on nv.id = hd.id_nhan_vien and hd.ngay_lam_hop_dong between '2018-01-01' and '2019-12-31'
join 
    trinh_do td on nv.id_trinh_do = td.id
join 
    bo_phan bp on nv.id_bo_phan = bp.id
group by
    nv.id, td.name_trinh_do, bp.name_bo_phan
having 
    count(hd.id) <= 3;