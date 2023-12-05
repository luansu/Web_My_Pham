Use CosmeticStore
GO

-- Insert into ACCOUNT
INSERT INTO ACCOUNT (AccountID, Username, Password)
VALUES
('1', 'user11', 'password1'),
('2', 'user22', 'password2'),
('3', 'user33', 'password3'),
('4', 'user4', 'password4'),
('5', 'user5', 'password5'),
('6', 'user6', 'password6'),
('7', 'user7', 'password7'),
('8', 'user8', 'password8'),
('9', 'user9', 'password9'),
('10', 'user10', 'password10'),
('11', 'user11', 'password1'),
('12', 'user12', 'password2'),
('13', 'user13', 'password3'),
('14', 'user14', 'password4'),
('15', 'user15', 'password5');


-- Insert into CUSTOMER
INSERT INTO CUSTOMER (CustomerID, CustomerName, Birthday, Gender, Address, Phone, Mail, Rank, Reputation, RewardPoints, AccountID)
VALUES
('1', 'Customer 1', '1990-01-01', 'Male', 'Address 1', '1234567890', 'customer1@mail.com', 'Gold', 100, 500, '1'),
('2', 'Customer 2', '1985-05-15', 'Female', 'Address 2', '9876543210', 'customer2@mail.com', 'Silver', 80, 300, '2'),
('3', 'Customer 3', '1992-09-20', 'Male', 'Address 3', '5556667777', 'customer3@mail.com', 'Bronze', 60, 200, '3'),
('4', 'Customer 4', '1988-03-08', 'Female', 'Address 4', '3334445555', 'customer4@mail.com', 'Gold', 95, 450, '4'),
('5', 'Customer 5', '1995-11-12', 'Male', 'Address 5', '9998887777', 'customer5@mail.com', 'Silver', 75, 250, '5'),
('6', 'Customer 6', '1987-07-18', 'Female', 'Address 6', '7778889999', 'customer6@mail.com', 'Bronze', 55, 150, '6'),
('7', 'Customer 7', '1993-04-25', 'Male', 'Address 7', '1112223333', 'customer7@mail.com', 'Gold', 90, 400, '7'),
('8', 'Customer 8', '1986-12-30', 'Female', 'Address 8', '6667778888', 'customer8@mail.com', 'Silver', 70, 300, '8'),
('9', 'Customer 9', '1994-06-15', 'Male', 'Address 9', '4445556666', 'customer9@mail.com', 'Bronze', 50, 100, '9'),
('10', 'Customer 10', '1989-10-05', 'Female', 'Address 10', '2223334444', 'customer10@mail.com', 'Gold', 85, 350, '10');

-- Insert into CART
INSERT INTO CART (CartID, CustomerID, TotalPrice)
VALUES
('1', '1', 200.50),
('2', '2', 150.75),
('3', '3', 120.00),
('4', '4', 180.25),
('5', '5', 90.50),
('6', '6', 75.75),
('7', '7', 210.00),
('8', '8', 160.25),
('9', '9', 110.50),
('10', '10', 195.75);

-- Insert into CATEGORY
INSERT INTO CATEGORY (CategoryID, CategoryName, ImageURL)
VALUES
('1', 'Skincare', '/images/skincare.jpg'),
('2', 'Makeup', '/images/makeup.jpg'),
('3', 'Haircare', '/images/haircare.jpg'),
('4', 'Fragrance', '/images/fragrance.jpg'),
('5', 'Bodycare', '/images/bodycare.jpg'),
('6', 'Nails', '/images/nails.jpg'),
('7', 'Tools', '/images/tools.jpg'),
('8', 'Men', '/images/men.jpg'),
('9', 'Gifts', '/images/gifts.jpg'),
('10', 'Accessories', '/images/accessories.jpg');

-- Insert into SUPPLIER
INSERT INTO SUPPLIER (SupplierID, SupplierName)
VALUES
('1', 'Supplier 1'),
('2', 'Supplier 2'),
('3', 'Supplier 3'),
('4', 'Supplier 4'),
('5', 'Supplier 5'),
('6', 'Supplier 6'),
('7', 'Supplier 7'),
('8', 'Supplier 8'),
('9', 'Supplier 9'),
('10', 'Supplier 10');

-- Insert into EMPLOYEE
INSERT INTO EMPLOYEE (EmployeeID, EmployeeName, BirthDate, Gender, Address, Phone, Job, AccountID, ActivityArea, ImageURL)
VALUES
('1', 'Employee 1', '1988-03-10', 'Male', 'Employee Address 1', '1122334455', 'Sales Associate', '11', 'Sales', '/images/employee1.jpg'),
('2', 'Employee 2', '1995-06-22', 'Female', 'Employee Address 2', '9988776655', 'Manager', '12', 'Management', '/images/employee2.jpg'),
('3', 'Employee 3', '1990-11-15', 'Male', 'Employee Address 3', '5544332211', 'Cashier', '13', 'Checkout', '/images/employee3.jpg'),
('4', 'Employee 4', '1985-07-08', 'Female', 'Employee Address 4', '3366998877', 'Security', '14', 'Security', '/images/employee4.jpg'),
('5', 'Employee 5', '1993-01-25', 'Male', 'Employee Address 5', '7788990011', 'Janitor', '15', 'Cleaning', '/images/employee5.jpg');

