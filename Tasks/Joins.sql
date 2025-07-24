-- Create the customers table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(100)
);

-- Create the orders table
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  product_name VARCHAR(100),
  quantity INT,
  -- Define a foreign key constraint linking customer_id to the customers table
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


-- Insert sample data into the customers table
INSERT INTO customers (customer_id, customer_name) 
VALUES 
(1, 'Ayush'),
(2, 'Ankit'),
(3, 'Vishal'),
(4, 'Rohit'),
(5, 'Rahul'); -- Added a new customer

-- Insert sample data into the orders table
INSERT INTO orders (order_id, customer_id, product_name, quantity) 
VALUES 
(1, 1, 'Laptop', 1),
(2, 1, 'Mobile', 2),
(3, 2, 'Laptop', 1),
(4, 2, 'Mobile', 1),
(5, 3, 'Laptop', 1), -- Order for Vishal
(6, 3, 'Mobile', 1),
(7, 4, 'Laptop', 1),
(8, 4, 'Mobile', 1),
(9, 5, 'Laptop', 1),
(10, 5, 'Mobile', 1);

-- Select all data from the customers table
SELECT * FROM customers;
-- Select all data from the orders table
SELECT * FROM orders;


-- Perform an INNER JOIN between customers and orders tables
-- to retrieve customer name, product name, and quantity for all orders
SELECT c.customer_name, o.product_name, o.quantity
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;
