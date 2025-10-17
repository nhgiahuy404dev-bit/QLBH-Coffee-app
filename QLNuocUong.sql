CREATE DATABASE QuanLyDoUong;
GO

USE QuanLyDoUong;
GO

CREATE TABLE DanhMuc (
    MaDanhMuc INT PRIMARY KEY,
    TenDanhMuc NVARCHAR(255) NOT NULL
);
GO

INSERT INTO DanhMuc (MaDanhMuc, TenDanhMuc)
VALUES
(1, N'Trà Sữa'),
(2, N'Trà Vị'),
(3, N'Trà Nguyên Vị'),
(4, N'Sinh Tố'),
(5, N'Nước Trái Cây'),
(6, N'Yaourt'),
(7, N'Soda'),
(8, N'Đá Xay'),
(9, N'Cà Phê'),
(10, N'Nước Ngọt');
Go

CREATE TABLE SanPham (
    MaSanPham NVARCHAR(10) PRIMARY KEY,
    TenSanPham NVARCHAR(255) NOT NULL,
    Gia DECIMAL(18,2) NOT NULL,
    SoLuong INT NOT NULL,
    MaDanhMuc INT NOT NULL,
    CONSTRAINT FK_DanhMuc FOREIGN KEY (MaDanhMuc) REFERENCES DanhMuc(MaDanhMuc)
);
GO

-- Thêm dữ liệu mới cho bảng SanPham
INSERT INTO SanPham (MaSanPham, TenSanPham, Gia, SoLuong, MaDanhMuc)
VALUES
-- Trà Sữa (MaDanhMuc = 1)
(N'TS001', N'Trà Sữa Nâu Đậm', 40000.00, 100, 1),
(N'TS002', N'Trà Sữa Hoa Nhài', 30000.00, 100, 1),
(N'TS003', N'Trà Sữa Ô Long', 30000.00, 100, 1),
(N'TS004', N'Trà Sữa Matcha', 30000.00, 100, 1),
(N'TS005', N'Trà Sữa Socola', 30000.00, 100, 1),
(N'TS006', N'Trà Sữa Khoai Môn', 30000.00, 100, 1),
(N'TS007', N'Trà Sữa Hokkaido', 30000.00, 100, 1),
(N'TS008', N'Sữa Tươi Trân Châu Đường Đen', 30000.00, 100, 1),

-- Trà Vị (MaDanhMuc = 2)
(N'TV001', N'Trà Gừng Mật Ong', 30000.00, 100, 2),
(N'TV002', N'Trà Lipton Chanh', 30000.00, 100, 2),
(N'TV003', N'Trà Vải', 30000.00, 100, 2),
(N'TV004', N'Trà Dâu', 30000.00, 100, 2),
(N'TV005', N'Trà Olong Ổi', 30000.00, 100, 2),
(N'TV006', N'Trà Đào Cam Sả', 30000.00, 100, 2),
(N'TV007', N'Hồng Trà Việt Quất', 30000.00, 100, 2),

-- Trà Nguyên Vị (MaDanhMuc = 3)
(N'TNV001', N'Hồng Trà', 20000.00, 100, 3),
(N'TNV002', N'Trà Ôlong', 20000.00, 100, 3),
(N'TNV003', N'Trà Xanh Hoa Nhài', 20000.00, 100, 3),

-- Sinh Tố (MaDanhMuc = 4)
(N'ST001', N'Sinh Tố Bơ', 30000.00, 100, 4),
(N'ST002', N'Sinh Tố Dâu', 30000.00, 100, 4),
(N'ST003', N'Sinh Tố Mãng Cầu', 30000.00, 100, 4),

-- Nước Trái Cây (MaDanhMuc = 5)
(N'NTC001', N'Chanh Đá', 25000.00, 100, 5),
(N'NTC002', N'Dứa Lạnh', 25000.00, 100, 5),
(N'NTC003', N'Nước Ép Ổi', 25000.00, 100, 5),
(N'NTC004', N'Nước Ép Cam', 25000.00, 100, 5),
(N'NTC005', N'Nước Ép Cà Rốt', 25000.00, 100, 5),
(N'NTC006', N'Nước Ép Dưa Hấu', 25000.00, 100, 5),
(N'NTC007', N'Nước Ép Thơm Cà Rốt', 25000.00, 100, 5),

-- Yaourt (MaDanhMuc = 6)
(N'Y001', N'Yaourt Dâu', 30000.00, 100, 6),
(N'Y002', N'Yaourt Đào', 30000.00, 100, 6),
(N'Y003', N'Yaourt Việt Quất', 30000.00, 100, 6),
(N'Y004', N'Yaourt Đá Chanh', 30000.00, 100, 6),

-- Soda (MaDanhMuc = 7)
(N'SD001', N'Soda Đào', 30000.00, 100, 7),
(N'SD002', N'Soda Dâu', 30000.00, 100, 7),
(N'SD003', N'Soda Việt Quất', 30000.00, 100, 7),
(N'SD004', N'Soda Đá Chanh', 30000.00, 100, 7),

-- Đá Xay (MaDanhMuc = 8)
(N'DX001', N'Chanh Tuyết', 30000.00, 100, 8),
(N'DX002', N'Cacao Đá Xay', 30000.00, 100, 8),
(N'DX003', N'Matcha Đá Xay', 30000.00, 100, 8),
(N'DX004', N'Khoai Môn Đá Xay', 30000.00, 100, 8),

