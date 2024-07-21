create database QLBG

use QLBG

create table KhachHang(
MaKH varchar(5) primary key,
TenKH nvarchar(20) not null,
dchi nvarchar(30)not null,
SDT varchar(10)not null,
Email varchar(30)not null
)

create table NhaCungCap(
MaNCC varchar(5)primary key,
TenNCC nvarchar(20)not null,
NguoiLH nvarchar(30)not null,
SDT varchar(10)not null,
Dchi nvarchar(30)not null

)

create table Spham(
MaSP varchar(5)primary key,
TenSP nvarchar(50)not null,
Mota nvarchar(200)not null,
Gia money not null,
Soluongtonkho int not null,
brand nvarchar(10) not null,
Mau nvarchar(10) not null,
Size int not null,
MaNCC varchar(5)
FOREIGN KEY (MaNCC) REFERENCES NhaCungCap(MaNCC)
)

create table voucher(
MaVoucher varchar(5) primary key,
SoTienGiamGia money not null,
NgayHetHan date not null

)

create table CuaHang(
MaCH varchar(5) primary key,
TenCH nvarchar(20) not null,
dchi nvarchar(30) not null,
SDT varchar(10) not null,
Email varchar(30) not null
)

create table NhanVien(
MaNV varchar(5) primary key,
TenNV nvarchar(20) not null,
dchi nvarchar(30) not null,
SDT varchar(10) not null,
Email varchar(30) not null,
Luong money not null,
MaCH varchar(5),
FOREIGN KEY (MaCH) REFERENCES CuaHang(MaCH)

)
create table DonHang(
MaDH varchar(5)primary key,
MaKH varchar(5),
NgayDatHang date not null,
TongTien money not null,
MaVoucher varchar(5) ,
MaNV varchar(5),
FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
FOREIGN KEY (MaVoucher) REFERENCES voucher(MaVoucher),
FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)
)

create table ChiTietDonHang(
MaCTDH varchar(5) primary key,
MaDH varchar(5),
MaSP varchar(5),
SoLuong int not null,
FOREIGN KEY (MaDH) REFERENCES DonHang(MaDH),
FOREIGN KEY (MaSP) REFERENCES SPham(MaSP)
)

INSERT INTO NhaCungCap(MaNCC,TenNCC,NguoiLH,SDT,Dchi)
VALUES
('NCC01','Adidas',N'Tran Duc Huy','0999999999','abc-xyz'),
('NCC02','Nike',N'Tran Duc Huy','0999999999','abc-xyz'),
('NCC03','Under Armour',N'Tran Duc Huy','0999999999','abc-xyz')

INSERT INTO Spham(MaSP, TenSP, Mota, Gia, Soluongtonkho, brand, MaNCC,mau,Size)
VALUES 
 ('SP000','Adidas F50 Elite Firm Ground',N'Gi?i phóng t?c d? v?i adidas F50. Ðu?c thi?t k? d? khai thác toàn b? ti?m nang v? tang t?c, di chuy?n và t?c d? c?a b?n.','5800000',10,' adidas','NCC01',N'Xanh Duong',36),
 ('SP001','Unisex Adidas X Crazyfast Club Turf',N'Không gì c?n du?c m?i khi t?c d? thu?n túy kích ho?t. Thay d?i th? tr?n ngay t?c kh?c và b? l?i hàng h?u v? phía sau v?i dôi giày adidas X Crazyfast siêu nh?. ','1280000',10,'adidas','NCC01',N'Ð?',37),
 ('SP002','Unisex Adidas Copa Pure 2 Elite',N'Ð? ki?m soát bóng m?t cách hoàn h?o, b?n c?n có m?t dôi giày dá bóng v?a v?n, ôm chân và cho c?m giác bóng t?t.','2560000',10,' adidas','NCC01',N'Xanh Duong',36),
 ('SP003','Unisex Under Armour Shadow Turf 2.0',N'Th?ng tr? trên sân c? nhân t?o v?i Giày Ðá Bóng Unisex Under Armour Shadow Turf 2.0','1995000',10,'Under Armo','NCC03',N'Xám',40),
 ('SP004','Nike Zoom Mercurial Vapor 15 Academy Xxv',N'Thi?t k? d?c dáo cung c?p l?c kéo siêu tích di?n v?i kh? nang nh? nhanh d? t?o s? tách bi?t rõ r?t.','1565400',10,' Nike','NCC02',N'Xanh Lá',39),
 ('SP005','Nike Junior Phantom Gx Academy Turf',N'Ch?n Giày Ðá Bóng Tr? Em Nike Junior Phantom GX Academy Turf d? giúp con b?n bùng cháy dam mê và chinh ph?c m?i th? thách trên sân c?!','1392300',10,' Nike','NCC01',N'Xanh Mint',36),
 ('SP006','Nike Zoom Vapor 15 Academy',N'N?m b?t co h?i trên sân bóng khi mang dôi Giày Ðá Bóng Nam Nike Zoom Mercurial Vapor 15 Academy Turf','2609000',10,' Nike','NCC02',N'Xanh Duong',38),
 ('SP007','Under Armour Shadow Turf Junior 2.0',N'Th?ng tr? trên sân c? nhân t?o v?i Giày Ðá Bóng Tr? Em Under Armour Shadow Turf Junior 2.0','1071000',10,'Under Armo','NCC03',N'Tr?ng',36),
 ('SP008','Unisex Under Armour Shadow Junior 2.0',N'Th?ng tr? trên sân c? nhân t?o v?i Giày Ðá Bóng Unisex Under Armour Shadow Turf 2.0','1995000',10,'Under Armo','NCC03',N'Xanh lá',41),
 ('SP009','Adidas Predator Elite','Predator 24 Elite Low không ch? là m?t dôi giày bóng dá, mà còn là m?t tuyên b? v? ý th?c b?o v? môi tru?ng','4060000',10,'adidas','NCC01','Ðen',42),
 ('SP010','Nike Zoom Mercurial Superfly 9 Academy Km Tf','Ðôi giày mang l?i tr?i nghi?m choi bóng d?ng c?p nhu ngôi sao dá bóng th? gi?i Kylian Mbappé','2169300',10,'Nike','NCC02','Xanh Duong',40),
 ('SP011','Adidas F50 Elite Firm Ground','Gi?i phóng t?c d? v?i adidas F50. Ðu?c thi?t k? d? khai thác toàn b? ti?m nang v? tang t?c, di chuy?n và t?c d? c?a b?n.','5800000',50,'adidas','NCC01','Vàng',39),
 ('SP012','Nike Phantom Gx Academy','dôi giày dá bóng này s? mang d?n cho b?n c?m giác ch?m bóng chính xác.','1565400',10,'Nike','NCC02','Xanh Lá',38)


 insert into KhachHang(MaKH,TenKH,dchi,SDT,Email)
 VALUES
