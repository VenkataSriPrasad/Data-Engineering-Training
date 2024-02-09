create database snowflake;

use snowflake;

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    CategoryID INT,
    BrandID INT,
    Price DECIMAL(10, 2),
    CONSTRAINT FK_Category FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
    CONSTRAINT FK_Brand FOREIGN KEY (BrandID) REFERENCES Brand(BrandID)
);

CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255)
);

CREATE TABLE Brand (
    BrandID INT PRIMARY KEY,
    BrandName VARCHAR(255)
);


CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    StateID INT,
    CONSTRAINT FK_State FOREIGN KEY (StateID) REFERENCES State(StateID)
);

CREATE TABLE State (
    StateID INT PRIMARY KEY,
    StateName VARCHAR(255)
);

CREATE TABLE Time (
    DateID DATE PRIMARY KEY,
    DayOfWeek VARCHAR(10),
    Month VARCHAR(10),
    Quarter VARCHAR(10),
    Year INT
);

CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    DateID DATE,
    QuantitySold INT,
    Amount DECIMAL(10, 2),
    CONSTRAINT FK_ProductID FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    CONSTRAINT FK_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    CONSTRAINT FK_DateID FOREIGN KEY (DateID) REFERENCES Time(DateID)
);