-- Insert into ORDERS
INSERT INTO ORDERS (OrderID, OrderValue, OrderDate, OrderTime, CartID, CustomerID, PaymentStatus, OrderStatus, PaymentMethod, DeliveryMethod, EmployeeID)
VALUES
('1', 200.50, '2023-01-05', '14:30:00', '1', '1', 'Paid', 'Shipped', 'Credit Card', 'Express Delivery', '5'),
('2', 150.75, '2023-02-10', '10:15:00', '2', '2', 'Unpaid', 'Processing', 'Cash on Delivery', 'Standard Delivery', '6'),
('3', 120.00, '2023-03-15', '12:45:00', '3', '3', 'Paid', 'Shipped', 'PayPal', 'Express Delivery', '7'),
('4', 180.25, '2023-04-20', '16:00:00', '4', '4', 'Unpaid', 'Processing', 'Credit Card', 'Standard Delivery', '8'),
('5', 90.50, '2023-05-25', '09:30:00', '5', '5', 'Paid', 'Delivered', 'Cash on Delivery', 'Express Delivery', '9'),
('6', 75.75, '2023-06-30', '11:00:00', '6', '6', 'Unpaid', 'Processing', 'PayPal', 'Standard Delivery', '10'),
('7', 210.00, '2023-07-05', '14:30:00', '7', '7', 'Paid', 'Shipped', 'Credit Card', 'Express Delivery', '11'),
('8', 160.25, '2023-08-10', '10:15:00', '8', '8', 'Unpaid', 'Processing', 'Cash on Delivery', 'Standard Delivery', '12'),
('9', 110.50, '2023-09-15', '12:45:00', '9', '9', 'Paid', 'Shipped', 'PayPal', 'Express Delivery', '13'),
('10', 195.75, '2023-10-20', '16:00:00', '10', '10', 'Unpaid', 'Processing', 'Credit Card', 'Standard Delivery', '14');

-- Insert into PRODUCT
INSERT INTO PRODUCT (ProductID, ProductName, Description, Stock, Amount, Price, CategoryID, ImageURL)
VALUES
('1', 'Product 1', 'Description 1', 50, 10, 25.99, '1', '/images/product1.jpg'),
('2', 'Product 2', 'Description 2', 30, 5, 49.99, '2', '/images/product2.jpg'),
('3', 'Product 3', 'Description 3', 40, 8, 15.50, '3', '/images/product3.jpg'),
('4', 'Product 4', 'Description 4', 20, 4, 35.75, '4', '/images/product4.jpg'),
('5', 'Product 5', 'Description 5', 60, 12, 18.99, '5', '/images/product5.jpg'),
('6', 'Product 6', 'Description 6', 25, 6, 27.25, '6', '/images/product6.jpg'),
('7', 'Product 7', 'Description 7', 45, 9, 22.50, '7', '/images/product7.jpg'),
('8', 'Product 8', 'Description 8', 15, 3, 55.00, '8', '/images/product8.jpg'),
('9', 'Product 9', 'Description 9', 35, 7, 42.75, '9', '/images/product9.jpg'),
('10', 'Product 10', 'Description 10', 55, 11, 30.25, '10', '/images/product10.jpg');

-- Insert into ORDER_ITEM
INSERT INTO ORDER_ITEM (ProductID, OrderID, Quantity, TotalPrice)
VALUES
('1', '1', 2, 51.98),
('2', '2', 1, 49.99),
('3', '3', 3, 46.50),
('4', '4', 2, 71.50),
('5', '5', 4, 75.96),
('6', '6', 1, 27.25),
('7', '7', 3, 67.50),
('8', '8', 2, 110.00),
('9', '9', 5, 213.75),
('10', '10', 2, 60.50);

-- Insert into IMPORTING_GOODS
INSERT INTO IMPORTING_GOODS (ProductID, SupplierID, Quantity, ImportingDate, Cost)
VALUES
('1', '1', 100, '2023-03-01', 150.00),
('2', '2', 50, '2023-03-02', 100.00),
('3', '3', 80, '2023-03-03', 120.00),
('4', '4', 30, '2023-03-04', 90.00),
('5', '5', 120, '2023-03-05', 180.00),
('6', '6', 40, '2023-03-06', 60.00),
('7', '7', 90, '2023-03-07', 135.00),
('8', '8', 25, '2023-03-08', 75.00),
('9', '9', 150, '2023-03-09', 220.00),
('10', '10', 60, '2023-03-10', 95.00);