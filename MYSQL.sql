
CREATE DATABASE shopzone_db;

USE shopzone_db;

CREATE TABLE Customers (
    Customer_id INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(200)
);

DESC Customers;

INSERT INTO Customers
(Customer_id, Name, Email, Address)
VALUES
(1, 'Aarav', 'aarav@gmail.com', 'Surat'),
(2, 'Diya', 'diya@gmail.com', 'Vadodara'),
(3, 'Krish', 'krish@gmail.com', 'Ahmedabad'),
(4, 'Mira', 'mira@gmail.com', 'Rajkot'),
(5, 'Alice', 'alice@gmail.com', 'Navsari');

SELECT * FROM Customers;

UPDATE Customers
SET Address = 'Mumbai'
WHERE Customer_id = 2;

DELETE FROM Customers
WHERE Customer_id = 5;

SELECT * FROM Customers
WHERE Name = 'Alice';


CREATE TABLE Orders (
    Order_id INT PRIMARY KEY,
    Customer_id INT,
    Order_date DATE,
    Total_amount DECIMAL(10,2),
    FOREIGN KEY (Customer_id)
        REFERENCES Customers(Customer_id)
);

DESC Orders;

INSERT INTO Orders
(Order_id, Customer_id, Order_date, Total_amount)
VALUES
(201, 1, '2026-10-01', 3200.00),
(202, 2, '2026-10-05', 4800.00),
(203, 3, '2026-10-10', 1500.00),
(204, 4, '2026-10-15', 2700.00),
(205, 1, '2026-10-20', 5500.00);

SELECT * FROM Orders;

SELECT *
FROM Orders
WHERE Customer_id = 1;

UPDATE Orders
SET Total_amount = 3500.00
WHERE Order_id = 201;

DELETE FROM Orders
WHERE Order_id = 205;

SELECT *
FROM Orders
WHERE Order_date >= CURRENT_DATE - INTERVAL 30 DAY;

SELECT MAX(Total_amount) AS Highest_Amount
FROM Orders;

SELECT MIN(Total_amount) AS Lowest_Amount
FROM Orders;

SELECT AVG(Total_amount) AS Average_Amount
FROM Orders;


CREATE TABLE Products (
    Product_id INT PRIMARY KEY,
    Product_name VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

DESC Products;

INSERT INTO Products
(Product_id, Product_name, Price, Stock)
VALUES
(1, 'Tablet', 22000.00, 12),
(2, 'USB Cable', 350.00, 30),
(3, 'Webcam', 1800.00, 10),
(4, 'Speaker', 2500.00, 0),
(5, 'Smartwatch', 4500.00, 7);

SELECT * FROM Products;

SELECT *
FROM Products
ORDER BY Price DESC;

SELECT *
FROM Products
ORDER BY Price ASC;

UPDATE Products
SET Price = 23000.00
WHERE Product_id = 1;

DELETE FROM Products
WHERE Stock = 0;

SELECT *
FROM Products
WHERE Price BETWEEN 500 AND 3000;

SELECT MAX(Price) AS Highest_Price
FROM Products;

SELECT MIN(Price) AS Lowest_Price
FROM Products;


CREATE TABLE Order_Details (
    Order_detail_id INT PRIMARY KEY,
    Order_id INT,
    Product_id INT,
    Quantity INT,
    Sub_Total DECIMAL(10,2),
    FOREIGN KEY (Order_id)
        REFERENCES Orders(Order_id),
    FOREIGN KEY (Product_id)
        REFERENCES Products(Product_id)
);

DESC Order_Details;

INSERT INTO Order_Details
(Order_detail_id, Order_id, Product_id, Quantity, Sub_Total)
VALUES
(1, 201, 1, 1, 22000.00),
(2, 201, 2, 2, 700.00),
(3, 202, 3, 1, 1800.00),
(4, 203, 1, 1, 22000.00),
(5, 204, 5, 1, 4500.00);

SELECT *
FROM Order_Details
WHERE Order_id = 201;

SELECT SUM(Sub_Total) AS Total_Revenue
FROM Order_Details;

SELECT Product_id, SUM(Quantity) AS Total_Quantity
FROM Order_Details
GROUP BY Product_id
ORDER BY Total_Quantity DESC
LIMIT 3;

SELECT Product_id, COUNT(*) AS Times_Sold
FROM Order_Details
WHERE Product_id = 1
GROUP BY Product_id;