USE CosmeticStore
GO

INSERT INTO ACCOUNT(AccountID, Username, Password)
VALUES ('TK001', N'User1', N'Password1'),
       ('TK002', N'User2', N'Password2'),
       ('TK003', N'User3', N'Password3');

-- Insert data into JOB table
INSERT INTO JOB (JobID, JobTitle)
VALUES ('CV001', N'Employee1'),
       ('CV002', N'Employee2'),
       ('CV003', N'Employee3');

-- Insert data into CART table
INSERT INTO CART (CartID, TotalPrice)
VALUES ('GH001', 0.0),
       ('GH002', 0.0),
       ('GH003', 0.0);

-- Insert data into PRODUCT_CATEGORY table
INSERT INTO PRODUCT_CATEGORY (CategoryID, CategoryName, ImageURL)
VALUES ('LSP001', N'Category1', N'Category1.jpg'),
       ('LSP002', N'Category2', N'Category2.jpg'),
       ('LSP003', N'Category3', N'Category3.jpg');

-- Insert data into SUPPLIER table
INSERT INTO SUPPLIER (SupplierID, SupplierName)
VALUES ('NCC001', N'Supplier1'),
       ('NCC002', N'Supplier2'),
       ('NCC003', N'Supplier3');

-- Insert data into CUSTOMER table
INSERT INTO CUSTOMER (CustomerID, CustomerName, Address, Phone, RewardPoints, AccountID)
VALUES ('KH001', N'Customer1', N'Address1', '1234567890', 0, 'TK001'),
       ('KH002', N'Customer2', N'Address2', '9876543210', 0, 'TK002'),
       ('KH003', N'Customer3', N'Address3', '4567891230', 0, 'TK003');

-- Insert data into EMPLOYEE table
INSERT INTO EMPLOYEE (EmployeeID, EmployeeName, BirthDate, Gender, Address, Phone, JobID, AccountID, ImageURL)
VALUES ('NV001', N'Employee1', '1990-01-01', N'Male', N'Address1', '1234567890', 'CV001', 'TK001', N'Image1.jpg'),
       ('NV002', N'Employee2', '1995-02-02', N'Female', N'Address2', '9876543210', 'CV002', 'TK002', N'Image2.jpg'),
       ('NV003', N'Employee3', '2000-03-03', N'Male', N'Address3', '4567891230', 'CV003', 'TK003', N'Image3.jpg');

-- Insert data into ORDERS table
INSERT INTO ORDERS (OrderID, OrderValue, OrderDate, OrderTime, CartID, CustomerID)
VALUES ('DH001', 100.0, '2023-10-17', '12:00:00', 'GH001', 'KH001'),
       ('DH002', 150.0, '2023-10-18', '14:30:00', 'GH002', 'KH002'),
       ('DH003', 200.0, '2023-10-19', '10:15:00', 'GH003', 'KH003');

-- Insert data into PRODUCT table
INSERT INTO PRODUCT (ProductID, ProductName, Description, Stock, Amount, UnitPrice, CategoryID, ImageURL)
VALUES ('SP001', N'Product1', N'Description1', 100, 0, 10.0, 'LSP001', N'Product1.jpg'),
       ('SP002', N'Product2', N'Description2', 80, 10, 15.0, 'LSP002', N'Product2.jpg'),
       ('SP003', N'Product3', N'Description3', 120, 20, 20.0, 'LSP003', N'Product3.jpg');

-- Insert data into ORDER_DETAILS table
INSERT INTO ORDER_DETAILS (Quantity, TotalPrice, ProductID, OrderID)
VALUES (5, 50.0, 'SP001', 'DH001'),
       (2, 30.0, 'SP002', 'DH002'),
       (3, 60.0, 'SP003', 'DH003');

-- Insert data into SUPPLY_DETAILS table
INSERT INTO SUPPLY_DETAILS (Quantity, Cost, ProductID, SupplierID)
VALUES (50, 500.0, 'SP001', 'NCC001'),
       (30, 450.0, 'SP002', 'NCC002'),
       (40, 800.0, 'SP003', 'NCC003');
