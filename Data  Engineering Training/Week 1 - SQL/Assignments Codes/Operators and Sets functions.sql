create database subqueries;

use subqueries;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    SupplierID INT,
    CategoryID INT
);

-- Insert values into the Products table
INSERT INTO Products (ProductID, ProductName, SupplierID, CategoryID) VALUES
(1, 'Chais', 1, 1),
(2, 'Chang', 1, 1),
(3, 'Aniseed Syrup', 1, 2),
(4, 'Chef Anton''s Cajun Seasoning', 2, 2);

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(255),
    ContactName VARCHAR(255),
    Address VARCHAR(255)
);

-- Insert values into the Suppliers table
INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, Address) VALUES
(1, 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.'),
(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'P.O. Box 78934'),
(3, 'Grandma Kelly''s Homestead', 'Regina Murphy', '707 Oxford Rd.'),
(4, 'Tokyo Traders', 'Yoshi Nagase', '9-8 Sekimai Musashino-shi');

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    SupplierID INT,
    ProductID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert values into the OrderDetails table
INSERT INTO OrderDetails  VALUES
(1,1, 2),
(2, 2, 1),
(3,1, 2),
(4, 2, 3),
(5, 3,4),
(6, 4, 1),
(7,3, 3),
(8, 1, 4),
(9, 3, 2),
(10,4, 4);

-- exist
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID);

-- any
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE ProductID <3);
  
-- all
SELECT ALL ProductName
FROM Products
WHERE TRUE;

-- having
SELECT SupplierID, SupplierName
FROM Suppliers
WHERE SupplierID IN (
    SELECT SupplierID
    FROM Products
    GROUP BY SupplierID
    HAVING COUNT(ProductID) >= 1
);

-- String Functions
select ascii('CB'); /*return leftmost ascii value*/
select char(66); /*return ascii value to character*/
SELECT CHAR_LENGTH('Microsoft sql') ;
select lower('JHON');/*convert to lowercase*/
select replace('Microsoft sql','sql','server');/*replace*/
select reverse('python');/*reverse the string */
select upper('yourname');/*converts to upper*/
SELECT FORMAT(136.564, 4) AS formatted_number;


/* Date Functions*/
SELECT NOW() AS current_datetime;
SELECT DATE_ADD('2023-12-07', INTERVAL 2 MONTH) AS result;
SELECT TIMESTAMPDIFF(YEAR, '2006-05-06', '2009-01-01') AS result;/*it will return the difference of date,months,years also*/
SELECT MONTH('2008-05-22') AS result;/*return months value*/
SELECT DAY('2023-05-30') AS result;/*return value of date of that particular day*/
select year ( '2023-05-3');/*return year value*/
 
/*Mathematical Functions*/
select abs(-101);/*returns absolute value*/
select sin(1.5);/*returns angle in radians*/
select ceiling(14.01);/*returns the smallest or greater to the specified value*/
select exp(4.5);/*returns the exponencial value*/
select floor(14.75);
select log(5.4);/*return logarithmic value*/


-- Storing Data in a Table (INSERT statement):


INSERT INTO Products (ProductID, ProductName, SupplierID, CategoryID)
VALUES
(14, 'Chais', 1, 1),
(15, 'Chang', 1, 1),
(16, 'Aniseed Syrup', 1, 2);

UPDATE Products
SET SupplierID = 3
WHERE ProductID = 1;

DELETE FROM OrderDetails 
WHERE ProductID = 3;

SELECT ProductID, ProductName
FROM Products;

SELECT *
FROM Products
WHERE CategoryID = 1;

SELECT *
FROM Products
WHERE SupplierID = 1;

-- Example: Selecting products from multiple categories using IN
SELECT *
FROM Products
WHERE CategoryID IN (1, 2);

-- Example: Using DISTINCT to retrieve unique supplier names
SELECT DISTINCT SupplierName
FROM Suppliers;

-- Example: Using AND and OR to combine conditions
SELECT *
FROM Products
WHERE SupplierID = 1 AND (CategoryID = 1 OR CategoryID = 2);



-- Example: Using LIKE for pattern matching
SELECT *
FROM Products
WHERE ProductName LIKE 'Cha%';

-- Example: Using aliases for columns and tables
SELECT p.ProductID AS ID, p.ProductName, s.SupplierName AS Supplier
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID;

-- Filtering Data based on Aggregated Results using GROUP BY and HAVING
SELECT SupplierID, COUNT(ProductID) AS ProductCount
FROM Products
GROUP BY SupplierID
HAVING ProductCount > 2;

SELECT ProductID, COUNT(OrderDetailID) AS TotalOrders
FROM OrderDetails
GROUP BY ProductID;

 -- Group By Aggregations using SQL Queries
SELECT ProductID, AVG(SupplierID) AS AverageSupplier
FROM Products
GROUP BY ProductID;

-- Order of Execution of SQL Queries
SELECT SupplierID, COUNT(ProductID) AS ProductCount
FROM Products
WHERE SupplierID IS NOT NULL
GROUP BY SupplierID
HAVING ProductCount > 2
ORDER BY SupplierID;

SELECT CategoryID, AVG(SupplierID) AS AverageSupplier
FROM Products
WHERE CategoryID IS NOT NULL
GROUP BY CategoryID
HAVING AVG(SupplierID) >= 1;

-- Equi join 
SELECT p.ProductID, p.ProductName, p.SupplierID, s.SupplierName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID;

-- Using a Self Join
SELECT p1.ProductID AS Product1, p1.ProductName AS ProductName1, p2.ProductID AS Product2, p2.ProductName AS ProductName2
FROM Products p1
JOIN Products p2 ON p1.SupplierID = p2.SupplierID AND p1.ProductID < p2.ProductID;

-- Joins with groupby,,having by
SELECT p.SupplierID, s.SupplierName, COUNT(p.ProductID) AS TotalProducts
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY p.SupplierID, s.SupplierName;

SELECT p.SupplierID, s.SupplierName, COUNT(p.ProductID) AS TotalProducts
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY p.SupplierID, s.SupplierName
HAVING COUNT(p.ProductID) > 2;


-- Querying Data by Using Subqueries
SELECT ProductID, OrderDetailID
FROM OrderDetails
WHERE ProductID IN (
    SELECT ProductID
    FROM OrderDetails
    GROUP BY ProductID
    HAVING COUNT(OrderDetailID) > 2
);

SELECT SupplierID, SupplierName
FROM Suppliers s
WHERE EXISTS (
    SELECT 1
    FROM Products p
    WHERE p.SupplierID = s.SupplierID
    AND p.CategoryID IN (SELECT CategoryID FROM Products GROUP BY CategoryID HAVING AVG(SupplierID) > 1)
);

SELECT
    SupplierID,
    AVG(ProductID) AS AverageProductID,
    COUNT(ProductID) AS TotalProducts
FROM Products
GROUP BY SupplierID;

SELECT
    SupplierID,
    MIN(ProductID) AS MinProductID,
    MAX(ProductID) AS MaxProductID
FROM Products
GROUP BY SupplierID;




-- Using UNION, INTERSECT, EXCEPT
SELECT ProductName FROM Products
UNION
SELECT SupplierName FROM Suppliers;

SELECT ProductName FROM Products
INTERSECT
SELECT SupplierName FROM Suppliers;

SELECT ProductName FROM Products
EXCEPT
SELECT SupplierName FROM Suppliers;

