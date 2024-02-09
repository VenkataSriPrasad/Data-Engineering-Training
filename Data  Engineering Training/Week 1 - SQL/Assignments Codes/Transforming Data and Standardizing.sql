create database cleaning;

use cleaning;

CREATE TABLE ExampleTable (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    City VARCHAR(50)
);

INSERT INTO ExampleTable (ID, Name, Age, City) VALUES
(1, 'John', 25, 'New York'),
(2, 'Alice', 30, 'Los Angeles'),
(3, 'Bob', 22, null),
(4, 'Alice', 30, 'Chicago'),
(5, 'Mary', null, 'Boston'),
(6, 'John', 25, 'Miami'),
(7, null, 28, 'San Francisco'),
(8, 'Bob', 22, null),
(9, 'Alice', 30, 'Los Angeles'),
(10, 'Mary', null, null);


--	IS NULL

SELECT *
FROM ExampleTable
WHERE Name IS NULL OR Age IS NULL OR City IS NULL;

-- COALESCE:

SELECT
    Age,
    COALESCE(Age, 30) AS NewAge
FROM ExampleTable;

-- Duplicate Rows BY
-- GROUP BY and HAVING:


SELECT Name, Age, City, COUNT(*) AS DuplicateCount
FROM ExampleTable
GROUP BY Name, Age, City
HAVING COUNT(*) > 1;

-- DISTINCT:

SELECT DISTINCT Name, Age 
FROM ExampleTable;

--  Standardizing and Transforming Data

-- UPPER or LOWER: 

SELECT UPPER(Name) AS UppercaseName,
       Age,
       LOWER(City) AS LowercaseCity
FROM ExampleTable;

-- REPLACE: 

SELECT Name,
       Age,
       REPLACE(City, 'York', 'City') AS ModifiedCity
FROM ExampleTable;

-- SUBSTRING: 

SELECT SUBSTRING(Name, 1, 2) AS First5CharactersOfName,
       Age,
       City
FROM ExampleTable;

-- TRIM:

SELECT Name,
       Age,
       TRIM(City) AS TrimmedCity
FROM ExampleTable;

SELECT TRIM("#SQL" FROM "#SQL Hexware!") AS TrimmedString;

-- CASE WHEN: 

SELECT
    Name,
    Age,
    City,
    CASE
        WHEN Age < 18 THEN 'Underage'
        WHEN Age BETWEEN 18 AND 22 THEN 'Young Adult'
        WHEN Age BETWEEN 23 AND 50 THEN 'Adult'
        ELSE 'Senior'
    END AS AgeGroup
FROM ExampleTable;

-- 4. Updating Data / Column Data Types

UPDATE ExampleTable
SET Age = 28
WHERE Name = 'John';

ALTER TABLE ExampleTable
MODIFY COLUMN Age VARCHAR(10);

-- Deleting

-- Display the original data in ExampleTable
SELECT * FROM ExampleTable;

-- Replace null values in the Age column with a default value (e.g., 25)
UPDATE ExampleTable
SET Age = COALESCE(Age, 25);

-- Display the updated data after replacing null values
SELECT * FROM ExampleTable;

-- Delete duplicate rows based on the Name column
DELETE e1
FROM ExampleTable e1
JOIN ExampleTable e2 ON e1.Name = e2.Name AND e1.ID > e2.ID;

-- Display the final data after deleting duplicates
SELECT * FROM ExampleTable;


SELECT
    ID,
    Name,
    Age,
    ROW_NUMBER() OVER (ORDER BY ID) AS RowNum
FROM ExampleTable;

SELECT
    ID,
    Name,
    Age,
    RANK() OVER (ORDER BY Age) AS AgeRank
FROM ExampleTable;


DELIMITER //

-- Create a basic stored procedure for ExampleTable in MySQL format
CREATE PROCEDURE SelectRecordsByAge(IN pAge INT)
BEGIN
    SELECT *
    FROM ExampleTable
    WHERE Age = pAge;
END //

DELIMITER ;
CALL SelectRecordsByAge(25);

DELIMITER //

-- Create a stored procedure with multiple parameters for ExampleTable in MySQL format
CREATE PROCEDURE SelectRecordsByAgeAndCity(IN pAge INT, IN pCity VARCHAR(50))
BEGIN
    SELECT *
    FROM ExampleTable
    WHERE Age = pAge AND City = pCity;
END //


-- Reset the delimiter to ;
DELIMITER ;

-- Execute the stored procedure with the parameters 25 and 'London'
CALL SelectRecordsByAgeAndCity(25, 'London');