('KH001','Nguyen Van A','HaNoi','011111111','nguyenvana@gamil.com'),
('KH002','Nguyen Van B','HaNoi','022222222','nguyenvanb@gamil.com'),
('KH003','Nguyen Van C','HaNoi','033333333','nguyenvanc@gamil.com'),
('KH004','Nguyen Van D','HaNoi','044444444','nguyenvand@gamil.com'),
('KH005','Nguyen Van E','HaNoi','055555555','nguyenvane@gamil.com'),
('KH006','Nguyen Van F','HaNoi','066666666','nguyenvanf@gamil.com'),
('KH007','Nguyen Van G','HaNoi','077777777','nguyenvang@gamil.com')

insert into CuaHang(MaCH,TenCH,dchi,SDT,Email)
values
('CH001','Goal Getter Store',N'Hà N?i','08888888','GoalGetterStore@gmail.com'),
('CH002','Goal Getter Store 2',N'Hà N?i','08888889','GoalGetterStore2@gmail.com')

insert into NhanVien(MaNV,TenNV,Dchi,SDT,Email,Luong,MaCH)
values
('NV001','Nguyen Thi A','hanoi','0123456789','nguyenthia@','5000000','CH001'),
('NV002','Nguyen Thi B','hanoi','0789456123','nguyenthib@','5000000','CH001'),
('NV003','Nguyen Thi C','hanoi','0456789123','nguyenthic@','5000000','CH002'),
('NV004','Nguyen Thi D','hanoi','0987456112','nguyenthid@','5000000','CH002')

insert into voucher(MaVoucher,SoTienGiamGia,NgayHetHan)
values
('V0001',20000,'6/11/2024'),
('V0002',100000,'6/11/2024'),
('V0003',200000,'6/11/2024'),
('V0004',500000,'6/11/2024'),
('V0005',1000000,'6/11/2024'),
('V0006',2000000,'6/11/2024')

insert into DonHang(MaDH,MaKH,MaNV,MaVoucher,NgayDatHang,TongTien)
Values
('DH001','KH001','NV001','V0001','5/10/2024',5000000),
('DH002','KH002','NV002','V0002','5/10/2024',5000000),
('DH003','KH003','NV003','V0003','5/10/2024',5000000),
('DH004','KH004','NV004','V0004','5/10/2024',5000000),
('DH005','KH005','NV004','V0005','5/10/2024',5000000),
('DH006','KH006','NV001','V0006','5/10/2024',5000000)

insert into ChiTietDonHang(MaCTDH,MaDH,MaSP,SoLuong)
values
('CT001','DH001','SP001',3),
('CT002','DH002','SP002',3),
('CT003','DH003','SP003',3),
('CT004','DH004','SP004',3),
('CT005','DH005','SP005',3),
('CT006','DH006','SP006',3)


 select * from NhaCungCap
 select * from Spham
 select * from CuaHang
 select * from NhanVien