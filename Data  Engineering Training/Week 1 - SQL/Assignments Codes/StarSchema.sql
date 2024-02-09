create database starschema;

use starschema;

-- Fact Table: Sales
CREATE TABLE Sales (
    sales_id INT PRIMARY KEY,
    date DATE,
    product_id INT,
    customer_id INT,
    quantity INT,
    revenue DECIMAL(10, 2)
);

-- Dimension Table: Products
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(50)
);

-- Dimension Table: Customers
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    location VARCHAR(100)
);

-- Foreign key relationships
ALTER TABLE Sales
ADD CONSTRAINT fk_product
FOREIGN KEY (product_id)
REFERENCES Products(product_id);

ALTER TABLE Sales
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id)
REFERENCES Customers(customer_id);