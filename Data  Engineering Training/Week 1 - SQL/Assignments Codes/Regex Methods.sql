create database cleaning;

use cleaning;


CREATE TABLE SalesList (
    SalesMonth VARCHAR(20),
    SalesQuarters VARCHAR(5),
    SalesYear SMALLINT,
    SalesTotal DECIMAL(10, 2)
);

INSERT INTO SalesList (SalesMonth, SalesQuarters, SalesYear, SalesTotal) VALUES ('March', 'Q1', 2019, 60);
INSERT INTO SalesList (SalesMonth, SalesQuarters, SalesYear, SalesTotal) VALUES ('March', 'Q1', 2020, 50);
INSERT INTO SalesList (SalesMonth, SalesQuarters, SalesYear, SalesTotal) VALUES ('May', 'Q2', 2019, 30);
INSERT INTO SalesList (SalesMonth, SalesQuarters, SalesYear, SalesTotal) VALUES ('July', 'Q3', 2020, 10);
INSERT INTO SalesList (SalesMonth, SalesQuarters, SalesYear, SalesTotal) VALUES ('November', 'Q4', 2019, 120);
INSERT INTO SalesList (SalesMonth, SalesQuarters, SalesYear, SalesTotal) VALUES ('October', 'Q4', 2019, 150);
INSERT INTO SalesList (SalesMonth, SalesQuarters, SalesYear, SalesTotal) VALUES ('November', 'Q4', 2019, 180);
INSERT INTO SalesList (SalesMonth, SalesQuarters, SalesYear, SalesTotal) VALUES ('November', 'Q4', 2020, 120);
INSERT INTO SalesList (SalesMonth, SalesQuarters, SalesYear, SalesTotal) VALUES ('July', 'Q3', 2019, 160);
INSERT INTO SalesList (SalesMonth, SalesQuarters, SalesYear, SalesTotal) VALUES ('March', 'Q1', 2020, 170);

SELECT  * FROM SalesList;

SELECT 
    COALESCE(SalesYear, 'Total') AS SalesYear,
    SUM(SalesTotal) AS SalesTotal 
FROM 
    SalesList
GROUP BY 
    SalesYear WITH ROLLUP;

SELECT 
    SalesYear,
    SalesQuarters,
    SUM(SalesTotal) AS SalesTotal
FROM 
    SalesList
GROUP BY 
    SalesYear, SalesQuarters WITH ROLLUP;
    
    
SELECT 
    SalesYear,
    SalesQuarters,
    SalesMonth,
    SUM(SalesTotal) AS SalesTotal
FROM 
    SalesList
GROUP BY 
    SalesYear, SalesQuarters, SalesMonth WITH ROLLUP;
    
SELECT 
    SalesYear,
    SalesQuarters,
    SUM(SalesTotal) AS SalesTotal,
    GROUPING(SalesQuarters) AS SalesQuarterGrp,
    GROUPING(SalesYear) AS SYearGrp
FROM 
    SalesList
GROUP BY 
    SalesYear, SalesQuarters WITH ROLLUP;


SELECT 
    SalesMonth,
    SalesTotal,
    ROW_NUMBER() OVER (ORDER BY RAND()) AS RowNumber
FROM 
    SalesList;

SELECT 
    NULL AS SalesQuarter,
    SalesMonth,
    SUM(SalesTotal) AS SalesTotal 
FROM  
    SalesList
GROUP BY 
    SalesMonth

UNION ALL

SELECT  
    SalesQuarters AS SalesQuarter,
    NULL AS SalesMonth,
    SUM(SalesTotal) AS SalesTotal 
FROM  
    SalesList
GROUP BY 
    SalesQuarters;


INSERT INTO ExampleTable (ID, Name, Age, City) VALUES
(11, 'John', 25, 'Indigo');


SELECT *
FROM ExampleTable
WHERE Name REGEXP 'A.*';

 SELECT *
FROM ExampleTable
WHERE Name REGEXP 'B.+';

-- Select rows where the Name contains 'l' followed by any single character
SELECT *
FROM ExampleTable
WHERE Name REGEXP 'l.';

-- Select rows where the City may or may not start with 'San'
SELECT *
FROM ExampleTable
WHERE City REGEXP '^San?';

-- Select rows where the City ends with 'go'
SELECT *
FROM ExampleTable
WHERE City REGEXP 'go$';

SELECT *
FROM ExampleTable
WHERE Name REGEXP '^[JA]';

-- Select rows where the Name does not start with 'M' or 'A'
SELECT *
FROM ExampleTable
WHERE Name REGEXP '^[^MA]';

-- Select rows where the City starts with an upper case letter
SELECT *
FROM ExampleTable
WHERE City REGEXP '^[A-Z]';

-- Select rows where the City starts with a lower case letter
SELECT *
FROM ExampleTable
WHERE City REGEXP '^[a-z]';

-- Select rows where the Age starts with a digit
SELECT *
FROM ExampleTable
WHERE Age REGEXP '^[0-9]';

-- Select rows where the City ends with 'on'
SELECT *
FROM ExampleTable
WHERE City REGEXP 'on[[:>:]]';

SELECT *
FROM ExampleTable
WHERE Name REGEXP '^[[:upper:]]';

-- Select rows where the Name starts with 'J' or ends with 'y'
SELECT *
FROM ExampleTable
WHERE Name REGEXP 'J|y';

-- Select rows where the Name has exactly 3 characters
SELECT *
FROM ExampleTable
WHERE Name REGEXP '^...$';

-- Select rows where the Name has 2 to 4 characters
SELECT *
FROM ExampleTable
WHERE Name REGEXP '^.{2,4}$';

-- Creating the ExampleTableView
CREATE VIEW ExampleTableView AS
SELECT ID, Name, Age
FROM ExampleTable
WHERE Age IS NOT NULL;

-- Querying the original ExampleTable
SELECT * FROM ExampleTable;

-- Querying the ExampleTableView
SELECT * FROM ExampleTableView;

-- Rules and Restrictions using Group By and Filter clause
SELECT 
    Name,
    AVG(Age) AS AverageAge
FROM 
    ExampleTable
WHERE 
    Age IS NOT NULL
GROUP BY 
    Name
ORDER BY 
    AverageAge DESC;

SELECT
    Name,
    COUNT(*) AS TotalCount,
    AVG(Age) AS AvgAge
FROM
    ExampleTable
WHERE
    Age IS NOT NULL
GROUP BY
    Name
HAVING
    COUNT(*) > 1
ORDER BY
    AvgAge DESC
LIMIT 5 OFFSET 0;


SELECT
    Name,
    COUNT(*) AS TotalCount,
    SUM(Age) AS TotalAge,
    AVG(Age) AS AvgAge
FROM
    ExampleTable
GROUP BY
    Name
ORDER BY
    AvgAge DESC;