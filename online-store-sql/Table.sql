-- Create the database 
CREATE DATABASE online_store_sql;

-- Switch to the newly created database 
USE online_store_sql;

-- Create Customers table 
-- This table stores customer details
CREATE TABLE Customers
(
    -- Auto-incremented unique ID for each customer
    customer_id INT PRIMARY KEY IDENTITY(1,1),

    -- First name of the customer
    customer_name VARCHAR(50) NOT NULL,

    -- Last name of the customer
    customer_last_name VARCHAR(50) NOT NULL,

    -- Unique email address
    customer_email VARCHAR(50) UNIQUE,

    -- Contact number
    customer_phone VARCHAR(25) NOT NULL,

    -- Full address
    customer_address VARCHAR(200) NOT NULL
);

-- Create Products table 
-- This table stores information about products available in the store
CREATE TABLE Products
(
    -- Auto-incremented unique ID for each product
    product_id INT PRIMARY KEY IDENTITY(1,1),

    -- Name of the product
    product_name VARCHAR(50) NOT NULL,

    -- Short description of the product
    product_description VARCHAR(50) NOT NULL,

    -- Price of the product with two decimal places
    product_price DECIMAL(10,2) NOT NULL,

    -- Quantity of the product in stock
    product_stock_quantity INT NOT NULL
);

-- Create Orders table 
-- This table records orders placed by customers for products
CREATE TABLE Orders
(
    -- Auto-incremented unique ID for each order
    order_id INT PRIMARY KEY IDENTITY(1,1),

    -- Foreign key referencing Customers(customer_id)
    customer_id INT NOT NULL,

    -- Foreign key referencing Products(product_id)
    product_id INT NOT NULL,

    -- Date the order was placed
    order_date DATE NOT NULL,

    -- Number of units ordered
    order_quantity INT NOT NULL,

    -- Establish relationship to Customers table
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),

    -- Establish relationship to Products table
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Populate Customers table 
-- Insert sample customer data
INSERT INTO Customers (customer_name, customer_last_name, customer_email, customer_phone, customer_address)
VALUES
('Ali', 'Hassan', 'ali.hassan@example.com', '0812345678', '123 Main Street'),
('Fatima', 'Khan', 'fatima.khan@example.com', '0823456789', '456 Oak Avenue'),
('John', 'Smith', 'john.smith@example.com', '0834567890', '789 Pine Road');

-- Populate Products table 
-- Insert sample product data
INSERT INTO Products (product_name, product_description, product_price, product_stock_quantity)
VALUES
('Laptop', '15-inch i7 laptop', 14500.00, 10),
('Smartphone', 'Android smartphone 128GB', 6800.00, 25),
('Wireless Mouse', 'Bluetooth mouse', 320.00, 50),
('Keyboard', 'Mechanical keyboard', 850.00, 30);

-- Populate Orders table 
-- Insert sample order records linking customers and products
INSERT INTO Orders (customer_id, product_id, order_date, order_quantity)
VALUES
(1, 1, '2025-08-01', 1),
(2, 2, '2025-08-02', 2),
(3, 3, '2025-08-02', 1),
(1, 4, '2025-08-03', 1),
(2, 3, '2025-08-04', 3);

SELECT * FROM Customers