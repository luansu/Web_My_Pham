--DROP DATABASE CosmeticStore
--GO

CREATE DATABASE CosmeticStore
GO

USE CosmeticStore
GO


--DROP TABLE ACCOUNT

--DROP TABLE CUSTOMER

--DROP TABLE EMPLOYEE 

CREATE TABLE ACCOUNT (
	AccountID int identity(1, 1) PRIMARY KEY,
	Username nvarchar(30),
	Password nvarchar(30),
	Fullname nvarchar(30),
	Mail varchar(30),
	RoleID int,
	Status int,
	Code nvarchar(30),
)
GO

create table CUSTOMER (
	CustomerID int identity(1, 1) PRIMARY KEY,
	CustomerName nvarchar(100),
	Birthday date,
	Gender nvarchar(10),
	Address nvarchar(100),
	Phone numeric check (len(Phone)=10),
	Mail varchar(30),
	Rank nvarchar(50),
	Reputation int,
	RewardPoints int CHECK (RewardPoints >=0),
	AccountID int CONSTRAINT FK_ACCOUNT_CUSTOMER FOREIGN KEY REFERENCES ACCOUNT(AccountID),
)
Go

CREATE TABLE EMPLOYEE (
    EmployeeID int identity(1, 1) PRIMARY KEY,
    EmployeeName nvarchar(100),
    BirthDate date,
    Gender nvarchar(10),
    Address nvarchar(100),
    Phone varchar(10) check (len(Phone)=10),
	Mail varchar(30),
    Job nvarchar(100),
    AccountID int CONSTRAINT FK_ACCOUNT_EMPLOYEE FOREIGN KEY REFERENCES ACCOUNT(AccountID),
    ActivityArea nvarchar(100),
	ImageURL nvarchar(200)
)
GO

CREATE Or Alter TRIGGER TG_TaoTaiKhoanSQL
ON Account
AFTER INSERT
AS
DECLARE @username nvarchar(30), @password nvarchar(30), @accountID int, @roleID int, @mail varchar(30), @fullname nvarchar(30)
SELECT @username=i.Username, @password=i.Password, @accountID=i.AccountID, @roleID = RoleID, @mail=Mail, @fullname=Fullname
FROM inserted i
BEGIN
	DECLARE @sqlString nvarchar(2000)
	if (@roleID = 1)
	SET @sqlString = 'Insert into Customer (Mail, CustomerName, AccountID) values ('''+@mail+''','''+@fullname+''','+ CAST(@accountID AS nvarchar)+')';
	else if (@roleID = 2)
	SET @sqlString = 'Insert into EMPLOYEE (Mail, EmployeeName, AccountID, Job) values ('''+@mail+''','''+@fullname+''','+ CAST(@accountID AS nvarchar)+',''admin'')';
	else if (@roleID = 3)
	SET @sqlString = 'Insert into EMPLOYEE (Mail, EmployeeName, AccountID, Job) values ('''+@mail+''','''+@fullname+''','+ CAST(@accountID AS nvarchar)+',''seller'')';
	EXEC (@sqlString)
END
GO

Insert into ACCOUNT(Username,PASSWORD, Fullname,Mail,RoleID,Status,Code) values ('vietphap1','vietphap96','Nguyễn Hoàng Việt Pháp','vietphap1@gmail.com',1,1,963);