-- Cà Phê (MaDanhMuc = 9)
(N'CF001', N'Cà Phê Đen Đá', 18000.00, 100, 9),
(N'CF002', N'Cà Phê Sữa Đá', 20000.00, 100, 9),
(N'CF003', N'Bạc Xỉu', 25000.00, 100, 9),
(N'CF004', N'Cà Phê Việt Quất', 25000.00, 100, 9),
(N'CF005', N'Cà Phê Hokkaido', 25000.00, 100, 9),
(N'CF006', N'Cà Phê Vanilla Pháp', 25000.00, 100, 9),

---Nước Ngọt (MaDanhMuc = 10)
(N'NN01', N'Coca Cola', 15000.00, 100, 10),
(N'NN02', N'Pepsi', 15000.00, 100, 10),
(N'NN03', N'Sprite', 15000.00, 100, 10),
(N'NN04', N'7Up', 15000.00, 100, 10),
(N'NN05', N'Nước Cam Mirinda', 15000.00, 100, 10),
(N'NN06', N'Nước Xá Xị', 15000.00, 100, 10),
(N'NN07', N'Nước Suối', 10000.00, 100, 10);
Go
-- Bảng Bàn
CREATE TABLE Ban (
    MaBan INT IDENTITY(1,1) PRIMARY KEY,  -- Cột MaBan tự động tăng từ 1
    TenBan NVARCHAR(50),
    TrangThai NVARCHAR(50) -- Trạng thái bàn: Trống, Đang phục vụ
);
---- Thêm dữ liệu mẫu cho bảng Ban
INSERT INTO Ban (TenBan, TrangThai)
VALUES
(N'Bàn 1', N'Trống'),
(N'Bàn 2', N'Trống'),
(N'Bàn 3', N'Trống');


-- Bảng Đơn hàng (Orders)
CREATE TABLE Orders (
    MaDonHang INT PRIMARY KEY IDENTITY(1,1),   -- Cột MaDonHang tự động tăng từ 1
    MaBan INT, -- Mã bàn
    MaSanPham NVARCHAR(10), -- Mã sản phẩm (theo kiểu NVARCHAR(10) trong bảng SanPham)
    SoLuong INT, -- Số lượng sản phẩm bán
    Gia DECIMAL(18, 2),
    ThanhTien AS (SoLuong * Gia) PERSISTED, -- Tính thành tiền tự động
    NgayLap DATETIME DEFAULT GETDATE(), -- Ngày tạo đơn, mặc định là ngày giờ hiện tại
    FOREIGN KEY (MaBan) REFERENCES Ban(MaBan),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham) -- Tham chiếu đến SanPham
);
CREATE TABLE VaiTro (
    Id INT IDENTITY(1,1) PRIMARY KEY,  -- Khóa chính tự động tăng
    TenVaiTro NVARCHAR(255) NOT NULL UNIQUE -- Tên vai trò, đảm bảo duy nhất
);
INSERT INTO VaiTro (TenVaiTro)
VALUES
(N'Quản lý'),
(N'Nhân viên');
GO
CREATE TABLE Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Username NVARCHAR(50) NOT NULL,
    Password NVARCHAR(50) NOT NULL,
    VaiTroId INT NOT NULL,  -- Chứa Id của vai trò
    Email NVARCHAR(255),
    HoTen NVARCHAR(255),
    GioiTinh tinyInt,
	Luong DECIMAL(18, 2),  -- Mức lương
    DienThoai NVARCHAR(20),  -- Số điện thoại
    DiaChi NVARCHAR(255),  -- Địa chỉ
    FOREIGN KEY (VaiTroId) REFERENCES VaiTro(Id) -- Khóa ngoại tham chiếu đến bảng VaiTro
);

-- Thêm dữ liệu mẫu cho bảng Orders
INSERT INTO Orders (MaBan, MaSanPham, SoLuong, Gia, NgayLap)
VALUES
-- Đơn hàng ngày 2024-12-20
(1, N'TS001', 2, 40000, '2024-12-20'),
(2, N'TV001', 3, 30000, '2024-12-20'),
(3, N'TNV001', 1, 20000, '2024-12-20'),

-- Đơn hàng ngày 2024-12-21
(1, N'ST001', 1, 30000, '2024-12-21'),
(2, N'NTC001', 4, 25000, '2024-12-21'),
(3, N'CF001', 2, 18000, '2024-12-21'),

-- Đơn hàng ngày 2024-12-22
(1, N'TS003', 3, 30000, '2024-12-22'),
(2, N'TV003', 2, 30000, '2024-12-22'),
(3, N'SD002', 1, 30000, '2024-12-22'),

-- Đơn hàng ngày 2024-12-23
(1, N'TS005', 2, 30000, '2024-12-23'),
(2, N'ST003', 1, 30000, '2024-12-23'),
(3, N'DX001', 3, 30000, '2024-12-23'),

-- Đơn hàng ngày 2024-12-24
(1, N'NN01', 5, 15000, '2024-12-24'),
(2, N'CF003', 2, 25000, '2024-12-24'),
(3, N'TNV002', 1, 20000, '2024-12-24'),

-- Đơn hàng ngày 2024-12-25
(1, N'TS007', 2, 30000, '2024-12-25'),
(2, N'TV005', 1, 30000, '2024-12-25'),
(3, N'ST002', 4, 30000, '2024-12-25'),

-- Đơn hàng ngày 2024-12-26
(1, N'NTC004', 2, 25000, '2024-12-26'),
(2, N'SD004', 3, 30000, '2024-12-26'),
(3, N'CF002', 1, 20000, '2024-12-26');  