--DROP DATABASE CosmeticStore
--GO

CREATE DATABASE CosmeticStore
GO

USE CosmeticStore
GO


--DROP TABLE ACCOUNT
CREATE TABLE ACCOUNT (
	accountId int Identity primary key,
	username nvarchar(30),
	[password] nvarchar(30),
	mail varchar(30),
	roleId int,
	[status] int,
	code nvarchar(30)
)
GO

CREATE Or Alter TRIGGER TG_TaoTaiKhoanSQL
ON Account
AFTER INSERT
AS
DECLARE @username nvarchar(30), @password nvarchar(30), @accountID int, @roleID int, @mail varchar(30)
SELECT @username=i.Username, @password=i.Password, @accountID=i.AccountID, @roleID = RoleID, @mail=Mail
FROM inserted i
BEGIN
	DECLARE @sqlString nvarchar(2000)
	if (@roleID = 1)
	BEGIN
	SET @sqlString = 'Insert into Customer (Mail, AccountID) values ('''+@mail+''','+ CAST(@accountID AS nvarchar)+')';
	END
	--else if (@roleID = 2)
	--SET @sqlString = 'Insert into EMPLOYEE (Mail, AccountID, Job) values ('''+@mail+''','+ CAST(@accountID AS nvarchar)+',''admin'')';
	--else if (@roleID = 3)
	--SET @sqlString = 'Insert into EMPLOYEE (Mail, AccountID, Job) values ('''+@mail+''','+ CAST(@accountID AS nvarchar)+',''seller'')';
	EXEC (@sqlString)
END
GO
		
-- DROP TABLE CUSTOMER
create table CUSTOMER (
	customerId int Identity PRIMARY KEY,
	customerName nvarchar(100),
	birthday date,
	gender nvarchar(10),
	[address] nvarchar(100),
	phone numeric,
	mail varchar(30),
	[rank] nvarchar(50),
	reputation int,
	rewardPoints int,
	accountId int CONSTRAINT FK_ACCOUNT_CUSTOMER FOREIGN KEY REFERENCES ACCOUNT(accountId),
)
Go

--DROP TABLE CART
create table CART (
	cartId int Identity,
	customerId int FOREIGN KEY REFERENCES CUSTOMER(customerId),
	totalPrice float
	primary key (cartId)
)
Go

CREATE TABLE CART_ITEM (
	cartId int FOREIGN KEY REFERENCES CART(cartId),
    	productId int FOREIGN KEY REFERENCES PRODUCT(productId),
	quantity int,
    	totalPrice float
    	PRIMARY KEY(productId, cartId)
)
GO

--DROP TABLE CATEGORY
CREATE TABLE CATEGORY (
	categoryId int Identity,
	categoryName nvarchar(100),
	imageURL nvarchar(2000)
	primary key (categoryId)
)
GO

--DROP TABLE SUPPLIER
CREATE TABLE SUPPLIER (
	supplierId int Identity,
	supplierName  nvarchar(100)
	primary key (supplierId)
)
GO



--DROP TABLE EMPLOYEE 
CREATE TABLE EMPLOYEE (
    employeeId int Identity PRIMARY KEY,
    employeeName nvarchar(100),
    birthdate date,
    gender nvarchar(10),
    [address] nvarchar(100),
    phone varchar(10),
	mail varchar(30),
    job nvarchar(100),
    accountId int,
    activityArea nvarchar(100),
	imageURL nvarchar(2000)
)
GO

-- DROP TABLE ORDERS
CREATE TABLE ORDERS (
    orderId int Identity PRIMARY KEY,
    orderValue float,
    orderDate DATETIME,
    cartId int FOREIGN KEY REFERENCES CART(cartId),
    customerId int FOREIGN KEY REFERENCES CUSTOMER(customerId),
	--Status include: Save, 'Chưa giao cho shipper','Đã giao cho shipper' , paid, unpaid,  "Đã giao khách hàng"
	paymentStatus nvarchar(100),
	orderStatus nvarchar(100),
	paymentMethod nvarchar(100),
	deliveryMethod nvarchar(100),
	employeeId int REFERENCES EMPLOYEE(employeeId),
)
GO

-- DROP TABLE PRODUCT
CREATE TABLE PRODUCT (
    productId int Identity PRIMARY KEY,
    productName nvarchar(100),
    [description] nvarchar(2000),
    stock int,
    amount int,
    price float,
    categoryId int FOREIGN KEY REFERENCES CATEGORY(categoryId),
    imageURL nvarchar(2000)
)
GO

-- DROP TABLE ORDER_ITEM
CREATE TABLE ORDER_ITEM (
    productId int FOREIGN KEY REFERENCES PRODUCT(productId),
    orderId int FOREIGN KEY REFERENCES ORDERS(orderId),
	quantity int,
    totalPrice float
    PRIMARY KEY(productId, orderId)
)
GO

-- DROP TABLE IMPORTING_GOODS
CREATE TABLE IMPORTING_GOODS (
    productId int FOREIGN KEY REFERENCES PRODUCT(productId),
	supplierId int FOREIGN KEY REFERENCES SUPPLIER(supplierId),
    quantity int,
	importingDate Date,
   	 cost float
    PRIMARY KEY(productId, supplierId)
)
GO
