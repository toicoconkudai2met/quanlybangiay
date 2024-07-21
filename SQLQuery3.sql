create database duan1
use duan1

create table sanpham(
	MaSP int identity primary key,
	TenSP nvarchar(50) not null,
	SoLuong int not null,
	ChatLieu nvarchar(20) not null,
	KichCo int not null,
	MauSac nvarchar(20) not null,
	GiaBan money not null,
	anh varchar(100)
)

create table NhanVien(
	MaNV int identity primary key,
	TenNV nvarchar(50) not null,
	GioiTinh nvarchar(5) not null,
	SDT varchar(10) not null,
	Calam nvarchar(10) not null,
	Ngaysinh date not null,
	Dchi nvarchar(50) not null,
	SoNgayNghi int not null 
)
create table KhachHang(
	MaKH int identity primary key,
	TenKH nvarchar(50) not null,
	GioiTinh nvarchar(5) not null,
	SDT varchar(10) not null,
	PhanLoaiKH nvarchar(10) not null,
	Ngaysinh date not null,
	Dchi nvarchar(50) not null
)
CREATE TABLE voucher (
    MaVoucher INT identity PRIMARY KEY,
    TenVoucher VARCHAR(255),
    SoTienGiamGia DECIMAL(10, 2),
    TiLeGiamGia DECIMAL(5, 2),
    NgayBatDau DATE,
    NgayHetHan DATE,
    DieuKienApDung TEXT,
);
CREATE TABLE HoaDon (
    MaHD INT identity PRIMARY KEY,            -- Mã hóa đơn (Primary Key)
    NgayBan DATE,                    -- Ngày bán
    MaKH INT,                        -- Mã khách hàng (Foreign Key)
    TenKH VARCHAR(255),              -- Tên khách hàng
    DchiKH VARCHAR(255),             -- Địa chỉ khách hàng
    SDTKH VARCHAR(20),               -- Số điện thoại khách hàng
    MaNV INT,                        -- Mã nhân viên (Foreign Key)
    FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

CREATE TABLE ChiTietHoaDon (
    MaCTHD INT identity PRIMARY KEY ,  -- Mã chi tiết hóa đơn (Primary Key)
    MaHD INT,                               -- Mã hóa đơn (Foreign Key)
    MaSP int,
	TenSP VARCHAR(50),                     -- Tên sản phẩm
    SoLuong INT,                            -- Số lượng
    MaVoucher INT,                          -- Mã giảm giá (Foreign Key)
    DonGia DECIMAL(10, 2),                  -- Đơn giá
    ThanhTien DECIMAL(10, 2),               -- Thành tiền
    FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP),
	FOREIGN KEY (MaHD) REFERENCES HoaDon(MaHD),
    FOREIGN KEY (MaVoucher) REFERENCES voucher(MaVoucher)
);

INSERT INTO KhachHang (TenKH, GioiTinh, SDT, PhanLoaiKH, Ngaysinh, Dchi) VALUES 
('Nguyen Van A', 'Nam', '0912345678', 'VIP', '1990-01-01', '123 Duong ABC, TP.Hanoi'),
('Le Thi B', 'Nu', '0987654321', 'Thuong', '1992-02-02', '456 Duong DEF, TP.Hanoi'),
('Tran Van C', 'Nam', '0909123456', 'VIP', '1988-03-03', '789 Duong GHI, TP.HCM'),
('Pham Thi D', 'Nu', '0911222333', 'Thuong', '1985-04-04', '012 Duong JKL, TP.HCM'),
('Vu Thi E', 'Nu', '0933445566', 'VIP', '1993-05-05', '345 Duong MNO, TP.HCM');

INSERT INTO NhanVien (TenNV, GioiTinh, SDT, Calam, Ngaysinh, Dchi, SoNgayNghi) VALUES 
('Tran Van C', 'Nam', '0911222333', 'Ca Sáng', '2005-05-05', '789 Duong GHI, TP.Hanoi', 2),
('Nguyen Van E', 'Nam', '0909123456', 'Ca Toi', '1990-09-09', '678 Duong PQR, TP.HCM', 3),
('Pham Thi D', 'Nu', '0999888777', 'Ca Chieu', '2003-08-08', '012 Duong JKL, TP.Hanoi', 0);


