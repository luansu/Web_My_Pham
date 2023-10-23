-- Insert data into TAI_KHOAN table
INSERT INTO TAI_KHOAN (MaTK, TenTK, MatKhau)
VALUES ('TK001', N'User1', N'Password1'),
       ('TK002', N'User2', N'Password2'),
       ('TK003', N'User3', N'Password3');

-- Insert data into CONG_VIEC table
INSERT INTO CONG_VIEC (MaCV, TenCV)
VALUES ('CV001', N'Employee1'),
       ('CV002', N'Employee2'),
       ('CV003', N'Employee3');

-- Insert data into GIO_HANG table
INSERT INTO GIO_HANG (MaGH, TongThanhToan)
VALUES ('GH001', 0.0),
       ('GH002', 0.0),
       ('GH003', 0.0);

-- Insert data into LOAI_SAN_PHAM table
INSERT INTO LOAI_SAN_PHAM (MaLSP, TenLSP, HinhAnh)
VALUES ('LSP001', N'Category1', N'Category1.jpg'),
       ('LSP002', N'Category2', N'Category2.jpg'),
       ('LSP003', N'Category3', N'Category3.jpg');

-- Insert data into NHA_CUNG_CAP table
INSERT INTO NHA_CUNG_CAP (MaNCC, TenNCC)
VALUES ('NCC001', N'Supplier1'),
       ('NCC002', N'Supplier2'),
       ('NCC003', N'Supplier3');

-- Insert data into KHACH_HANG table
INSERT INTO KHACH_HANG (MaKH, HoTenKH, DiaChi, SDT, DiemTichLuy, MaTK)
VALUES ('KH001', N'Customer1', N'Address1', '1234567890', 0, 'TK001'),
       ('KH002', N'Customer2', N'Address2', '9876543210', 0, 'TK002'),
       ('KH003', N'Customer3', N'Address3', '4567891230', 0, 'TK003');

-- Insert data into NHAN_VIEN table
INSERT INTO NHAN_VIEN (MaNV, HoTenNV, NgaySinh, GioiTinh, DiaChi, SDT, MaCV, MaTK, HinhAnh)
VALUES ('NV001', N'Employee1', '1990-01-01', N'Nam', N'Address1', '1234567890', 'CV001', 'TK001', N'Image1.jpg'),
       ('NV002', N'Employee2', '1995-02-02', N'Nữ', N'Address2', '9876543210', 'CV002', 'TK002', N'Image2.jpg'),
       ('NV003', N'Employee3', '2000-03-03', N'Nam', N'Address3', '4567891230', 'CV003', 'TK003', N'Image3.jpg');

-- Insert data into GIO_HANG table
INSERT INTO GIO_HANG (MaGH, TongThanhToan)
VALUES ('GH001', 0.0),
       ('GH002', 0.0),
       ('GH003', 0.0);

-- Insert data into DON_HANG table
INSERT INTO DON_HANG (MaDH, GiaTriDH, NgayLap, ThoiGian, MaGH, MaKH)
VALUES ('DH001', 100.0, '2023-10-17', '12:00:00', 'GH001', 'KH001'),
       ('DH002', 150.0, '2023-10-18', '14:30:00', 'GH002', 'KH002'),
       ('DH003', 200.0, '2023-10-19', '10:15:00', 'GH003', 'KH003');

-- Insert data into SAN_PHAM table
INSERT INTO SAN_PHAM (MaSP, TenSP, MoTaSP, SoLuongConLai, SoLuongDaBan, DonGia, MaLSP, HinhAnh)
VALUES ('SP001', N'Product1', N'Description1', 100, 0, 10.0, 'LSP001', N'Product1.jpg'),
       ('SP002', N'Product2', N'Description2', 80, 10, 15.0, 'LSP002', N'Product2.jpg'),
       ('SP003', N'Product3', N'Description3', 120, 20, 20.0, 'LSP003', N'Product3.jpg');

-- Insert data into CT_DON_HANG table
INSERT INTO CT_DON_HANG (SoLuong, ThanhTien, MaSP, MaDH)
VALUES (5, 50.0, 'SP001', 'DH001'),
       (2, 30.0, 'SP002', 'DH002'),
       (3, 60.0, 'SP003', 'DH003');

-- Insert data into CT_NHAP_HANG table
INSERT INTO CT_NHAP_HANG (SoLuong, ChiPhi, MaSP, MaNCC)
VALUES (50, 500.0, 'SP001', 'NCC001'),
       (30, 450.0, 'SP002', 'NCC002'),
       (40, 800.0, 'SP003', 'NCC003');

