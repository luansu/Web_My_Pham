CREATE DATABASE CuaHangBanMyPham
GO

USE CuaHangBanMyPham
GO


--DROP TABLE TAI_KHOAN
CREATE TABLE TAI_KHOAN(
MaTK varchar(10),
TenTK nvarchar(30) not null,
MatKhau nvarchar(30) not null,
primary key (MaTK)
)
GO

--DROP TABLE CONG_VIEC
CREATE TABLE CONG_VIEC(
MaCV varchar(10),
TenCV nvarchar(30) not null,
primary key (MaCV)
) 
GO

--DROP TABLE GIO_HANG
create table GIO_HANG (
	MaGH varchar(10) PRIMARY KEY,
	TongThanhToan float
)
Go

--DROP TABLE LOAI_SAN_PHAM
CREATE TABLE LOAI_SAN_PHAM(
MaLSP varchar(10) PRIMARY KEY,
TenLSP nvarchar(100) NOT NULL
)
GO

--DROP TABLE NHA_CUNG_CAP
CREATE TABLE NHA_CUNG_CAP(
MaNCC varchar(10) PRIMARY KEY,
TenNCC nvarchar(100) NOT NULL
)
GO

--DROP TABLE KHACH_HANG
create table KHACH_HANG (
	MaKH varchar(10) PRIMARY KEY,
	HoTenKH nvarchar(100) NOT NULL,
	DiaChi nvarchar(100),
	SDT varchar(10) NOT NULL unique check (len(SDT)=10),
	DiemTichLuy int NOT NULL CHECK (DiemTichLuy >=0),
	MaTK varchar(10) CONSTRAINT FK_TK_KH FOREIGN KEY REFERENCES TAI_KHOAN(MaTK),

)
Go

--DROP TABLE NHAN_VIEN
create table NHAN_VIEN (
	MaNV varchar(10) PRIMARY KEY,
	HoTenNV nvarchar(100) NOT NULL,
	NgaySinh date,
	GioiTinh nvarchar(3),
	DiaChi nvarchar(100),
	SDT varchar(10) NOT NULL check (len(SDT)=10),
	Chucvu nvarchar(100) NOT NULL,
	MaCV varchar(10) CONSTRAINT FK_NV_CV FOREIGN KEY REFERENCES CONG_VIEC(MaCV),
	MaTK varchar(10) CONSTRAINT FK_TK_NV FOREIGN KEY REFERENCES TAI_KHOAN(MaTK),
	
)
GO

--DROP TABLE DON_HANG
CREATE TABLE DON_HANG(
	MaDH varchar(10) PRIMARY KEY,
	GiaTriDH float,
	NgayLap DATE NOT NULL,
	ThoiGian TIME NOT NULL,
	MaGH varchar(10) FOREIGN KEY REFERENCES GIO_HANG(MaGH),
	MaKH varchar(10) FOREIGN KEY REFERENCES KHACH_HANG(MaKH)
)
GO

--DROP TABLE SAN_PHAM
CREATE TABLE SAN_PHAM(
	MaSP varchar(10) PRIMARY KEY,
	TenSP nvarchar(100) NOT NULL,
	SoLuongConLai int NOT NULL,
	DonGia float NOT NULL,
	MaLSP varchar(10) FOREIGN KEY REFERENCES LOAI_SAN_PHAM(MaLSP)
)
GO

--DROP TABLE CT_DON_HANG
CREATE TABLE CT_DON_HANG(
	SoLuong int NOT NULL,
	ThanhTien float,
	MaSP varchar(10) FOREIGN KEY REFERENCES SAN_PHAM(MaSP),
	MaDH varchar(10) FOREIGN KEY REFERENCES DON_HANG(MaDH),
	PRIMARY KEY(MaSP, MaDH)
)
 GO

 --DROP TABLE CT_NHAP_HANG
CREATE TABLE CT_NHAP_HANG(
	SoLuong int NOT NULL,
	ChiPhi float,
	MaSP varchar(10) FOREIGN KEY REFERENCES SAN_PHAM(MaSP),
	MaNCC varchar(10) FOREIGN KEY REFERENCES NHA_CUNG_CAP(MaNCC),
	PRIMARY KEY(MaSP, MaNCC)
)
GO