INSERT INTO SanPham (TenSP, SoLuong, ChatLieu, KichCo, MauSac, GiaBan, anh) VALUES 
('Adidas F50 Elite Firm Ground', 10, N'Da tổng hợp', 42, N'Xanh Dương', 5800000, 'sanpham1.jpg'),
('Adidas X Crazyfast Club Turf', 15, N'Da tổng hợp', 41, N'Vàng', 1120000, 'sanpham2.jpg'),
('Nike Zoom Vapor 15 Academy', 17, N'Da tổng hợp', 38, N'Xanh Dương', 2609000, 'sanpham3.jpg'),
('Nike Phantogx Academy ', 15, N'Da tổng hợp', 40, N'Xanh Lá', 1565400, 'sanpham4.jpg'),
('Under Armour Shadow Turf 2.0', 20, N'Da tự nhiên', 37, N'Trắng', 1396500, 'sanpham5.jpg'),
('Under Armour Shadow Junior 2.0', 10, N'Da tự nhiên', 39, N'Xanh Lá', 1396500, 'sanpham6.jpg'),
('Nike Zoom Mercurial Superfly 9 Academy Km', 10, N'Da tự nhiên', 39, N'Xanh Dương', 2169300, 'sanpham7.jpg'),
('PUMA ULTRA MATCH TT', 15, N'Da tổng hợp', 38, N'Hồng đen', 1650000, 'sanpham2.jpg'),
('PUMA ULTRA MATCH ENERGY TT ', 12, N'Da tổng hợp', 37, N'Hồng Xanh', 1199000, 'sanpham2.jpg'),
('ASICS CALCETTO WD 9 TF ', 12, N'Da tự nhiên', 39, N'Trắng Xanh', 1750000, 'sanpham2.jpg'),
('ASICS CALCETTO WD 9 TF ', 12, N'Da tự nhiên', 40, N'Đỏ', 1750000, 'sanpham2.jpg'),
('(HÀNG VNXK)Giày đá bóng chính hãng thăng Long', 30, N'Vải', 42, N'Trắng Xanh', 1090000, 'sanpham2.jpg'),
('(HÀNG VNXK)Giày đá bóng chính hãng thăng Long', 30, N'Vải', 41, N'Đen Cam', 1090000, 'sanpham2.jpg')


INSERT INTO Voucher (TenVoucher, SoTienGiamGia, TiLeGiamGia, NgayBatDau, NgayHetHan, DieuKienApDung) VALUES 
('Voucher 1', 200000, 10, '2023-01-01', '2023-12-31', 'Ap dung cho hoa don tren 1000000'),
('Voucher 2', 500000, 15, '2023-01-01', '2023-12-31', 'Ap dung cho hoa don tren 2500000'),
('Voucher 3', 700000, 15, '2023-01-01', '2023-12-31', 'Ap dung cho hoa don mua 3 san pham trên 1000000'),
('Voucher 3', 100000, 15, '2023-01-01', '2023-12-31', 'Ap dung cho sinh nhật khách VIP'),
('Voucher 3', 100000, 15, '2023-01-01', '2023-12-31', 'Ap dung cho sinh viên');

INSERT INTO HoaDon (NgayBan, MaKH, TenKH, DchiKH, SDTKH, MaNV) VALUES 
('2023-07-15', 1, 'Nguyen Van A', '123 Duong ABC, TP.HCM', '0912345678', 1),
('2023-07-16', 2, 'Le Thi B', '456 Duong DEF, TP.HCM', '0987654321', 2),
('2023-07-17', 3, 'Tran Van C', '789 Duong GHI, TP.HCM', '0909123456', 1),
('2023-07-18', 4, 'Pham Thi D', '012 Duong JKL, TP.HCM', '0911222333', 2),
('2023-07-19', 5, 'Vu Thi E', '345 Duong MNO, TP.HCM', '0933445566', 1);


INSERT INTO ChiTietHoaDon (MaHD, MaSP, TenSP, SoLuong, MaVoucher, DonGia, ThanhTien) VALUES 
(1, 1, 'Adidas F50 Elite Firm Ground', 2, 1, 5800000, 2 * 5800000 - 200000),
(2, 2, 'Adidas X Crazyfast Club Turf', 1, 2, 1120000, 1 * 1120000),
(3, 3, 'Nike Zoom Vapor 15 Academy', 3, 3, 2609000, 3 * 2609000 - 700000),
(4, 4, 'Nike Phantogx Academy', 1, 4, 1565400, 1 * 1565400 - 100000),
(5, 5, 'Under Armour Shadow Turf 2.0', 4, 5, 1396500, 4 * 1396500 - 100000);

