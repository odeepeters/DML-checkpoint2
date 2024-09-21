-- Create Customer Table
CREATE TABLE Customer
(
    Customer_id INT PRIMARY KEY,
    customer_Name VARCHAR(100) NOT NULL,
    customer_Tel VARCHAR(15)
);

-- Create Product Table
CREATE TABLE Product
(
    Product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    Price DECIMAL(10, 2) NOT NULL
);

-- Create Orders Table
CREATE TABLE Orders (
    Order_id INT PRIMARY KEY IDENTITY(1,1),
    Customer_id INT,
    Product_id INT,
    OrderDate DATE NOT NULL,
    quantity INT NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

-- Insert into Customer Table
INSERT INTO Customer (Customer_id, customer_Name, customer_Tel) VALUES
(1, 'ALI', '71321009'),
(2, 'ASMA', '77345823');

-- Insert into Product Table
INSERT INTO Product (Product_id, product_name, category, Price) VALUES
(1, 'Samsung Galaxy S20 Smartphone', 'Smartphone', 3299),
(2, 'ASUS Notebook PC', 'Laptop', 4599);

-- Insert into Orders Table
INSERT INTO Orders (Customer_id, Product_id, OrderDate, quantity, total_amount) VALUES
(1, 2, NULL, 2, 9198),
(2, 1, '2020-05-28', 1, 3299);



SELECT * FROM Customer;