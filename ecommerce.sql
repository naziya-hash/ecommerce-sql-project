CREATE DATABASE EcommerceDB;
USE EcommerceDB;
CREATE TABLE Products(
  ProductID INT,
  ProductName VARCHAR(100),
  Price INT,
  Category VARCHAR(50)
  );
CREATE TABLE Orders(
  OrderID INT,
  CustomerID INT,
  ProductID INT,
  Quantity INT
  );
INSERT INTO Customers VALUES (1,'NAZIYA','Hyderabad');
INSERT INTO Customers VALUES (1,'SANA','Guntur');
INSERT INTO Products VALUES (101,'Iphone',50000,'Electronics');
INSERT INTO Products VALUES (102,'Shoes',2000,'Fashion');
INSERT INTO Orders VALUES (1001,1,101,1);
INSERT INTO Orders VALUES (1002,2,102,2);
SELECT*FROM Orders;
SELECT c.Name,p.ProductName,o.Quantity
FROM Customers c
JOIN Orders o ON c.CustomerID=o.CustomerID
JOIN Products p ON o.ProductID=p.ProductID;
SELECT*FROM Products
WHERE Price>10000;
