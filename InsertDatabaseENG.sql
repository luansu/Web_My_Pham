-- Insert 10 rows with job 'Seller'
INSERT INTO EMPLOYEE (employeeName, birthdate, gender, [address], phone, job, accountId, activityArea, imageURL)
VALUES
  ('Employee1', '1990-01-01', 'Male', 'Address1', '1234567890', 'Seller', 1, 'Sales', 'image1.jpg'),
  ('Employee2', '1991-02-02', 'Female', 'Address2', '2345678901', 'Seller', 2, 'Sales', 'image2.jpg'),
  ('Employee3', '1992-03-03', 'Male', 'Address3', '3456789012', 'Seller', 3, 'Sales', 'image3.jpg'),
  ('Employee4', '1993-04-04', 'Female', 'Address4', '4567890123', 'Seller', 4, 'Sales', 'image4.jpg'),
  ('Employee5', '1994-05-05', 'Male', 'Address5', '5678901234', 'Seller', 5, 'Sales', 'image5.jpg'),
  ('Employee6', '1995-06-06', 'Female', 'Address6', '6789012345', 'Seller', 6, 'Sales', 'image6.jpg'),
  ('Employee7', '1996-07-07', 'Male', 'Address7', '7890123456', 'Seller', 7, 'Sales', 'image7.jpg'),
  ('Employee8', '1997-08-08', 'Female', 'Address8', '8901234567', 'Seller', 8, 'Sales', 'image8.jpg'),
  ('Employee9', '1998-09-09', 'Male', 'Address9', '9012345678', 'Seller', 9, 'Sales', 'image9.jpg'),
  ('Employee10', '1999-10-10', 'Female', 'Address10', '0123456789', 'Seller', 10, 'Sales', 'image10.jpg');
SELECT * FROM Employee
-- Insert 10 rows with job 'Shipper'
INSERT INTO EMPLOYEE (employeeName, birthdate, gender, [address], phone, job, accountId, activityArea, imageURL)
VALUES
  ('Employee11', '2000-11-11', 'Male', 'Address11', '1112233445', 'Shipper', 11, 'Shipping', 'image11.jpg'),
  ('Employee12', '2001-12-12', 'Female', 'Address12', '2223344556', 'Shipper', 12, 'Shipping', 'image12.jpg'),
  ('Employee13', '2002-01-01', 'Male', 'Address13', '3334455667', 'Shipper', 13, 'Shipping', 'image13.jpg'),
  ('Employee14', '2003-02-02', 'Female', 'Address14', '4445566778', 'Shipper', 14, 'Shipping', 'image14.jpg'),
  ('Employee15', '2004-03-03', 'Male', 'Address15', '5556677889', 'Shipper', 15, 'Shipping', 'image15.jpg'),
  ('Employee16', '2005-04-04', 'Female', 'Address16', '6667788990', 'Shipper', 16, 'Shipping', 'image16.jpg'),
  ('Employee17', '2006-05-05', 'Male', 'Address17', '7778899001', 'Shipper', 17, 'Shipping', 'image17.jpg'),
  ('Employee18', '2007-06-06', 'Female', 'Address18', '8889900112', 'Shipper', 18, 'Shipping', 'image18.jpg'),
  ('Employee19', '2008-07-07', 'Male', 'Address19', '9990011223', 'Shipper', 19, 'Shipping', 'image19.jpg'),
  ('Employee20', '2009-08-08', 'Female', 'Address20', '0001112223', 'Shipper', 20, 'Shipping', 'image20.jpg');


cost float
    PRIMARY KEY(productId, supplierId)
)
GO
--insert into 
INSERT INTO ACCOUNT (username, [password]) VALUES
('user3', 'pass3'),
('user4', 'pass4'),
('user5', 'pass5'),
('user6', 'pass6'),
('user7', 'pass7'),
('user8', 'pass8'),
('user9', 'pass9'),
('user10', 'pass10'),
('user11', 'pass11'),
('user12', 'pass12'),
('user13', 'pass13'),
('user14', 'pass14'),
('user15', 'pass15'),
('user16', 'pass16'),
('user17', 'pass17'),
('user18', 'pass18'),
('user19', 'pass19'),
('user20', 'pass20');

INSERT INTO CUSTOMER (customerName, birthday, gender, [address], phone, mail, [rank], reputation, rewardPoints, accountId) VALUES
('Bob Johnson', '1982-07-20', 'Male', '789 Elm St', '5551112233', 'bob@example.com', 'Bronze', 3, 50, 3),
('Alice Williams', '1998-03-12', 'Female', '567 Pine St', '5554445555', 'alice@example.com', 'Gold', 5, 120, 4),
('Charlie Davis', '1976-11-05', 'Male', '890 Oak St', '5556667777', 'charlie@example.com', 'Silver', 4, 90, 5),
('Emily Brown', '1989-09-15', 'Female', '345 Maple St', '5558889999', 'emily@example.com', 'Bronze', 3, 60, 6),
('David Miller', '1995-04-28', 'Male', '678 Birch St', '5552223333', 'david@example.com', 'Gold', 5, 110, 7),
('Grace Wilson', '1984-02-08', 'Female', '456 Cedar St', '5554447777', 'grace@example.com', 'Silver', 4, 85, 8),
('Frank Taylor', '1977-06-10', 'Male', '123 Fir St', '5556661111', 'frank@example.com', 'Bronze', 3, 55, 9),
('Olivia Moore', '1992-12-18', 'Female', '890 Pine St', '5558884444', 'olivia@example.com', 'Gold', 5, 105, 10),
('George Clark', '1987-08-25', 'Male', '234 Elm St', '5552229999', 'george@example.com', 'Silver', 4, 95, 11),
('Sophia Hall', '1993-01-30', 'Female', '567 Oak St', '5554443333', 'sophia@example.com', 'Bronze', 3, 65, 12),
('Henry Turner', '1980-05-07', 'Male', '678 Maple St', '5556662222', 'henry@example.com', 'Gold', 5, 115, 13),
('Lily Brooks', '1997-10-22', 'Female', '345 Birch St', '5558885555', 'lily@example.com', 'Silver', 4, 75, 14),
('James King', '1975-03-14', 'Male', '123 Cedar St', '5552227777', 'james@example.com', 'Bronze', 3, 70, 15),
('Ava White', '1996-06-28', 'Female', '456 Fir St', '5554446666', 'ava@example.com', 'Gold', 5, 125, 16),
('William Evans', '1983-09-05', 'Male', '567 Pine St', '5556665555', 'william@example.com', 'Silver', 4, 100, 17),
('Chloe Harris', '1994-02-19', 'Female', '890 Oak St', '5558886666', 'chloe@example.com', 'Bronze', 3, 80, 18)


INSERT INTO SUPPLIER (supplierName) VALUES
('Supplier C'),
('Supplier D'),
('Supplier E'),
('Supplier F'),
('Supplier G'),
('Supplier H'),
('Supplier I'),
('Supplier J'),
('Supplier K'),
('Supplier L'),
('Supplier M'),
('Supplier N'),
('Supplier O'),
('Supplier P'),
('Supplier Q'),
('Supplier R'),
('Supplier S'),
('Supplier T'),
('Supplier U'),
('Supplier V');
