CREATE DATABASE QuanLyBanHangDA1;
USE QuanLyBanHangDA1;


-- Create table NhanVien
CREATE TABLE NhanVien (
    MaNhanVien INT  PRIMARY KEY,
    TenNhanVien NVARCHAR(50) NOT NULL,
    SDT NVARCHAR(15),
    NgaySinh DATE,
    DiaChi NVARCHAR(100),
);

-- Create table KhachHang
CREATE TABLE KhachHang (
    SDTKH NVARCHAR(15) PRIMARY KEY,
    TenKhachHang NVARCHAR(50) NOT NULL,
    NgaySinh DATE,
    DiaChi NVARCHAR(100),
	PLKhachHang nvarchar(30)
);

-- Create table HoaDon
CREATE TABLE HoaDon (
    MaHoaDon INT PRIMARY KEY,
    NgayTao DATE NOT NULL,
    GhiChu NVARCHAR(100),
    TrangThai NVARCHAR(20),
    SDTKH NVARCHAR(15),
    MaNhanVien INT,
    FOREIGN KEY (SDTKH) REFERENCES KhachHang(SDTKH),
    FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien)
);

-- Create table SanPham
CREATE TABLE SanPham (
    MaSanPham INT PRIMARY KEY,
    TenSanPham NVARCHAR(50) NOT NULL
);

-- Create table MauSac
CREATE TABLE MauSac (
    MaMauSac INT PRIMARY KEY,
    TenMauSac NVARCHAR(50) NOT NULL
);

-- Create table KichCo
CREATE TABLE KichCo (
    MaKichCo INT PRIMARY KEY,
    TenKichCo NVARCHAR(50) NOT NULL
);

-- Create table chatlieu
CREATE TABLE ChatLieu (
    MaChatLieu INT PRIMARY KEY,
    LoaiChatLieu NVARCHAR(50) NOT NULL
);

-- Create table SanPhamChiTiet
CREATE TABLE SanPhamChiTiet (
    MaSPCT INT PRIMARY KEY,
    DonGia DECIMAL(10, 2) NOT NULL,
    SoLuong INT NOT NULL,
    MaSanPham INT,
    MaMauSac INT,
    MaKichCo INT,
	MaChatlieu INT,
	FOREIGN KEY (MaChatLieu) REFERENCES ChatLieu(MaChatLieu),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham),
    FOREIGN KEY (MaMauSac) REFERENCES MauSac(MaMauSac),
    FOREIGN KEY (MaKichCo) REFERENCES KichCo(MaKichCo)
);

-- Create table HoaDonChiTiet
CREATE TABLE HoaDonChiTiet (
    MaSPCT INT,
    MaHoaDon INT,
    DonGia DECIMAL(10, 2) NOT NULL,
    SoLuong INT NOT NULL,
    PRIMARY KEY (MaSPCT, MaHoaDon),
    FOREIGN KEY (MaSPCT) REFERENCES SanPhamChiTiet(MaSPCT),
    FOREIGN KEY (MaHoaDon) REFERENCES HoaDon(MaHoaDon)
);


-- Insert data into NhanVien
INSERT INTO NhanVien (MaNhanVien, TenNhanVien, SDT, NgaySinh, DiaChi) VALUES
(1,'Nguyen Van A', '0909123456', '1980-01-01', N'123 Đường A, TP. HCM'),
(2,'Tran Thi B', '0909345678', '1985-02-02', N'456 Đường B, TP. HCM'),
(3,'Le Van C', '0909567890', '1990-03-03', N'789 Đường C, TP. HCM'),
(4,'Pham Thi D', '0909789012', '1995-04-04', N'321 Đường D, TP. HCM'),
(5,'Hoang Van E', '0909901234', '2000-05-05', N'654 Đường E, TP. HCM');

-- Insert data into KhachHang
INSERT INTO KhachHang (SDTKH, TenKhachHang, NgaySinh, DiaChi,PLKhachHang) VALUES
('0912345678', 'Nguyen Thi X', '1980-01-01', N'12 Đường X, TP. HCM',N'Khách VIP'),
('0912345679', 'Tran Van Y', '1985-02-02', N'34 Đường Y, TP. HCM',N'Khách Thường'),
('0912345680', 'Le Thi Z', '1990-03-03', N'56 Đường Z, TP. HCM',N'Khách VIP'),
('0912345681', 'Pham Van W', '1995-04-04', N'78 Đường W, TP. HCM',N'Khách Thường'),
('0912345682', 'Hoang Thi V', '2000-05-05', N'90 Đường V, TP. HCM',N'Khách VIP');

-- Insert data into HoaDon
INSERT INTO HoaDon (MaHoaDon, NgayTao, GhiChu, TrangThai, SDTKH, MaNhanVien) VALUES
(1, '2023-01-01', N'Khách hàng thanh toán tiền mặt', N'Đã thanh toán', '0912345678', 1),
(2, '2023-01-15', N'Chuyển khoản ngân hàng', N'Đã thanh toán', '0912345679', 2),
(3, '2023-02-10', N'Thanh toán thẻ tín dụng', N'Đã thanh toán', '0912345680', 3),
(4, '2023-02-20', N'Khách hàng yêu cầu xuất hóa đơn', N'Chưa thanh toán', '0912345681', 4),
(5, '2023-03-05', N'Thanh toán sau khi nhận hàng', N'Đang xử lý', '0912345682', 5);

