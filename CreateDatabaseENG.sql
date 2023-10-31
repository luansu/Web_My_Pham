--DROP DATABASE CosmeticStore
--GO

CREATE DATABASE CosmeticStore
GO

USE CosmeticStore
GO


--DROP TABLE ACCOUNT
CREATE TABLE ACCOUNT (
	AccountID varchar(10),
	Username nvarchar(30) not null,
	Password nvarchar(30) not null,
	primary key (AccountID)
)
GO

--DROP TABLE JOB
CREATE TABLE JOB (
	JobID  varchar(10),
	JobTitle nvarchar(30) not null,
	primary key (JobID)
) 
GO

--DROP TABLE CART
create table CART (
	CartID varchar(10),
	TotalPrice float
	primary key (CartID)
)
Go

--DROP TABLE CATEGORY
CREATE TABLE CATEGORY (
	CategoryID varchar(10),
	CategoryName nvarchar(100) NOT NULL,
	ImageURL nvarchar(200)
	primary key (CategoryID)
)
GO

--DROP TABLE SUPPLIER
CREATE TABLE SUPPLIER (
	SupplierID varchar(10),
	SupplierName  nvarchar(100) NOT NULL
	primary key (SupplierID)
)
GO

-- DROP TABLE CUSTOMER
create table CUSTOMER (
	CustomerID varchar(10) PRIMARY KEY,
	CustomerName nvarchar(100) NOT NULL,
	Address nvarchar(100),
	Phone varchar(10) NOT NULL unique check (len(Phone)=10),
	RewardPoints int NOT NULL CHECK (RewardPoints >=0),
	AccountID varchar(10) CONSTRAINT FK_ACCOUNT_CUSTOMER FOREIGN KEY REFERENCES ACCOUNT(AccountID),
)
Go

--DROP TABLE EMPLOYEE 
CREATE TABLE EMPLOYEE (
    EmployeeID varchar(10) PRIMARY KEY,
    EmployeeName nvarchar(100) NOT NULL,
    BirthDate date,
    Gender nvarchar(10),
    Address nvarchar(100),
    Phone varchar(10) NOT NULL check (len(Phone)=10),
    JobID varchar(10) CONSTRAINT FK_EMPLOYEE_JOB FOREIGN KEY REFERENCES JOB(JobID),
    AccountID varchar(10) CONSTRAINT FK_ACCOUNT_EMPLOYEE FOREIGN KEY REFERENCES ACCOUNT(AccountID),
    ImageURL nvarchar(200)
)
GO

-- DROP TABLE ORDERS
CREATE TABLE ORDERS (
    OrderID varchar(10) PRIMARY KEY,
    OrderValue float,
    OrderDate DATE NOT NULL,
    OrderTime TIME NOT NULL,
    CartID varchar(10) FOREIGN KEY REFERENCES CART(CartID),
    CustomerID varchar(10) FOREIGN KEY REFERENCES CUSTOMER(CustomerID)
)
GO

-- DROP TABLE PRODUCT
CREATE TABLE PRODUCT (
    ProductID varchar(10) PRIMARY KEY,
    ProductName nvarchar(100) NOT NULL,
    Description nvarchar(2000) NOT NULL,
    Stock int NOT NULL,
    Amount int NOT NULL,
    UnitPrice float NOT NULL,
    CategoryID varchar(10) FOREIGN KEY REFERENCES CATEGORY(CategoryID),
    ImageURL nvarchar(200)
)
GO

-- DROP TABLE CART_ITEM
CREATE TABLE CART_ITEM (
    Quantity int NOT NULL,
    TotalPrice float,
    ProductID varchar(10) FOREIGN KEY REFERENCES PRODUCT(ProductID),
    OrderID varchar(10) FOREIGN KEY REFERENCES ORDERS(OrderID),
    PRIMARY KEY(ProductID, OrderID)
)
GO

-- DROP TABLE IMPORTING_GOODS
CREATE TABLE IMPORTING_GOODS (
    Quantity int NOT NULL,
    Cost float,
    ProductID varchar(10) FOREIGN KEY REFERENCES PRODUCT(ProductID),
    SupplierID varchar(10) FOREIGN KEY REFERENCES SUPPLIER(SupplierID),
    PRIMARY KEY(ProductID, SupplierID)
)
GO