-- Insert data into SanPham
INSERT INTO SanPham (MaSanPham, TenSanPham) VALUES
(1, 'Adidas F50 Elite Firm Ground'),
(2, 'Adidas X Crazyfast Club Turf'),
(3, 'Nike Zoom Vapor 15 Academy'),
(4, 'Nike Phantogx Academy'),
(5, 'Under Armour Shadow Junior 2.0'),
(6, 'Nike Zoom Mercurial Superfly 9 Academy Km'),
(7, 'PUMA ULTRA MATCH TT'),
(8, 'PUMA ULTRA MATCH ENERGY TT'),
(9, 'ASICS CALCETTO WD 9 TF '),
(10, N'(HÀNG VNXK)Giày đá bóng chính hãng thăng Long');

-- Insert data into MauSac
INSERT INTO MauSac (MaMauSac, TenMauSac) VALUES
(1, N'Đỏ'),
(2, N'Xanh dương'),
(3, N'Vàng'),
(4, N'Đen'),
(5, N'Trắng'),
(6, N'Xanh lá');

-- Insert data into KichCo
INSERT INTO KichCo (MaKichCo, TenKichCo) VALUES
(1, '37'),
(2, '38'),
(3, '39'),
(4, '40'),
(5, '41'),
(6, '42')

INSERT INTO ChatLieu (MaChatLieu, LoaiChatLieu) VALUES
(1, N'Sợi tự nhiên'),
(2, N'Polyester'),
(3, N'Vải'),
(4, N'Da tự nhiên'),
(5, N'Da tổng hợp');

-- Insert data into SanPhamChiTiet
INSERT INTO SanPhamChiTiet (MaSPCT, DonGia, SoLuong, MaSanPham, MaMauSac, MaKichCo, MaChatLieu) VALUES
(1, 1500000, 20, 1, 1, 3, 4),  -- Adidas F50 Elite Firm Ground, màu đỏ, kích cỡ 39, chất liệu da tự nhiên
(2, 1200000, 15, 2, 2, 4, 2),  -- Adidas X Crazyfast Club Turf, màu xanh dương, kích cỡ 40, chất liệu polyester
(3, 1600000, 10, 3, 3, 2, 3),  -- Nike Zoom Vapor 15 Academy, màu vàng, kích cỡ 38, chất liệu vải
(4, 1400000, 25, 4, 4, 5, 5),  -- Nike Phantogx Academy, màu đen, kích cỡ 41, chất liệu da tổng hợp
(5, 1800000, 5, 5, 5, 6, 1),   -- Under Armour Shadow Junior 2.0, màu trắng, kích cỡ 42, chất liệu sợi tự nhiên
(6, 1700000, 12, 6, 6, 3, 4),  -- Nike Zoom Mercurial Superfly 9 Academy Km, màu xanh lá, kích cỡ 42, chất liệu da tự nhiên
(7, 1300000, 20, 7, 1, 3, 2),  -- PUMA ULTRA MATCH TT, màu đỏ, kích cỡ 39, chất liệu polyester
(8, 1400000, 18, 8, 2, 4, 3),  -- PUMA ULTRA MATCH ENERGY TT, màu xanh dương, kích cỡ 40, chất liệu vải
(9, 1250000, 22, 9, 4, 2, 5),  -- ASICS CALCETTO WD 9 TF, màu đen, kích cỡ 38, chất liệu da tổng hợp
(10, 100000, 8, 10, 5, 5, 3);  -- (HÀNG VNXK) Giày đá bóng chính hãng thăng Long, màu trắng, kích cỡ 41, chất liệu sợi tự nhiên

-- Insert data into HoaDonChiTiet
INSERT INTO HoaDonChiTiet (MaSPCT, MaHoaDon, DonGia, SoLuong) VALUES
(1, 1, 1500000, 2),  -- Đơn hàng 1, sản phẩm 1 (Adidas F50 Elite Firm Ground), giá 1,500,000 VNĐ, số lượng 2
(2, 1, 1200000, 1),  -- Đơn hàng 1, sản phẩm 2 (Adidas X Crazyfast Club Turf), giá 1,200,000 VNĐ, số lượng 1
(3, 2, 1600000, 1),  -- Đơn hàng 2, sản phẩm 3 (Nike Zoom Vapor 15 Academy), giá 1,600,000 VNĐ, số lượng 1
(4, 2, 1400000, 2),  -- Đơn hàng 2, sản phẩm 4 (Nike Phantogx Academy), giá 1,400,000 VNĐ, số lượng 2
(5, 3, 1800000, 1),  -- Đơn hàng 3, sản phẩm 5 (Under Armour Shadow Junior 2.0), giá 1,800,000 VNĐ, số lượng 1
(6, 3, 1700000, 1),  -- Đơn hàng 3, sản phẩm 6 (Nike Zoom Mercurial Superfly 9 Academy Km), giá 1,700,000 VNĐ, số lượng 1
(7, 4, 1300000, 3),  -- Đơn hàng 4, sản phẩm 7 (PUMA ULTRA MATCH TT), giá 1,300,000 VNĐ, số lượng 3
(8, 4, 1400000, 2),  -- Đơn hàng 4, sản phẩm 8 (PUMA ULTRA MATCH ENERGY TT), giá 1,400,000 VNĐ, số lượng 2
(9, 5, 1250000, 4),  -- Đơn hàng 5, sản phẩm 9 (ASICS CALCETTO WD 9 TF), giá 1,250,000 VNĐ, số lượng 4
(10, 5, 2000000, 1); -- Đơn hàng 5, sản phẩm 10 ((HÀNG VNXK) Giày đá bóng chính hãng thăng Long), giá 2,000,000 VNĐ, số lượng 1
